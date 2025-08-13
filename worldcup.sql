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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (193, 2018, 'Final', 250, 251, 4, 2);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 252, 253, 2, 0);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 251, 253, 2, 1);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 250, 252, 1, 0);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 251, 254, 3, 2);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 253, 255, 2, 0);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 252, 256, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 250, 257, 2, 0);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 253, 258, 2, 1);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 255, 259, 1, 0);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 252, 260, 3, 2);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 256, 261, 2, 0);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 251, 262, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 254, 263, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 257, 264, 2, 1);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 250, 265, 4, 3);
INSERT INTO public.games VALUES (209, 2014, 'Final', 266, 265, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 267, 256, 3, 0);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 265, 267, 1, 0);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 266, 256, 7, 1);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 267, 268, 1, 0);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 265, 252, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 256, 258, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 266, 250, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 256, 269, 2, 1);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 258, 257, 2, 0);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 250, 270, 2, 0);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 266, 271, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 267, 261, 2, 1);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 268, 272, 2, 1);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 265, 259, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 252, 273, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (248, 'winner');
INSERT INTO public.teams VALUES (249, 'opponent');
INSERT INTO public.teams VALUES (250, 'France');
INSERT INTO public.teams VALUES (251, 'Croatia');
INSERT INTO public.teams VALUES (252, 'Belgium');
INSERT INTO public.teams VALUES (253, 'England');
INSERT INTO public.teams VALUES (254, 'Russia');
INSERT INTO public.teams VALUES (255, 'Sweden');
INSERT INTO public.teams VALUES (256, 'Brazil');
INSERT INTO public.teams VALUES (257, 'Uruguay');
INSERT INTO public.teams VALUES (258, 'Colombia');
INSERT INTO public.teams VALUES (259, 'Switzerland');
INSERT INTO public.teams VALUES (260, 'Japan');
INSERT INTO public.teams VALUES (261, 'Mexico');
INSERT INTO public.teams VALUES (262, 'Denmark');
INSERT INTO public.teams VALUES (263, 'Spain');
INSERT INTO public.teams VALUES (264, 'Portugal');
INSERT INTO public.teams VALUES (265, 'Argentina');
INSERT INTO public.teams VALUES (266, 'Germany');
INSERT INTO public.teams VALUES (267, 'Netherlands');
INSERT INTO public.teams VALUES (268, 'Costa Rica');
INSERT INTO public.teams VALUES (269, 'Chile');
INSERT INTO public.teams VALUES (270, 'Nigeria');
INSERT INTO public.teams VALUES (271, 'Algeria');
INSERT INTO public.teams VALUES (272, 'Greece');
INSERT INTO public.teams VALUES (273, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 273, true);


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

