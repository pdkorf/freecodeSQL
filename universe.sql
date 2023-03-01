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
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
    five_id integer NOT NULL,
    name character varying(20),
    nummer character varying(10),
    email character varying(30) NOT NULL,
    url character varying(30) NOT NULL
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_five_id_seq OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_five_id_seq OWNED BY public.five.five_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    rating integer,
    weight numeric,
    description text,
    life boolean,
    wifi boolean NOT NULL
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
    name character varying(30) NOT NULL,
    size integer,
    rating integer,
    weight numeric,
    description text,
    life boolean,
    wifi boolean NOT NULL,
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
    name character varying(30),
    size integer,
    rating integer,
    weight numeric,
    description text,
    life boolean,
    wifi boolean NOT NULL,
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
    size integer,
    rating integer,
    weight numeric,
    description text,
    life boolean,
    wifi boolean NOT NULL,
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
-- Name: five five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five ALTER COLUMN five_id SET DEFAULT nextval('public.five_five_id_seq'::regclass);


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
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five VALUES (1, '123', 'A', 'a@a.nl', 'www.a.nl');
INSERT INTO public.five VALUES (2, '1234', 'B', 'b@b.nl', 'www.b.nl');
INSERT INTO public.five VALUES (3, '1231', 'C', 'c@c.nl', 'www.c.nl');
INSERT INTO public.five VALUES (4, '12345', 'D', 'd@d.nl', 'www.d.nl');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy a', 20, 4, 4000, 'First to be discovered', false, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy b', 30, 2, 10000, 'Second galaxy', true, true);
INSERT INTO public.galaxy VALUES (3, 's1', 4, 200, 19.24, 'First smartphone', false, true);
INSERT INTO public.galaxy VALUES (4, 's9', 52, 15000, 4285, 'Heavy phone', false, false);
INSERT INTO public.galaxy VALUES (5, 'Q92-431n', 1000, 2044187, 92375, 'dark side', true, true);
INSERT INTO public.galaxy VALUES (6, 'Hocus Pocus', 124, 431, 2349, 'Focus', true, false);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 6', 20486, 4218, 103.25, 'Great', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 50, 1, 38492, 'dog', false, false, 1);
INSERT INTO public.moon VALUES (2, 'two', 50, 1, 38492, 'dog', false, false, 1);
INSERT INTO public.moon VALUES (3, 'three', 50, 1, 38492, 'dog', false, false, 1);
INSERT INTO public.moon VALUES (4, 'four', 50, 1, 38492, 'dog', false, false, 1);
INSERT INTO public.moon VALUES (5, 'five', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (6, 'six', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (7, 'seven', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (8, 'eight', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (9, 'nine', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (10, 'Ten', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (11, 'Eleven', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (12, 'twelve', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (13, 'thirteen', 50, 1, 38492, 'dog', false, false, 2);
INSERT INTO public.moon VALUES (14, 'fourteen', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.moon VALUES (15, 'fifteen', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.moon VALUES (16, 'sixteen', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.moon VALUES (17, 'seventeen', 50, 1, 38492, 'dog', false, false, 4);
INSERT INTO public.moon VALUES (18, 'eighteen', 50, 1, 38492, 'dog', false, false, 4);
INSERT INTO public.moon VALUES (19, 'nineteen', 50, 1, 38492, 'dog', false, false, 5);
INSERT INTO public.moon VALUES (20, 'twenty', 50, 1, 38492, 'dog', false, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 20, 10, 1230, 'water', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 30, 7, 1236, 'candy', false, false, 2);
INSERT INTO public.planet VALUES (3, 'Pluto', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.planet VALUES (4, 'Saturnus', 90, 3, 1248521, 'Satty', false, false, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 20, 10, 1230, 'notebook', true, true, 4);
INSERT INTO public.planet VALUES (6, 'Pluto', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.planet VALUES (7, 'Saturnus', 90, 3, 1248521, 'Satty', false, false, 5);
INSERT INTO public.planet VALUES (8, 'Jupiter', 20, 10, 1230, 'notebook', true, true, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.planet VALUES (10, 'Saturnus', 90, 3, 1248521, 'Satty', false, false, 5);
INSERT INTO public.planet VALUES (11, 'Jupiter', 20, 10, 1230, 'notebook', true, true, 4);
INSERT INTO public.planet VALUES (12, 'Pluto', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.planet VALUES (13, 'Saturnus', 90, 3, 1248521, 'Satty', false, false, 5);
INSERT INTO public.planet VALUES (14, 'Jupiter', 20, 10, 1230, 'notebook', true, true, 4);
INSERT INTO public.planet VALUES (15, 'Pluto', 50, 1, 38492, 'dog', false, false, 3);
INSERT INTO public.planet VALUES (16, 'Saturnus', 90, 3, 1248521, 'Satty', false, false, 5);
INSERT INTO public.planet VALUES (17, 'Jupiter', 20, 10, 1230, 'notebook', true, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'David', 180, 9, 60.4, 'Lives on Mars', false, true, 1);
INSERT INTO public.star VALUES (2, 'Freddy', 165, 9, 80.1, 'Bites for dust', false, true, 3);
INSERT INTO public.star VALUES (3, 'Elvis', 170, 8, 60, 'Loves me tender', false, true, 2);
INSERT INTO public.star VALUES (4, 'The', 170, 5, 70, 'Is van de wereld', false, true, 5);
INSERT INTO public.star VALUES (5, 'Daniel', 190, 10, 120, 'Droagt sich an kruus', false, true, 3);
INSERT INTO public.star VALUES (6, 'Brian', 200, 9, 85, '39', false, true, 6);


--
-- Name: five_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_five_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: five five_five_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_five_id_key UNIQUE (five_id);


--
-- Name: five five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_pkey PRIMARY KEY (five_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_name_key UNIQUE (galaxy_id, name);


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
-- Name: moon moon_moon_id_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_name_key UNIQUE (moon_id, name);


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
-- Name: planet planet_planet_id_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_name_key UNIQUE (planet_id, name);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_star_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key1 UNIQUE (star_id);


--
-- Name: star star_star_id_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_name_key UNIQUE (star_id, name);


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

