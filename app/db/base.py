from sqlalchemy_declarative_extensions import declarative_database, Schemas, Roles
from sqlalchemy.orm import as_declarative

@declarative_database
@as_declarative()
class Base:
    
    pass
