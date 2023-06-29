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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(40) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 136, 137, 4, 2, 'Final');
INSERT INTO public.games VALUES (98, 2018, 138, 139, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (99, 2018, 137, 139, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (100, 2018, 136, 138, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (101, 2018, 137, 140, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (102, 2018, 139, 141, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (103, 2018, 138, 142, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (104, 2018, 136, 143, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (105, 2018, 139, 144, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (106, 2018, 141, 145, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (107, 2018, 138, 146, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (108, 2018, 142, 147, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (109, 2018, 137, 148, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (110, 2018, 140, 149, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (111, 2018, 143, 150, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (112, 2018, 136, 151, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (113, 2014, 152, 151, 1, 0, 'Final');
INSERT INTO public.games VALUES (114, 2014, 153, 142, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (115, 2014, 151, 153, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (116, 2014, 152, 142, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (117, 2014, 153, 154, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (118, 2014, 151, 138, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (119, 2014, 142, 144, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (120, 2014, 152, 136, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (121, 2014, 142, 155, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (122, 2014, 144, 143, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (123, 2014, 136, 156, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (124, 2014, 152, 157, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (125, 2014, 153, 147, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (126, 2014, 154, 158, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (127, 2014, 151, 145, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (128, 2014, 138, 159, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (136, 'France');
INSERT INTO public.teams VALUES (137, 'Croatia');
INSERT INTO public.teams VALUES (138, 'Belgium');
INSERT INTO public.teams VALUES (139, 'England');
INSERT INTO public.teams VALUES (140, 'Russia');
INSERT INTO public.teams VALUES (141, 'Sweden');
INSERT INTO public.teams VALUES (142, 'Brazil');
INSERT INTO public.teams VALUES (143, 'Uruguay');
INSERT INTO public.teams VALUES (144, 'Colombia');
INSERT INTO public.teams VALUES (145, 'Switzerland');
INSERT INTO public.teams VALUES (146, 'Japan');
INSERT INTO public.teams VALUES (147, 'Mexico');
INSERT INTO public.teams VALUES (148, 'Denmark');
INSERT INTO public.teams VALUES (149, 'Spain');
INSERT INTO public.teams VALUES (150, 'Portugal');
INSERT INTO public.teams VALUES (151, 'Argentina');
INSERT INTO public.teams VALUES (152, 'Germany');
INSERT INTO public.teams VALUES (153, 'Netherlands');
INSERT INTO public.teams VALUES (154, 'Costa Rica');
INSERT INTO public.teams VALUES (155, 'Chile');
INSERT INTO public.teams VALUES (156, 'Nigeria');
INSERT INTO public.teams VALUES (157, 'Algeria');
INSERT INTO public.teams VALUES (158, 'Greece');
INSERT INTO public.teams VALUES (159, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 159, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

