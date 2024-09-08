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
    by character varying(255),
    go character varying(255) NOT NULL,
    na character varying(255)
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

COPY public.link (by, go, na) FROM stdin;
p	1=	H
p	2=	He
p	3=	Li
p	4=	Be
p	5=	B
p	6=	C
p	7=	N
p	8=	O
p	9=	F
p	10=	Ne
p	11=	Na
p	12=	Mg
p	13=	Al
p	14=	Si
p	15=	P
p	16=	S
p	17=	Cl
p	18=	Ar
p	19=	K
p	20=	Ca
p	21=	Sc
p	22=	Ti
p	23=	V
p	24=	Cr
p	25=	Mn
p	26=	Fe
p	27=	Co
p	28=	Ni
p	29=	Cu
p	30=	Zn
p	31=	Ga
p	32=	Ge
p	33=	As
p	34=	Se
p	35=	Br
p	36=	Kr
p	37=	Rb
p	38=	Sr
p	39=	Y
p	40=	Zr
p	41=	Nb
p	42=	Mo
p	43=	Tc
p	44=	Ru
p	45=	Rh
p	46=	Pd
p	47=	Ag
p	48=	Cd
p	49=	In
p	50=	Sn
p	51=	Sb
p	52=	Te
p	53=	I
p	54=	Xe
p	55=	Cs
p	56=	Ba
p	57=	La
p	58=	Ce
p	59=	Pr
p	60=	Nd
p	61=	Pm
p	62=	Sm
p	63=	Eu
p	64=	Gd
p	65=	Tb
p	66=	Dy
p	67=	Ho
p	68=	Er
p	69=	Tm
e	1~	H
p	70=	Yb
p	71=	Lu
p	72=	Hf
p	73=	Ta
p	74=	W
p	75=	Re
p	76=	Os
p	77=	Ir
p	78=	Pt
p	79=	Au
p	80=	Hg
p	81=	Tl
p	82=	Pb
p	83=	Bi
p	84=	Po
p	85=	At
p	86=	Rn
p	87=	Fr
p	88=	Ra
p	89=	Ac
p	90=	Th
p	91=	Pa
p	92=	U
p	93=	Np
p	94=	Pu
p	95=	Am
p	96=	Cm
p	97=	Bk
p	98=	Cf
p	99=	Es
p	100=	Fm
p	101=	Md
p	102=	No
p	103=	Lr
p	104=	Rf
p	105=	Db
p	106=	Sg
p	107=	Bh
p	108=	Hs
p	109=	Mt
p	110=	Ds
p	111=	Rg
p	112=	Cn
p	113=	Nh
p	114=	Fl
p	115=	Mc
p	116=	Lv
p	117=	Ts
p	118=	Og
\.


--
-- Data for Name: thing; Type: TABLE DATA; Schema: public; Owner: ad
--

COPY public.thing (it) FROM stdin;
H
He
Li
Be
B
C
N
O
F
Ne
Na
Mg
Al
Si
P
S
Cl
Ar
K
Ca
Sc
Ti
V
Cr
Mn
Fe
Co
Ni
Cu
Zn
Ga
Ge
As
Se
Br
Kr
Rb
Sr
Y
Zr
Nb
Mo
Tc
Ru
Rh
Pd
Ag
Cd
In
Sn
Sb
Te
I
Xe
Cs
Ba
La
Ce
Pr
Nd
Pm
Sm
Eu
Gd
Tb
Dy
Ho
Er
Tm
Yb
Lu
Hf
Ta
W
Re
Os
Ir
Pt
Au
Hg
Tl
Pb
Bi
Po
At
Rn
Fr
Ra
Ac
Th
Pa
U
Np
Pu
Am
Cm
Bk
Cf
Es
Fm
Md
No
Lr
Rf
Db
Sg
Bh
Hs
Mt
Ds
Rg
Cn
Nh
Fl
Mc
Lv
Ts
Og
p
e
neutron
\.


--
-- Name: thing thing_pkey; Type: CONSTRAINT; Schema: public; Owner: ad
--

ALTER TABLE ONLY public.thing
    ADD CONSTRAINT thing_pkey PRIMARY KEY (it);


--
-- Name: link link_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ad
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT link_by_fkey FOREIGN KEY (by) REFERENCES public.thing(it);


--
-- Name: link link_na_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ad
--

ALTER TABLE ONLY public.link
    ADD CONSTRAINT link_na_fkey FOREIGN KEY (na) REFERENCES public.thing(it);


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

