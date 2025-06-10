from logging.config import fileConfig
from sqlalchemy import engine_from_config, pool
from alembic import context

# Alembic config nesnesi
config = context.config

# logging yapılandırması
fileConfig(config.config_file_name)

# ✅ Veritabanı modelleri burada import ediliyor
from app.db.base import Base
import app.db.models
import app.db.views

# ✅ MetaData nesnesi belirleniyor
target_metadata = Base.metadata

# --- Run offline migrations ---
def run_migrations_offline():
    url = config.get_main_option("sqlalchemy.url")
    context.configure(
        url=url,
        target_metadata=target_metadata,
        literal_binds=True,
        dialect_opts={"paramstyle": "named"},
        include_schemas=True,  # Eğer şema destekliyorsan bu önemli
    )

    with context.begin_transaction():
        context.run_migrations()

# --- Run online migrations ---
def run_migrations_online():
    connectable = engine_from_config(
        config.get_section(config.config_ini_section),
        prefix="sqlalchemy.",
        poolclass=pool.NullPool,
    )

    with connectable.connect() as connection:
        context.configure(
            connection=connection,
            target_metadata=target_metadata,
            include_schemas=True,
        )

        with context.begin_transaction():
            context.run_migrations()

# Hangi migration tipi çalışacaksa onu çağır
if context.is_offline_mode():
    run_migrations_offline()
else:
    run_migrations_online()
