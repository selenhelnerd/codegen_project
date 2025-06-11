import os
import sys
from logging.config import fileConfig
from sqlalchemy import engine_from_config, pool
from alembic import context
from sqlalchemy_declarative_extensions import register_alembic_events

# Alembic config object
config = context.config

# Ensure project root is on PYTHONPATH so 'app' module can be imported
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))
if project_root not in sys.path:
    sys.path.insert(0, project_root)

# Set up Python logging using the config file
fileConfig(config.config_file_name)

# ✅ Register Declarative Extensions Alembic hooks (enables autogenerate for Views, Functions, etc.)
register_alembic_events(schemas=True, roles=True, grants=True, rows=True)

# ✅ Import your models (includes @view definitions and all table metadata)
from app.db.base import Base

import app.db.views

# ✅ Metadata for "autogenerate"
target_metadata = Base.metadata

# Helper: include_object filter to prevent dropping tables not in metadata
def include_object(obj, name, type_, reflected, compare_to):
    # Skip dropping tables that exist in database but not in metadata
    if type_ == 'table' and compare_to is None:
        return False
    # Include everything else (views, constraints, added tables, modifications)
    return True

# --- Offline migrations ---
def run_migrations_offline():
    url = config.get_main_option("sqlalchemy.url")
    context.configure(
        url=url,
        target_metadata=target_metadata,
        literal_binds=True,
        dialect_opts={"paramstyle": "named"},
        include_schemas=True,
        include_object=include_object,
    )

    with context.begin_transaction():
        context.run_migrations()

# --- Online migrations ---
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
            include_object=include_object,
        )

        with context.begin_transaction():
            context.run_migrations()

# Choose the appropriate migration mode
if context.is_offline_mode():
    run_migrations_offline()
else:
    run_migrations_online()
