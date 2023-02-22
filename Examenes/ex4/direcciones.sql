--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: direcciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.direcciones (
    nombre text,
    apellido text,
    direccion text,
    ciudad text,
    estado text,
    codigopostal integer
);


ALTER TABLE public.direcciones OWNER TO postgres;

--
-- Data for Name: direcciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.direcciones (nombre, apellido, direccion, ciudad, estado, codigopostal) FROM stdin;
John	Doe	120 jefferson st.	Riverside	 NJ	807
Jack	McGinnis	220 hobo Av.	Phila	 PA	9119
John "Da Man"	Repici	120 Jefferson St.	Riverside	 NJ	8075
Stephen	Tyler	7452 Terrace "At the Plaza" road	SomeTown	SD	91234
\N	Blankman	\N	SomeTown	 SD	298
Joan "the bone", Anne	Jet	9th, at Terrace plc	Desert City	CO	123
\.


--
-- PostgreSQL database dump complete
--

