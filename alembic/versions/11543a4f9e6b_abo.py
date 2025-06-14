"""abo

Revision ID: 11543a4f9e6b
Revises: d18a41da2e8e
Create Date: 2025-06-13 10:58:57.227446

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '11543a4f9e6b'
down_revision: Union[str, None] = 'd18a41da2e8e'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    """Upgrade schema."""
    # ### commands auto generated by Alembic - please adjust! ###
    op.execute("""DROP VIEW vw_table_1_join_36""")
    op.execute("""CREATE VIEW vw_table_1_join_36 AS  SELECT t1.id AS table1_id,
        t1.col1 AS table1_col1,
        t1.col2 AS table1_col2,
        rt36.id AS related36_id,
        rt36.info AS related36_info
       FROM (table_1 t1
         LEFT JOIN related_table_36 rt36 ON ((t1.id = rt36.table_1_id)))
      WHERE (NOT (t1.col2 IS NULL));""")
    # ### end Alembic commands ###


def downgrade() -> None:
    """Downgrade schema."""
    # ### commands auto generated by Alembic - please adjust! ###
    op.execute("""DROP VIEW vw_table_1_join_36""")
    op.execute("""CREATE VIEW vw_table_1_join_36 AS  SELECT t1.id AS table1_id,
        t1.col1 AS table1_col1,
        t1.col2 AS table1_col2,
        rt36.id AS related36_id,
        rt36.info AS related36_info
       FROM (table_1 t1
         LEFT JOIN related_table_36 rt36 ON ((t1.id = rt36.table_1_id)));""")
    # ### end Alembic commands ###
