from sqlalchemy_declarative_extensions import view
from sqlalchemy.sql import text
from .base import Base


@view(Base)
class VwTable1Join36:
    __tablename__ = "vw_table_1_join_36"

    __view__ = text(
        """
SELECT
    t1.id            AS table1_id,
    t1.col1          AS table1_col1,
    t1.col2          AS table1_col2,
    rt36.id          AS related36_id,
    rt36.info        AS related36_info
FROM table_1 t1
LEFT JOIN related_table_36 rt36
    ON t1.id = rt36.table_1_id
WHERE t1.col2 IS NOT NULL;  
        """.strip()
    )


@view(Base)
class VwTable2Simple:
    __tablename__ = "vw_table_2_simple"

    __view__ = text(
        """
SELECT
    id,
    col1,
    col2
FROM table_2
WHERE col1 IS NOT NULL;
        """.strip()
    )
