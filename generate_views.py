import os, re
from sqlalchemy import create_engine, inspect, text
from sqlalchemy.sql import select
from jinja2 import Environment, FileSystemLoader

# ---- DB bağlantısı ----
DB_USER, DB_PASS = "selen", "selen"
DB_HOST, DB_PORT, DB_NAME = "localhost", 5432, "my_large_test_db"
URL = f"postgresql+psycopg2://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
engine    = create_engine(URL, future=True)
inspector = inspect(engine)

# ---- Yardımcı fonksiyonlar ----
def camelize(s: str) -> str:
    return "".join(part.capitalize() for part in s.split("_"))

# ---- View metadata’sını topla ----
views = []
with engine.connect() as conn:
    rows = conn.execute(text("""
        SELECT viewname, pg_get_viewdef(viewname, true) AS ddl
        FROM pg_views
        WHERE schemaname='public';
    """)).all()

for viewname, ddl in rows:
    # Sütunları da almak isterseniz:
    cols = []
    for col in inspector.get_columns(viewname, schema="public"):
        cols.append(col["name"])
    views.append({
        "name": viewname,
        "class_name": camelize(viewname),
        "ddl": ddl.strip(),
        "columns": cols,
    })

# ---- Jinja ortamı ----
template_dir = os.path.join(os.path.dirname(__file__), "templates")
env = Environment(
    loader=FileSystemLoader(template_dir),
    trim_blocks=False,
    lstrip_blocks=False,
)
template = env.get_template("view_template.j2")

# ---- Render & kaydet ----
output = template.render(views=views)
out_dir  = os.path.join(os.path.dirname(__file__), "output")
os.makedirs(out_dir, exist_ok=True)
with open(os.path.join(out_dir, "views.py"), "w", encoding="utf-8") as f:
    f.write(output)

print("✅ views.py oluşturuldu →", os.path.join(out_dir, "views.py"))
