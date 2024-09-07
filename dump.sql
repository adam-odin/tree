--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.2)

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
-- Name: link; Type: TABLE; Schema: public; Owner: ad
--

CREATE TABLE public.link (
    from_it character varying(255),
    go character varying(255) NOT NULL,
    to_it character varying(255)
);


ALTER TABLE public.link OWNER TO ad;

--
-- Name: thing; Type: TABLE; Schema: public; Owner: ad
--

CREATE TABLE public.thing (
    it character varying(255) NOT NULL
);


ALTER TABLE public.thing OWNER TO ad;

--
-- Data for Name: link; Type: TABLE DATA; Schema: public; Owner: ad
--

COPY public.link (from_it, go, to_it) FROM stdin;
proton	1=	H
electron	1~	H
\.


--
-- Data for Name: thing; Type: TABLE DATA; Schema: public; Owner: ad
--

COPY public.thing (it) FROM stdin;
H
proton
electron
\.


--
-- Name: thing thing_pkey; Type: CONSTRAINT; Schema: public; Owner: ad
--

ALTER TABLE ONLY public.thing
    ADD CONSTRAINT thing_pkey PRIMARY KEY (it);


--
-- Name: link link_from_it_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ad
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT link_from_it_fkey FOREIGN KEY (from_it) REFERENCES public.thing(it);


--
-- Name: link link_to_it_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ad
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT link_to_it_fkey FOREIGN KEY (to_it) REFERENCES public.thing(it);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO ad;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO ad;


--
-- PostgreSQL database dump complete
--

