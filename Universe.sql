--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(30),
    size numeric,
    distance_from_earth numeric,
    type character varying(15),
    number integer NOT NULL
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comet_id_seq OWNED BY public.comets.comets_id;


--
-- Name: comets_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_number_seq OWNER TO freecodecamp;

--
-- Name: comets_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_number_seq OWNED BY public.comets.number;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    type character varying(10) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_from_earth integer,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: inspiring_quote; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.inspiring_quote (
    name character varying(30),
    quote text,
    inspiring_quote_id integer NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.inspiring_quote OWNER TO freecodecamp;

--
-- Name: inspiring_quote_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inspiring_quote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inspiring_quote_id_seq OWNER TO freecodecamp;

--
-- Name: inspiring_quote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inspiring_quote_id_seq OWNED BY public.inspiring_quote.inspiring_quote_id;


--
-- Name: inspiring_quote_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inspiring_quote_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inspiring_quote_number_seq OWNER TO freecodecamp;

--
-- Name: inspiring_quote_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inspiring_quote_number_seq OWNED BY public.inspiring_quote.number;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer NOT NULL,
    type character varying(20) NOT NULL,
    distance_from_earth boolean NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_number_seq OWNER TO freecodecamp;

--
-- Name: moon_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_number_seq OWNED BY public.moon.number;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(10),
    size numeric,
    distance_from_earth numeric,
    type character varying(15),
    number integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_number_seq OWNER TO freecodecamp;

--
-- Name: planet_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_number_seq OWNED BY public.planet.number;


--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    size numeric,
    distance_from_earth boolean,
    type character varying(15),
    galaxy_id integer,
    number integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_number_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_number_seq OWNER TO freecodecamp;

--
-- Name: star_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_number_seq OWNED BY public.star.number;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comet_id_seq'::regclass);


--
-- Name: comets number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN number SET DEFAULT nextval('public.comets_number_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: inspiring_quote inspiring_quote_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inspiring_quote ALTER COLUMN inspiring_quote_id SET DEFAULT nextval('public.inspiring_quote_id_seq'::regclass);


--
-- Name: inspiring_quote number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inspiring_quote ALTER COLUMN number SET DEFAULT nextval('public.inspiring_quote_number_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN number SET DEFAULT nextval('public.moon_number_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN number SET DEFAULT nextval('public.planet_number_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star number; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN number SET DEFAULT nextval('public.star_number_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'gris', 23, 74, 'grande', 1);
INSERT INTO public.comets VALUES (2, 'cafe', 34, 54, 'grande', 2);
INSERT INTO public.comets VALUES (3, 'naranja', 87, 83, 'pequeño', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andromeda', 'espiral', 1, 150000, 200000);
INSERT INTO public.galaxy VALUES ('via_lactea', 'espiral', 2, 0, 52850);
INSERT INTO public.galaxy VALUES ('magallanes', 'enana', 3, 163000, 35000);
INSERT INTO public.galaxy VALUES ('osa_menor', 'esferoidal', 4, 200000, 1000);
INSERT INTO public.galaxy VALUES ('can_mayor', 'irregular', 5, 25000, 0);
INSERT INTO public.galaxy VALUES ('draco', 'deo', 6, 26000, 1500);


--
-- Data for Name: inspiring_quote; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.inspiring_quote VALUES (NULL, NULL, 1, 1);
INSERT INTO public.inspiring_quote VALUES ('carl_sagan', 'Every one of us is, in the cosmic perspective, precious. If a human disagrees with you, let him live. In a hundred billion galaxies, you will not find another.', 2, 2);
INSERT INTO public.inspiring_quote VALUES ('tysson', 'stars are beautiful', 3, 3);
INSERT INTO public.inspiring_quote VALUES ('fernando', 'hola, que tal', 4, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'la', 1, 'u', false, 1);
INSERT INTO public.moon VALUES (3, 'le', 2, 'o', false, 2);
INSERT INTO public.moon VALUES (4, 'li', 3, 'i', false, 3);
INSERT INTO public.moon VALUES (5, 'llof', 4, 'a', false, 4);
INSERT INTO public.moon VALUES (6, 'ilo', 5, 'a', false, 5);
INSERT INTO public.moon VALUES (7, 'lilo', 34, 'a', false, 6);
INSERT INTO public.moon VALUES (8, 'proust', 542, 'a', true, 7);
INSERT INTO public.moon VALUES (9, 'nana', 4234, 'b', true, 8);
INSERT INTO public.moon VALUES (10, 'grecia', 24234, 'j', true, 9);
INSERT INTO public.moon VALUES (11, 'hola', 2233, 'o', true, 10);
INSERT INTO public.moon VALUES (12, 'hallo', 12322, 'a', true, 11);
INSERT INTO public.moon VALUES (13, 'merlinito', 24234, 'o', false, 12);
INSERT INTO public.moon VALUES (14, 'chaplin', 7923, 'i', true, 13);
INSERT INTO public.moon VALUES (15, 'eco', 27383, 'u', true, 14);
INSERT INTO public.moon VALUES (16, 'capa', 1282, 'a', true, 15);
INSERT INTO public.moon VALUES (17, 'klimt', 7293, 'j', true, 16);
INSERT INTO public.moon VALUES (18, 'asterix', 8293, 'i', true, 17);
INSERT INTO public.moon VALUES (19, 'snoopy', 78293, 'g', true, 18);
INSERT INTO public.moon VALUES (20, 'rulfo', 78293, 'f', true, 19);
INSERT INTO public.moon VALUES (21, 'gaudi', 78823, 'j', true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 888888, 77777, 'mediano', 1);
INSERT INTO public.planet VALUES (2, 'marte', 887, 985, 'chico', 2);
INSERT INTO public.planet VALUES (3, 'saturno', 4747, 7373, 'grande', 3);
INSERT INTO public.planet VALUES (4, 'jupiter', 56, 34, 'grande', 4);
INSERT INTO public.planet VALUES (5, 'merlin', 32, 12, 'grande', 5);
INSERT INTO public.planet VALUES (6, 'clio', 89, 98, 'grande', 6);
INSERT INTO public.planet VALUES (7, 'cleopatra', 893, 7893, 'grande', 7);
INSERT INTO public.planet VALUES (8, 'mercurio', 783, 7823, 'chico', 8);
INSERT INTO public.planet VALUES (9, 'urano', 79, 234, 'chiquito', 9);
INSERT INTO public.planet VALUES (10, 'tuano', 23, 453, 'grande', 10);
INSERT INTO public.planet VALUES (11, 'hercules', 823, 823, 'grande', 11);
INSERT INTO public.planet VALUES (12, 'megara', 78293, 72839, 'chico', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 1391016, true, 'G', 2, 1);
INSERT INTO public.star VALUES (2, 'pistola', 1458987, true, 'F', 2, 2);
INSERT INTO public.star VALUES (3, 'estrellota', 777777, true, 'D', 2, 3);
INSERT INTO public.star VALUES (4, 'estrellisima', 99999, true, 'E', 2, 4);
INSERT INTO public.star VALUES (5, 'estrellada', 88888, false, 'T', 2, 5);
INSERT INTO public.star VALUES (6, 'burro', 9997879, false, 'Y', 2, 6);


--
-- Name: comets_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comet_id_seq', 3, true);


--
-- Name: comets_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_number_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: inspiring_quote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inspiring_quote_id_seq', 4, true);


--
-- Name: inspiring_quote_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inspiring_quote_number_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 53, true);


--
-- Name: moon_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_number_seq', 20, true);


--
-- Name: planet_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_number_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_number_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_number_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comets comets_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_number_key UNIQUE (number);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: inspiring_quote inspiring_quote_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inspiring_quote
    ADD CONSTRAINT inspiring_quote_id_key UNIQUE (inspiring_quote_id);


--
-- Name: inspiring_quote inspiring_quote_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inspiring_quote
    ADD CONSTRAINT inspiring_quote_name_key UNIQUE (name);


--
-- Name: inspiring_quote inspiring_quote_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inspiring_quote
    ADD CONSTRAINT inspiring_quote_pkey PRIMARY KEY (inspiring_quote_id);


--
-- Name: inspiring_quote inspiring_quote_quote_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inspiring_quote
    ADD CONSTRAINT inspiring_quote_quote_key UNIQUE (quote);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_number_key UNIQUE (number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_number_key UNIQUE (number);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_number_key UNIQUE (number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
