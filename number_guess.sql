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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    attempts integer,
    guess_number integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (7, 15, 9, 455);
INSERT INTO public.games VALUES (8, 15, 9, 319);
INSERT INTO public.games VALUES (9, 16, 794, 793);
INSERT INTO public.games VALUES (10, 16, 317, 316);
INSERT INTO public.games VALUES (11, 17, 862, 861);
INSERT INTO public.games VALUES (12, 17, 624, 623);
INSERT INTO public.games VALUES (13, 16, 273, 270);
INSERT INTO public.games VALUES (14, 16, 170, 168);
INSERT INTO public.games VALUES (15, 16, 77, 76);
INSERT INTO public.games VALUES (16, 18, 722, 721);
INSERT INTO public.games VALUES (17, 18, 465, 464);
INSERT INTO public.games VALUES (18, 19, 548, 547);
INSERT INTO public.games VALUES (19, 19, 192, 191);
INSERT INTO public.games VALUES (20, 18, 855, 852);
INSERT INTO public.games VALUES (21, 18, 783, 781);
INSERT INTO public.games VALUES (22, 18, 278, 277);
INSERT INTO public.games VALUES (23, 20, 599, 598);
INSERT INTO public.games VALUES (24, 20, 279, 278);
INSERT INTO public.games VALUES (25, 21, 499, 498);
INSERT INTO public.games VALUES (26, 21, 725, 724);
INSERT INTO public.games VALUES (27, 20, 395, 392);
INSERT INTO public.games VALUES (28, 20, 574, 572);
INSERT INTO public.games VALUES (29, 20, 543, 542);
INSERT INTO public.games VALUES (30, 22, 241, 240);
INSERT INTO public.games VALUES (31, 22, 562, 561);
INSERT INTO public.games VALUES (32, 23, 378, 377);
INSERT INTO public.games VALUES (33, 23, 966, 965);
INSERT INTO public.games VALUES (34, 22, 980, 977);
INSERT INTO public.games VALUES (35, 22, 654, 652);
INSERT INTO public.games VALUES (36, 22, 170, 169);
INSERT INTO public.games VALUES (37, 24, 196, 195);
INSERT INTO public.games VALUES (38, 24, 829, 828);
INSERT INTO public.games VALUES (39, 25, 341, 340);
INSERT INTO public.games VALUES (40, 25, 967, 966);
INSERT INTO public.games VALUES (41, 24, 114, 111);
INSERT INTO public.games VALUES (42, 24, 168, 166);
INSERT INTO public.games VALUES (43, 24, 892, 891);
INSERT INTO public.games VALUES (44, 26, 133, 132);
INSERT INTO public.games VALUES (45, 26, 554, 553);
INSERT INTO public.games VALUES (46, 27, 717, 716);
INSERT INTO public.games VALUES (47, 27, 182, 181);
INSERT INTO public.games VALUES (48, 26, 813, 810);
INSERT INTO public.games VALUES (49, 26, 730, 728);
INSERT INTO public.games VALUES (50, 26, 488, 487);
INSERT INTO public.games VALUES (51, 28, 913, 912);
INSERT INTO public.games VALUES (52, 28, 981, 980);
INSERT INTO public.games VALUES (53, 29, 472, 471);
INSERT INTO public.games VALUES (54, 29, 392, 391);
INSERT INTO public.games VALUES (55, 28, 517, 514);
INSERT INTO public.games VALUES (56, 28, 916, 914);
INSERT INTO public.games VALUES (57, 28, 564, 563);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (15, 'Shree');
INSERT INTO public.users VALUES (16, 'user_1755546778409');
INSERT INTO public.users VALUES (17, 'user_1755546778408');
INSERT INTO public.users VALUES (18, 'user_1755547047255');
INSERT INTO public.users VALUES (19, 'user_1755547047254');
INSERT INTO public.users VALUES (20, 'user_1755547133000');
INSERT INTO public.users VALUES (21, 'user_1755547132999');
INSERT INTO public.users VALUES (22, 'user_1755547318964');
INSERT INTO public.users VALUES (23, 'user_1755547318963');
INSERT INTO public.users VALUES (24, 'user_1755547523314');
INSERT INTO public.users VALUES (25, 'user_1755547523313');
INSERT INTO public.users VALUES (26, 'user_1755547590437');
INSERT INTO public.users VALUES (27, 'user_1755547590436');
INSERT INTO public.users VALUES (28, 'user_1755547758927');
INSERT INTO public.users VALUES (29, 'user_1755547758926');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 57, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

