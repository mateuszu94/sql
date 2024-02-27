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
-- Name: blackholl; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackholl (
    blackholl_id integer NOT NULL,
    name character varying(200),
    description text,
    age integer NOT NULL,
    code integer NOT NULL
);


ALTER TABLE public.blackholl OWNER TO freecodecamp;

--
-- Name: blackholl_blackholl_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackholl_blackholl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackholl_blackholl_id_seq OWNER TO freecodecamp;

--
-- Name: blackholl_blackholl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackholl_blackholl_id_seq OWNED BY public.blackholl.blackholl_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200),
    black_holl boolean,
    age integer NOT NULL,
    code integer NOT NULL
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
    name character varying(200),
    description text,
    planet_id integer,
    age integer NOT NULL,
    code integer NOT NULL
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
    name character varying(200),
    life boolean,
    star_id integer,
    code integer NOT NULL,
    age integer NOT NULL
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
    name character varying(200),
    radius numeric,
    galaxy_id integer,
    age integer NOT NULL,
    code integer NOT NULL
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
-- Name: blackholl blackholl_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholl ALTER COLUMN blackholl_id SET DEFAULT nextval('public.blackholl_blackholl_id_seq'::regclass);


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
-- Data for Name: blackholl; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackholl VALUES (4, 'holl', NULL, 1, 1);
INSERT INTO public.blackholl VALUES (5, 'holl', NULL, 1, 2);
INSERT INTO public.blackholl VALUES (6, 'holl', NULL, 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'galaxy1', NULL, 1, 1);
INSERT INTO public.galaxy VALUES (8, 'galaxy2', NULL, 2, 2);
INSERT INTO public.galaxy VALUES (9, 'galaxy3', NULL, 3, 3);
INSERT INTO public.galaxy VALUES (10, 'galaxy4', NULL, 4, 4);
INSERT INTO public.galaxy VALUES (11, 'galaxy4', NULL, 5, 5);
INSERT INTO public.galaxy VALUES (12, 'galaxy4', NULL, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (23, 'moon', NULL, 20, 1, 1);
INSERT INTO public.moon VALUES (24, 'moon', NULL, 20, 1, 2);
INSERT INTO public.moon VALUES (25, 'moon', NULL, 20, 1, 3);
INSERT INTO public.moon VALUES (26, 'moon', NULL, 20, 1, 4);
INSERT INTO public.moon VALUES (27, 'moon', NULL, 20, 1, 5);
INSERT INTO public.moon VALUES (28, 'moon', NULL, 20, 1, 6);
INSERT INTO public.moon VALUES (29, 'moon', NULL, 20, 1, 76);
INSERT INTO public.moon VALUES (30, 'moon', NULL, 20, 1, 8);
INSERT INTO public.moon VALUES (31, 'moon', NULL, 20, 1, 9);
INSERT INTO public.moon VALUES (32, 'moon', NULL, 20, 1, 10);
INSERT INTO public.moon VALUES (33, 'moon', NULL, 20, 1, 11);
INSERT INTO public.moon VALUES (34, 'moon', NULL, 20, 1, 12);
INSERT INTO public.moon VALUES (35, 'moon', NULL, 20, 1, 13);
INSERT INTO public.moon VALUES (36, 'moon', NULL, 20, 1, 14);
INSERT INTO public.moon VALUES (37, 'moon', NULL, 20, 1, 15);
INSERT INTO public.moon VALUES (38, 'moon', NULL, 20, 1, 16);
INSERT INTO public.moon VALUES (39, 'moon', NULL, 20, 1, 17);
INSERT INTO public.moon VALUES (40, 'moon', NULL, 20, 1, 18);
INSERT INTO public.moon VALUES (41, 'moon', NULL, 20, 1, 19);
INSERT INTO public.moon VALUES (42, 'moon', NULL, 20, 1, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (17, 'planet', NULL, 20, 1, 1);
INSERT INTO public.planet VALUES (18, 'planet', NULL, 20, 2, 1);
INSERT INTO public.planet VALUES (19, 'planet', NULL, 20, 3, 1);
INSERT INTO public.planet VALUES (20, 'planet', NULL, 20, 4, 1);
INSERT INTO public.planet VALUES (21, 'planet', NULL, 20, 5, 1);
INSERT INTO public.planet VALUES (22, 'planet', NULL, 20, 6, 1);
INSERT INTO public.planet VALUES (23, 'planet', NULL, 20, 7, 1);
INSERT INTO public.planet VALUES (24, 'planet', NULL, 20, 8, 1);
INSERT INTO public.planet VALUES (25, 'planet', NULL, 20, 9, 1);
INSERT INTO public.planet VALUES (26, 'planet', NULL, 20, 10, 1);
INSERT INTO public.planet VALUES (27, 'planet', NULL, 20, 11, 1);
INSERT INTO public.planet VALUES (28, 'planet', NULL, 20, 12, 1);
INSERT INTO public.planet VALUES (29, 'planet', NULL, 20, 13, 1);
INSERT INTO public.planet VALUES (30, 'planet', NULL, 20, 14, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (20, 'star1', NULL, 7, 1, 1);
INSERT INTO public.star VALUES (21, 'star1', NULL, 7, 1, 2);
INSERT INTO public.star VALUES (22, 'star1', NULL, 7, 1, 3);
INSERT INTO public.star VALUES (23, 'star1', NULL, 7, 1, 4);
INSERT INTO public.star VALUES (24, 'star1', NULL, 7, 1, 5);
INSERT INTO public.star VALUES (25, 'star1', NULL, 7, 1, 6);


--
-- Name: blackholl_blackholl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackholl_blackholl_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 30, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 25, true);


--
-- Name: blackholl blackholl_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholl
    ADD CONSTRAINT blackholl_code_key UNIQUE (code);


--
-- Name: blackholl blackholl_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackholl
    ADD CONSTRAINT blackholl_pkey PRIMARY KEY (blackholl_id);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_key UNIQUE (code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_key UNIQUE (code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
