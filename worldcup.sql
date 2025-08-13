--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
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
    name character varying(100) NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 577, 578, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 579, 580, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 578, 580, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 577, 579, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 578, 581, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 580, 582, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 579, 583, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 577, 584, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 580, 585, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 582, 586, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 579, 587, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 583, 588, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 578, 589, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 581, 590, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 584, 591, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 577, 592, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 593, 592, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 594, 583, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 592, 594, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 593, 583, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 594, 595, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 592, 579, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 583, 585, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 593, 577, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 583, 596, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 585, 584, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 577, 597, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 593, 598, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 594, 588, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 595, 599, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 592, 586, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 579, 600, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (575, 'winner');
INSERT INTO public.teams VALUES (576, 'opponent');
INSERT INTO public.teams VALUES (577, 'France');
INSERT INTO public.teams VALUES (578, 'Croatia');
INSERT INTO public.teams VALUES (579, 'Belgium');
INSERT INTO public.teams VALUES (580, 'England');
INSERT INTO public.teams VALUES (581, 'Russia');
INSERT INTO public.teams VALUES (582, 'Sweden');
INSERT INTO public.teams VALUES (583, 'Brazil');
INSERT INTO public.teams VALUES (584, 'Uruguay');
INSERT INTO public.teams VALUES (585, 'Colombia');
INSERT INTO public.teams VALUES (586, 'Switzerland');
INSERT INTO public.teams VALUES (587, 'Japan');
INSERT INTO public.teams VALUES (588, 'Mexico');
INSERT INTO public.teams VALUES (589, 'Denmark');
INSERT INTO public.teams VALUES (590, 'Spain');
INSERT INTO public.teams VALUES (591, 'Portugal');
INSERT INTO public.teams VALUES (592, 'Argentina');
INSERT INTO public.teams VALUES (593, 'Germany');
INSERT INTO public.teams VALUES (594, 'Netherlands');
INSERT INTO public.teams VALUES (595, 'Costa Rica');
INSERT INTO public.teams VALUES (596, 'Chile');
INSERT INTO public.teams VALUES (597, 'Nigeria');
INSERT INTO public.teams VALUES (598, 'Algeria');
INSERT INTO public.teams VALUES (599, 'Greece');
INSERT INTO public.teams VALUES (600, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 600, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

