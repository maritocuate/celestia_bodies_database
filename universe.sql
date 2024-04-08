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
    age_in_moy integer,
    distance_from_sun integer,
    apparent_magnitude numeric(5,1),
    description text NOT NULL,
    has_life boolean
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
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    name character varying(20),
    exist boolean NOT NULL
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_id_seq OWNER TO freecodecamp;

--
-- Name: life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_moy integer,
    distance_from_sun integer,
    apparent_magnitude numeric(5,1),
    description text NOT NULL,
    has_life boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_moy integer,
    distance_from_sun integer,
    apparent_magnitude numeric(5,1),
    description text NOT NULL,
    has_life boolean,
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
    age_in_moy integer,
    distance_from_sun integer,
    apparent_magnitude numeric(5,1),
    description text NOT NULL,
    has_life boolean,
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
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 0, -20.9, 'The Milky Way is our galaxy, a barred spiral galaxy containing our solar system. It is the dominant galaxy of the Local Group, which includes several smaller galaxies.', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2200, 2537, -21.4, 'The Andromeda galaxy is a giant spiral galaxy located in the Local Group of galaxies and is the largest galaxy in the Local Group, which also includes our own galaxy, the Milky Way.', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 5000, 3079, -18.1, 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years from Earth in the constellation Triangulum.', false);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 10100, 11700, -18.7, 'Messier 81 is a spiral galaxy located about 12 million light-years away in the constellation Ursa Major.', false);
INSERT INTO public.galaxy VALUES (5, 'Messier 83', 15000, 15400, -18.6, 'Messier 83 is a barred spiral galaxy located in the constellation Hydra.', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 19000, 32000, -18.2, 'The Whirlpool Galaxy, also known as Messier 51a, is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus.', false);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (3, 'human', true);
INSERT INTO public.life VALUES (4, 'martian', true);
INSERT INTO public.life VALUES (5, 'klingon', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 2402, 2000, -14.0, 'Largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (2, 'Ganymede', 3558, 2000, -15.0, 'Largest moon of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (3, 'Callisto', 4504, 2000, -14.0, 'Second-largest moon of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (4, 'Io', 5960, 2000, -6.0, 'Fourth-largest moon of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 2779, 2000, -12.0, 'Sixth-largest moon of Jupiter.', false, 5);
INSERT INTO public.moon VALUES (6, 'Triton', 2829, 2000, -12.0, 'Largest moon of Neptune.', false, 8);
INSERT INTO public.moon VALUES (7, 'Luna', 4147, 2000, -8.0, 'Earth''s only natural satellite.', false, 3);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4335, 2000, -10.0, 'Sixth-largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (9, 'Dione', 2960, 2000, -13.0, 'Fourth-largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 4008, 2000, -9.0, 'Second-largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 4169, 2000, -14.0, 'Third-largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 4892, 2000, -7.0, 'Seventh-largest moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (13, 'Hyperion', 2658, 2000, -14.0, 'Largest irregularly shaped moon of Saturn.', false, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', 5860, 2000, -8.0, 'Smallest astronomical body that is known to be rounded in shape because of self-gravitation.', false, 6);
INSERT INTO public.moon VALUES (15, 'Phobos', 2046, 2000, -6.0, 'Larger and closer of the two natural satellites of Mars.', false, 4);
INSERT INTO public.moon VALUES (16, 'Deimos', 5031, 2000, -11.0, 'Smaller and farther of the two natural satellites of Mars.', false, 4);
INSERT INTO public.moon VALUES (17, 'Charon', 3197, 2000, -11.0, 'Largest of the five known natural satellites of Pluto.', false, 9);
INSERT INTO public.moon VALUES (18, 'Nereid', 2194, 2000, -7.0, 'Third-largest moon of Neptune.', false, 8);
INSERT INTO public.moon VALUES (19, 'Proteus', 4651, 2000, -14.0, 'Second-largest moon of Neptune.', false, 8);
INSERT INTO public.moon VALUES (20, 'Amalthea', 4151, 2000, -8.0, 'Third-largest moon of Jupiter.', false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 5790, -0.9, 'Mercury is the smallest and innermost planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 1080, -4.6, 'Venus is the second planet from the Sun and is often called Earth''s "sister planet".', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 1490, -3.4, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 22790, -1.6, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 7785, -9.4, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 14330, -8.9, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 28770, -7.2, 'Uranus is the seventh planet from the Sun.', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 4503, -6.9, 'Neptune is the eighth and farthest known planet from the Sun in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4500, 59060, -1.0, 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune.', false, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 4500, 49090, -13.0, 'Kepler-186f is an exoplanet orbiting the red dwarf Kepler-186, about 582 light-years from Earth in the constellation Cygnus.', false, 2);
INSERT INTO public.planet VALUES (11, 'Gliese 667 Cc', 4500, 23110, -13.1, 'Gliese 667 Cc is an exoplanet orbiting the star Gliese 667 C, in the constellation of Scorpius.', false, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 4500, 4000, -13.1, 'TRAPPIST-1e is one of the planets orbiting the ultra-cool dwarf star TRAPPIST-1, 39 light-years away from the Sun.', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, 0, -26.7, 'The Sun is the star at the center of the Solar System.', false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 5000, 4, 11.1, 'Proxima Centauri is a red dwarf star located in the constellation of Centaurus.', false, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 240, 9, -1.5, 'Sirius is the brightest star in the night sky and is located in the constellation Canis Major.', false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 6000, 4, 0.0, 'Alpha Centauri A is the primary component of the Alpha Centauri star system, which is the closest star system to the Solar System.', false, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 600, 4, 1.3, 'Alpha Centauri B is the secondary component of the Alpha Centauri star system.', false, 2);
INSERT INTO public.star VALUES (6, 'Barnards Star', 900, 6, 9.5, 'Barnards Star is a red dwarf star located in the constellation of Ophiuchus.', false, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_id_seq', 5, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: life name_life_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT name_life_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: moon fk_moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

