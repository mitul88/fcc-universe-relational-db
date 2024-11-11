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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    black_hole_type character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    size_scale integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    size_scale integer
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
    description text,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    size_scale integer
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
    description text,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    size_scale integer
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
    description text,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    size_scale integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Phoenix-A', 'supermassive', 123124132, 12312312, 12323);
INSERT INTO public.black_hole VALUES (2, 'Ton-618', 'supermassive', 123124132, 12312312, 12323);
INSERT INTO public.black_hole VALUES (3, 'Saggitaris-A', 'supermassive', 123124132, 12312312, 12323);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('4 billion light years away', false, true, 1, 'andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy far far away', false, true, 2, 'cigar galaxy', 200, 100000, 37000);
INSERT INTO public.galaxy VALUES ('galaxy shape as comet', false, true, 3, 'comet galaxy', 200, 100000, 37000);
INSERT INTO public.galaxy VALUES ('galaxy shape as cartwheel', false, true, 4, 'cartwheel galaxy', 200, 100000, 37000);
INSERT INTO public.galaxy VALUES ('our home', false, true, 5, 'milkyway galaxy', 200, 100000, 37000);
INSERT INTO public.galaxy VALUES ('a galaxy shaped like eye', false, true, 6, 'black eye galaxy', 200, 100000, 37000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('planet of planet xyz', false, true, 1, 'xyz moon', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon of mars', false, true, 2, 'phobos', 1, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of mars', false, true, 3, 'deimos', 2, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of jupiter', false, true, 4, 'amalthea', 3, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of jupiter', false, true, 5, 'callisto', 4, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of jupiter', false, true, 6, 'europa', 5, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of jupiter', false, true, 7, 'gaynemede', 6, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of jupiter', false, true, 9, 'io', 1, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 10, 'dione', 2, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 11, 'enceladus', 3, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 12, 'hyperion', 4, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 13, 'lapetus', 5, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 14, 'mimus', 6, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 15, 'phoebe', 1, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 16, 'rhea', 2, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 17, 'tethis', 3, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of saturn', false, true, 18, 'titan', 4, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of uranus', false, true, 19, 'ariel', 5, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of uranus', false, true, 20, 'miranda', 6, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of uranus', false, true, 21, 'oberon', 1, 4124355, 34324, 12432);
INSERT INTO public.moon VALUES ('moon of uranus', false, true, 22, 'titania', 2, 4124355, 34324, 12432);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet of zyx', false, true, 1, 'xyz planet', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet in a galaxy far far away', false, true, 2, 'arkas', 2, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('one of the earth like planet', false, true, 3, 'keplar 22b', 3, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('orbitar isa an exoplanet', false, true, 4, 'orbitar', 4, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('dimidium a funny name', false, true, 5, 'dimidium', 5, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('spe means hope', false, true, 6, 'spe', 6, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('ancient greek poem', false, true, 8, 'arion', 1, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('one of the earth like expoplanet', false, true, 9, 'trappist-1e', 2, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('our neighboring galaxy is its home', false, true, 10, 'proxima centurai -b', 3, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('it means something in japanese', false, true, 11, 'amateru', 4, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('its a mythology', false, true, 12, 'dagon', 5, 4124355, 34324, 12432);
INSERT INTO public.planet VALUES ('named after Hypatia a female greek astronomer and philosopher', false, true, 13, 'hypatia', 6, 4124355, 34324, 12432);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star of andromeda', false, true, 1, 'xyz', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sirius is a serious star', false, true, 2, 'sirius', 2, 600000, 129753, 9347384);
INSERT INTO public.star VALUES ('altair a star far away', false, true, 3, 'altair', 3, 600000, 129753, 9347384);
INSERT INTO public.star VALUES ('aquila a star far away', false, true, 4, 'aquila', 4, 1230000, 129753, 9347384);
INSERT INTO public.star VALUES ('vega is a star', false, true, 5, 'vega', 5, 1230000, 129753, 9347384);
INSERT INTO public.star VALUES ('polaris a beautiful star', false, true, 6, 'polaris', 6, 1230000, 129753, 9347384);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

