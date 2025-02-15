toc.dat                                                                                             0000600 0004000 0002000 00000014727 14056321702 0014452 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       &    5                y            postgres    13.2    13.2     1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         4           1262    13442    postgres    DATABASE     g   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false         5           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3124         	            2615    49394    proyecto    SCHEMA        CREATE SCHEMA proyecto;
    DROP SCHEMA proyecto;
                postgres    false         �            1259    49435    barrio    TABLE     �   CREATE TABLE proyecto.barrio (
    id_barrio character varying(2),
    cod_comuna character varying(10) NOT NULL,
    nombre_barrio character varying(30),
    CONSTRAINT nn_nombre_barrio CHECK ((nombre_barrio IS NOT NULL))
);
    DROP TABLE proyecto.barrio;
       proyecto         heap    postgres    false    9         �            1259    49422    cliente    TABLE       CREATE TABLE proyecto.cliente (
    id_cliente character varying(10) NOT NULL,
    usuario_cliente character varying(10),
    nombre_cliente character varying(30),
    apellido_cliente character varying(30),
    documento character varying(10),
    telefono character varying(10),
    direccion character varying(30),
    barrio character varying(20),
    comuna character varying(2),
    estrato character varying(2),
    estado character varying(10),
    CONSTRAINT nn_apellido_cliente CHECK ((apellido_cliente IS NOT NULL)),
    CONSTRAINT nn_documento CHECK ((documento IS NOT NULL)),
    CONSTRAINT nn_estado CHECK ((estado IS NOT NULL)),
    CONSTRAINT nn_estrato CHECK ((estrato IS NOT NULL)),
    CONSTRAINT nn_nombre_cliente CHECK ((nombre_cliente IS NOT NULL))
);
    DROP TABLE proyecto.cliente;
       proyecto         heap    postgres    false    9         �            1259    49441    comuna    TABLE     �   CREATE TABLE proyecto.comuna (
    cod_comuna character varying(10),
    nombre_comuna character varying(30),
    CONSTRAINT nn_nombre_comuna CHECK ((nombre_comuna IS NOT NULL))
);
    DROP TABLE proyecto.comuna;
       proyecto         heap    postgres    false    9         �            1259    49416    rol_usuario    TABLE     �   CREATE TABLE proyecto.rol_usuario (
    id_rol character varying(10) NOT NULL,
    cargo character varying(20),
    CONSTRAINT nn_cargo CHECK ((cargo IS NOT NULL))
);
 !   DROP TABLE proyecto.rol_usuario;
       proyecto         heap    postgres    false    9         �            1259    49409    usuario    TABLE     y  CREATE TABLE proyecto.usuario (
    id_usuario character varying(10) NOT NULL,
    nombre_usuario character varying(30),
    rol_usuario character varying(20),
    email character varying(30),
    "contraseña" character varying(20),
    CONSTRAINT "nn_constraseña" CHECK (("contraseña" IS NOT NULL)),
    CONSTRAINT nn_nombre_usuario CHECK ((nombre_usuario IS NOT NULL))
);
    DROP TABLE proyecto.usuario;
       proyecto         heap    postgres    false    9         �            1259    49406    usuarios    TABLE     o   CREATE TABLE proyecto.usuarios (
    usuario character varying(30),
    "contraseña" character varying(10)
);
    DROP TABLE proyecto.usuarios;
       proyecto         heap    postgres    false    9         -          0    49435    barrio 
   TABLE DATA           H   COPY proyecto.barrio (id_barrio, cod_comuna, nombre_barrio) FROM stdin;
    proyecto          postgres    false    237       3117.dat ,          0    49422    cliente 
   TABLE DATA           �   COPY proyecto.cliente (id_cliente, usuario_cliente, nombre_cliente, apellido_cliente, documento, telefono, direccion, barrio, comuna, estrato, estado) FROM stdin;
    proyecto          postgres    false    236       3116.dat .          0    49441    comuna 
   TABLE DATA           =   COPY proyecto.comuna (cod_comuna, nombre_comuna) FROM stdin;
    proyecto          postgres    false    238       3118.dat +          0    49416    rol_usuario 
   TABLE DATA           6   COPY proyecto.rol_usuario (id_rol, cargo) FROM stdin;
    proyecto          postgres    false    235       3115.dat *          0    49409    usuario 
   TABLE DATA           b   COPY proyecto.usuario (id_usuario, nombre_usuario, rol_usuario, email, "contraseña") FROM stdin;
    proyecto          postgres    false    234       3114.dat )          0    49406    usuarios 
   TABLE DATA           <   COPY proyecto.usuarios (usuario, "contraseña") FROM stdin;
    proyecto          postgres    false    233       3113.dat �           2606    49440    barrio pk_cod_comuna 
   CONSTRAINT     \   ALTER TABLE ONLY proyecto.barrio
    ADD CONSTRAINT pk_cod_comuna PRIMARY KEY (cod_comuna);
 @   ALTER TABLE ONLY proyecto.barrio DROP CONSTRAINT pk_cod_comuna;
       proyecto            postgres    false    237         �           2606    49431    cliente pk_id_cliente 
   CONSTRAINT     ]   ALTER TABLE ONLY proyecto.cliente
    ADD CONSTRAINT pk_id_cliente PRIMARY KEY (id_cliente);
 A   ALTER TABLE ONLY proyecto.cliente DROP CONSTRAINT pk_id_cliente;
       proyecto            postgres    false    236         �           2606    49421    rol_usuario pk_rol 
   CONSTRAINT     V   ALTER TABLE ONLY proyecto.rol_usuario
    ADD CONSTRAINT pk_rol PRIMARY KEY (id_rol);
 >   ALTER TABLE ONLY proyecto.rol_usuario DROP CONSTRAINT pk_rol;
       proyecto            postgres    false    235         �           2606    49415    usuario pk_usuario 
   CONSTRAINT     Z   ALTER TABLE ONLY proyecto.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY proyecto.usuario DROP CONSTRAINT pk_usuario;
       proyecto            postgres    false    234                                                 3117.dat                                                                                            0000600 0004000 0002000 00000000005 14056321702 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3116.dat                                                                                            0000600 0004000 0002000 00000000005 14056321702 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3118.dat                                                                                            0000600 0004000 0002000 00000000005 14056321702 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3115.dat                                                                                            0000600 0004000 0002000 00000000005 14056321702 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3114.dat                                                                                            0000600 0004000 0002000 00000000005 14056321702 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3113.dat                                                                                            0000600 0004000 0002000 00000000023 14056321702 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        neira	neira12
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000014640 14056321702 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: proyecto; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA proyecto;


ALTER SCHEMA proyecto OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: barrio; Type: TABLE; Schema: proyecto; Owner: postgres
--

CREATE TABLE proyecto.barrio (
    id_barrio character varying(2),
    cod_comuna character varying(10) NOT NULL,
    nombre_barrio character varying(30),
    CONSTRAINT nn_nombre_barrio CHECK ((nombre_barrio IS NOT NULL))
);


ALTER TABLE proyecto.barrio OWNER TO postgres;

--
-- Name: cliente; Type: TABLE; Schema: proyecto; Owner: postgres
--

CREATE TABLE proyecto.cliente (
    id_cliente character varying(10) NOT NULL,
    usuario_cliente character varying(10),
    nombre_cliente character varying(30),
    apellido_cliente character varying(30),
    documento character varying(10),
    telefono character varying(10),
    direccion character varying(30),
    barrio character varying(20),
    comuna character varying(2),
    estrato character varying(2),
    estado character varying(10),
    CONSTRAINT nn_apellido_cliente CHECK ((apellido_cliente IS NOT NULL)),
    CONSTRAINT nn_documento CHECK ((documento IS NOT NULL)),
    CONSTRAINT nn_estado CHECK ((estado IS NOT NULL)),
    CONSTRAINT nn_estrato CHECK ((estrato IS NOT NULL)),
    CONSTRAINT nn_nombre_cliente CHECK ((nombre_cliente IS NOT NULL))
);


ALTER TABLE proyecto.cliente OWNER TO postgres;

--
-- Name: comuna; Type: TABLE; Schema: proyecto; Owner: postgres
--

CREATE TABLE proyecto.comuna (
    cod_comuna character varying(10),
    nombre_comuna character varying(30),
    CONSTRAINT nn_nombre_comuna CHECK ((nombre_comuna IS NOT NULL))
);


ALTER TABLE proyecto.comuna OWNER TO postgres;

--
-- Name: rol_usuario; Type: TABLE; Schema: proyecto; Owner: postgres
--

CREATE TABLE proyecto.rol_usuario (
    id_rol character varying(10) NOT NULL,
    cargo character varying(20),
    CONSTRAINT nn_cargo CHECK ((cargo IS NOT NULL))
);


ALTER TABLE proyecto.rol_usuario OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: proyecto; Owner: postgres
--

CREATE TABLE proyecto.usuario (
    id_usuario character varying(10) NOT NULL,
    nombre_usuario character varying(30),
    rol_usuario character varying(20),
    email character varying(30),
    "contraseña" character varying(20),
    CONSTRAINT "nn_constraseña" CHECK (("contraseña" IS NOT NULL)),
    CONSTRAINT nn_nombre_usuario CHECK ((nombre_usuario IS NOT NULL))
);


ALTER TABLE proyecto.usuario OWNER TO postgres;

--
-- Name: usuarios; Type: TABLE; Schema: proyecto; Owner: postgres
--

CREATE TABLE proyecto.usuarios (
    usuario character varying(30),
    "contraseña" character varying(10)
);


ALTER TABLE proyecto.usuarios OWNER TO postgres;

--
-- Data for Name: barrio; Type: TABLE DATA; Schema: proyecto; Owner: postgres
--

COPY proyecto.barrio (id_barrio, cod_comuna, nombre_barrio) FROM stdin;
\.
COPY proyecto.barrio (id_barrio, cod_comuna, nombre_barrio) FROM '$$PATH$$/3117.dat';

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: proyecto; Owner: postgres
--

COPY proyecto.cliente (id_cliente, usuario_cliente, nombre_cliente, apellido_cliente, documento, telefono, direccion, barrio, comuna, estrato, estado) FROM stdin;
\.
COPY proyecto.cliente (id_cliente, usuario_cliente, nombre_cliente, apellido_cliente, documento, telefono, direccion, barrio, comuna, estrato, estado) FROM '$$PATH$$/3116.dat';

--
-- Data for Name: comuna; Type: TABLE DATA; Schema: proyecto; Owner: postgres
--

COPY proyecto.comuna (cod_comuna, nombre_comuna) FROM stdin;
\.
COPY proyecto.comuna (cod_comuna, nombre_comuna) FROM '$$PATH$$/3118.dat';

--
-- Data for Name: rol_usuario; Type: TABLE DATA; Schema: proyecto; Owner: postgres
--

COPY proyecto.rol_usuario (id_rol, cargo) FROM stdin;
\.
COPY proyecto.rol_usuario (id_rol, cargo) FROM '$$PATH$$/3115.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: proyecto; Owner: postgres
--

COPY proyecto.usuario (id_usuario, nombre_usuario, rol_usuario, email, "contraseña") FROM stdin;
\.
COPY proyecto.usuario (id_usuario, nombre_usuario, rol_usuario, email, "contraseña") FROM '$$PATH$$/3114.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: proyecto; Owner: postgres
--

COPY proyecto.usuarios (usuario, "contraseña") FROM stdin;
\.
COPY proyecto.usuarios (usuario, "contraseña") FROM '$$PATH$$/3113.dat';

--
-- Name: barrio pk_cod_comuna; Type: CONSTRAINT; Schema: proyecto; Owner: postgres
--

ALTER TABLE ONLY proyecto.barrio
    ADD CONSTRAINT pk_cod_comuna PRIMARY KEY (cod_comuna);


--
-- Name: cliente pk_id_cliente; Type: CONSTRAINT; Schema: proyecto; Owner: postgres
--

ALTER TABLE ONLY proyecto.cliente
    ADD CONSTRAINT pk_id_cliente PRIMARY KEY (id_cliente);


--
-- Name: rol_usuario pk_rol; Type: CONSTRAINT; Schema: proyecto; Owner: postgres
--

ALTER TABLE ONLY proyecto.rol_usuario
    ADD CONSTRAINT pk_rol PRIMARY KEY (id_rol);


--
-- Name: usuario pk_usuario; Type: CONSTRAINT; Schema: proyecto; Owner: postgres
--

ALTER TABLE ONLY proyecto.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                