from sqlalchemy_declarative_extensions import declarative_database, Schemas, Roles
from sqlalchemy.orm import as_declarative

@declarative_database #veritabanı düzeyinde ayarlar icin baska yapilari eklemede kullanilir
@as_declarative() #base modellerin oluşturulması icin
class Base:
    
    pass
