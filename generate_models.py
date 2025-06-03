# generate_models.py

import os
from sqlalchemy import create_engine, MetaData, inspect, text
from jinja2 import Environment, FileSystemLoader

# --------------------------------------------
# 1) Ayarlar: Veritabanı bağlantı parametreleri
DB_USER = "selen"
DB_PASSWORD = "selen"      # ← PostgreSQL'de 'ALTER ROLE selen WITH PASSWORD ...' ile aynı olmalı
DB_HOST = "localhost"
DB_PORT = 5432
DB_NAME = "my_large_test_db"

DATABASE_URL = f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

# --------------------------------------------
# 2) SQLAlchemy engine ve inspector oluşturma
engine = create_engine(DATABASE_URL)
inspector = inspect(engine)
metadata = MetaData()

# --------------------------------------------
# 3) TABLO BİLGİLERİNİ ÇEKME
tables = []
for table_name in inspector.get_table_names(schema="public"):
    # 3.1) O tablonun primary key sütunlarını alalım
    pk_constraint = inspector.get_pk_constraint(table_name, schema="public")
    pk_cols = pk_constraint.get("constrained_columns", [])

    # 3.2) Kolon bilgileri
    columns = []
    for col in inspector.get_columns(table_name, schema="public"):
        col_name = col["name"]
        col_info = {
            "name": col_name,
            "type": str(col["type"]),
            "nullable": col["nullable"],
            "default": repr(col["default"]) if col["default"] is not None else None,
            "primary_key": col_name in pk_cols,
        }
        columns.append(col_info)

    # 3.3) Foreign key bilgileri
    fks = []
    for fk in inspector.get_foreign_keys(table_name, schema="public"):
        constrained = fk.get("constrained_columns") or []
        referred = fk.get("referred_table")
        referred_cols = fk.get("referred_columns") or []
        if constrained and referred and referred_cols:
            fks.append({
                "name": constrained[0],
                "target_table": referred,
                "target_column": referred_cols[0],
            })

    # 3.4) Opsiyonel comment (eğer tabloya comment atandıysa)
    comment_dict = inspector.get_table_comment(table_name, schema="public")
    tbl_comment = comment_dict.get("text")

    tables.append({
        "name": table_name,
        "columns": columns,
        "foreign_keys": fks,
        "comment": tbl_comment,
    })


# --------------------------------------------
# 4) VIEW BİLGİLERİNİ ÇEKME
try:
    view_names = inspector.get_view_names(schema="public")
except NotImplementedError:
    with engine.connect() as conn:
        result = conn.execute(text("""
            SELECT table_name
            FROM information_schema.views
            WHERE table_schema = 'public';
        """))
        view_names = [row[0] for row in result]

views = []
for view_name in view_names:
    cols = []
    for col in inspector.get_columns(view_name, schema="public"):
        cols.append({
            "name": col["name"],
            "type": str(col["type"]),
        })
    views.append({
        "name": view_name,
        "columns": cols,
    })


# --------------------------------------------
# 5) FONKSİYONLARI ÇEKME (PostgreSQL özel)
functions = []
with engine.connect() as conn:
    fn_rows = conn.execute(text("""
        SELECT
            n.nspname AS schema,
            p.proname AS name,
            pg_get_functiondef(p.oid) AS ddl
        FROM pg_proc p
        JOIN pg_namespace n ON p.pronamespace = n.oid
        WHERE n.nspname = 'public';
    """)).fetchall()

for row in fn_rows:
    functions.append({
        "schema": row[0],
        "name": row[1],
        "ddl": row[2].strip(),
    })


# --------------------------------------------
# 6) TRIGGER’LARI ÇEKME (PostgreSQL özel)
triggers = []
with engine.connect() as conn:
    trg_rows = conn.execute(text("""
        SELECT
            trigger_name,
            event_object_table AS table_name
        FROM information_schema.triggers
        WHERE trigger_schema = 'public';
    """)).fetchall()

for row in trg_rows:
    trigger_name = row[0]
    table_name = row[1]

    # Burada parametre kullanmak yerine doğrudan f-string ile tablo ve trigger adını yerleştiriyoruz
    trig_sql = f"""
    SELECT pg_get_triggerdef(
        (SELECT oid FROM pg_trigger 
         WHERE tgname = '{trigger_name}' AND tgrelid = '{table_name}'::regclass)
    , true) AS full_ddl;
    """

    with engine.connect() as inner_conn:
        trig_def = inner_conn.execute(text(trig_sql)).fetchone()[0]

    triggers.append({
        "name": trigger_name,
        "table": table_name,
        "ddl": trig_def.strip(),
    })


# --------------------------------------------
# 7) Jinja2 Ortamını Hazırlayıp Şablonu Yükleme
template_dir = os.path.join(os.path.dirname(__file__), "templates")
env = Environment(
    loader=FileSystemLoader(template_dir),
    trim_blocks=True,
    lstrip_blocks=True
)
template = env.get_template("models_template.j2")


# --------------------------------------------
# 8) Şablonu Verilerle Render Etme
rendered_code = template.render(
    tables=tables,
    views=views,
    functions=functions,
    triggers=triggers,
)


# --------------------------------------------
# 9) Çıktıyı Dosyaya Yazma
output_dir = os.path.join(os.path.dirname(__file__), "output")
os.makedirs(output_dir, exist_ok=True)
output_path = os.path.join(output_dir, "models.py")

with open(output_path, "w", encoding="utf-8") as f:
    f.write(rendered_code)

print(f"✅ models.py dosyası oluşturuldu: {output_path}")
