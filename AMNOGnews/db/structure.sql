SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: duo_subgroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.duo_subgroups (
    id bigint NOT NULL,
    manufacturer character varying NOT NULL,
    gba_number integer NOT NULL,
    name character varying NOT NULL,
    act character varying NOT NULL,
    evidence boolean NOT NULL,
    itc boolean NOT NULL,
    study_one character varying,
    study_two character varying,
    study_thre character varying,
    study_four character varying,
    study_five character varying,
    study_six character varying,
    population_min integer NOT NULL,
    population_max integer NOT NULL,
    cost_zvt numeric NOT NULL,
    cost_drug numeric NOT NULL,
    benefit character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: duo_subgroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.duo_subgroups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: duo_subgroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.duo_subgroups_id_seq OWNED BY public.duo_subgroups.id;


--
-- Name: gbasubgroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gbasubgroups (
    id bigint NOT NULL,
    manufacturer character varying NOT NULL,
    gba_number integer NOT NULL,
    name character varying NOT NULL,
    act character varying NOT NULL,
    evidence boolean NOT NULL,
    itc boolean NOT NULL,
    study_one character varying,
    study_two character varying,
    study_thre character varying,
    study_four character varying,
    study_five character varying,
    study_six character varying,
    population_min integer NOT NULL,
    population_max integer NOT NULL,
    cost_zvt numeric NOT NULL,
    cost_drug numeric NOT NULL,
    benefit character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: gbasubgroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gbasubgroups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gbasubgroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gbasubgroups_id_seq OWNED BY public.gbasubgroups.id;


--
-- Name: mains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mains (
    id bigint NOT NULL,
    gba_number integer NOT NULL,
    drug_name character varying NOT NULL,
    brand_name character varying NOT NULL,
    manufacturer character varying NOT NULL,
    orphan_drug boolean NOT NULL,
    new_field boolean NOT NULL,
    expired_time boolean NOT NULL,
    basic_evidence boolean NOT NULL,
    exceedance_money boolean NOT NULL,
    lors_of_odd boolean NOT NULL,
    start_procedure date NOT NULL,
    end_procedure date,
    status character varying NOT NULL,
    field_of_application character varying NOT NULL,
    indication character varying NOT NULL,
    subgroups integer NOT NULL,
    benefit_percentige numeric NOT NULL,
    benefit boolean NOT NULL,
    market_availability character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: mains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: mains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mains_id_seq OWNED BY public.mains.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: skcs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skcs (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    CONSTRAINT email_must_be_company_email CHECK (((email)::text ~* '^[^@]+@skc-beratung\.de$'::text))
);


--
-- Name: skcs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: skcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skcs_id_seq OWNED BY public.skcs.id;


--
-- Name: studies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.studies (
    id bigint NOT NULL,
    gba_number integer NOT NULL,
    study_name character varying NOT NULL,
    study_arm_number integer NOT NULL,
    pivotal boolean NOT NULL,
    cross_over boolean NOT NULL,
    extension boolean NOT NULL,
    controlled boolean NOT NULL,
    registry boolean NOT NULL,
    nhs boolean NOT NULL,
    randomized boolean NOT NULL,
    randomization character varying NOT NULL,
    population integer NOT NULL,
    study_length character varying NOT NULL,
    evidenz character varying NOT NULL,
    annotation character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: studies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.studies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: studies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.studies_id_seq OWNED BY public.studies.id;


--
-- Name: study_arms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.study_arms (
    id bigint NOT NULL,
    controlled_intervention character varying NOT NULL,
    gba_number integer NOT NULL,
    medication character varying NOT NULL,
    dosing character varying NOT NULL,
    blinded boolean NOT NULL,
    itc boolean NOT NULL,
    number_patient integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: study_arms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.study_arms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: study_arms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.study_arms_id_seq OWNED BY public.study_arms.id;


--
-- Name: subgroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subgroups (
    id bigint NOT NULL,
    manufacturer character varying NOT NULL,
    gba_number integer NOT NULL,
    sub_name character varying NOT NULL,
    act character varying NOT NULL,
    evidence boolean NOT NULL,
    itc boolean NOT NULL,
    studies integer NOT NULL,
    population_min integer NOT NULL,
    population_max integer NOT NULL,
    cost_zvt numeric,
    cost_drug numeric,
    lightihood character varying NOT NULL,
    benefit character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: subgroups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subgroups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subgroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subgroups_id_seq OWNED BY public.subgroups.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: duo_subgroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.duo_subgroups ALTER COLUMN id SET DEFAULT nextval('public.duo_subgroups_id_seq'::regclass);


--
-- Name: gbasubgroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gbasubgroups ALTER COLUMN id SET DEFAULT nextval('public.gbasubgroups_id_seq'::regclass);


--
-- Name: mains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains ALTER COLUMN id SET DEFAULT nextval('public.mains_id_seq'::regclass);


--
-- Name: skcs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skcs ALTER COLUMN id SET DEFAULT nextval('public.skcs_id_seq'::regclass);


--
-- Name: studies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.studies ALTER COLUMN id SET DEFAULT nextval('public.studies_id_seq'::regclass);


--
-- Name: study_arms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.study_arms ALTER COLUMN id SET DEFAULT nextval('public.study_arms_id_seq'::regclass);


--
-- Name: subgroups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subgroups ALTER COLUMN id SET DEFAULT nextval('public.subgroups_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: duo_subgroups duo_subgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.duo_subgroups
    ADD CONSTRAINT duo_subgroups_pkey PRIMARY KEY (id);


--
-- Name: gbasubgroups gbasubgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gbasubgroups
    ADD CONSTRAINT gbasubgroups_pkey PRIMARY KEY (id);


--
-- Name: mains mains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mains
    ADD CONSTRAINT mains_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: skcs skcs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skcs
    ADD CONSTRAINT skcs_pkey PRIMARY KEY (id);


--
-- Name: studies studies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.studies
    ADD CONSTRAINT studies_pkey PRIMARY KEY (id);


--
-- Name: study_arms study_arms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.study_arms
    ADD CONSTRAINT study_arms_pkey PRIMARY KEY (id);


--
-- Name: subgroups subgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subgroups
    ADD CONSTRAINT subgroups_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_mains_on_gba_number; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_mains_on_gba_number ON public.mains USING btree (gba_number);


--
-- Name: index_mains_on_lower_brand_name_varchar_pattern_ops; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mains_on_lower_brand_name_varchar_pattern_ops ON public.mains USING btree (lower((brand_name)::text) varchar_pattern_ops);


--
-- Name: index_mains_on_lower_drug_name_varchar_pattern_ops; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mains_on_lower_drug_name_varchar_pattern_ops ON public.mains USING btree (lower((drug_name)::text) varchar_pattern_ops);


--
-- Name: index_mains_on_lower_field_of_application_varchar_pattern_ops; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mains_on_lower_field_of_application_varchar_pattern_ops ON public.mains USING btree (lower((field_of_application)::text) varchar_pattern_ops);


--
-- Name: index_mains_on_lower_manufacturer_varchar_pattern_ops; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_mains_on_lower_manufacturer_varchar_pattern_ops ON public.mains USING btree (lower((manufacturer)::text) varchar_pattern_ops);


--
-- Name: index_skcs_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_skcs_on_email ON public.skcs USING btree (email);


--
-- Name: index_skcs_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_skcs_on_reset_password_token ON public.skcs USING btree (reset_password_token);


--
-- Name: index_studies_on_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_studies_on_id ON public.studies USING btree (id);


--
-- Name: index_subgroups_on_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_subgroups_on_id ON public.subgroups USING btree (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
('20180713154904'),
('20180713155022'),
('20180714104814'),
('20180714130717'),
('20180715103907'),
('20180907104048'),
('20180925085103'),
('20181016113524'),
('20181016114905'),
('20181019093849');


