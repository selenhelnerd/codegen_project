import os
from sqlalchemy import create_engine, MetaData, inspect, text
from jinja2 import Environment, FileSystemLoader

# 1) Veritabanı bağlantı parametreleri 
DB_USER = "selen"
DB_PASSWORD = "selen"
DB_HOST = "localhost"
DB_PORT = 5432
DB_NAME = "my_large_test_db"

DATABASE_URL = (
    f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}"
    f"@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

# 2) SQLAlchemy Engine ve Inspector
engine = create_engine(DATABASE_URL)
inspector = inspect(engine)

# 3) Tabloların metadata bilgilerini topla
tables = []
for table_name in inspector.get_table_names(schema="public"):
    # 3.1) Primary key sütun listesi
    pk_constraint = inspector.get_pk_constraint(table_name, schema="public")
    pk_cols = pk_constraint.get("constrained_columns", [])

    # 3.2) Kolon bilgileri
    columns = []
    for col in inspector.get_columns(table_name, schema="public"):
        col_name = col["name"]
        columns.append({
            "name": col_name,
            "type": str(col["type"]),
            "nullable": col["nullable"],
            "default": repr(col["default"]) if col["default"] is not None else None,
            "primary_key": (col_name in pk_cols),
        })

    # 3.3) Foreign key ilişkileri
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

    # 3.4) Tablo yorumu (comment), varsa
    comment_dict = inspector.get_table_comment(table_name, schema="public")
    tbl_comment = comment_dict.get("text")

    tables.append({
        "name": table_name,
        "columns": columns,
        "foreign_keys": fks,
        "comment": tbl_comment,
    })

# 4) View’ları topla - 
views = []
with engine.connect() as conn:
    # Tüm görünümlerin adlarını ve SQL tanımlarını çekiyoruz
    view_rows = conn.execute(text("""
        SELECT
            viewname,
            pg_get_viewdef(viewname, true) AS view_definition
        FROM
            pg_views
        WHERE
            schemaname = 'public'; -- public şemasındaki görünümleri al
    """)).fetchall()

for row in view_rows:
    view_name = row[0]
    view_ddl_text = row[1].strip()

    # Görünümün sütunlarını da çekmek hala faydalı olacaktır (ORM için)
    cols = []
    # Try-except bloğu ekleyerek, inspector.get_columns'ın bazı durumlarda hata verme olasılığını yönetebiliriz.
    try:
        for col in inspector.get_columns(view_name, schema="public"):
            cols.append({
                "name": col["name"],
                "type": str(col["type"]),
            })
    except Exception as e:
        print(f"Uyarı: Görünüm '{view_name}' için sütun bilgileri alınamadı: {e}")
        # Hata durumunda boş bırakabiliriz, veya loglayabiliriz.
        # Bu sütunlar manuel olarak doldurulmalıdır veya ORM kısmı için düşünülmeyebilir.

    views.append({
        "name": view_name,
        "ddl": view_ddl_text, # DDL'i ekledik
        "columns": cols,     # Sütun bilgilerini de tutmaya devam edelim
    })
# 5) Stored function DDL’lerini topla
functions = []
with engine.connect() as conn:
    fn_rows = conn.execute(text("""
        SELECT
            n.nspname AS schema_name,
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

# 6) Trigger DDL’lerini topla
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
    trg_sql = f"""
      SELECT pg_get_triggerdef(
          (SELECT oid FROM pg_trigger
           WHERE tgname = '{trigger_name}'
             AND tgrelid = '{table_name}'::regclass),
          true
      ) AS full_ddl;
    """
    with engine.connect() as inner_conn:
        trig_def = inner_conn.execute(text(trg_sql)).fetchone()[0]
    triggers.append({
        "name": trigger_name,
        "table": table_name,
        "ddl": trig_def.strip(),
    })

# 7) Jinja2 şablonunu yükle
template_dir = os.path.join(os.path.dirname(__file__), "templates")
env = Environment(
    loader=FileSystemLoader(template_dir),
    trim_blocks=True,
    lstrip_blocks=True,
)
template = env.get_template("class_template.j2")

# 8) Şablonu çalıştırıp output/models.py oluştur
rendered_code = template.render(
    tables=tables,
    views=views,
    functions=functions,
    triggers=triggers,
)

output_dir = os.path.join(os.path.dirname(__file__), "output")
os.makedirs(output_dir, exist_ok=True)
output_path = os.path.join(output_dir, "models.py")

with open(output_path, "w", encoding="utf-8") as f:
    f.write(rendered_code)

print(f" models.py dosyası oluşturuldu: {output_path}")
