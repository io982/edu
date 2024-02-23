--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(40) NOT NULL,
    description text,
    is_spherical boolean,
    mass numeric
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    has_life boolean
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
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    moon_count integer
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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    spectral_class character varying(10),
    planet_count integer
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(40) NOT NULL,
    qq boolean
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M81', 'M81 galaxy', true, 9.9);
INSERT INTO public.galaxy VALUES (2, 'V82', 'V82 galaxy', false, 12.5);
INSERT INTO public.galaxy VALUES (3, 'SSD66', 'SSD66 galaxy', false, 123);
INSERT INTO public.galaxy VALUES (4, 'D81', 'D81 galaxy', true, 158.9);
INSERT INTO public.galaxy VALUES (5, 'FRV2', 'FRV2 galaxy', false, 2.5);
INSERT INTO public.galaxy VALUES (6, 'DS85', 'DS85 galaxy', false, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'V82_VD_1_0', 2, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'V82_VD_1_1', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'V82_VD_1_2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'V82_VD_1_3', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'V82_VD_1_4', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'V82_VD_1_5', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'V82_VD_2_0', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'V82_VD_2_1', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'V82_VD_2_2', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'V82_VD_2_3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'V82_VD_3_0', 4, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'V82_VD_3_1', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'V82_VD_3_2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'V82_VD_3_3', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'V82_VD_3_4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'V82_VD_3_5', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'V82_VD_3_6', 4, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'V82_VD_3_6', 4, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'V82_VD_3_7', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'V82_VD_3_8', 4, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'V82_VD_3_9', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'V82_VD', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'V82_VD_1', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'V82_VD_2', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'V82_VD_3', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'V82_VD_4', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'V82_VD_5', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'V82_VD_6', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'V82_VD_7', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'V82_VD_8', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'V82_VD_9', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'V82_VD_10', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'V82_VD_11', 2, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'M81_A', 1, ' ', 'A-class', 1);
INSERT INTO public.star VALUES (2, 'V82_VD', 2, ' ', 'VD-Class', 12);
INSERT INTO public.star VALUES (3, 'SSD66_S4A', 3, ' ', 'S4A-Class', 3);
INSERT INTO public.star VALUES (4, 'M81_D', 1, ' ', 'D-class', 3);
INSERT INTO public.star VALUES (5, 'V81_ASD', 2, ' ', 'ASD-Class', 0);
INSERT INTO public.star VALUES (6, 'SSD66_S5A', 3, ' ', 'SS5A-Class', 3);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, '1', NULL);
INSERT INTO public.test VALUES (2, '2', NULL);
INSERT INTO public.test VALUES (3, '3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: test test_test_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_test_id_key UNIQUE (test_id);


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

