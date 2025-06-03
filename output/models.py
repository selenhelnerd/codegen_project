
from sqlalchemy import Column, Integer, String, Text, DateTime, ForeignKey, Boolean, Float, text
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


# ----------------------------------------
class Table3(Base):
    __tablename__ = "table_3"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_3_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table4(Base):
    __tablename__ = "table_4"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_4_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table5(Base):
    __tablename__ = "table_5"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_5_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table6(Base):
    __tablename__ = "table_6"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_6_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table7(Base):
    __tablename__ = "table_7"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_7_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table1(Base):
    __tablename__ = "table_1"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_1_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table2(Base):
    __tablename__ = "table_2"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_2_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table8(Base):
    __tablename__ = "table_8"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_8_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table9(Base):
    __tablename__ = "table_9"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_9_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table10(Base):
    __tablename__ = "table_10"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_10_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table11(Base):
    __tablename__ = "table_11"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_11_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table12(Base):
    __tablename__ = "table_12"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_12_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table13(Base):
    __tablename__ = "table_13"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_13_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table14(Base):
    __tablename__ = "table_14"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_14_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table15(Base):
    __tablename__ = "table_15"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_15_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table16(Base):
    __tablename__ = "table_16"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_16_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table17(Base):
    __tablename__ = "table_17"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_17_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table18(Base):
    __tablename__ = "table_18"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_18_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table19(Base):
    __tablename__ = "table_19"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_19_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table21(Base):
    __tablename__ = "table_21"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_21_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table20(Base):
    __tablename__ = "table_20"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_20_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table22(Base):
    __tablename__ = "table_22"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_22_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table23(Base):
    __tablename__ = "table_23"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_23_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table24(Base):
    __tablename__ = "table_24"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_24_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table25(Base):
    __tablename__ = "table_25"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_25_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table26(Base):
    __tablename__ = "table_26"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_26_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table27(Base):
    __tablename__ = "table_27"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_27_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table28(Base):
    __tablename__ = "table_28"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_28_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table29(Base):
    __tablename__ = "table_29"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_29_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table30(Base):
    __tablename__ = "table_30"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_30_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table31(Base):
    __tablename__ = "table_31"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_31_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table32(Base):
    __tablename__ = "table_32"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_32_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table33(Base):
    __tablename__ = "table_33"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_33_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class Table34(Base):
    __tablename__ = "table_34"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_34_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )
# ----------------------------------------
class RelatedTable39(Base):
    __tablename__ = "related_table_39"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".related_table_39_id_seq\'::regclass)')    )
    table_20_id = Column(
        Integer    )
    extra = Column(
        Text    )
# ----------------------------------------
class RelatedTable36(Base):
    __tablename__ = "related_table_36"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".related_table_36_id_seq\'::regclass)')    )
    table_1_id = Column(
        Integer    )
    info = Column(
        Text    )
# ----------------------------------------
class RelatedTable37(Base):
    __tablename__ = "related_table_37"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".related_table_37_id_seq\'::regclass)')    )
    table_2_id = Column(
        Integer    )
    notes = Column(
        Text    )
# ----------------------------------------
class RelatedTable38(Base):
    __tablename__ = "related_table_38"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".related_table_38_id_seq\'::regclass)')    )
    table_10_id = Column(
        Integer    )
    description = Column(
        Text    )
# ----------------------------------------
class RelatedTable40(Base):
    __tablename__ = "related_table_40"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".related_table_40_id_seq\'::regclass)')    )
    table_35_id = Column(
        Integer    )
    comment = Column(
        Text    )
# ----------------------------------------
class Table35(Base):
    __tablename__ = "table_35"

    id = Column(
        Integer, primary_key=True, nullable=False, server_default=text('nextval(\'"public".table_35_id_seq\'::regclass)')    )
    col1 = Column(
        Text    )
    col2 = Column(
        Text    )
    col3 = Column(
        Text    )
    col4 = Column(
        Text    )
    col5 = Column(
        Text    )
    col6 = Column(
        Text    )
    col7 = Column(
        Text    )
    col8 = Column(
        Text    )
    col9 = Column(
        Text    )
    col10 = Column(
        Text    )


# ========================================
# View: vw_table_2_simple
class VwTable2Simple(Base):
    __tablename__ = "vw_table_2_simple"
    __table_args__ = {"autoload": True, "autoload_with": None}
# View: vw_table_1_join_36
class VwTable1Join36(Base):
    __tablename__ = "vw_table_1_join_36"
    __table_args__ = {"autoload": True, "autoload_with": None}


# ========================================
# Fonksiyon Tanımları (DDL)
# Function: make_uppercase
# === DDL Start ===
"""
CREATE OR REPLACE FUNCTION public.make_uppercase(input_text text)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN upper(input_text);
END;
$function$
"""
# === DDL End ===
# Function: trg_table_1_to_upper
# === DDL Start ===
"""
CREATE OR REPLACE FUNCTION public.trg_table_1_to_upper()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.col1 := upper(NEW.col1);
    RETURN NEW;
END;
$function$
"""
# === DDL End ===

# ========================================
# Trigger Tanımları (DDL)
# Trigger: table_1_insert_to_upper (Table: table_1)
# === DDL Start ===
"""
CREATE TRIGGER table_1_insert_to_upper BEFORE INSERT ON table_1 FOR EACH ROW EXECUTE FUNCTION trg_table_1_to_upper()
"""
# === DDL End ===
