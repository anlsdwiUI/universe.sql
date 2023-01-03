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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    designation character varying(30) NOT NULL,
    constellation character varying(50),
    name_meaning text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_name character varying(50),
    name_meaning text,
    moon_check boolean,
    planet_check boolean
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    period_days numeric NOT NULL,
    distance integer,
    bayern_designation text,
    mass integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_compare; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_compare (
    planet_compare_id integer NOT NULL,
    name character varying(50) NOT NULL,
    moons integer NOT NULL,
    rings character varying(10)
);


ALTER TABLE public.planet_compare OWNER TO freecodecamp;

--
-- Name: planet_compare_planet_compare_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_compare_planet_compare_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_compare_planet_compare_id_seq OWNER TO freecodecamp;

--
-- Name: planet_compare_planet_compare_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_compare_planet_compare_id_seq OWNED BY public.planet_compare.planet_compare_id;


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
    name character varying(50) NOT NULL,
    constellation character varying(50),
    designation character varying(30) NOT NULL,
    bayern_designation text
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_compare planet_compare_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_compare ALTER COLUMN planet_compare_id SET DEFAULT nextval('public.planet_compare_planet_compare_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'NGC224', 'Andromeda', 'In mythology, Andromeda is the daughtrer of the kings of Ethiopia');
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 'NGC4038', 'Corvus', 'This is a dual galaxy');
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'M82', 'Ursa Major', 'it is shaped like cigar');
INSERT INTO public.galaxy VALUES (5, 'Fireworks Galaxy', 'NGC6946', 'Cygnus', 'It is extremely bright and has lots of colors');
INSERT INTO public.galaxy VALUES (6, 'Little Sombrero Galaxy', 'UGC8', 'Pegasus', 'It is looks like a sombrero');
INSERT INTO public.galaxy VALUES (3, 'Tadpole', 'ARP188', 'Draco', 'It has a long tail');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', 'Month', true, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 'Greek god of fear and panic', false, true);
INSERT INTO public.moon VALUES (3, 'Io', 'Jupyter', 'Greek god of dread and terror', true, false);
INSERT INTO public.moon VALUES (4, 'Mimas', 'Saturn', 'One of gigantes', false, true);
INSERT INTO public.moon VALUES (5, 'Ariel', 'Uranus', 'Name after a character in Shakerspear', false, true);
INSERT INTO public.moon VALUES (6, 'Triton', 'Neptune', 'Greek of the sea', true, false);
INSERT INTO public.moon VALUES (7, 'Sao', 'Spe', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Larissa', 'Taphao Thong', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Naiad', 'Dimidium', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Neso', 'Orbital', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Cupid', 'Arkas', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Mab', 'Arion', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Puck', 'Pluto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Vanth', 'Orcus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Actaea', 'Salacia', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Nix', 'Haumea', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Weywot', 'Quaoar', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Styx', 'Makemake', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Hydra', 'Varda', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 'Eris', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (12, 'Neptune', 1647, 449, NULL, NULL);
INSERT INTO public.planet VALUES (1, 'Spe', 185, 249, 'Andromedae', 48);
INSERT INTO public.planet VALUES (2, 'Taphao Thong', 1078, 45, 'Ursae Majoris', 253);
INSERT INTO public.planet VALUES (3, 'Dimidium', 4230, 50, 'Pegasi', 472);
INSERT INTO public.planet VALUES (4, 'Orbitar', 4230, 317, 'Draconis A', 388);
INSERT INTO public.planet VALUES (5, 'Arkas', 1840, 287, 'Corvi', 27);
INSERT INTO public.planet VALUES (6, 'Arion', 9933, 238, 'Cygni Aa', 103);
INSERT INTO public.planet VALUES (7, 'Earth', 1000, 149, NULL, 597);
INSERT INTO public.planet VALUES (8, 'Mars', 1880, 227, NULL, 641);
INSERT INTO public.planet VALUES (9, 'Jupiter', 1186, 778, NULL, 189);
INSERT INTO public.planet VALUES (10, 'Saturn', 2944, 142, NULL, 868);
INSERT INTO public.planet VALUES (11, 'Uranus', 8401, 287, NULL, 102);


--
-- Data for Name: planet_compare; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_compare VALUES (1, 'Mercury', 0, 'No');
INSERT INTO public.planet_compare VALUES (2, 'Venus', 0, 'No');
INSERT INTO public.planet_compare VALUES (3, 'Earth', 1, 'No');
INSERT INTO public.planet_compare VALUES (4, 'Mars', 2, 'No');
INSERT INTO public.planet_compare VALUES (5, 'Jupyter', 80, 'Yes');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Adhil', 'Andromeda', 'HR390', 'Andromedae');
INSERT INTO public.star VALUES (2, 'Alchiba', 'Corvus', 'HR4623', 'Corvi');
INSERT INTO public.star VALUES (4, 'Alioth', 'Ursa Major', 'HR4905', 'Ursae Majoris');
INSERT INTO public.star VALUES (5, 'Aljanah', 'Cygnus', 'HR7949', 'Cygni Aa');
INSERT INTO public.star VALUES (6, 'Alkarab', 'Pegasus', 'HR8905', 'Pegasi');
INSERT INTO public.star VALUES (3, 'Alrakis', 'Draco', 'HR6370', 'Draconis A');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_compare_planet_compare_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_compare_planet_compare_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_designation_key UNIQUE (designation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_key UNIQUE (planet_name);


--
-- Name: planet planet_bayern_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_bayern_designation_key UNIQUE (bayern_designation);


--
-- Name: planet_compare planet_compare_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_compare
    ADD CONSTRAINT planet_compare_name_key UNIQUE (name);


--
-- Name: planet_compare planet_compare_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_compare
    ADD CONSTRAINT planet_compare_pkey PRIMARY KEY (planet_compare_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_bayern_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_bayern_designation_key UNIQUE (bayern_designation);


--
-- Name: star star_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_key UNIQUE (constellation);


--
-- Name: star star_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_designation_key UNIQUE (designation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_fkey FOREIGN KEY (constellation) REFERENCES public.galaxy(constellation);


--
-- PostgreSQL database dump complete
--

