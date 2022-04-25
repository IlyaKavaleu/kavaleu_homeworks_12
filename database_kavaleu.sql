--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-04-25 13:00:50

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
-- TOC entry 212 (class 1259 OID 16459)
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    text text NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16454)
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16447)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title text NOT NULL,
    discriptions text NOT NULL,
    user_id bigint
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16440)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    login text NOT NULL,
    password text NOT NULL,
    name text NOT NULL,
    age integer NOT NULL,
    gender text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3330 (class 0 OID 16459)
-- Dependencies: 212
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, text, user_id, post_id) FROM stdin;
1	SQL	1	1
2	PYTHON	2	2
3	JAVA	3	3
4	JS	4	4
5	C++	5	5
\.


--
-- TOC entry 3329 (class 0 OID 16454)
-- Dependencies: 211
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes (id, user_id, post_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
\.


--
-- TOC entry 3328 (class 0 OID 16447)
-- Dependencies: 210
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, discriptions, user_id) FROM stdin;
1	Hello!\n	How are you?	1
2	Hello!\n	How are you?	2
3	Hello!\n	How are you?	3
4	Hello!\n	How are you?	4
5	Hello!\n	How are you?	5
\.


--
-- TOC entry 3327 (class 0 OID 16440)
-- Dependencies: 209
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, login, password, name, age, gender) FROM stdin;
1	shark	01010101	ilia	20	mr
2	banan	rigght12	max	25	mr
3	DoBBy12	123456	jack	30	mr
4	ByCycle	bbbbbbb11	viktor	45	mr
5	LEgooo1	wchcwqchqwnl	sara	23	mrs
\.


--
-- TOC entry 3182 (class 2606 OID 16465)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 16458)
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 16453)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 16446)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 16488)
-- Name: comments fk_comments(posts); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "fk_comments(posts)" FOREIGN KEY (post_id) REFERENCES public.posts(id) NOT VALID;


--
-- TOC entry 3187 (class 2606 OID 16493)
-- Name: comments fk_comments(users); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "fk_comments(users)" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 3185 (class 2606 OID 16478)
-- Name: likes fk_likes(posts); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "fk_likes(posts)" FOREIGN KEY (post_id) REFERENCES public.posts(id) NOT VALID;


--
-- TOC entry 3184 (class 2606 OID 16483)
-- Name: likes fk_likes(users); Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "fk_likes(users)" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 3183 (class 2606 OID 16473)
-- Name: posts fk_users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


-- Completed on 2022-04-25 13:00:51

--
-- PostgreSQL database dump complete
--

