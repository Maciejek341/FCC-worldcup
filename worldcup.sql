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
    round character varying(30) NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (81, 2018, 'Final', 401, 400, 4, 2);
INSERT INTO public.games VALUES (82, 2018, 'Third Place', 403, 402, 2, 0);
INSERT INTO public.games VALUES (83, 2018, 'Semi-Final', 403, 401, 2, 1);
INSERT INTO public.games VALUES (84, 2018, 'Semi-Final', 402, 400, 1, 0);
INSERT INTO public.games VALUES (85, 2018, 'Quarter-Final', 404, 401, 3, 2);
INSERT INTO public.games VALUES (86, 2018, 'Quarter-Final', 405, 403, 2, 0);
INSERT INTO public.games VALUES (87, 2018, 'Quarter-Final', 406, 402, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Quarter-Final', 407, 400, 2, 0);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 408, 403, 2, 1);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 409, 405, 1, 0);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 410, 402, 3, 2);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 411, 406, 2, 0);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 412, 401, 2, 1);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 413, 404, 2, 1);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 414, 407, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 415, 400, 4, 3);
INSERT INTO public.games VALUES (97, 2014, 'Final', 415, 416, 1, 0);
INSERT INTO public.games VALUES (98, 2014, 'Third Place', 406, 417, 3, 0);
INSERT INTO public.games VALUES (99, 2014, 'Semi-Final', 417, 415, 1, 0);
INSERT INTO public.games VALUES (100, 2014, 'Semi-Final', 406, 416, 7, 1);
INSERT INTO public.games VALUES (101, 2014, 'Quarter-Final', 418, 417, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Quarter-Final', 402, 415, 1, 0);
INSERT INTO public.games VALUES (103, 2014, 'Quarter-Final', 408, 406, 2, 1);
INSERT INTO public.games VALUES (104, 2014, 'Quarter-Final', 400, 416, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 419, 406, 2, 1);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 407, 408, 2, 0);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 420, 400, 2, 0);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 421, 416, 2, 1);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 411, 417, 2, 1);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 422, 418, 2, 1);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 409, 415, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 423, 402, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (400, 'France');
INSERT INTO public.teams VALUES (401, 'Croatia');
INSERT INTO public.teams VALUES (402, 'Belgium');
INSERT INTO public.teams VALUES (403, 'England');
INSERT INTO public.teams VALUES (404, 'Russia');
INSERT INTO public.teams VALUES (405, 'Sweden');
INSERT INTO public.teams VALUES (406, 'Brazil');
INSERT INTO public.teams VALUES (407, 'Uruguay');
INSERT INTO public.teams VALUES (408, 'Colombia');
INSERT INTO public.teams VALUES (409, 'Switzerland');
INSERT INTO public.teams VALUES (410, 'Japan');
INSERT INTO public.teams VALUES (411, 'Mexico');
INSERT INTO public.teams VALUES (412, 'Denmark');
INSERT INTO public.teams VALUES (413, 'Spain');
INSERT INTO public.teams VALUES (414, 'Portugal');
INSERT INTO public.teams VALUES (415, 'Argentina');
INSERT INTO public.teams VALUES (416, 'Germany');
INSERT INTO public.teams VALUES (417, 'Netherlands');
INSERT INTO public.teams VALUES (418, 'Costa Rica');
INSERT INTO public.teams VALUES (419, 'Chile');
INSERT INTO public.teams VALUES (420, 'Nigeria');
INSERT INTO public.teams VALUES (421, 'Algeria');
INSERT INTO public.teams VALUES (422, 'Greece');
INSERT INTO public.teams VALUES (423, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 112, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 423, true);


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
-- Name: games games_oponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_oponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

