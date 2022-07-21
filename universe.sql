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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30)
)


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_types numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'mushtare', 2000000, 3000000, 343434, 'square', false, true);
INSERT INTO public.galaxy VALUES (2, 'zuhal', 5000000, 7000000, 252525, 'circle', false, true);
INSERT INTO public.galaxy VALUES (3, 'marikh', 1000000, 3000000, 474747, 'square', false, true);
INSERT INTO public.galaxy VALUES (6, 'zuhra', 2000000, 3000000, 323232, 'circle', true, false);
INSERT INTO public.galaxy VALUES (7, 'oranos', 5000000, 4000000, 656565, 'square', true, false);
INSERT INTO public.galaxy VALUES (8, 'atarud', 2000000, 6000000, 454545, 'circle', true, false);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'mahdi', NULL);
INSERT INTO public.galaxy_types VALUES (2, 'ali', NULL);
INSERT INTO public.galaxy_types VALUES (3, 'tawab', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mushtare', 2000000, 3000000, 343434, 'square', false, true, NULL);
INSERT INTO public.moon VALUES (2, 'zuhal', 5000000, 7000000, 252525, 'circle', false, true, NULL);
INSERT INTO public.moon VALUES (3, 'marikh', 1000000, 3000000, 474747, 'square', false, true, NULL);
INSERT INTO public.moon VALUES (4, 'alpha', 2000000, 3000000, 323232, 'circle', true, false, 1);
INSERT INTO public.moon VALUES (5, 'alsephina', 5000000, 4000000, 656565, 'square', true, false, 1);
INSERT INTO public.moon VALUES (6, 'altair', 2000000, 6000000, 454545, 'circle', true, false, 1);
INSERT INTO public.moon VALUES (7, 'alya', 2000000, 3000000, 111111, 'square', true, false, 2);
INSERT INTO public.moon VALUES (8, 'andromeda', 5000000, 1000000, 565656, 'circle', true, false, 2);
INSERT INTO public.moon VALUES (9, 'aquila', 4000000, 1000000, 232323, 'square', true, false, 2);
INSERT INTO public.moon VALUES (10, 'ara', 2000000, 1000000, 232356, 'circle', true, false, 3);
INSERT INTO public.moon VALUES (11, 'ariel', 4000000, 3000000, 484848, 'circle', true, false, 3);
INSERT INTO public.moon VALUES (12, 'atlas', 300000, 6000000, 525252, 'square', true, false, 3);
INSERT INTO public.moon VALUES (13, 'atria', 4000000, 2000000, 232545, 'circle', true, false, 4);
INSERT INTO public.moon VALUES (14, 'auriga', 1000000, 3000000, 454545, 'circle', true, false, 4);
INSERT INTO public.moon VALUES (15, 'auroto', 4000000, 2000000, 232589, 'square', true, false, 4);
INSERT INTO public.moon VALUES (17, 'centuri', 2000000, 3000000, 323232, 'circle', true, false, 5);
INSERT INTO public.moon VALUES (18, 'als', 5000000, 4000000, 656565, 'square', true, false, 5);
INSERT INTO public.moon VALUES (19, 'cassiopeia', 2000000, 6000000, 454545, 'circle', true, false, 5);
INSERT INTO public.moon VALUES (20, 'carina', 2000000, 3000000, 111111, 'square', true, false, 6);
INSERT INTO public.moon VALUES (21, 'capella', 5000000, 1000000, 565656, 'circle', true, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mushtare', 2000000, 3000000, 343434, 'square', false, true, NULL);
INSERT INTO public.planet VALUES (2, 'zuhal', 5000000, 7000000, 252525, 'circle', false, true, NULL);
INSERT INTO public.planet VALUES (3, 'marikh', 1000000, 3000000, 474747, 'square', false, true, NULL);
INSERT INTO public.planet VALUES (4, 'alpha', 2000000, 3000000, 323232, 'circle', true, false, 1);
INSERT INTO public.planet VALUES (5, 'alsephina', 5000000, 4000000, 656565, 'square', true, false, 1);
INSERT INTO public.planet VALUES (6, 'altair', 2000000, 6000000, 454545, 'circle', true, false, 1);
INSERT INTO public.planet VALUES (7, 'alya', 2000000, 3000000, 111111, 'square', true, false, 2);
INSERT INTO public.planet VALUES (8, 'andromeda', 5000000, 1000000, 565656, 'circle', true, false, 2);
INSERT INTO public.planet VALUES (9, 'aquila', 4000000, 1000000, 232323, 'square', true, false, 2);
INSERT INTO public.planet VALUES (10, 'ara', 2000000, 1000000, 232356, 'circle', true, false, 3);
INSERT INTO public.planet VALUES (11, 'ariel', 4000000, 3000000, 484848, 'circle', true, false, 3);
INSERT INTO public.planet VALUES (12, 'atlas', 300000, 6000000, 525252, 'square', true, false, 3);
INSERT INTO public.planet VALUES (13, 'atria', 4000000, 2000000, 232545, 'circle', true, false, 4);
INSERT INTO public.planet VALUES (14, 'auriga', 1000000, 3000000, 454545, 'circle', true, false, 4);
INSERT INTO public.planet VALUES (15, 'auroto', 4000000, 2000000, 232589, 'square', true, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mushtare', 2000000, 3000000, 343434, 'square', false, true, NULL);
INSERT INTO public.star VALUES (2, 'zuhal', 5000000, 7000000, 252525, 'circle', false, true, NULL);
INSERT INTO public.star VALUES (3, 'marikh', 1000000, 3000000, 474747, 'square', false, true, NULL);
INSERT INTO public.star VALUES (4, 'zuhra', 2000000, 3000000, 323232, 'circle', true, false, 1);
INSERT INTO public.star VALUES (5, 'oranos', 5000000, 4000000, 656565, 'square', true, false, 1);
INSERT INTO public.star VALUES (6, 'atarud', 2000000, 6000000, 454545, 'circle', true, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

