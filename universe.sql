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
    name character varying(20) NOT NULL,
    distance_in_kpc numeric,
    location text,
    size_in_kpc integer,
    type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    orbital_period_in_days numeric,
    is_spherical boolean,
    discoverer text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_in_kpc numeric,
    location text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    orbital_period numeric,
    in_habitable_zone boolean,
    is_dwarf boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_in_ly numeric,
    location text,
    multiple_star_system boolean,
    number_of_companions integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'Hoag''s Object', 187900, 'Serpens', 40, 'ring');
INSERT INTO public.galaxy VALUES (2, 'Bode''s Galaxy', 3679.22, 'Ursa Major', 39, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Condor Galaxy', 65000, 'Pavo', 160, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Malin 1', 366000, 'Coma Berenices', 215, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 5300, 'Coma Berenices', 170, 'spiral');
INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 765, 'Andromeda', 47, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 0.32, false, 'Asaph Hall', NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 1.26, false, 'Asaph Hall', NULL);
INSERT INTO public.moon VALUES (3, 'Callisto', 16.69, true, 'Galileo Galilei', NULL);
INSERT INTO public.moon VALUES (4, 'Europa', 3.5, true, 'Galileo Galilei', NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 7.16, true, 'Galileo Galilei', NULL);
INSERT INTO public.moon VALUES (6, 'Io', 1.8, true, 'Galileo Galilei', NULL);
INSERT INTO public.moon VALUES (7, 'Dione', 2.7, true, 'Giovanni Cassini', NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', 1.37, true, 'William Herschel', NULL);
INSERT INTO public.moon VALUES (9, 'Hyperion', 21, false, 'William Lassell', NULL);
INSERT INTO public.moon VALUES (10, 'Iapetus', 79.32, true, 'Giovanni Cassini', NULL);
INSERT INTO public.moon VALUES (11, 'Mimas', 0.94, true, 'William Herschel', NULL);
INSERT INTO public.moon VALUES (12, 'Phoebe', 550.56, false, 'William Pickering', NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 4.5, true, 'Giovanni Cassini', NULL);
INSERT INTO public.moon VALUES (14, 'Tethys', 1.89, true, 'Giovanni Cassini', NULL);
INSERT INTO public.moon VALUES (15, 'Titan', 16, true, 'Christiaan Huygens', NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 2.52, true, 'William Lassell', NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 13.46, true, 'William Herschel', NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 8.71, true, 'William Herschel', NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', 4.14, true, 'William Lassell', NULL);
INSERT INTO public.moon VALUES (20, 'Triton', 5.88, true, 'William Lassell', NULL);
INSERT INTO public.moon VALUES (21, 'Charon', 6.4, true, 'James Christy', NULL);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Eagle Nebula', 1.74, 'Serpens');
INSERT INTO public.nebula VALUES (2, 'Omega Nebula', 1.67, 'Sagittarius');
INSERT INTO public.nebula VALUES (3, 'Trifid Nebula', 1.26, 'Sagittarius');
INSERT INTO public.nebula VALUES (4, 'Lagoon Nebula', 1.26, 'Sagittarius');
INSERT INTO public.nebula VALUES (5, 'Crab Nebula', 2, 'Taurus');
INSERT INTO public.nebula VALUES (6, 'Gum Nebula', 0.45, 'Vela');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 88, false, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 225, false, false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 365, true, false, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 687, false, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4332.59, false, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 10759.22, false, false, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 30668.5, false, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 60195, false, false, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 90560, false, true, NULL);
INSERT INTO public.planet VALUES (10, 'LHS 475 b', 2, false, false, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 289.86, true, false, NULL);
INSERT INTO public.planet VALUES (12, 'HD 85512 b', 54, true, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Barnard''s Star', 5.96, 'Ophiuchus', false, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Ruchbah', 99.4, 'Cassiopeia', true, 1, NULL);
INSERT INTO public.star VALUES (3, 'Revati', 170, 'Pisces', true, 3, NULL);
INSERT INTO public.star VALUES (4, 'Peacock', 179, 'Pavo', true, 1, NULL);
INSERT INTO public.star VALUES (5, 'Denebola', 35.9, 'Leo', false, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Wolf 359', 7.9, 'Leo', false, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 6, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: star galaxy_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

