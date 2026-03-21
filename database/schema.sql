--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: insert_salesinvoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.insert_salesinvoice (
    pki_sales_invoice_id integer NOT NULL,
    dt_insertion_date timestamp without time zone,
    vc_customer_name character varying(255),
    vc_address character varying(255)
);


ALTER TABLE public.insert_salesinvoice OWNER TO postgres;

--
-- Name: insert_salesinvoice_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.insert_salesinvoice_details (
    pki_sales_invoice_details_id integer NOT NULL,
    fki_sales_invoice_id integer,
    vc_item_name character varying(255),
    item_rate integer
);


ALTER TABLE public.insert_salesinvoice_details OWNER TO postgres;

--
-- Name: insert_salesinvoice_details_pki_sales_invoice_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.insert_salesinvoice_details_pki_sales_invoice_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.insert_salesinvoice_details_pki_sales_invoice_details_id_seq OWNER TO postgres;

--
-- Name: insert_salesinvoice_details_pki_sales_invoice_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.insert_salesinvoice_details_pki_sales_invoice_details_id_seq OWNED BY public.insert_salesinvoice_details.pki_sales_invoice_details_id;


--
-- Name: insert_salesinvoice_pki_sales_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.insert_salesinvoice_pki_sales_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.insert_salesinvoice_pki_sales_invoice_id_seq OWNER TO postgres;

--
-- Name: insert_salesinvoice_pki_sales_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.insert_salesinvoice_pki_sales_invoice_id_seq OWNED BY public.insert_salesinvoice.pki_sales_invoice_id;


--
-- Name: tbl_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_users (
    pki_user_id integer NOT NULL,
    username character varying(100),
    password character varying(100)
);


ALTER TABLE public.tbl_users OWNER TO postgres;

--
-- Name: tbl_users_pki_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_users_pki_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tbl_users_pki_user_id_seq OWNER TO postgres;

--
-- Name: tbl_users_pki_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_users_pki_user_id_seq OWNED BY public.tbl_users.pki_user_id;


--
-- Name: insert_salesinvoice pki_sales_invoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insert_salesinvoice ALTER COLUMN pki_sales_invoice_id SET DEFAULT nextval('public.insert_salesinvoice_pki_sales_invoice_id_seq'::regclass);


--
-- Name: insert_salesinvoice_details pki_sales_invoice_details_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insert_salesinvoice_details ALTER COLUMN pki_sales_invoice_details_id SET DEFAULT nextval('public.insert_salesinvoice_details_pki_sales_invoice_details_id_seq'::regclass);


--
-- Name: tbl_users pki_user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_users ALTER COLUMN pki_user_id SET DEFAULT nextval('public.tbl_users_pki_user_id_seq'::regclass);


--
-- Data for Name: insert_salesinvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.insert_salesinvoice (pki_sales_invoice_id, dt_insertion_date, vc_customer_name, vc_address) FROM stdin;
1	\N	AMAL AS	Achakkottil
\.


--
-- Data for Name: insert_salesinvoice_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.insert_salesinvoice_details (pki_sales_invoice_details_id, fki_sales_invoice_id, vc_item_name, item_rate) FROM stdin;
\.


--
-- Data for Name: tbl_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_users (pki_user_id, username, password) FROM stdin;
1	IT	FCO2024
\.


--
-- Name: insert_salesinvoice_details_pki_sales_invoice_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.insert_salesinvoice_details_pki_sales_invoice_details_id_seq', 1, false);


--
-- Name: insert_salesinvoice_pki_sales_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.insert_salesinvoice_pki_sales_invoice_id_seq', 1, true);


--
-- Name: tbl_users_pki_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_users_pki_user_id_seq', 1, true);


--
-- Name: insert_salesinvoice_details insert_salesinvoice_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insert_salesinvoice_details
    ADD CONSTRAINT insert_salesinvoice_details_pkey PRIMARY KEY (pki_sales_invoice_details_id);


--
-- Name: insert_salesinvoice insert_salesinvoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insert_salesinvoice
    ADD CONSTRAINT insert_salesinvoice_pkey PRIMARY KEY (pki_sales_invoice_id);


--
-- Name: tbl_users tbl_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_pkey PRIMARY KEY (pki_user_id);


--
-- Name: insert_salesinvoice_details fk_salesinvoice_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insert_salesinvoice_details
    ADD CONSTRAINT fk_salesinvoice_id FOREIGN KEY (fki_sales_invoice_id) REFERENCES public.insert_salesinvoice(pki_sales_invoice_id);


--
-- PostgreSQL database dump complete
--

