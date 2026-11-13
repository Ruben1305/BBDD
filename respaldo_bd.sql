--
-- PostgreSQL database dump
--

\restrict 66O2OPYFwwKWfO6GSZTcpmnvaG6ydpxeJ8wryFBN470i9ip4Ya111FuMQIlAgdf

-- Dumped from database version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    dni text NOT NULL,
    nom text,
    tlf integer
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- Name: pista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pista (
    codi integer NOT NULL,
    superficie text
);


ALTER TABLE public.pista OWNER TO postgres;

--
-- Name: reserva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva (
    codi_pista integer NOT NULL,
    dni_empleado text NOT NULL,
    data date,
    hora text,
    durada text
);


ALTER TABLE public.reserva OWNER TO postgres;

--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleado (dni, nom, tlf) FROM stdin;
\.


--
-- Data for Name: pista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pista (codi, superficie) FROM stdin;
\.


--
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva (codi_pista, dni_empleado, data, hora, durada) FROM stdin;
\.


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (dni);


--
-- Name: pista pista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pista
    ADD CONSTRAINT pista_pkey PRIMARY KEY (codi);


--
-- Name: reserva reserva_codi_pista_dni_empleado_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_codi_pista_dni_empleado_key UNIQUE (codi_pista, dni_empleado);


--
-- Name: reserva nocodi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT nocodi FOREIGN KEY (codi_pista) REFERENCES public.pista(codi) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: reserva nodni; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT nodni FOREIGN KEY (dni_empleado) REFERENCES public.empleado(dni) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict 66O2OPYFwwKWfO6GSZTcpmnvaG6ydpxeJ8wryFBN470i9ip4Ya111FuMQIlAgdf

