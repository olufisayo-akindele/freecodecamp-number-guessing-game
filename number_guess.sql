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
    attempts integer NOT NULL
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
    username character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 8);
INSERT INTO public.games VALUES (2, 1, 11);
INSERT INTO public.games VALUES (3, 2, 13);
INSERT INTO public.games VALUES (4, 2, 840);
INSERT INTO public.games VALUES (5, 3, 60);
INSERT INTO public.games VALUES (6, 3, 422);
INSERT INTO public.games VALUES (7, 2, 889);
INSERT INTO public.games VALUES (8, 2, 474);
INSERT INTO public.games VALUES (9, 2, 528);
INSERT INTO public.games VALUES (10, 4, 198);
INSERT INTO public.games VALUES (11, 5, 503);
INSERT INTO public.games VALUES (12, 5, 962);
INSERT INTO public.games VALUES (13, 4, 685);
INSERT INTO public.games VALUES (14, 4, 461);
INSERT INTO public.games VALUES (15, 4, 421);
INSERT INTO public.games VALUES (16, 6, 493);
INSERT INTO public.games VALUES (17, 7, 823);
INSERT INTO public.games VALUES (18, 7, 368);
INSERT INTO public.games VALUES (19, 6, 675);
INSERT INTO public.games VALUES (20, 6, 705);
INSERT INTO public.games VALUES (21, 6, 671);
INSERT INTO public.games VALUES (22, 8, 826);
INSERT INTO public.games VALUES (23, 8, 781);
INSERT INTO public.games VALUES (24, 9, 907);
INSERT INTO public.games VALUES (25, 9, 142);
INSERT INTO public.games VALUES (26, 8, 611);
INSERT INTO public.games VALUES (27, 8, 92);
INSERT INTO public.games VALUES (28, 8, 195);
INSERT INTO public.games VALUES (29, 10, 585);
INSERT INTO public.games VALUES (30, 11, 365);
INSERT INTO public.games VALUES (31, 11, 743);
INSERT INTO public.games VALUES (32, 10, 398);
INSERT INTO public.games VALUES (33, 10, 844);
INSERT INTO public.games VALUES (34, 10, 771);
INSERT INTO public.games VALUES (35, 1, 23);
INSERT INTO public.games VALUES (36, 12, 76);
INSERT INTO public.games VALUES (37, 13, 520);
INSERT INTO public.games VALUES (38, 13, 651);
INSERT INTO public.games VALUES (39, 12, 64);
INSERT INTO public.games VALUES (40, 12, 314);
INSERT INTO public.games VALUES (41, 12, 383);
INSERT INTO public.games VALUES (42, 14, 362);
INSERT INTO public.games VALUES (43, 14, 682);
INSERT INTO public.games VALUES (44, 15, 109);
INSERT INTO public.games VALUES (45, 15, 29);
INSERT INTO public.games VALUES (46, 14, 595);
INSERT INTO public.games VALUES (47, 14, 97);
INSERT INTO public.games VALUES (48, 14, 325);
INSERT INTO public.games VALUES (49, 16, 143);
INSERT INTO public.games VALUES (50, 17, 948);
INSERT INTO public.games VALUES (51, 17, 966);
INSERT INTO public.games VALUES (52, 16, 333);
INSERT INTO public.games VALUES (53, 16, 820);
INSERT INTO public.games VALUES (54, 16, 399);
INSERT INTO public.games VALUES (55, 18, 931);
INSERT INTO public.games VALUES (56, 19, 13);
INSERT INTO public.games VALUES (57, 19, 473);
INSERT INTO public.games VALUES (58, 18, 878);
INSERT INTO public.games VALUES (59, 18, 180);
INSERT INTO public.games VALUES (60, 18, 553);
INSERT INTO public.games VALUES (61, 20, 500);
INSERT INTO public.games VALUES (62, 21, 413);
INSERT INTO public.games VALUES (63, 21, 926);
INSERT INTO public.games VALUES (64, 20, 335);
INSERT INTO public.games VALUES (65, 20, 728);
INSERT INTO public.games VALUES (66, 20, 996);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'op');
INSERT INTO public.users VALUES (2, 'user_1690370348291');
INSERT INTO public.users VALUES (3, 'user_1690370348290');
INSERT INTO public.users VALUES (4, 'user_1690370544472');
INSERT INTO public.users VALUES (5, 'user_1690370544471');
INSERT INTO public.users VALUES (6, 'user_1690370616587');
INSERT INTO public.users VALUES (7, 'user_1690370616586');
INSERT INTO public.users VALUES (8, 'user_1690370680980');
INSERT INTO public.users VALUES (9, 'user_1690370680979');
INSERT INTO public.users VALUES (10, 'user_1690370749444');
INSERT INTO public.users VALUES (11, 'user_1690370749443');
INSERT INTO public.users VALUES (12, 'user_1690370875293');
INSERT INTO public.users VALUES (13, 'user_1690370875292');
INSERT INTO public.users VALUES (14, 'user_1690370998696');
INSERT INTO public.users VALUES (15, 'user_1690370998695');
INSERT INTO public.users VALUES (16, 'user_1690371194326');
INSERT INTO public.users VALUES (17, 'user_1690371194325');
INSERT INTO public.users VALUES (18, 'user_1690371307794');
INSERT INTO public.users VALUES (19, 'user_1690371307793');
INSERT INTO public.users VALUES (20, 'user_1690371370419');
INSERT INTO public.users VALUES (21, 'user_1690371370418');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 66, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

