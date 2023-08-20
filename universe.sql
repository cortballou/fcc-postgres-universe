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
    name character varying NOT NULL,
    galaxy_id text NOT NULL,
    galaxy_types text,
    size integer,
    center integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying NOT NULL,
    moon_id text NOT NULL,
    number numeric,
    largest text,
    year_discovered numeric,
    planet_id text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_type text,
    distance_from_earth numeric,
    star_id text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solarsystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarsystem (
    name character varying NOT NULL,
    solarsystem_id text NOT NULL,
    description integer
);


ALTER TABLE public.solarsystem OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id text NOT NULL,
    mass numeric,
    age numeric,
    distance numeric,
    galaxy_id text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', '1', 'spiral', 3, 765);
INSERT INTO public.galaxy VALUES ('Milky_Way', '2', 'spiral', 27, 8);
INSERT INTO public.galaxy VALUES ('Triangulum', '3', 'spiral', 6, 2);
INSERT INTO public.galaxy VALUES ('Phoenix_Dwarf', '4', 'irregular', 13, 1);
INSERT INTO public.galaxy VALUES ('Tucana_Dwarf', '5', 'spherodial', 16, 870);
INSERT INTO public.galaxy VALUES ('Cetus_Dwarf', '6', 'spherodial', 14, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Earth_Moon', '1', 1, 'Moon', 1959, '3');
INSERT INTO public.moon VALUES ('Phobos', '2', 2, 'Phobos', 1877, '4');
INSERT INTO public.moon VALUES ('Deimos', '3', 2, 'Phobos', 1877, '4');
INSERT INTO public.moon VALUES ('Io', '4', 95, 'Ganymede', 1610, '5');
INSERT INTO public.moon VALUES ('Europa', '5', 95, 'Ganymede', 1610, '5');
INSERT INTO public.moon VALUES ('Ganymede', '6', 95, 'Ganymede', 1610, '5');
INSERT INTO public.moon VALUES ('Callisto', '7', 95, 'Ganymede', 1610, '5');
INSERT INTO public.moon VALUES ('Mimas', '8', 146, 'Titan', 1789, '6');
INSERT INTO public.moon VALUES ('Enceladas', '9', 146, 'Titan', 1789, '6');
INSERT INTO public.moon VALUES ('Tethys', '10', 146, 'Titan', 1684, '6');
INSERT INTO public.moon VALUES ('Dione', '11', 146, 'Titan', 1684, '6');
INSERT INTO public.moon VALUES ('Ariel', '12', 27, 'Titania', 1851, '7');
INSERT INTO public.moon VALUES ('Belinda', '13', 27, 'Titania', 1986, '7');
INSERT INTO public.moon VALUES ('Bianca', '14', 27, 'Titania', 1986, '7');
INSERT INTO public.moon VALUES ('Larissa', '15', 14, 'Triton', 1989, '8');
INSERT INTO public.moon VALUES ('Proteus', '16', 14, 'Triton', 1989, '8');
INSERT INTO public.moon VALUES ('Triton', '17', 14, 'Triton', 1846, '8');
INSERT INTO public.moon VALUES ('Charon', '18', 5, 'Charon', 1978, '9');
INSERT INTO public.moon VALUES ('Hydra', '19', 5, 'Charon', 2005, '9');
INSERT INTO public.moon VALUES ('Nix', '20', 5, 'Charon', 2005, '9');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', '1', false, true, 'Terrestrial', 68.868, '6');
INSERT INTO public.planet VALUES ('Venus', '2', false, true, 'Terrestrial', 38, '6');
INSERT INTO public.planet VALUES ('Earth', '3', true, true, 'Terrestrial', 0, '6');
INSERT INTO public.planet VALUES ('Mars', '4', true, true, 'Terrestrial', 140, '6');
INSERT INTO public.planet VALUES ('Jupiter', '5', false, true, 'Gas_Giant', 432.03, '6');
INSERT INTO public.planet VALUES ('Saturn', '6', false, true, 'Gas_Giant', 746, '6');
INSERT INTO public.planet VALUES ('Uranus', '7', false, true, 'Ice_Giant', 1.8148, '6');
INSERT INTO public.planet VALUES ('Neptune', '8', false, true, 'Ice_Giant', 2.6971, '6');
INSERT INTO public.planet VALUES ('Pluto', '9', false, true, 'Dwarf', 4.67, '6');
INSERT INTO public.planet VALUES ('Ceres', '10', true, true, 'Dwarf', 561.54, '6');
INSERT INTO public.planet VALUES ('Makemake', '11', false, true, 'Dwarf', 7.85, '6');
INSERT INTO public.planet VALUES ('Haumea', '12', false, false, 'Dwarf', 7.55, '6');


--
-- Data for Name: solarsystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarsystem VALUES ('MVEM', '1', 1);
INSERT INTO public.solarsystem VALUES ('JSUN', '2', 2);
INSERT INTO public.solarsystem VALUES ('Our', '3', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Polaris', '1', 5.4, 70, 433, '2');
INSERT INTO public.star VALUES ('Castor', '2', 2.37, 290, 50, '2');
INSERT INTO public.star VALUES ('Rigel', '3', 21, 8, 863, '2');
INSERT INTO public.star VALUES ('Sirius', '4', 2, 242, 8.7, '2');
INSERT INTO public.star VALUES ('Altair', '5', 1.86, 100, 16.73, '2');
INSERT INTO public.star VALUES ('Sun', '6', 1.9, 4.6, 26660, '2');


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
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


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
-- Name: solarsystem solarsystem_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_name_key UNIQUE (name);


--
-- Name: solarsystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarsystem_id);


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
