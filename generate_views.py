import os
import re
from sqlalchemy import create_engine, text
from jinja2 import Environment, FileSystemLoader

#  DB bağlantısı        
DB_USER, DB_PASS = "selen", "selen"
DB_HOST, DB_PORT, DB_NAME = "localhost", 5432, "my_large_test_db"
URL = f"postgresql+psycopg2://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
engine = create_engine(URL, future=True)

#   Yardımcı fonksiyonlar  
def camelize(s: str) -> str:
    return "".join(part.capitalize() for part in s.split("_"))

#   View metadata’sını al  
views = []
with engine.connect() as conn:
    # information_schema.views üzerinden DDL'i al
    rows = conn.execute(text(
        """
        SELECT table_name AS viewname,
               view_definition AS ddl
          FROM information_schema.views
         WHERE table_schema = 'public'
         ORDER BY table_name;
        """
    )).all()

    for viewname, ddl in rows:
        # Sütun listesi için information_schema.columns
        col_rows = conn.execute(text(
            """
            SELECT column_name
              FROM information_schema.columns
             WHERE table_schema = 'public'
               AND table_name = :viewname
             ORDER BY ordinal_position;
            """
        ), {"viewname": viewname}).all()

        cols = [col[0] for col in col_rows]
        views.append({
            "name": viewname,
            "class_name": camelize(viewname),
            "ddl": ddl.strip(),
            "columns": cols,
        })

#   Jinja   
template_dir = os.path.join(os.path.dirname(__file__), "templates")
env = Environment(
    loader=FileSystemLoader(template_dir),
    trim_blocks=False,
    lstrip_blocks=False,
)
template = env.get_template("view_template.j2")

#   render & kaydet  
output = template.render(views=views)
out_dir = os.path.join(os.path.dirname(__file__), "app", "db")
os.makedirs(out_dir, exist_ok=True)
with open(os.path.join(out_dir, "views.py"), "w", encoding="utf-8") as f:
    f.write(output)

print("OK/ views.py oluşturuldu →", os.path.join(out_dir, "views.py"))
