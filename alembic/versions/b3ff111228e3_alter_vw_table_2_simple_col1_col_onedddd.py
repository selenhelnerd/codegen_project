"""alter vw_table_2_simple col1→col_onedddd

Revision ID: b3ff111228e3
Revises: fd465a5b4ba2
Create Date: 2025-06-11 15:03:39.880467

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = 'b3ff111228e3'
down_revision: Union[str, None] = 'fd465a5b4ba2'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    """Upgrade schema."""
    # ### commands auto generated by Alembic - please adjust! ###
    pass
    # ### end Alembic commands ###


def downgrade() -> None:
    """Downgrade schema."""
    # ### commands auto generated by Alembic - please adjust! ###
    pass
    # ### end Alembic commands ###
