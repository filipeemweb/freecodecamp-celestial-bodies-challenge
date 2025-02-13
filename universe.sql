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
    name character varying(20) NOT NULL,
    age numeric(5,2),
    type character varying(3),
    size_in_kpc integer
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
    planet_id integer,
    composition text,
    has_magnetic_field boolean DEFAULT true
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
    composition text,
    support_life boolean DEFAULT false,
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
-- Name: race; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.race (
    race_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    existence_time_in_centuries integer
);


ALTER TABLE public.race OWNER TO freecodecamp;

--
-- Name: race_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.race_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.race_race_id_seq OWNER TO freecodecamp;

--
-- Name: race_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.race_race_id_seq OWNED BY public.race.race_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    is_alive boolean DEFAULT false,
    spectral_type character varying(1)
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
-- Name: race race_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race ALTER COLUMN race_id SET DEFAULT nextval('public.race_race_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.51, 'SBc', 30);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10.00, 'Sb', 220);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 6.00, 'SBc', 60);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 10.00, 'Sc', 18);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9.00, 'Sa', 50);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 13.00, 'E0', 120);
INSERT INTO public.galaxy VALUES (7, 'Magellanic Cloud Lg', 13.00, 'IBm', 14);
INSERT INTO public.galaxy VALUES (8, 'Magellanic Cloud Sm', 12.00, 'IBm', 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'Rocky', true);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Rocky', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Rocky', false);
INSERT INTO public.moon VALUES (4, 'Europa', 3, 'Ice', false);
INSERT INTO public.moon VALUES (5, 'Titan', 4, 'Ice', true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, 'Ice', true);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, 'Ice', false);
INSERT INTO public.moon VALUES (8, 'Triton', 5, 'Ice', false);
INSERT INTO public.moon VALUES (9, 'Io', 3, 'Rocky', true);
INSERT INTO public.moon VALUES (10, 'Enceladus', 10, 'Ice', false);
INSERT INTO public.moon VALUES (11, 'Rhea', 10, 'Ice', false);
INSERT INTO public.moon VALUES (12, 'Dione', 10, 'Ice', false);
INSERT INTO public.moon VALUES (13, 'Tethys', 10, 'Ice', false);
INSERT INTO public.moon VALUES (14, 'Mimas', 10, 'Ice', false);
INSERT INTO public.moon VALUES (15, 'Oberon', 6, 'Ice', true);
INSERT INTO public.moon VALUES (16, 'Titania', 6, 'Ice', true);
INSERT INTO public.moon VALUES (17, 'Ariel', 6, 'Ice', false);
INSERT INTO public.moon VALUES (18, 'Umbriel', 6, 'Ice', false);
INSERT INTO public.moon VALUES (19, 'Miranda', 6, 'Ice', false);
INSERT INTO public.moon VALUES (20, 'Charon', 8, 'Rocky', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Rocky', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Rocky', false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (4, 'Europa', 'Rocky', false, 3);
INSERT INTO public.planet VALUES (5, 'Titan', 'Rocky', false, 4);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Gliese 581g', 'Rocky', true, 5);
INSERT INTO public.planet VALUES (9, 'Venus', 'Rocky', false, 1);
INSERT INTO public.planet VALUES (10, 'Saturn', 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 'Rocky', true, 5);
INSERT INTO public.planet VALUES (12, 'HD 209458b', 'Gas Giant', false, 6);


--
-- Data for Name: race; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.race VALUES (1, 'Humans', 1, NULL);
INSERT INTO public.race VALUES (2, 'Martians', 2, NULL);
INSERT INTO public.race VALUES (3, 'Jovians', 3, NULL);
INSERT INTO public.race VALUES (4, 'Europans', 4, NULL);
INSERT INTO public.race VALUES (5, 'Titanians', 5, NULL);
INSERT INTO public.race VALUES (6, 'Uranusians', 6, NULL);
INSERT INTO public.race VALUES (7, 'Neptunians', 7, NULL);
INSERT INTO public.race VALUES (8, 'Gliesians', 8, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 'G');
INSERT INTO public.star VALUES (2, 'Sirius', 2, true, 'A');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3, true, 'M');
INSERT INTO public.star VALUES (4, 'Rigel', 4, true, 'B');
INSERT INTO public.star VALUES (5, 'Vega', 5, true, 'A');
INSERT INTO public.star VALUES (6, 'Antares', 6, true, 'M');
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 7, true, 'M');
INSERT INTO public.star VALUES (8, 'Alpha Centauri A', 8, true, 'G');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: race_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.race_race_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: race race_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_name_key UNIQUE (name);


--
-- Name: race race_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_pkey PRIMARY KEY (race_id);


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
-- Name: race race_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

