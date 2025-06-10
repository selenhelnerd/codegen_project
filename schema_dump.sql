--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: make_uppercase(text); Type: FUNCTION; Schema: public; Owner: selen
--

CREATE FUNCTION public.make_uppercase(input_text text) RETURNS text
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN upper(input_text);
END;
$$;


ALTER FUNCTION public.make_uppercase(input_text text) OWNER TO selen;

--
-- Name: trg_table_1_to_upper(); Type: FUNCTION; Schema: public; Owner: selen
--

CREATE FUNCTION public.trg_table_1_to_upper() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.col1 := upper(NEW.col1);
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.trg_table_1_to_upper() OWNER TO selen;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: related_table_36; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.related_table_36 (
    id integer NOT NULL,
    table_1_id integer,
    info text
);


ALTER TABLE public.related_table_36 OWNER TO selen;

--
-- Name: related_table_36_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.related_table_36_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.related_table_36_id_seq OWNER TO selen;

--
-- Name: related_table_36_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.related_table_36_id_seq OWNED BY public.related_table_36.id;


--
-- Name: related_table_37; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.related_table_37 (
    id integer NOT NULL,
    table_2_id integer,
    notes text
);


ALTER TABLE public.related_table_37 OWNER TO selen;

--
-- Name: related_table_37_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.related_table_37_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.related_table_37_id_seq OWNER TO selen;

--
-- Name: related_table_37_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.related_table_37_id_seq OWNED BY public.related_table_37.id;


--
-- Name: related_table_38; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.related_table_38 (
    id integer NOT NULL,
    table_10_id integer,
    description text
);


ALTER TABLE public.related_table_38 OWNER TO selen;

--
-- Name: related_table_38_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.related_table_38_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.related_table_38_id_seq OWNER TO selen;

--
-- Name: related_table_38_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.related_table_38_id_seq OWNED BY public.related_table_38.id;


--
-- Name: related_table_39; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.related_table_39 (
    id integer NOT NULL,
    table_20_id integer,
    extra text
);


ALTER TABLE public.related_table_39 OWNER TO selen;

--
-- Name: related_table_39_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.related_table_39_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.related_table_39_id_seq OWNER TO selen;

--
-- Name: related_table_39_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.related_table_39_id_seq OWNED BY public.related_table_39.id;


--
-- Name: related_table_40; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.related_table_40 (
    id integer NOT NULL,
    table_35_id integer,
    comment text
);


ALTER TABLE public.related_table_40 OWNER TO selen;

--
-- Name: related_table_40_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.related_table_40_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.related_table_40_id_seq OWNER TO selen;

--
-- Name: related_table_40_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.related_table_40_id_seq OWNED BY public.related_table_40.id;


--
-- Name: table_1; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_1 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_1 OWNER TO selen;

--
-- Name: table_10; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_10 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_10 OWNER TO selen;

--
-- Name: table_10_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_10_id_seq OWNER TO selen;

--
-- Name: table_10_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_10_id_seq OWNED BY public.table_10.id;


--
-- Name: table_11; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_11 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_11 OWNER TO selen;

--
-- Name: table_11_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_11_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_11_id_seq OWNER TO selen;

--
-- Name: table_11_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_11_id_seq OWNED BY public.table_11.id;


--
-- Name: table_12; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_12 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_12 OWNER TO selen;

--
-- Name: table_12_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_12_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_12_id_seq OWNER TO selen;

--
-- Name: table_12_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_12_id_seq OWNED BY public.table_12.id;


--
-- Name: table_13; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_13 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_13 OWNER TO selen;

--
-- Name: table_13_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_13_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_13_id_seq OWNER TO selen;

--
-- Name: table_13_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_13_id_seq OWNED BY public.table_13.id;


--
-- Name: table_14; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_14 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_14 OWNER TO selen;

--
-- Name: table_14_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_14_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_14_id_seq OWNER TO selen;

--
-- Name: table_14_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_14_id_seq OWNED BY public.table_14.id;


--
-- Name: table_15; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_15 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_15 OWNER TO selen;

--
-- Name: table_15_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_15_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_15_id_seq OWNER TO selen;

--
-- Name: table_15_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_15_id_seq OWNED BY public.table_15.id;


--
-- Name: table_16; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_16 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_16 OWNER TO selen;

--
-- Name: table_16_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_16_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_16_id_seq OWNER TO selen;

--
-- Name: table_16_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_16_id_seq OWNED BY public.table_16.id;


--
-- Name: table_17; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_17 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_17 OWNER TO selen;

--
-- Name: table_17_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_17_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_17_id_seq OWNER TO selen;

--
-- Name: table_17_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_17_id_seq OWNED BY public.table_17.id;


--
-- Name: table_18; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_18 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_18 OWNER TO selen;

--
-- Name: table_18_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_18_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_18_id_seq OWNER TO selen;

--
-- Name: table_18_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_18_id_seq OWNED BY public.table_18.id;


--
-- Name: table_19; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_19 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_19 OWNER TO selen;

--
-- Name: table_19_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_19_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_19_id_seq OWNER TO selen;

--
-- Name: table_19_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_19_id_seq OWNED BY public.table_19.id;


--
-- Name: table_1_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_1_id_seq OWNER TO selen;

--
-- Name: table_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_1_id_seq OWNED BY public.table_1.id;


--
-- Name: table_2; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_2 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_2 OWNER TO selen;

--
-- Name: table_20; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_20 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_20 OWNER TO selen;

--
-- Name: table_20_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_20_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_20_id_seq OWNER TO selen;

--
-- Name: table_20_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_20_id_seq OWNED BY public.table_20.id;


--
-- Name: table_21; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_21 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_21 OWNER TO selen;

--
-- Name: table_21_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_21_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_21_id_seq OWNER TO selen;

--
-- Name: table_21_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_21_id_seq OWNED BY public.table_21.id;


--
-- Name: table_22; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_22 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_22 OWNER TO selen;

--
-- Name: table_22_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_22_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_22_id_seq OWNER TO selen;

--
-- Name: table_22_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_22_id_seq OWNED BY public.table_22.id;


--
-- Name: table_23; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_23 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_23 OWNER TO selen;

--
-- Name: table_23_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_23_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_23_id_seq OWNER TO selen;

--
-- Name: table_23_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_23_id_seq OWNED BY public.table_23.id;


--
-- Name: table_24; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_24 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_24 OWNER TO selen;

--
-- Name: table_24_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_24_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_24_id_seq OWNER TO selen;

--
-- Name: table_24_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_24_id_seq OWNED BY public.table_24.id;


--
-- Name: table_25; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_25 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_25 OWNER TO selen;

--
-- Name: table_25_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_25_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_25_id_seq OWNER TO selen;

--
-- Name: table_25_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_25_id_seq OWNED BY public.table_25.id;


--
-- Name: table_26; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_26 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_26 OWNER TO selen;

--
-- Name: table_26_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_26_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_26_id_seq OWNER TO selen;

--
-- Name: table_26_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_26_id_seq OWNED BY public.table_26.id;


--
-- Name: table_27; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_27 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_27 OWNER TO selen;

--
-- Name: table_27_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_27_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_27_id_seq OWNER TO selen;

--
-- Name: table_27_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_27_id_seq OWNED BY public.table_27.id;


--
-- Name: table_28; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_28 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_28 OWNER TO selen;

--
-- Name: table_28_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_28_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_28_id_seq OWNER TO selen;

--
-- Name: table_28_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_28_id_seq OWNED BY public.table_28.id;


--
-- Name: table_29; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_29 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_29 OWNER TO selen;

--
-- Name: table_29_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_29_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_29_id_seq OWNER TO selen;

--
-- Name: table_29_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_29_id_seq OWNED BY public.table_29.id;


--
-- Name: table_2_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_2_id_seq OWNER TO selen;

--
-- Name: table_2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_2_id_seq OWNED BY public.table_2.id;


--
-- Name: table_3; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_3 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_3 OWNER TO selen;

--
-- Name: table_30; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_30 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_30 OWNER TO selen;

--
-- Name: table_30_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_30_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_30_id_seq OWNER TO selen;

--
-- Name: table_30_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_30_id_seq OWNED BY public.table_30.id;


--
-- Name: table_31; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_31 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_31 OWNER TO selen;

--
-- Name: table_31_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_31_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_31_id_seq OWNER TO selen;

--
-- Name: table_31_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_31_id_seq OWNED BY public.table_31.id;


--
-- Name: table_32; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_32 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_32 OWNER TO selen;

--
-- Name: table_32_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_32_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_32_id_seq OWNER TO selen;

--
-- Name: table_32_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_32_id_seq OWNED BY public.table_32.id;


--
-- Name: table_33; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_33 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_33 OWNER TO selen;

--
-- Name: table_33_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_33_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_33_id_seq OWNER TO selen;

--
-- Name: table_33_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_33_id_seq OWNED BY public.table_33.id;


--
-- Name: table_34; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_34 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_34 OWNER TO selen;

--
-- Name: table_34_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_34_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_34_id_seq OWNER TO selen;

--
-- Name: table_34_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_34_id_seq OWNED BY public.table_34.id;


--
-- Name: table_35; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_35 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_35 OWNER TO selen;

--
-- Name: table_35_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_35_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_35_id_seq OWNER TO selen;

--
-- Name: table_35_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_35_id_seq OWNED BY public.table_35.id;


--
-- Name: table_3_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_3_id_seq OWNER TO selen;

--
-- Name: table_3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_3_id_seq OWNED BY public.table_3.id;


--
-- Name: table_4; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_4 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_4 OWNER TO selen;

--
-- Name: table_4_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_4_id_seq OWNER TO selen;

--
-- Name: table_4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_4_id_seq OWNED BY public.table_4.id;


--
-- Name: table_5; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_5 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_5 OWNER TO selen;

--
-- Name: table_5_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_5_id_seq OWNER TO selen;

--
-- Name: table_5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_5_id_seq OWNED BY public.table_5.id;


--
-- Name: table_6; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_6 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_6 OWNER TO selen;

--
-- Name: table_6_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_6_id_seq OWNER TO selen;

--
-- Name: table_6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_6_id_seq OWNED BY public.table_6.id;


--
-- Name: table_7; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_7 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_7 OWNER TO selen;

--
-- Name: table_7_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_7_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_7_id_seq OWNER TO selen;

--
-- Name: table_7_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_7_id_seq OWNED BY public.table_7.id;


--
-- Name: table_8; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_8 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_8 OWNER TO selen;

--
-- Name: table_8_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_8_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_8_id_seq OWNER TO selen;

--
-- Name: table_8_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_8_id_seq OWNED BY public.table_8.id;


--
-- Name: table_9; Type: TABLE; Schema: public; Owner: selen
--

CREATE TABLE public.table_9 (
    id integer NOT NULL,
    col1 text,
    col2 text,
    col3 text,
    col4 text,
    col5 text,
    col6 text,
    col7 text,
    col8 text,
    col9 text,
    col10 text
);


ALTER TABLE public.table_9 OWNER TO selen;

--
-- Name: table_9_id_seq; Type: SEQUENCE; Schema: public; Owner: selen
--

CREATE SEQUENCE public.table_9_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.table_9_id_seq OWNER TO selen;

--
-- Name: table_9_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: selen
--

ALTER SEQUENCE public.table_9_id_seq OWNED BY public.table_9.id;


--
-- Name: vw_table_1_join_36; Type: VIEW; Schema: public; Owner: selen
--

CREATE VIEW public.vw_table_1_join_36 AS
 SELECT t1.id AS table1_id,
    t1.col1 AS table1_col1,
    rt36.id AS related36_id,
    rt36.info AS related36_info
   FROM (public.table_1 t1
     LEFT JOIN public.related_table_36 rt36 ON ((t1.id = rt36.table_1_id)));


ALTER VIEW public.vw_table_1_join_36 OWNER TO selen;

--
-- Name: vw_table_2_simple; Type: VIEW; Schema: public; Owner: selen
--

CREATE VIEW public.vw_table_2_simple AS
 SELECT id,
    col1,
    col2
   FROM public.table_2
  WHERE (col1 IS NOT NULL);


ALTER VIEW public.vw_table_2_simple OWNER TO selen;

--
-- Name: related_table_36 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_36 ALTER COLUMN id SET DEFAULT nextval('public.related_table_36_id_seq'::regclass);


--
-- Name: related_table_37 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_37 ALTER COLUMN id SET DEFAULT nextval('public.related_table_37_id_seq'::regclass);


--
-- Name: related_table_38 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_38 ALTER COLUMN id SET DEFAULT nextval('public.related_table_38_id_seq'::regclass);


--
-- Name: related_table_39 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_39 ALTER COLUMN id SET DEFAULT nextval('public.related_table_39_id_seq'::regclass);


--
-- Name: related_table_40 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_40 ALTER COLUMN id SET DEFAULT nextval('public.related_table_40_id_seq'::regclass);


--
-- Name: table_1 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_1 ALTER COLUMN id SET DEFAULT nextval('public.table_1_id_seq'::regclass);


--
-- Name: table_10 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_10 ALTER COLUMN id SET DEFAULT nextval('public.table_10_id_seq'::regclass);


--
-- Name: table_11 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_11 ALTER COLUMN id SET DEFAULT nextval('public.table_11_id_seq'::regclass);


--
-- Name: table_12 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_12 ALTER COLUMN id SET DEFAULT nextval('public.table_12_id_seq'::regclass);


--
-- Name: table_13 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_13 ALTER COLUMN id SET DEFAULT nextval('public.table_13_id_seq'::regclass);


--
-- Name: table_14 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_14 ALTER COLUMN id SET DEFAULT nextval('public.table_14_id_seq'::regclass);


--
-- Name: table_15 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_15 ALTER COLUMN id SET DEFAULT nextval('public.table_15_id_seq'::regclass);


--
-- Name: table_16 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_16 ALTER COLUMN id SET DEFAULT nextval('public.table_16_id_seq'::regclass);


--
-- Name: table_17 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_17 ALTER COLUMN id SET DEFAULT nextval('public.table_17_id_seq'::regclass);


--
-- Name: table_18 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_18 ALTER COLUMN id SET DEFAULT nextval('public.table_18_id_seq'::regclass);


--
-- Name: table_19 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_19 ALTER COLUMN id SET DEFAULT nextval('public.table_19_id_seq'::regclass);


--
-- Name: table_2 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_2 ALTER COLUMN id SET DEFAULT nextval('public.table_2_id_seq'::regclass);


--
-- Name: table_20 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_20 ALTER COLUMN id SET DEFAULT nextval('public.table_20_id_seq'::regclass);


--
-- Name: table_21 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_21 ALTER COLUMN id SET DEFAULT nextval('public.table_21_id_seq'::regclass);


--
-- Name: table_22 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_22 ALTER COLUMN id SET DEFAULT nextval('public.table_22_id_seq'::regclass);


--
-- Name: table_23 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_23 ALTER COLUMN id SET DEFAULT nextval('public.table_23_id_seq'::regclass);


--
-- Name: table_24 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_24 ALTER COLUMN id SET DEFAULT nextval('public.table_24_id_seq'::regclass);


--
-- Name: table_25 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_25 ALTER COLUMN id SET DEFAULT nextval('public.table_25_id_seq'::regclass);


--
-- Name: table_26 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_26 ALTER COLUMN id SET DEFAULT nextval('public.table_26_id_seq'::regclass);


--
-- Name: table_27 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_27 ALTER COLUMN id SET DEFAULT nextval('public.table_27_id_seq'::regclass);


--
-- Name: table_28 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_28 ALTER COLUMN id SET DEFAULT nextval('public.table_28_id_seq'::regclass);


--
-- Name: table_29 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_29 ALTER COLUMN id SET DEFAULT nextval('public.table_29_id_seq'::regclass);


--
-- Name: table_3 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_3 ALTER COLUMN id SET DEFAULT nextval('public.table_3_id_seq'::regclass);


--
-- Name: table_30 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_30 ALTER COLUMN id SET DEFAULT nextval('public.table_30_id_seq'::regclass);


--
-- Name: table_31 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_31 ALTER COLUMN id SET DEFAULT nextval('public.table_31_id_seq'::regclass);


--
-- Name: table_32 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_32 ALTER COLUMN id SET DEFAULT nextval('public.table_32_id_seq'::regclass);


--
-- Name: table_33 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_33 ALTER COLUMN id SET DEFAULT nextval('public.table_33_id_seq'::regclass);


--
-- Name: table_34 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_34 ALTER COLUMN id SET DEFAULT nextval('public.table_34_id_seq'::regclass);


--
-- Name: table_35 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_35 ALTER COLUMN id SET DEFAULT nextval('public.table_35_id_seq'::regclass);


--
-- Name: table_4 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_4 ALTER COLUMN id SET DEFAULT nextval('public.table_4_id_seq'::regclass);


--
-- Name: table_5 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_5 ALTER COLUMN id SET DEFAULT nextval('public.table_5_id_seq'::regclass);


--
-- Name: table_6 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_6 ALTER COLUMN id SET DEFAULT nextval('public.table_6_id_seq'::regclass);


--
-- Name: table_7 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_7 ALTER COLUMN id SET DEFAULT nextval('public.table_7_id_seq'::regclass);


--
-- Name: table_8 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_8 ALTER COLUMN id SET DEFAULT nextval('public.table_8_id_seq'::regclass);


--
-- Name: table_9 id; Type: DEFAULT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_9 ALTER COLUMN id SET DEFAULT nextval('public.table_9_id_seq'::regclass);


--
-- Name: related_table_36 related_table_36_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_36
    ADD CONSTRAINT related_table_36_pkey PRIMARY KEY (id);


--
-- Name: related_table_37 related_table_37_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_37
    ADD CONSTRAINT related_table_37_pkey PRIMARY KEY (id);


--
-- Name: related_table_38 related_table_38_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_38
    ADD CONSTRAINT related_table_38_pkey PRIMARY KEY (id);


--
-- Name: related_table_39 related_table_39_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_39
    ADD CONSTRAINT related_table_39_pkey PRIMARY KEY (id);


--
-- Name: related_table_40 related_table_40_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_40
    ADD CONSTRAINT related_table_40_pkey PRIMARY KEY (id);


--
-- Name: table_10 table_10_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_10
    ADD CONSTRAINT table_10_pkey PRIMARY KEY (id);


--
-- Name: table_11 table_11_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_11
    ADD CONSTRAINT table_11_pkey PRIMARY KEY (id);


--
-- Name: table_12 table_12_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_12
    ADD CONSTRAINT table_12_pkey PRIMARY KEY (id);


--
-- Name: table_13 table_13_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_13
    ADD CONSTRAINT table_13_pkey PRIMARY KEY (id);


--
-- Name: table_14 table_14_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_14
    ADD CONSTRAINT table_14_pkey PRIMARY KEY (id);


--
-- Name: table_15 table_15_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_15
    ADD CONSTRAINT table_15_pkey PRIMARY KEY (id);


--
-- Name: table_16 table_16_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_16
    ADD CONSTRAINT table_16_pkey PRIMARY KEY (id);


--
-- Name: table_17 table_17_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_17
    ADD CONSTRAINT table_17_pkey PRIMARY KEY (id);


--
-- Name: table_18 table_18_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_18
    ADD CONSTRAINT table_18_pkey PRIMARY KEY (id);


--
-- Name: table_19 table_19_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_19
    ADD CONSTRAINT table_19_pkey PRIMARY KEY (id);


--
-- Name: table_1 table_1_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_1
    ADD CONSTRAINT table_1_pkey PRIMARY KEY (id);


--
-- Name: table_20 table_20_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_20
    ADD CONSTRAINT table_20_pkey PRIMARY KEY (id);


--
-- Name: table_21 table_21_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_21
    ADD CONSTRAINT table_21_pkey PRIMARY KEY (id);


--
-- Name: table_22 table_22_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_22
    ADD CONSTRAINT table_22_pkey PRIMARY KEY (id);


--
-- Name: table_23 table_23_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_23
    ADD CONSTRAINT table_23_pkey PRIMARY KEY (id);


--
-- Name: table_24 table_24_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_24
    ADD CONSTRAINT table_24_pkey PRIMARY KEY (id);


--
-- Name: table_25 table_25_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_25
    ADD CONSTRAINT table_25_pkey PRIMARY KEY (id);


--
-- Name: table_26 table_26_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_26
    ADD CONSTRAINT table_26_pkey PRIMARY KEY (id);


--
-- Name: table_27 table_27_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_27
    ADD CONSTRAINT table_27_pkey PRIMARY KEY (id);


--
-- Name: table_28 table_28_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_28
    ADD CONSTRAINT table_28_pkey PRIMARY KEY (id);


--
-- Name: table_29 table_29_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_29
    ADD CONSTRAINT table_29_pkey PRIMARY KEY (id);


--
-- Name: table_2 table_2_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_2
    ADD CONSTRAINT table_2_pkey PRIMARY KEY (id);


--
-- Name: table_30 table_30_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_30
    ADD CONSTRAINT table_30_pkey PRIMARY KEY (id);


--
-- Name: table_31 table_31_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_31
    ADD CONSTRAINT table_31_pkey PRIMARY KEY (id);


--
-- Name: table_32 table_32_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_32
    ADD CONSTRAINT table_32_pkey PRIMARY KEY (id);


--
-- Name: table_33 table_33_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_33
    ADD CONSTRAINT table_33_pkey PRIMARY KEY (id);


--
-- Name: table_34 table_34_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_34
    ADD CONSTRAINT table_34_pkey PRIMARY KEY (id);


--
-- Name: table_35 table_35_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_35
    ADD CONSTRAINT table_35_pkey PRIMARY KEY (id);


--
-- Name: table_3 table_3_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_3
    ADD CONSTRAINT table_3_pkey PRIMARY KEY (id);


--
-- Name: table_4 table_4_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_4
    ADD CONSTRAINT table_4_pkey PRIMARY KEY (id);


--
-- Name: table_5 table_5_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT table_5_pkey PRIMARY KEY (id);


--
-- Name: table_6 table_6_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_6
    ADD CONSTRAINT table_6_pkey PRIMARY KEY (id);


--
-- Name: table_7 table_7_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_7
    ADD CONSTRAINT table_7_pkey PRIMARY KEY (id);


--
-- Name: table_8 table_8_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_8
    ADD CONSTRAINT table_8_pkey PRIMARY KEY (id);


--
-- Name: table_9 table_9_pkey; Type: CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.table_9
    ADD CONSTRAINT table_9_pkey PRIMARY KEY (id);


--
-- Name: table_1 table_1_insert_to_upper; Type: TRIGGER; Schema: public; Owner: selen
--

CREATE TRIGGER table_1_insert_to_upper BEFORE INSERT ON public.table_1 FOR EACH ROW EXECUTE FUNCTION public.trg_table_1_to_upper();


--
-- Name: related_table_36 related_table_36_table_1_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_36
    ADD CONSTRAINT related_table_36_table_1_id_fkey FOREIGN KEY (table_1_id) REFERENCES public.table_1(id);


--
-- Name: related_table_37 related_table_37_table_2_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_37
    ADD CONSTRAINT related_table_37_table_2_id_fkey FOREIGN KEY (table_2_id) REFERENCES public.table_2(id);


--
-- Name: related_table_38 related_table_38_table_10_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_38
    ADD CONSTRAINT related_table_38_table_10_id_fkey FOREIGN KEY (table_10_id) REFERENCES public.table_10(id);


--
-- Name: related_table_39 related_table_39_table_20_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_39
    ADD CONSTRAINT related_table_39_table_20_id_fkey FOREIGN KEY (table_20_id) REFERENCES public.table_20(id);


--
-- Name: related_table_40 related_table_40_table_35_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: selen
--

ALTER TABLE ONLY public.related_table_40
    ADD CONSTRAINT related_table_40_table_35_id_fkey FOREIGN KEY (table_35_id) REFERENCES public.table_35(id);


--
-- PostgreSQL database dump complete
--

