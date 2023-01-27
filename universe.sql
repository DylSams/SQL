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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    star_id integer,
    num_of_stars numeric
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_con_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_con_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_con_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_con_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_con_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_type text,
    black_hole_discovered boolean,
    photographed boolean,
    age_in_million_yrs integer
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
    description text,
    planet_id integer,
    distance_to_earth_million_kms numeric
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
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet__id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet__id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet__id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_million_yrs integer,
    galaxy_id integer,
    star_type text
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_con_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet__id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Hunter in Greek Mythology', 1, 7);
INSERT INTO public.constellation VALUES (2, 'Sagittarius', 'Centaur Archer', 5, 8);
INSERT INTO public.constellation VALUES (3, 'Ara', 'Latin for Altar', 6, 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, true, 14);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', true, true, 10);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Spiral', true, true, 13);
INSERT INTO public.galaxy VALUES (4, 'Tadpole', 'Spiral', true, true, 100);
INSERT INTO public.galaxy VALUES (5, 'Messier 33', 'Spiral', false, true, 79);
INSERT INTO public.galaxy VALUES (6, 'Cosmos Redshift 7', 'Lyman-Alpha Emitter', true, true, 800);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 'smallest gallean moon', 5, 628.3);
INSERT INTO public.moon VALUES (2, 'Ganymede', 'Largest moon', 5, 628.3);
INSERT INTO public.moon VALUES (3, 'Io', 'Thrid largest Gallean  moon', 5, 628.3);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Second largest moon', 5, 628.3);
INSERT INTO public.moon VALUES (5, 'Amalthea', 'Third closest orbit', 5, 628.3);
INSERT INTO public.moon VALUES (6, 'Adrestea', 'smallest of 4 inner moons', 5, 628.3);
INSERT INTO public.moon VALUES (7, 'Jupiter LXI', 'Natural satellite', 5, 628.3);
INSERT INTO public.moon VALUES (8, 'Himalia', 'Largest Irregular satellite', 5, 628.3);
INSERT INTO public.moon VALUES (9, 'Thebe', 'fourth by distance', 5, 628.3);
INSERT INTO public.moon VALUES (10, 'Valetudo', 'retrograde orbit', 5, 628.3);
INSERT INTO public.moon VALUES (11, 'Jupiter LXIII', 'Outer Natural Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (12, 'Carpo', 'Natural Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (13, 'Euporie', 'Natural Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (14, 'Lysithea', 'Prograde Irregular Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (15, 'Carme', 'Retrograde Irregular Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (16, 'Jupiter LII', 'Natural Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (17, 'Kallichore', 'Natural Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (18, 'Hegemone', 'Natural Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (19, 'Harpalyke', 'Retrograde Irregular Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (20, 'Erinome', 'Retrograde Irregular Satellite', 5, 628.3);
INSERT INTO public.moon VALUES (21, 'Hermippe', 'Natural Satellite', 5, 628.3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 7);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 7);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 7);
INSERT INTO public.planet VALUES (9, 'Ceres', false, true, 7);
INSERT INTO public.planet VALUES (10, 'Brahe', false, true, 7);
INSERT INTO public.planet VALUES (11, 'Haumea', false, true, 7);
INSERT INTO public.planet VALUES (12, 'Makemake', false, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 10, 1, 'Red Supergiant');
INSERT INTO public.star VALUES (2, 'Rigel', 8, 1, 'Blue Supergiant');
INSERT INTO public.star VALUES (3, 'Alnilam', 6, 1, 'Blue Supergiant');
INSERT INTO public.star VALUES (4, 'Bellatrix', 25, 1, 'Red Supergiant');
INSERT INTO public.star VALUES (5, 'Sigma Sagittari', 31, 1, 'B2.5 V');
INSERT INTO public.star VALUES (6, 'Beta Arae', 50, 1, 'K3 Supergiant');
INSERT INTO public.star VALUES (7, 'Sun', 2147483640, 1, 'G2V');


--
-- Name: constellation_con_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_con_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet__id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet__id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellation co_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT co_name UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon mo_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT mo_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet pl_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pl_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star st_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT st_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uni_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: constellation fk_star_con; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT fk_star_con FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

