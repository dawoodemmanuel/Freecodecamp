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
-- Name: demo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.demo (
    name character varying(20) NOT NULL,
    demo_id integer NOT NULL,
    status boolean
);


ALTER TABLE public.demo OWNER TO freecodecamp;

--
-- Name: demo_demo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.demo_demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demo_demo_id_seq OWNER TO freecodecamp;

--
-- Name: demo_demo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.demo_demo_id_seq OWNED BY public.demo.demo_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    description text,
    has_life boolean
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
    name character varying(20) NOT NULL,
    age integer,
    description text,
    radius numeric(4,1),
    has_life boolean,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    description text,
    radius numeric(4,1),
    has_life boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    age integer,
    description text,
    radius numeric(4,1),
    galaxy_id integer NOT NULL
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
-- Name: demo demo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo ALTER COLUMN demo_id SET DEFAULT nextval('public.demo_demo_id_seq'::regclass);


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
-- Data for Name: demo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.demo VALUES ('dawood', 1, true);
INSERT INTO public.demo VALUES ('hamza', 2, true);
INSERT INTO public.demo VALUES ('mahd', 3, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 1360000000, 'The galaxy containing our solar system', true);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 1000000000, 'A spiral galaxy nearest to the Milky Way', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 800000000, 'A small spiral galaxy in the Local Group', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 500000000, 'A grand-design spiral galaxy in Canes Venatici', false);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 900000000, 'An unbarres spiral galaxy in the constellation Virgo', false);
INSERT INTO public.galaxy VALUES (8, 'Centaurrus A', 1000000000, 'A peculiar elliptical galaxy in the constellation Centaurus', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4600000, 'Earth natural satellite', 4.5, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4600000, 'Moon of Mars', 4.5, false, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 4600000, 'Moon of Mars', 4.5, false, 1);
INSERT INTO public.moon VALUES (4, 'Europa', 4600000, 'One of Jupiter Galilean moons', 4.5, false, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 4600000, 'One of Jupiter Galilean moons', 4.5, false, 2);
INSERT INTO public.moon VALUES (6, 'Io', 4600000, 'One of Jupiter Galilean moons', 4.5, false, 2);
INSERT INTO public.moon VALUES (7, 'Ganymede', 4600000, 'the largest moon in the Solar System', 4.5, false, 2);
INSERT INTO public.moon VALUES (8, 'Moonlet', 4600000, 'Small moon orbiting Kepler-22b', 4.5, false, 3);
INSERT INTO public.moon VALUES (9, 'Moonite', 4600000, 'Tiny moon orbiting Kepler-22b', 4.5, false, 3);
INSERT INTO public.moon VALUES (10, 'Titan', 4600000, 'The largest moon of Saturn', 4.5, false, 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', 4600000, 'Moon of Saturn with subsurface ocean', 4.5, false, 4);
INSERT INTO public.moon VALUES (12, 'Mimas', 4600000, 'Moon with the Herschel Crater on Saturn rings', 4.5, false, 4);
INSERT INTO public.moon VALUES (13, 'Triton', 4600000, 'The largest moon of neptune', 4.5, false, 5);
INSERT INTO public.moon VALUES (14, 'Nereid', 4600000, 'Irregular moon of Neptune', 4.5, false, 5);
INSERT INTO public.moon VALUES (15, 'Proteus', 4600000, 'One of Neptune largest moons', 4.5, false, 5);
INSERT INTO public.moon VALUES (16, 'Charon', 4600000, 'The largest moon of Pluto', 4.5, false, 6);
INSERT INTO public.moon VALUES (17, 'Styx', 4600000, 'Moon of Pluto', 4.5, false, 6);
INSERT INTO public.moon VALUES (48, 'Nix', 4600000, 'Moon of Pluto', 4.5, false, 6);
INSERT INTO public.moon VALUES (49, 'Kerberos', 4600000, 'Moon of Pluto', 4.5, false, 6);
INSERT INTO public.moon VALUES (50, 'Ydra', 4600000, 'Moon of Pluto', 4.5, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4600000, 'The third planet from the Sun', 4.5, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4600000, 'The fourth planet from the Sun', 4.5, false, 1);
INSERT INTO public.planet VALUES (3, 'Kepler-22b', 4600000, 'An exoplanet in the habitable zone', 4.5, true, 2);
INSERT INTO public.planet VALUES (4, 'Kepler-62f', 4600000, 'An exoplanet in the habitable zone', 4.5, true, 2);
INSERT INTO public.planet VALUES (5, 'Kepler-186f', 4600000, 'The first Earth-Sized exoplanet', 4.5, true, 3);
INSERT INTO public.planet VALUES (6, 'Venus', 4600000, 'The second planet from the Sun', 4.5, false, 3);
INSERT INTO public.planet VALUES (7, 'Jupiter', 4600000, 'The largest planet in the solar system', 4.5, false, 4);
INSERT INTO public.planet VALUES (8, 'Saturn', 4600000, 'The sixth planet from the Sun', 4.5, false, 4);
INSERT INTO public.planet VALUES (9, 'Neptune', 4600000, 'The eighth planet from the Sun', 4.5, false, 5);
INSERT INTO public.planet VALUES (10, 'Uranus', 4600000, 'The seventh planet from the Sun', 4.5, false, 5);
INSERT INTO public.planet VALUES (11, 'Proxima b', 4600000, 'Exoplanet orbiting Proxima Centauri', 4.5, true, 6);
INSERT INTO public.planet VALUES (12, 'Mercury', 4600000, 'The closet planet to the Sun', 4.5, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 460000000, 'Our Star', 4.5, 2);
INSERT INTO public.star VALUES (2, 'Alpha', 460000000, 'Brightest star in Andromeda', 4.5, 4);
INSERT INTO public.star VALUES (3, 'Tri-Star', 460000000, 'Shinning star in Triangulum', 4.5, 5);
INSERT INTO public.star VALUES (4, 'WhirlStar', 460000000, 'Central star of Whirlpool', 4.5, 6);
INSERT INTO public.star VALUES (5, 'Vega', 460000000, 'Prominent star in Sombrero', 4.5, 7);
INSERT INTO public.star VALUES (6, 'Centauri', 460000000, 'Closet star to Centaurus A', 4.5, 8);


--
-- Name: demo_demo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.demo_demo_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 50, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: demo demo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_name_key UNIQUE (name);


--
-- Name: demo demo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.demo
    ADD CONSTRAINT demo_pkey PRIMARY KEY (demo_id);


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

