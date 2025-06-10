from sqlalchemy import create_engine, MetaData
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import sessionmaker

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

# 2) SQLAlchemy Engine ve Metadata
engine = create_engine(DATABASE_URL)
metadata = MetaData()

# 3) Veritabanındaki tüm tabloları yansıt (reflection)
metadata.reflect(bind=engine, schema="public")

# 4) AutomapBase’i oluştur ve yansıtılan metadata’yı ver
Base = automap_base(metadata=metadata)

# 5) AutomapBase’i hazırla (mapped class’ları otomatik yaratır)
Base.prepare()

# 6) Artık Base.classes altından her tabloya sınıf olarak erişebilirsin
#    Örneğin:
#    User = Base.classes.users
#    Product = Base.classes.products
#    (Tablo adlarına göre CamelCase sınıf isimleri otomatik atanır.)

# Örnek: Tüm otomatik haritalanmış sınıfların listesini yazdır
print("Mapped classes:")
for cls_name in Base.classes.keys():
    print("  -", cls_name)

# 7) Bir oturum (session) açıp sorgu örneği
Session = sessionmaker(bind=engine)
session = Session()

# Örnek: “example_table” adında bir tablonuz varsa:
# ExampleTable = Base.classes.example_table
# for row in session.query(ExampleTable).limit(5):
#     print(row)

# Not: “Base.classes” altındaki adlar, tablo adı snake_case → CamelCase’e dönüştürülmüş halleriyle gelir.
# Örneğin tablo adı “related_table_36” ise sınıf adı “RelatedTable36” olur.
