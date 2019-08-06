--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: album; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.album (
    album_id integer NOT NULL,
    title character varying(160) NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.album OWNER TO superadmin;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO superadmin;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: artist; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.artist (
    artist_id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.artist OWNER TO superadmin;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.artist_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO superadmin;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.artist_artist_id_seq OWNED BY public.artist.artist_id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO superadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO superadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO superadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO superadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO superadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO superadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO superadmin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO superadmin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO superadmin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO superadmin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO superadmin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO superadmin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character varying(40) NOT NULL,
    last_name character varying(20) NOT NULL,
    company character varying(80) NOT NULL,
    address character varying(70) NOT NULL,
    city character varying(40) NOT NULL,
    state character varying(40) NOT NULL,
    country character varying(40) NOT NULL,
    postal_code character varying(10) NOT NULL,
    phone character varying(24) NOT NULL,
    fax character varying(24) NOT NULL,
    email character varying(60) NOT NULL,
    support_rep_id integer
);


ALTER TABLE public.customer OWNER TO superadmin;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_customer_id_seq OWNER TO superadmin;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO superadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO superadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO superadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO superadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO superadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO superadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO superadmin;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(20) NOT NULL,
    title character varying(30) NOT NULL,
    birth_date timestamp with time zone,
    hire_date timestamp with time zone,
    address character varying(70) NOT NULL,
    city character varying(40) NOT NULL,
    state character varying(40) NOT NULL,
    country character varying(40) NOT NULL,
    postal_code character varying(10) NOT NULL,
    phone character varying(24) NOT NULL,
    fax character varying(24) NOT NULL,
    email character varying(60) NOT NULL,
    reports_to_id integer
);


ALTER TABLE public.employee OWNER TO superadmin;

--
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employee_id_seq OWNER TO superadmin;

--
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;


--
-- Name: genre; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.genre (
    genre_id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.genre OWNER TO superadmin;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.genre_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_genre_id_seq OWNER TO superadmin;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.genre_genre_id_seq OWNED BY public.genre.genre_id;


--
-- Name: invoice; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.invoice (
    invoice_id integer NOT NULL,
    invoice_date timestamp with time zone NOT NULL,
    billing_address character varying(70) NOT NULL,
    billing_city character varying(40) NOT NULL,
    billing_state character varying(40) NOT NULL,
    billing_country character varying(40) NOT NULL,
    billing_postal_code character varying(10) NOT NULL,
    total numeric(10,2) NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.invoice OWNER TO superadmin;

--
-- Name: invoice_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.invoice_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_invoice_id_seq OWNER TO superadmin;

--
-- Name: invoice_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.invoice_invoice_id_seq OWNED BY public.invoice.invoice_id;


--
-- Name: invoice_line; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.invoice_line (
    invoice_line_id integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    quantity integer NOT NULL,
    invoice_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE public.invoice_line OWNER TO superadmin;

--
-- Name: invoice_line_invoice_line_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.invoice_line_invoice_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_line_invoice_line_id_seq OWNER TO superadmin;

--
-- Name: invoice_line_invoice_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.invoice_line_invoice_line_id_seq OWNED BY public.invoice_line.invoice_line_id;


--
-- Name: media_type; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.media_type (
    media_type_id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.media_type OWNER TO superadmin;

--
-- Name: media_type_media_type_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.media_type_media_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_type_media_type_id_seq OWNER TO superadmin;

--
-- Name: media_type_media_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.media_type_media_type_id_seq OWNED BY public.media_type.media_type_id;


--
-- Name: playlist; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.playlist (
    playlist_id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.playlist OWNER TO superadmin;

--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.playlist_playlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playlist_playlist_id_seq OWNER TO superadmin;

--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.playlist_playlist_id_seq OWNED BY public.playlist.playlist_id;


--
-- Name: playlist_track; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.playlist_track (
    playlist_track_id integer NOT NULL,
    playlist_id integer NOT NULL,
    track_id integer NOT NULL
);


ALTER TABLE public.playlist_track OWNER TO superadmin;

--
-- Name: playlist_track_playlist_track_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.playlist_track_playlist_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playlist_track_playlist_track_id_seq OWNER TO superadmin;

--
-- Name: playlist_track_playlist_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.playlist_track_playlist_track_id_seq OWNED BY public.playlist_track.playlist_track_id;


--
-- Name: track; Type: TABLE; Schema: public; Owner: superadmin
--

CREATE TABLE public.track (
    track_id integer NOT NULL,
    name character varying(200) NOT NULL,
    composer character varying(220) NOT NULL,
    milliseconds integer NOT NULL,
    bytes integer,
    unit_price numeric(10,2) NOT NULL,
    album_id integer,
    genre_id integer,
    media_type_id integer NOT NULL
);


ALTER TABLE public.track OWNER TO superadmin;

--
-- Name: track_track_id_seq; Type: SEQUENCE; Schema: public; Owner: superadmin
--

CREATE SEQUENCE public.track_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.track_track_id_seq OWNER TO superadmin;

--
-- Name: track_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: superadmin
--

ALTER SEQUENCE public.track_track_id_seq OWNED BY public.track.track_id;


--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: artist artist_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.artist ALTER COLUMN artist_id SET DEFAULT nextval('public.artist_artist_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.genre ALTER COLUMN genre_id SET DEFAULT nextval('public.genre_genre_id_seq'::regclass);


--
-- Name: invoice invoice_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice ALTER COLUMN invoice_id SET DEFAULT nextval('public.invoice_invoice_id_seq'::regclass);


--
-- Name: invoice_line invoice_line_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice_line ALTER COLUMN invoice_line_id SET DEFAULT nextval('public.invoice_line_invoice_line_id_seq'::regclass);


--
-- Name: media_type media_type_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.media_type ALTER COLUMN media_type_id SET DEFAULT nextval('public.media_type_media_type_id_seq'::regclass);


--
-- Name: playlist playlist_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist ALTER COLUMN playlist_id SET DEFAULT nextval('public.playlist_playlist_id_seq'::regclass);


--
-- Name: playlist_track playlist_track_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist_track ALTER COLUMN playlist_track_id SET DEFAULT nextval('public.playlist_track_playlist_track_id_seq'::regclass);


--
-- Name: track track_id; Type: DEFAULT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.track ALTER COLUMN track_id SET DEFAULT nextval('public.track_track_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.album (album_id, title, artist_id) FROM stdin;
1	For Those About To Rock We Salute You	1
2	Balls to the Wall	2
3	Restless and Wild	2
4	Let There Be Rock	1
5	Big Ones	3
6	Jagged Little Pill	4
7	Facelift	5
8	Warner 25 Anos	6
9	Plays Metallica By Four Cellos	7
10	Audioslave	8
11	Out Of Exile	8
12	BackBeat Soundtrack	9
13	The Best Of Billy Cobham	10
14	Alcohol Fueled Brewtality Live! [Disc 1]	11
15	Alcohol Fueled Brewtality Live! [Disc 2]	11
16	Black Sabbath	12
17	Black Sabbath Vol. 4 (Remaster)	12
18	Body Count	13
19	Chemical Wedding	14
20	The Best Of Buddy Guy - The Millenium Collection	15
21	Prenda Minha	16
22	Sozinho Remix Ao Vivo	16
23	Minha Historia	17
24	Afrociberdelia	18
25	Da Lama Ao Caos	18
26	Acústico MTV [Live]	19
27	Cidade Negra - Hits	19
28	Na Pista	20
29	Axé Bahia 2001	21
30	BBC Sessions [Disc 1] [Live]	22
31	Bongo Fury	23
32	Carnaval 2001	21
33	Chill: Brazil (Disc 1)	24
34	Chill: Brazil (Disc 2)	6
35	Garage Inc. (Disc 1)	50
36	Greatest Hits II	51
37	Greatest Kiss	52
38	Heart of the Night	53
39	International Superhits	54
40	Into The Light	55
41	Meus Momentos	56
42	Minha História	57
43	MK III The Final Concerts [Disc 1]	58
44	Physical Graffiti [Disc 1]	22
45	Sambas De Enredo 2001	21
46	Supernatural	59
47	The Best of Ed Motta	37
48	The Essential Miles Davis [Disc 1]	68
49	The Essential Miles Davis [Disc 2]	68
50	The Final Concerts (Disc 2)	58
51	Up An' Atom	69
52	Vinícius De Moraes - Sem Limite	70
53	Vozes do MPB	21
54	Chronicle, Vol. 1	76
55	Chronicle, Vol. 2	76
56	Cássia Eller - Coleção Sem Limite [Disc 2]	77
57	Cássia Eller - Sem Limite [Disc 1]	77
58	Come Taste The Band	58
59	Deep Purple In Rock	58
60	Fireball	58
61	Knocking at Your Back Door: The Best Of Deep Purple in the 80's	58
62	Machine Head	58
63	Purpendicular	58
64	Slaves And Masters	58
65	Stormbringer	58
66	The Battle Rages On	58
67	Vault: Def Leppard's Greatest Hits	78
68	Outbreak	79
69	Djavan Ao Vivo - Vol. 02	80
70	Djavan Ao Vivo - Vol. 1	80
71	Elis Regina-Minha História	41
72	The Cream Of Clapton	81
73	Unplugged	81
74	Album Of The Year	82
75	Angel Dust	82
76	King For A Day Fool For A Lifetime	82
77	The Real Thing	82
78	Deixa Entrar	83
79	In Your Honor [Disc 1]	84
80	In Your Honor [Disc 2]	84
81	One By One	84
82	The Colour And The Shape	84
83	My Way: The Best Of Frank Sinatra [Disc 1]	85
84	Roda De Funk	86
85	As Canções de Eu Tu Eles	27
86	Quanta Gente Veio Ver (Live)	27
87	Quanta Gente Veio ver--Bônus De Carnaval	27
88	Faceless	87
89	American Idiot	54
90	Appetite for Destruction	88
91	Use Your Illusion I	88
92	Use Your Illusion II	88
93	Blue Moods	89
94	A Matter of Life and Death	90
95	A Real Dead One	90
96	A Real Live One	90
97	Brave New World	90
98	Dance Of Death	90
99	Fear Of The Dark	90
100	Iron Maiden	90
101	Killers	90
102	Live After Death	90
103	Live At Donington 1992 (Disc 1)	90
104	Live At Donington 1992 (Disc 2)	90
105	No Prayer For The Dying	90
106	Piece Of Mind	90
107	Powerslave	90
108	Rock In Rio [CD1]	90
109	Rock In Rio [CD2]	90
110	Seventh Son of a Seventh Son	90
111	Somewhere in Time	90
112	The Number of The Beast	90
113	The X Factor	90
114	Virtual XI	90
115	Sex Machine	91
116	Emergency On Planet Earth	92
117	Synkronized	92
118	The Return Of The Space Cowboy	92
119	Get Born	93
120	Are You Experienced?	94
121	Surfing with the Alien (Remastered)	95
122	Jorge Ben Jor 25 Anos	46
123	Jota Quest-1995	96
124	Cafezinho	97
125	Living After Midnight	98
126	Unplugged [Live]	52
127	BBC Sessions [Disc 2] [Live]	22
128	Coda	22
129	Houses Of The Holy	22
130	In Through The Out Door	22
131	IV	22
132	Led Zeppelin I	22
133	Led Zeppelin II	22
134	Led Zeppelin III	22
135	Physical Graffiti [Disc 2]	22
136	Presence	22
137	The Song Remains The Same (Disc 1)	22
138	The Song Remains The Same (Disc 2)	22
139	A TempestadeTempestade Ou O Livro Dos Dias	99
140	Mais Do Mesmo	99
141	Greatest Hits	100
142	Lulu Santos - RCA 100 Anos De Música - Álbum 01	101
143	Lulu Santos - RCA 100 Anos De Música - Álbum 02	101
144	Misplaced Childhood	102
145	Barulhinho Bom	103
146	Seek And Shall Find: More Of The Best (1963-1981)	104
147	The Best Of Men At Work	105
148	Black Album	50
149	Garage Inc. (Disc 2)	50
150	Kill 'Em All	50
151	Load	50
152	Master Of Puppets	50
153	ReLoad	50
154	Ride The Lightning	50
155	St. Anger	50
156	...And Justice For All	50
157	Miles Ahead	68
158	Milton Nascimento Ao Vivo	42
159	Minas	42
160	Ace Of Spades	106
161	Demorou...	108
162	Motley Crue Greatest Hits	109
163	From The Muddy Banks Of The Wishkah [Live]	110
164	Nevermind	110
165	Compositores	111
166	Olodum	112
167	Acústico MTV	113
168	Arquivo II	113
169	Arquivo Os Paralamas Do Sucesso	113
170	Bark at the Moon (Remastered)	114
171	Blizzard of Ozz	114
172	Diary of a Madman (Remastered)	114
173	No More Tears (Remastered)	114
174	Tribute	114
175	Walking Into Clarksdale	115
176	Original Soundtracks 1	116
177	The Beast Live	117
178	Live On Two Legs [Live]	118
179	Pearl Jam	118
180	Riot Act	118
181	Ten	118
182	Vs.	118
183	Dark Side Of The Moon	120
184	Os Cães Ladram Mas A Caravana Não Pára	121
185	Greatest Hits I	51
186	News Of The World	51
187	Out Of Time	122
188	Green	124
189	New Adventures In Hi-Fi	124
190	The Best Of R.E.M.: The IRS Years	124
191	Cesta Básica	125
192	Raul Seixas	126
193	Blood Sugar Sex Magik	127
194	By The Way	127
195	Californication	127
196	Retrospective I (1974-1980)	128
197	Santana - As Years Go By	59
198	Santana Live	59
199	Maquinarama	130
200	O Samba Poconé	130
201	Judas 0: B-Sides and Rarities	131
202	Rotten Apples: Greatest Hits	131
203	A-Sides	132
204	Morning Dance	53
205	In Step	133
206	Core	134
207	Mezmerize	135
208	[1997] Black Light Syndrome	136
209	Live [Disc 1]	137
210	Live [Disc 2]	137
211	The Singles	138
212	Beyond Good And Evil	139
213	Pure Cult: The Best Of The Cult (For Rockers, Ravers, Lovers & Sinners) [UK]	139
214	The Doors	140
215	The Police Greatest Hits	141
216	Hot Rocks, 1964-1971 (Disc 1)	142
217	No Security	142
218	Voodoo Lounge	142
219	Tangents	143
220	Transmission	143
221	My Generation - The Very Best Of The Who	144
222	Serie Sem Limite (Disc 1)	145
223	Serie Sem Limite (Disc 2)	145
224	Acústico	146
225	Volume Dois	146
226	Battlestar Galactica: The Story So Far	147
227	Battlestar Galactica, Season 3	147
228	Heroes, Season 1	148
229	Lost, Season 3	149
230	Lost, Season 1	149
231	Lost, Season 2	149
232	Achtung Baby	150
233	All That You Can't Leave Behind	150
234	B-Sides 1980-1990	150
235	How To Dismantle An Atomic Bomb	150
236	Pop	150
237	Rattle And Hum	150
238	The Best Of 1980-1990	150
239	War	150
240	Zooropa	150
241	UB40 The Best Of - Volume Two [UK]	151
242	Diver Down	152
243	The Best Of Van Halen, Vol. I	152
244	Van Halen	152
245	Van Halen III	152
246	Contraband	153
247	Vinicius De Moraes	72
248	Ao Vivo [IMPORT]	155
249	The Office, Season 1	156
250	The Office, Season 2	156
251	The Office, Season 3	156
252	Un-Led-Ed	157
253	Battlestar Galactica (Classic), Season 1	158
254	Aquaman	159
255	Instant Karma: The Amnesty International Campaign to Save Darfur	150
256	Speak of the Devil	114
257	20th Century Masters - The Millennium Collection: The Best of Scorpions	179
258	House of Pain	180
259	Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henrique Amaro	36
260	Cake: B-Sides and Rarities	196
261	LOST, Season 4	149
262	Quiet Songs	197
263	Muso Ko	198
264	Realize	199
265	Every Kind of Light	200
266	Duos II	201
267	Worlds	202
268	The Best of Beethoven	203
269	Temple of the Dog	204
270	Carry On	205
271	Revelations	8
272	Adorate Deum: Gregorian Chant from the Proper of the Mass	206
273	Allegri: Miserere	207
274	Pachelbel: Canon & Gigue	208
275	Vivaldi: The Four Seasons	209
276	Bach: Violin Concertos	210
277	Bach: Goldberg Variations	211
278	Bach: The Cello Suites	212
279	Handel: The Messiah (Highlights)	213
280	The World of Classical Favourites	214
281	Sir Neville Marriner: A Celebration	215
282	Mozart: Wind Concertos	216
283	Haydn: Symphonies 99 - 104	217
284	Beethoven: Symhonies Nos. 5 & 6	218
285	A Soprano Inspired	219
286	Great Opera Choruses	220
287	Wagner: Favourite Overtures	221
288	Fauré: Requiem, Ravel: Pavane & Others	222
289	Tchaikovsky: The Nutcracker	223
290	The Last Night of the Proms	224
291	Puccini: Madama Butterfly - Highlights	225
292	Holst: The Planets, Op. 32 & Vaughan Williams: Fantasies	226
293	Pavarotti's Opera Made Easy	227
294	Great Performances - Barber's Adagio and Other Romantic Favorites for Strings	228
295	Carmina Burana	229
296	A Copland Celebration, Vol. I	230
297	Bach: Toccata & Fugue in D Minor	231
298	Prokofiev: Symphony No.1	232
299	Scheherazade	233
300	Bach: The Brandenburg Concertos	234
301	Chopin: Piano Concertos Nos. 1 & 2	235
302	Mascagni: Cavalleria Rusticana	236
303	Sibelius: Finlandia	237
304	Beethoven Piano Sonatas: Moonlight & Pastorale	238
305	Great Recordings of the Century - Mahler: Das Lied von der Erde	240
306	Elgar: Cello Concerto & Vaughan Williams: Fantasias	241
307	Adams, John: The Chairman Dances	242
308	Tchaikovsky: 1812 Festival Overture, Op.49, Capriccio Italien & Beethoven: Wellington's Victory	243
309	Palestrina: Missa Papae Marcelli & Allegri: Miserere	244
310	Prokofiev: Romeo & Juliet	245
311	Strauss: Waltzes	226
312	Berlioz: Symphonie Fantastique	245
313	Bizet: Carmen Highlights	246
314	English Renaissance	247
315	Handel: Music for the Royal Fireworks (Original Version 1749)	208
316	Grieg: Peer Gynt Suites & Sibelius: Pelléas et Mélisande	248
317	Mozart Gala: Famous Arias	249
318	SCRIABIN: Vers la flamme	250
319	Armada: Music from the Courts of England and Spain	251
320	Mozart: Symphonies Nos. 40 & 41	248
321	Back to Black	252
322	Frank	252
323	Carried to Dust (Bonus Track Version)	253
324	Beethoven: Symphony No. 6 'Pastoral' Etc.	254
325	Bartok: Violin & Viola Concertos	255
326	Mendelssohn: A Midsummer Night's Dream	256
327	Bach: Orchestral Suites Nos. 1 - 4	257
328	Charpentier: Divertissements, Airs & Concerts	258
329	South American Getaway	259
330	Górecki: Symphony No. 3	260
331	Purcell: The Fairy Queen	261
332	The Ultimate Relexation Album	262
333	Purcell: Music for the Queen Mary	263
334	Weill: The Seven Deadly Sins	264
335	J.S. Bach: Chaconne, Suite in E Minor, Partita in E Major & Prelude, Fugue and Allegro	265
336	Prokofiev: Symphony No.5 & Stravinksy: Le Sacre Du Printemps	248
337	Szymanowski: Piano Works, Vol. 1	266
338	Nielsen: The Six Symphonies	267
339	Great Recordings of the Century: Paganini's 24 Caprices	268
340	Liszt - 12 Études D'Execution Transcendante	269
341	Great Recordings of the Century - Shubert: Schwanengesang, 4 Lieder	270
342	Locatelli: Concertos for Violin, Strings and Continuo, Vol. 3	271
343	Respighi:Pines of Rome	226
344	Schubert: The Late String Quartets & String Quintet (3 CD's)	272
345	Monteverdi: L'Orfeo	273
346	Mozart: Chamber Music	274
347	Koyaanisqatsi (Soundtrack from the Motion Picture)	275
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.artist (artist_id, name) FROM stdin;
1	AC/DC
2	Accept
3	Aerosmith
4	Alanis Morissette
5	Alice In Chains
6	Antônio Carlos Jobim
7	Apocalyptica
8	Audioslave
9	BackBeat
10	Billy Cobham
11	Black Label Society
12	Black Sabbath
13	Body Count
14	Bruce Dickinson
15	Buddy Guy
16	Caetano Veloso
17	Chico Buarque
18	Chico Science & Nação Zumbi
19	Cidade Negra
20	Cláudio Zoli
21	Various Artists
22	Led Zeppelin
23	Frank Zappa & Captain Beefheart
24	Marcos Valle
25	Milton Nascimento & Bebeto
26	Azymuth
27	Gilberto Gil
28	João Gilberto
29	Bebel Gilberto
30	Jorge Vercilo
31	Baby Consuelo
32	Ney Matogrosso
33	Luiz Melodia
34	Nando Reis
35	Pedro Luís & A Parede
36	O Rappa
37	Ed Motta
38	Banda Black Rio
39	Fernanda Porto
40	Os Cariocas
41	Elis Regina
42	Milton Nascimento
43	A Cor Do Som
44	Kid Abelha
45	Sandra De Sá
46	Jorge Ben
47	Hermeto Pascoal
48	Barão Vermelho
49	Edson, DJ Marky & DJ Patife Featuring Fernanda Porto
50	Metallica
51	Queen
52	Kiss
53	Spyro Gyra
54	Green Day
55	David Coverdale
56	Gonzaguinha
57	Os Mutantes
58	Deep Purple
59	Santana
60	Santana Feat. Dave Matthews
61	Santana Feat. Everlast
62	Santana Feat. Rob Thomas
63	Santana Feat. Lauryn Hill & Cee-Lo
64	Santana Feat. The Project G&B
65	Santana Feat. Maná
66	Santana Feat. Eagle-Eye Cherry
67	Santana Feat. Eric Clapton
68	Miles Davis
69	Gene Krupa
70	Toquinho & Vinícius
71	Vinícius De Moraes & Baden Powell
72	Vinícius De Moraes
73	Vinícius E Qurteto Em Cy
74	Vinícius E Odette Lara
75	Vinicius, Toquinho & Quarteto Em Cy
76	Creedence Clearwater Revival
77	Cássia Eller
78	Def Leppard
79	Dennis Chambers
80	Djavan
81	Eric Clapton
82	Faith No More
83	Falamansa
84	Foo Fighters
85	Frank Sinatra
86	Funk Como Le Gusta
87	Godsmack
88	Guns N' Roses
89	Incognito
90	Iron Maiden
91	James Brown
92	Jamiroquai
93	JET
94	Jimi Hendrix
95	Joe Satriani
96	Jota Quest
97	João Suplicy
98	Judas Priest
99	Legião Urbana
100	Lenny Kravitz
101	Lulu Santos
102	Marillion
103	Marisa Monte
104	Marvin Gaye
105	Men At Work
106	Motörhead
107	Motörhead & Girlschool
108	Mônica Marianno
109	Mötley Crüe
110	Nirvana
111	O Terço
112	Olodum
113	Os Paralamas Do Sucesso
114	Ozzy Osbourne
115	Page & Plant
116	Passengers
117	Paul D'Ianno
118	Pearl Jam
119	Peter Tosh
120	Pink Floyd
121	Planet Hemp
122	R.E.M. Feat. Kate Pearson
123	R.E.M. Feat. KRS-One
124	R.E.M.
125	Raimundos
126	Raul Seixas
127	Red Hot Chili Peppers
128	Rush
129	Simply Red
130	Skank
131	Smashing Pumpkins
132	Soundgarden
133	Stevie Ray Vaughan & Double Trouble
134	Stone Temple Pilots
135	System Of A Down
136	Terry Bozzio, Tony Levin & Steve Stevens
137	The Black Crowes
138	The Clash
139	The Cult
140	The Doors
141	The Police
142	The Rolling Stones
143	The Tea Party
144	The Who
145	Tim Maia
146	Titãs
147	Battlestar Galactica
148	Heroes
149	Lost
150	U2
151	UB40
152	Van Halen
153	Velvet Revolver
154	Whitesnake
155	Zeca Pagodinho
156	The Office
157	Dread Zeppelin
158	Battlestar Galactica (Classic)
159	Aquaman
160	Christina Aguilera featuring BigElf
161	Aerosmith & Sierra Leone's Refugee Allstars
162	Los Lonely Boys
163	Corinne Bailey Rae
164	Dhani Harrison & Jakob Dylan
165	Jackson Browne
166	Avril Lavigne
167	Big & Rich
168	Youssou N'Dour
169	Black Eyed Peas
170	Jack Johnson
171	Ben Harper
172	Snow Patrol
173	Matisyahu
174	The Postal Service
175	Jaguares
176	The Flaming Lips
177	Jack's Mannequin & Mick Fleetwood
178	Regina Spektor
179	Scorpions
180	House Of Pain
181	Xis
182	Nega Gizza
183	Gustavo & Andres Veiga & Salazar
184	Rodox
185	Charlie Brown Jr.
186	Pedro Luís E A Parede
187	Los Hermanos
188	Mundo Livre S/A
189	Otto
190	Instituto
191	Nação Zumbi
192	DJ Dolores & Orchestra Santa Massa
193	Seu Jorge
194	Sabotage E Instituto
195	Stereo Maracana
196	Cake
197	Aisha Duo
198	Habib Koité and Bamada
199	Karsh Kale
200	The Posies
201	Luciana Souza/Romero Lubambo
202	Aaron Goldberg
203	Nicolaus Esterhazy Sinfonia
204	Temple of the Dog
205	Chris Cornell
206	Alberto Turco & Nova Schola Gregoriana
207	Richard Marlow & The Choir of Trinity College, Cambridge
208	English Concert & Trevor Pinnock
209	Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
210	Hilary Hahn, Jeffrey Kahane, Los Angeles Chamber Orchestra & Margaret Batjer
211	Wilhelm Kempff
212	Yo-Yo Ma
213	Scholars Baroque Ensemble
214	Academy of St. Martin in the Fields & Sir Neville Marriner
215	Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
216	Berliner Philharmoniker, Claudio Abbado & Sabine Meyer
217	Royal Philharmonic Orchestra & Sir Thomas Beecham
218	Orchestre Révolutionnaire et Romantique & John Eliot Gardiner
219	Britten Sinfonia, Ivor Bolton & Lesley Garrett
220	Chicago Symphony Chorus, Chicago Symphony Orchestra & Sir Georg Solti
221	Sir Georg Solti & Wiener Philharmoniker
222	Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
223	London Symphony Orchestra & Sir Charles Mackerras
224	Barry Wordsworth & BBC Concert Orchestra
225	Herbert Von Karajan, Mirella Freni & Wiener Philharmoniker
226	Eugene Ormandy
227	Luciano Pavarotti
228	Leonard Bernstein & New York Philharmonic
229	Boston Symphony Orchestra & Seiji Ozawa
230	Aaron Copland & London Symphony Orchestra
231	Ton Koopman
232	Sergei Prokofiev & Yuri Temirkanov
233	Chicago Symphony Orchestra & Fritz Reiner
234	Orchestra of The Age of Enlightenment
235	Emanuel Ax, Eugene Ormandy & Philadelphia Orchestra
236	James Levine
237	Berliner Philharmoniker & Hans Rosbaud
238	Maurizio Pollini
239	Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
240	Gustav Mahler
241	Felix Schmidt, London Symphony Orchestra & Rafael Frühbeck de Burgos
242	Edo de Waart & San Francisco Symphony
243	Antal Doráti & London Symphony Orchestra
244	Choir Of Westminster Abbey & Simon Preston
245	Michael Tilson Thomas & San Francisco Symphony
246	Chor der Wiener Staatsoper, Herbert Von Karajan & Wiener Philharmoniker
247	The King's Singers
248	Berliner Philharmoniker & Herbert Von Karajan
249	Sir Georg Solti, Sumi Jo & Wiener Philharmoniker
250	Christopher O'Riley
251	Fretwork
252	Amy Winehouse
253	Calexico
254	Otto Klemperer & Philharmonia Orchestra
255	Yehudi Menuhin
256	Philharmonia Orchestra & Sir Neville Marriner
257	Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
258	Les Arts Florissants & William Christie
259	The 12 Cellists of The Berlin Philharmonic
260	Adrian Leaper & Doreen de Feis
261	Roger Norrington, London Classical Players
262	Charles Dutoit & L'Orchestre Symphonique de Montréal
263	Equale Brass Ensemble, John Eliot Gardiner & Munich Monteverdi Orchestra and Choir
264	Kent Nagano and Orchestre de l'Opéra de Lyon
265	Julian Bream
266	Martin Roscoe
267	Göteborgs Symfoniker & Neeme Järvi
268	Itzhak Perlman
269	Michele Campanella
270	Gerald Moore
271	Mela Tenenbaum, Pro Musica Prague & Richard Kapp
272	Emerson String Quartet
273	C. Monteverdi, Nigel Rogers - Chiaroscuro; London Baroque; London Cornett & Sackbu
274	Nash Ensemble
275	Philip Glass Ensemble
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add album	1	add_album
2	Can change album	1	change_album
3	Can delete album	1	delete_album
4	Can view album	1	view_album
5	Can add artist	2	add_artist
6	Can change artist	2	change_artist
7	Can delete artist	2	delete_artist
8	Can view artist	2	view_artist
9	Can add customer	3	add_customer
10	Can change customer	3	change_customer
11	Can delete customer	3	delete_customer
12	Can view customer	3	view_customer
13	Can add genre	4	add_genre
14	Can change genre	4	change_genre
15	Can delete genre	4	delete_genre
16	Can view genre	4	view_genre
17	Can add invoice	5	add_invoice
18	Can change invoice	5	change_invoice
19	Can delete invoice	5	delete_invoice
20	Can view invoice	5	view_invoice
21	Can add media type	6	add_mediatype
22	Can change media type	6	change_mediatype
23	Can delete media type	6	delete_mediatype
24	Can view media type	6	view_mediatype
25	Can add playlist	7	add_playlist
26	Can change playlist	7	change_playlist
27	Can delete playlist	7	delete_playlist
28	Can view playlist	7	view_playlist
29	Can add track	8	add_track
30	Can change track	8	change_track
31	Can delete track	8	delete_track
32	Can view track	8	view_track
33	Can add invoice line	9	add_invoiceline
34	Can change invoice line	9	change_invoiceline
35	Can delete invoice line	9	delete_invoiceline
36	Can view invoice line	9	view_invoiceline
37	Can add employee	10	add_employee
38	Can change employee	10	change_employee
39	Can delete employee	10	delete_employee
40	Can view employee	10	view_employee
41	Can add playlist track	11	add_playlisttrack
42	Can change playlist track	11	change_playlisttrack
43	Can delete playlist track	11	delete_playlisttrack
44	Can view playlist track	11	view_playlisttrack
45	Can add log entry	12	add_logentry
46	Can change log entry	12	change_logentry
47	Can delete log entry	12	delete_logentry
48	Can view log entry	12	view_logentry
49	Can add permission	13	add_permission
50	Can change permission	13	change_permission
51	Can delete permission	13	delete_permission
52	Can view permission	13	view_permission
53	Can add group	14	add_group
54	Can change group	14	change_group
55	Can delete group	14	delete_group
56	Can view group	14	view_group
57	Can add user	15	add_user
58	Can change user	15	change_user
59	Can delete user	15	delete_user
60	Can view user	15	view_user
61	Can add content type	16	add_contenttype
62	Can change content type	16	change_contenttype
63	Can delete content type	16	delete_contenttype
64	Can view content type	16	view_contenttype
65	Can add session	17	add_session
66	Can change session	17	change_session
67	Can delete session	17	delete_session
68	Can view session	17	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$UsQuL8lpIH0n$dXvWC8nv8ROn2YgG5CK9i/sP4ehL4TyL+vuS9fKReUo=	\N	t	admin			ramprasaddeora@gmail.com	t	t	2019-08-04 20:59:55.436082+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.customer (customer_id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) FROM stdin;
1	Luís	Gonçalves	Embraer - Empresa Brasileira de Aeronáutica S.A.	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	+55 (12) 3923-5555	+55 (12) 3923-5566	luisg@embraer.com.br	3
2	Leonie	Köhler		Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	+49 0711 2842222		leonekohler@surfeu.de	5
3	François	Tremblay		1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	+1 (514) 721-4711		ftremblay@gmail.com	3
4	Bjørn	Hansen		Ullevålsveien 14	Oslo		Norway	0171	+47 22 44 22 22		bjorn.hansen@yahoo.no	4
5	Frantiek	Wichterlová	JetBrains s.r.o.	Klanova 9/506	Prague		Czech Republic	14700	+420 2 4172 5555	+420 2 4172 5555	frantisekw@jetbrains.com	4
6	Helena	Holý		Rilská 3174/6	Prague		Czech Republic	14300	+420 2 4177 0449		hholy@gmail.com	5
7	Astrid	Gruber		Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	+43 01 5134505		astrid.gruber@apple.at	5
8	Daan	Peeters		Grétrystraat 63	Brussels		Belgium	1000	+32 02 219 03 03		daan_peeters@apple.be	4
9	Kara	Nielsen		Sønder Boulevard 51	Copenhagen		Denmark	1720	+453 3331 9991		kara.nielsen@jubii.dk	4
10	Eduardo	Martins	Woodstock Discos	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	+55 (11) 3033-5446	+55 (11) 3033-4564	eduardo@woodstock.com.br	4
11	Alexandre	Rocha	Banco do Brasil S.A.	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	+55 (11) 3055-3278	+55 (11) 3055-8131	alero@uol.com.br	5
12	Roberto	Almeida	Riotur	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	+55 (21) 2271-7000	+55 (21) 2271-7070	roberto.almeida@riotur.gov.br	3
13	Fernanda	Ramos		Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	+55 (61) 3363-5547	+55 (61) 3363-7855	fernadaramos4@uol.com.br	4
14	Mark	Philips	Telus	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	+1 (780) 434-4554	+1 (780) 434-5565	mphilips12@shaw.ca	5
15	Jennifer	Peterson	Rogers Canada	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	+1 (604) 688-2255	+1 (604) 688-8756	jenniferp@rogers.ca	3
16	Frank	Harris	Google Inc.	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	+1 (650) 253-0000	+1 (650) 253-0000	fharris@google.com	4
17	Jack	Smith	Microsoft Corporation	1 Microsoft Way	Redmond	WA	USA	98052-8300	+1 (425) 882-8080	+1 (425) 882-8081	jacksmith@microsoft.com	5
18	Michelle	Brooks		627 Broadway	New York	NY	USA	10012-2612	+1 (212) 221-3546	+1 (212) 221-4679	michelleb@aol.com	3
19	Tim	Goyer	Apple Inc.	1 Infinite Loop	Cupertino	CA	USA	95014	+1 (408) 996-1010	+1 (408) 996-1011	tgoyer@apple.com	3
20	Dan	Miller		541 Del Medio Avenue	Mountain View	CA	USA	94040-111	+1 (650) 644-3358		dmiller@comcast.com	4
21	Kathy	Chase		801 W 4th Street	Reno	NV	USA	89503	+1 (775) 223-7665		kachase@hotmail.com	5
22	Heather	Leacock		120 S Orange Ave	Orlando	FL	USA	32801	+1 (407) 999-7788		hleacock@gmail.com	4
23	John	Gordon		69 Salem Street	Boston	MA	USA	2113	+1 (617) 522-1333		johngordon22@yahoo.com	4
24	Frank	Ralston		162 E Superior Street	Chicago	IL	USA	60611	+1 (312) 332-3232		fralston@gmail.com	3
25	Victor	Stevens		319 N. Frances Street	Madison	WI	USA	53703	+1 (608) 257-0597		vstevens@yahoo.com	5
26	Richard	Cunningham		2211 W Berry Street	Fort Worth	TX	USA	76110	+1 (817) 924-7272		ricunningham@hotmail.com	4
27	Patrick	Gray		1033 N Park Ave	Tucson	AZ	USA	85719	+1 (520) 622-4200		patrick.gray@aol.com	4
28	Julia	Barnett		302 S 700 E	Salt Lake City	UT	USA	84102	+1 (801) 531-7272		jubarnett@gmail.com	5
29	Robert	Brown		796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	+1 (416) 363-8888		robbrown@shaw.ca	3
30	Edward	Francis		230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	+1 (613) 234-3322		edfrancis@yachoo.ca	3
31	Martha	Silk		194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	+1 (902) 450-0450		marthasilk@gmail.com	5
32	Aaron	Mitchell		696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	+1 (204) 452-6452		aaronmitchell@yahoo.ca	4
33	Ellie	Sullivan		5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	+1 (867) 920-2233		ellie.sullivan@shaw.ca	3
34	João	Fernandes		Rua da Assunção 53	Lisbon		Portugal		+351 (213) 466-111		jfernandes@yahoo.pt	4
35	Madalena	Sampaio		Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		+351 (225) 022-448		masampaio@sapo.pt	4
36	Hannah	Schneider		Tauentzienstraße 8	Berlin		Germany	10789	+49 030 26550280		hannah.schneider@yahoo.de	5
37	Fynn	Zimmermann		Berger Straße 10	Frankfurt		Germany	60316	+49 069 40598889		fzimmermann@yahoo.de	3
38	Niklas	Schröder		Barbarossastraße 19	Berlin		Germany	10779	+49 030 2141444		nschroder@surfeu.de	3
39	Camille	Bernard		4, Rue Milton	Paris		France	75009	+33 01 49 70 65 65		camille.bernard@yahoo.fr	4
40	Dominique	Lefebvre		8, Rue Hanovre	Paris		France	75002	+33 01 47 42 71 71		dominiquelefebvre@gmail.com	4
41	Marc	Dubois		11, Place Bellecour	Lyon		France	69002	+33 04 78 30 30 30		marc.dubois@hotmail.com	5
42	Wyatt	Girard		9, Place Louis Barthou	Bordeaux		France	33000	+33 05 56 96 96 96		wyatt.girard@yahoo.fr	3
43	Isabelle	Mercier		68, Rue Jouvence	Dijon		France	21000	+33 03 80 73 66 99		isabelle_mercier@apple.fr	3
44	Terhi	Hämäläinen		Porthaninkatu 9	Helsinki		Finland	00530	+358 09 870 2000		terhi.hamalainen@apple.fi	3
45	Ladislav	Kovács		Erzsébet krt. 58.	Budapest		Hungary	H-1073			ladislav_kovacs@apple.hu	3
46	Hugh	O'Reilly		3 Chatham Street	Dublin	Dublin	Ireland		+353 01 6792424		hughoreilly@apple.ie	3
47	Lucas	Mancini		Via Degli Scipioni, 43	Rome	RM	Italy	00192	+39 06 39733434		lucas.mancini@yahoo.it	5
48	Johannes	Van der Berg		Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	+31 020 6223130		johavanderberg@yahoo.nl	5
49	Stanislaw	Wójcik		Ordynacka 10	Warsaw		Poland	00-358	+48 22 828 37 39		stanislaw.wójcik@wp.pl	4
50	Enrique	Muñoz		C/ San Bernardo 85	Madrid		Spain	28015	+34 914 454 454		enrique_munoz@yahoo.es	5
51	Joakim	Johansson		Celsiusg. 9	Stockholm		Sweden	11230	+46 08-651 52 52		joakim.johansson@yahoo.se	5
52	Emma	Jones		202 Hoxton Street	London		United Kingdom	N1 5LH	+44 020 7707 0707		emma_jones@hotmail.com	3
53	Phil	Hughes		113 Lupus St	London		United Kingdom	SW1V 3EN	+44 020 7976 5722		phil.hughes@gmail.com	3
54	Steve	Murray		110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	+44 0131 315 3300		steve.murray@yahoo.uk	5
55	Mark	Taylor		421 Bourke Street	Sidney	NSW	Australia	2010	+61 (02) 9332 3633		mark.taylor@yahoo.au	4
56	Diego	Gutiérrez		307 Macacha Güemes	Buenos Aires		Argentina	1106	+54 (0)11 4311 4333		diego.gutierrez@yahoo.ar	4
57	Luis	Rojas		Calle Lira, 198	Santiago		Chile		+56 (0)2 635 4444		luisrojas@yahoo.cl	5
58	Manoj	Pareek		12,Community Centre	Delhi		India	110017	+91 0124 39883988		manoj.pareek@rediff.com	3
59	Puja	Srivastava		3,Raj Bhavan Road	Bangalore		India	560001	+91 080 22289999		puja_srivastava@yahoo.in	3
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	chinook	album
2	chinook	artist
3	chinook	customer
4	chinook	genre
5	chinook	invoice
6	chinook	mediatype
7	chinook	playlist
8	chinook	track
9	chinook	invoiceline
10	chinook	employee
11	chinook	playlisttrack
12	admin	logentry
13	auth	permission
14	auth	group
15	auth	user
16	contenttypes	contenttype
17	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-08-04 20:58:11.161211+05:30
2	auth	0001_initial	2019-08-04 20:58:11.218068+05:30
3	admin	0001_initial	2019-08-04 20:58:11.266557+05:30
4	admin	0002_logentry_remove_auto_add	2019-08-04 20:58:11.286428+05:30
5	admin	0003_logentry_add_action_flag_choices	2019-08-04 20:58:11.294806+05:30
6	contenttypes	0002_remove_content_type_name	2019-08-04 20:58:11.323584+05:30
7	auth	0002_alter_permission_name_max_length	2019-08-04 20:58:11.330114+05:30
8	auth	0003_alter_user_email_max_length	2019-08-04 20:58:11.340123+05:30
9	auth	0004_alter_user_username_opts	2019-08-04 20:58:11.358021+05:30
10	auth	0005_alter_user_last_login_null	2019-08-04 20:58:11.374867+05:30
11	auth	0006_require_contenttypes_0002	2019-08-04 20:58:11.37867+05:30
12	auth	0007_alter_validators_add_error_messages	2019-08-04 20:58:11.39346+05:30
13	auth	0008_alter_user_username_max_length	2019-08-04 20:58:11.41115+05:30
14	auth	0009_alter_user_last_name_max_length	2019-08-04 20:58:11.426871+05:30
15	auth	0010_alter_group_name_max_length	2019-08-04 20:58:11.443809+05:30
16	auth	0011_update_proxy_permissions	2019-08-04 20:58:11.453074+05:30
17	chinook	0001_initial	2019-08-04 20:58:11.550062+05:30
18	sessions	0001_initial	2019-08-04 20:58:11.587828+05:30
19	chinook	0002_delete_playlisttrack	2019-08-06 14:34:15.745723+05:30
20	chinook	0003_playlisttrack	2019-08-06 14:34:15.787176+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.employee (employee_id, last_name, first_name, title, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email, reports_to_id) FROM stdin;
1	Adams	Andrew	General Manager	1962-02-18 00:00:00+05:30	2002-08-14 00:00:00+05:30	11120 Jasper Ave NW	Edmonton	AB	Canada	T5K 2N1	+1 (780) 428-9482	+1 (780) 428-3457	andrew@chinookcorp.com	\N
2	Edwards	Nancy	Sales Manager	1958-12-08 00:00:00+05:30	2002-05-01 00:00:00+05:30	825 8 Ave SW	Calgary	AB	Canada	T2P 2T3	+1 (403) 262-3443	+1 (403) 262-3322	nancy@chinookcorp.com	1
3	Peacock	Jane	Sales Support Agent	1973-08-29 00:00:00+05:30	2002-04-01 00:00:00+05:30	1111 6 Ave SW	Calgary	AB	Canada	T2P 5M5	+1 (403) 262-3443	+1 (403) 262-6712	jane@chinookcorp.com	2
4	Park	Margaret	Sales Support Agent	1947-09-19 00:00:00+05:30	2003-05-03 00:00:00+05:30	683 10 Street SW	Calgary	AB	Canada	T2P 5G3	+1 (403) 263-4423	+1 (403) 263-4289	margaret@chinookcorp.com	2
5	Johnson	Steve	Sales Support Agent	1965-03-03 00:00:00+05:30	2003-10-17 00:00:00+05:30	7727B 41 Ave	Calgary	AB	Canada	T3B 1Y7	1 (780) 836-9987	1 (780) 836-9543	steve@chinookcorp.com	2
6	Mitchell	Michael	IT Manager	1973-07-01 00:00:00+05:30	2003-10-17 00:00:00+05:30	5827 Bowness Road NW	Calgary	AB	Canada	T3B 0C5	+1 (403) 246-9887	+1 (403) 246-9899	michael@chinookcorp.com	1
7	King	Robert	IT Staff	1970-05-29 00:00:00+05:30	2004-01-02 00:00:00+05:30	590 Columbia Boulevard West	Lethbridge	AB	Canada	T1K 5N8	+1 (403) 456-9986	+1 (403) 456-8485	robert@chinookcorp.com	6
8	Callahan	Laura	IT Staff	1968-01-09 00:00:00+05:30	2004-03-04 00:00:00+05:30	923 7 ST NW	Lethbridge	AB	Canada	T1H 1Y8	+1 (403) 467-3351	+1 (403) 467-8772	laura@chinookcorp.com	6
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.genre (genre_id, name) FROM stdin;
1	Rock
2	Jazz
3	Metal
4	Alternative & Punk
5	Rock And Roll
6	Blues
7	Latin
8	Reggae
9	Pop
10	Soundtrack
11	Bossa Nova
12	Easy Listening
13	Heavy Metal
14	R&B/Soul
15	Electronica/Dance
16	World
17	Hip Hop/Rap
18	Science Fiction
19	TV Shows
20	Sci Fi & Fantasy
21	Drama
22	Comedy
23	Alternative
24	Classical
25	Opera
\.


--
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.invoice (invoice_id, invoice_date, billing_address, billing_city, billing_state, billing_country, billing_postal_code, total, customer_id) FROM stdin;
1	2009-01-01 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	1.98	2
2	2009-01-02 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	3.96	4
3	2009-01-03 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	5.94	8
4	2009-01-06 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	8.91	14
5	2009-01-11 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	13.86	23
6	2009-01-19 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	0.99	37
7	2009-02-01 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	1.98	38
8	2009-02-01 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	1.98	40
9	2009-02-02 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	3.96	42
10	2009-02-03 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		5.94	46
11	2009-02-06 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	8.91	52
12	2009-02-11 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	13.86	2
13	2009-02-19 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	0.99	16
14	2009-03-04 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	1.98	17
15	2009-03-04 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	1.98	19
16	2009-03-05 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	3.96	21
17	2009-03-06 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	5.94	25
18	2009-03-09 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	8.91	31
19	2009-03-14 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	13.86	40
20	2009-03-22 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	0.99	54
21	2009-04-04 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	1.98	55
22	2009-04-04 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		1.98	57
23	2009-04-05 00:00:00+05:30	3,Raj Bhavan Road	Bangalore		India	560001	3.96	59
24	2009-04-06 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	5.94	4
25	2009-04-09 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	8.91	10
26	2009-04-14 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	13.86	19
27	2009-04-22 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	0.99	33
28	2009-05-05 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		1.98	34
29	2009-05-05 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	1.98	36
30	2009-05-06 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	3.96	38
31	2009-05-07 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	5.94	42
32	2009-05-10 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	8.91	48
33	2009-05-15 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		13.86	57
34	2009-05-23 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	0.99	12
35	2009-06-05 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	1.98	13
36	2009-06-05 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	1.98	15
37	2009-06-06 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	3.96	17
38	2009-06-07 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	5.94	21
39	2009-06-10 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	8.91	27
40	2009-06-15 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	13.86	36
41	2009-06-23 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	0.99	50
42	2009-07-06 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	1.98	51
43	2009-07-06 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	1.98	53
44	2009-07-07 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	3.96	55
45	2009-07-08 00:00:00+05:30	3,Raj Bhavan Road	Bangalore		India	560001	5.94	59
46	2009-07-11 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	8.91	6
47	2009-07-16 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	13.86	15
48	2009-07-24 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	0.99	29
49	2009-08-06 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	1.98	30
50	2009-08-06 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	1.98	32
51	2009-08-07 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		3.96	34
52	2009-08-08 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	5.94	38
53	2009-08-11 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	8.91	44
54	2009-08-16 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	13.86	53
55	2009-08-24 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	0.99	8
56	2009-09-06 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	1.98	9
57	2009-09-06 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	1.98	11
58	2009-09-07 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	3.96	13
59	2009-09-08 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	5.94	17
60	2009-09-11 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	8.91	23
61	2009-09-16 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	13.86	32
62	2009-09-24 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		0.99	46
63	2009-10-07 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	1.98	47
64	2009-10-07 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	1.98	49
65	2009-10-08 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	3.96	51
66	2009-10-09 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	5.94	55
67	2009-10-12 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	8.91	2
68	2009-10-17 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	13.86	11
69	2009-10-25 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	0.99	25
70	2009-11-07 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	1.98	26
71	2009-11-07 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	1.98	28
72	2009-11-08 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	3.96	30
73	2009-11-09 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		5.94	34
74	2009-11-12 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	8.91	40
75	2009-11-17 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	13.86	49
76	2009-11-25 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	0.99	4
77	2009-12-08 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	1.98	5
78	2009-12-08 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	1.98	7
79	2009-12-09 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	3.96	9
80	2009-12-10 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	5.94	13
81	2009-12-13 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	8.91	19
82	2009-12-18 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	13.86	28
83	2009-12-26 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	0.99	42
84	2010-01-08 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	1.98	43
85	2010-01-08 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	1.98	45
86	2010-01-09 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	3.96	47
87	2010-01-10 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	6.94	51
88	2010-01-13 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		17.91	57
89	2010-01-18 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	18.86	7
90	2010-01-26 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	0.99	21
91	2010-02-08 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	1.98	22
92	2010-02-08 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	1.98	24
93	2010-02-09 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	3.96	26
94	2010-02-10 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	5.94	30
95	2010-02-13 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	8.91	36
96	2010-02-18 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	21.86	45
97	2010-02-26 00:00:00+05:30	3,Raj Bhavan Road	Bangalore		India	560001	1.99	59
98	2010-03-11 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	3.98	1
99	2010-03-11 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	3.98	3
100	2010-03-12 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	3.96	5
101	2010-03-13 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	5.94	9
102	2010-03-16 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	9.91	15
103	2010-03-21 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	15.86	24
104	2010-03-29 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	0.99	38
105	2010-04-11 00:00:00+05:30	4, Rue Milton	Paris		France	75009	1.98	39
106	2010-04-11 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	1.98	41
107	2010-04-12 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	3.96	43
108	2010-04-13 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	5.94	47
109	2010-04-16 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	8.91	53
110	2010-04-21 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	13.86	3
111	2010-04-29 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	0.99	17
112	2010-05-12 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	1.98	18
113	2010-05-12 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	1.98	20
114	2010-05-13 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	3.96	22
115	2010-05-14 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	5.94	26
116	2010-05-17 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	8.91	32
117	2010-05-22 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	13.86	41
118	2010-05-30 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	0.99	55
119	2010-06-12 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	1.98	56
120	2010-06-12 00:00:00+05:30	12,Community Centre	Delhi		India	110017	1.98	58
121	2010-06-13 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	3.96	1
122	2010-06-14 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	5.94	5
123	2010-06-17 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	8.91	11
124	2010-06-22 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	13.86	20
125	2010-06-30 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		0.99	34
126	2010-07-13 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		1.98	35
127	2010-07-13 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	1.98	37
128	2010-07-14 00:00:00+05:30	4, Rue Milton	Paris		France	75009	3.96	39
129	2010-07-15 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	5.94	43
130	2010-07-18 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	8.91	49
131	2010-07-23 00:00:00+05:30	12,Community Centre	Delhi		India	110017	13.86	58
132	2010-07-31 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	0.99	13
133	2010-08-13 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	1.98	14
134	2010-08-13 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	1.98	16
135	2010-08-14 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	3.96	18
136	2010-08-15 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	5.94	22
137	2010-08-18 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	8.91	28
138	2010-08-23 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	13.86	37
139	2010-08-31 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	0.99	51
140	2010-09-13 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	1.98	52
141	2010-09-13 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	1.98	54
142	2010-09-14 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	3.96	56
143	2010-09-15 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	5.94	1
144	2010-09-18 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	8.91	7
145	2010-09-23 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	13.86	16
146	2010-10-01 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	0.99	30
147	2010-10-14 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	1.98	31
148	2010-10-14 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	1.98	33
149	2010-10-15 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		3.96	35
150	2010-10-16 00:00:00+05:30	4, Rue Milton	Paris		France	75009	5.94	39
151	2010-10-19 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	8.91	45
152	2010-10-24 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	13.86	54
153	2010-11-01 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	0.99	9
154	2010-11-14 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	1.98	10
155	2010-11-14 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	1.98	12
156	2010-11-15 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	3.96	14
157	2010-11-16 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	5.94	18
158	2010-11-19 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	8.91	24
159	2010-11-24 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	13.86	33
160	2010-12-02 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	0.99	47
161	2010-12-15 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	1.98	48
162	2010-12-15 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	1.98	50
163	2010-12-16 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	3.96	52
164	2010-12-17 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	5.94	56
165	2010-12-20 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	8.91	3
166	2010-12-25 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	13.86	12
167	2011-01-02 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	0.99	26
168	2011-01-15 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	1.98	27
169	2011-01-15 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	1.98	29
170	2011-01-16 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	3.96	31
171	2011-01-17 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		5.94	35
172	2011-01-20 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	8.91	41
173	2011-01-25 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	13.86	50
174	2011-02-02 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	0.99	5
175	2011-02-15 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	1.98	6
176	2011-02-15 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	1.98	8
177	2011-02-16 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	3.96	10
178	2011-02-17 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	5.94	14
179	2011-02-20 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	8.91	20
180	2011-02-25 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	13.86	29
181	2011-03-05 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	0.99	43
182	2011-03-18 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	1.98	44
183	2011-03-18 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		1.98	46
184	2011-03-19 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	3.96	48
185	2011-03-20 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	5.94	52
186	2011-03-23 00:00:00+05:30	12,Community Centre	Delhi		India	110017	8.91	58
187	2011-03-28 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	13.86	8
188	2011-04-05 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	0.99	22
189	2011-04-18 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	1.98	23
190	2011-04-18 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	1.98	25
191	2011-04-19 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	3.96	27
192	2011-04-20 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	5.94	31
193	2011-04-23 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	14.91	37
194	2011-04-28 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		21.86	46
195	2011-05-06 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	0.99	1
196	2011-05-19 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	1.98	2
197	2011-05-19 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	1.98	4
198	2011-05-20 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	3.96	6
199	2011-05-21 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	5.94	10
200	2011-05-24 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	8.91	16
201	2011-05-29 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	18.86	25
202	2011-06-06 00:00:00+05:30	4, Rue Milton	Paris		France	75009	1.99	39
203	2011-06-19 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	2.98	40
204	2011-06-19 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	3.98	42
205	2011-06-20 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	7.96	44
206	2011-06-21 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	8.94	48
207	2011-06-24 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	8.91	54
208	2011-06-29 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	15.86	4
209	2011-07-07 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	0.99	18
210	2011-07-20 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	1.98	19
211	2011-07-20 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	1.98	21
212	2011-07-21 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	3.96	23
213	2011-07-22 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	5.94	27
214	2011-07-25 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	8.91	33
215	2011-07-30 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	13.86	42
216	2011-08-07 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	0.99	56
217	2011-08-20 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		1.98	57
218	2011-08-20 00:00:00+05:30	3,Raj Bhavan Road	Bangalore		India	560001	1.98	59
219	2011-08-21 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	3.96	2
220	2011-08-22 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	5.94	6
221	2011-08-25 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	8.91	12
222	2011-08-30 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	13.86	21
223	2011-09-07 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		0.99	35
224	2011-09-20 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	1.98	36
225	2011-09-20 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	1.98	38
226	2011-09-21 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	3.96	40
227	2011-09-22 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	5.94	44
228	2011-09-25 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	8.91	50
229	2011-09-30 00:00:00+05:30	3,Raj Bhavan Road	Bangalore		India	560001	13.86	59
230	2011-10-08 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	0.99	14
231	2011-10-21 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	1.98	15
232	2011-10-21 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	1.98	17
233	2011-10-22 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	3.96	19
234	2011-10-23 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	5.94	23
235	2011-10-26 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	8.91	29
236	2011-10-31 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	13.86	38
237	2011-11-08 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	0.99	52
238	2011-11-21 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	1.98	53
239	2011-11-21 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	1.98	55
240	2011-11-22 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		3.96	57
241	2011-11-23 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	5.94	2
242	2011-11-26 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	8.91	8
243	2011-12-01 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	13.86	17
244	2011-12-09 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	0.99	31
245	2011-12-22 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	1.98	32
246	2011-12-22 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		1.98	34
247	2011-12-23 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	3.96	36
248	2011-12-24 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	5.94	40
249	2011-12-27 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		8.91	46
250	2012-01-01 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	13.86	55
251	2012-01-09 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	0.99	10
252	2012-01-22 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	1.98	11
253	2012-01-22 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	1.98	13
254	2012-01-23 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	3.96	15
255	2012-01-24 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	5.94	19
256	2012-01-27 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	8.91	25
257	2012-02-01 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		13.86	34
258	2012-02-09 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	0.99	48
259	2012-02-22 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	1.98	49
260	2012-02-22 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	1.98	51
261	2012-02-23 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	3.96	53
262	2012-02-24 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		5.94	57
263	2012-02-27 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	8.91	4
264	2012-03-03 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	13.86	13
265	2012-03-11 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	0.99	27
266	2012-03-24 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	1.98	28
267	2012-03-24 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	1.98	30
268	2012-03-25 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	3.96	32
269	2012-03-26 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	5.94	36
270	2012-03-29 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	8.91	42
271	2012-04-03 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	13.86	51
272	2012-04-11 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	0.99	6
273	2012-04-24 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	1.98	7
274	2012-04-24 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	1.98	9
275	2012-04-25 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	3.96	11
276	2012-04-26 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	5.94	15
277	2012-04-29 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	8.91	21
278	2012-05-04 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	13.86	30
279	2012-05-12 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	0.99	44
280	2012-05-25 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	1.98	45
281	2012-05-25 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	1.98	47
282	2012-05-26 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	3.96	49
283	2012-05-27 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	5.94	53
284	2012-05-30 00:00:00+05:30	3,Raj Bhavan Road	Bangalore		India	560001	8.91	59
285	2012-06-04 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	13.86	9
286	2012-06-12 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	0.99	23
287	2012-06-25 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	1.98	24
288	2012-06-25 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	1.98	26
289	2012-06-26 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	3.96	28
290	2012-06-27 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	5.94	32
291	2012-06-30 00:00:00+05:30	Barbarossastraße 19	Berlin		Germany	10779	8.91	38
292	2012-07-05 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	13.86	47
293	2012-07-13 00:00:00+05:30	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	0.99	2
294	2012-07-26 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	1.98	3
295	2012-07-26 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	1.98	5
296	2012-07-27 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	3.96	7
297	2012-07-28 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	5.94	11
298	2012-07-31 00:00:00+05:30	1 Microsoft Way	Redmond	WA	USA	98052-8300	10.91	17
299	2012-08-05 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	23.86	26
300	2012-08-13 00:00:00+05:30	8, Rue Hanovre	Paris		France	75002	0.99	40
301	2012-08-26 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	1.98	41
302	2012-08-26 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	1.98	43
303	2012-08-27 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	3.96	45
304	2012-08-28 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	5.94	49
305	2012-08-31 00:00:00+05:30	421 Bourke Street	Sidney	NSW	Australia	2010	8.91	55
306	2012-09-05 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	16.86	5
307	2012-09-13 00:00:00+05:30	1 Infinite Loop	Cupertino	CA	USA	95014	1.99	19
308	2012-09-26 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	3.98	20
309	2012-09-26 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	3.98	22
310	2012-09-27 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	7.96	24
311	2012-09-28 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	11.94	28
312	2012-10-01 00:00:00+05:30	Rua da Assunção 53	Lisbon		Portugal		10.91	34
313	2012-10-06 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	16.86	43
314	2012-10-14 00:00:00+05:30	Calle Lira, 198	Santiago		Chile		0.99	57
315	2012-10-27 00:00:00+05:30	12,Community Centre	Delhi		India	110017	1.98	58
316	2012-10-27 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	1.98	1
317	2012-10-28 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	3.96	3
318	2012-10-29 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	5.94	7
319	2012-11-01 00:00:00+05:30	Qe 7 Bloco G	Brasília	DF	Brazil	71020-677	8.91	13
320	2012-11-06 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	13.86	22
321	2012-11-14 00:00:00+05:30	Tauentzienstraße 8	Berlin		Germany	10789	0.99	36
322	2012-11-27 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	1.98	37
323	2012-11-27 00:00:00+05:30	4, Rue Milton	Paris		France	75009	1.98	39
324	2012-11-28 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	3.96	41
325	2012-11-29 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	5.94	45
326	2012-12-02 00:00:00+05:30	Celsiusg. 9	Stockholm		Sweden	11230	8.91	51
327	2012-12-07 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	13.86	1
328	2012-12-15 00:00:00+05:30	700 W Pender Street	Vancouver	BC	Canada	V6C 1G8	0.99	15
329	2012-12-28 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	1.98	16
330	2012-12-28 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	1.98	18
331	2012-12-29 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	3.96	20
332	2012-12-30 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	5.94	24
333	2013-01-02 00:00:00+05:30	230 Elgin Street	Ottawa	ON	Canada	K2P 1L7	8.91	30
334	2013-01-07 00:00:00+05:30	4, Rue Milton	Paris		France	75009	13.86	39
335	2013-01-15 00:00:00+05:30	113 Lupus St	London		United Kingdom	SW1V 3EN	0.99	53
336	2013-01-28 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	1.98	54
337	2013-01-28 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	1.98	56
338	2013-01-29 00:00:00+05:30	12,Community Centre	Delhi		India	110017	3.96	58
339	2013-01-30 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	5.94	3
340	2013-02-02 00:00:00+05:30	Sønder Boulevard 51	Copenhagen		Denmark	1720	8.91	9
341	2013-02-07 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	13.86	18
342	2013-02-15 00:00:00+05:30	696 Osborne Street	Winnipeg	MB	Canada	R3L 2B9	0.99	32
343	2013-02-28 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	1.98	33
344	2013-02-28 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		1.98	35
345	2013-03-01 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	3.96	37
346	2013-03-02 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	5.94	41
347	2013-03-05 00:00:00+05:30	Via Degli Scipioni, 43	Rome	RM	Italy	00192	8.91	47
348	2013-03-10 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	13.86	56
349	2013-03-18 00:00:00+05:30	Av. Paulista, 2022	São Paulo	SP	Brazil	01310-200	0.99	11
350	2013-03-31 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	1.98	12
351	2013-03-31 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	1.98	14
352	2013-04-01 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	3.96	16
353	2013-04-02 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	5.94	20
354	2013-04-05 00:00:00+05:30	2211 W Berry Street	Fort Worth	TX	USA	76110	8.91	26
355	2013-04-10 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		13.86	35
356	2013-04-18 00:00:00+05:30	Ordynacka 10	Warsaw		Poland	00-358	0.99	49
357	2013-05-01 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	1.98	50
358	2013-05-01 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	1.98	52
359	2013-05-02 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	3.96	54
360	2013-05-03 00:00:00+05:30	12,Community Centre	Delhi		India	110017	5.94	58
361	2013-05-06 00:00:00+05:30	Klanova 9/506	Prague		Czech Republic	14700	8.91	5
362	2013-05-11 00:00:00+05:30	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	13.86	14
363	2013-05-19 00:00:00+05:30	302 S 700 E	Salt Lake City	UT	USA	84102	0.99	28
364	2013-06-01 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	1.98	29
365	2013-06-01 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	1.98	31
366	2013-06-02 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	3.96	33
367	2013-06-03 00:00:00+05:30	Berger Straße 10	Frankfurt		Germany	60316	5.94	37
368	2013-06-06 00:00:00+05:30	68, Rue Jouvence	Dijon		France	21000	8.91	43
369	2013-06-11 00:00:00+05:30	202 Hoxton Street	London		United Kingdom	N1 5LH	13.86	52
370	2013-06-19 00:00:00+05:30	Rotenturmstraße 4, 1010 Innere Stadt	Vienne		Austria	1010	0.99	7
371	2013-07-02 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	1.98	8
372	2013-07-02 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	1.98	10
373	2013-07-03 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	3.96	12
374	2013-07-04 00:00:00+05:30	1600 Amphitheatre Parkway	Mountain View	CA	USA	94043-1351	5.94	16
375	2013-07-07 00:00:00+05:30	120 S Orange Ave	Orlando	FL	USA	32801	8.91	22
376	2013-07-12 00:00:00+05:30	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	13.86	31
377	2013-07-20 00:00:00+05:30	Erzsébet krt. 58.	Budapest		Hungary	H-1073	0.99	45
378	2013-08-02 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		1.98	46
379	2013-08-02 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	1.98	48
380	2013-08-03 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	3.96	50
381	2013-08-04 00:00:00+05:30	110 Raeburn Pl	Edinburgh		United Kingdom	EH4 1HH	5.94	54
382	2013-08-07 00:00:00+05:30	Av. Brigadeiro Faria Lima, 2170	São José dos Campos	SP	Brazil	12227-000	8.91	1
383	2013-08-12 00:00:00+05:30	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	13.86	10
384	2013-08-20 00:00:00+05:30	162 E Superior Street	Chicago	IL	USA	60611	0.99	24
385	2013-09-02 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	1.98	25
386	2013-09-02 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	1.98	27
387	2013-09-03 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	3.96	29
388	2013-09-04 00:00:00+05:30	5112 48 Street	Yellowknife	NT	Canada	X1A 1N6	5.94	33
389	2013-09-07 00:00:00+05:30	4, Rue Milton	Paris		France	75009	8.91	39
390	2013-09-12 00:00:00+05:30	Lijnbaansgracht 120bg	Amsterdam	VV	Netherlands	1016	13.86	48
391	2013-09-20 00:00:00+05:30	1498 rue Bélanger	Montréal	QC	Canada	H2G 1A7	0.99	3
392	2013-10-03 00:00:00+05:30	Ullevålsveien 14	Oslo		Norway	0171	1.98	4
393	2013-10-03 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	1.98	6
394	2013-10-04 00:00:00+05:30	Grétrystraat 63	Brussels		Belgium	1000	3.96	8
395	2013-10-05 00:00:00+05:30	Praça Pio X, 119	Rio de Janeiro	RJ	Brazil	20040-020	5.94	12
396	2013-10-08 00:00:00+05:30	627 Broadway	New York	NY	USA	10012-2612	8.91	18
397	2013-10-13 00:00:00+05:30	1033 N Park Ave	Tucson	AZ	USA	85719	13.86	27
398	2013-10-21 00:00:00+05:30	11, Place Bellecour	Lyon		France	69002	0.99	41
399	2013-11-03 00:00:00+05:30	9, Place Louis Barthou	Bordeaux		France	33000	1.98	42
400	2013-11-03 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	1.98	44
401	2013-11-04 00:00:00+05:30	3 Chatham Street	Dublin	Dublin	Ireland		3.96	46
402	2013-11-05 00:00:00+05:30	C/ San Bernardo 85	Madrid		Spain	28015	5.94	50
403	2013-11-08 00:00:00+05:30	307 Macacha Güemes	Buenos Aires		Argentina	1106	8.91	56
404	2013-11-13 00:00:00+05:30	Rilská 3174/6	Prague		Czech Republic	14300	25.86	6
405	2013-11-21 00:00:00+05:30	541 Del Medio Avenue	Mountain View	CA	USA	94040-111	0.99	20
406	2013-12-04 00:00:00+05:30	801 W 4th Street	Reno	NV	USA	89503	1.98	21
407	2013-12-04 00:00:00+05:30	69 Salem Street	Boston	MA	USA	2113	1.98	23
408	2013-12-05 00:00:00+05:30	319 N. Frances Street	Madison	WI	USA	53703	3.96	25
409	2013-12-06 00:00:00+05:30	796 Dundas Street West	Toronto	ON	Canada	M6J 1V1	5.94	29
410	2013-12-09 00:00:00+05:30	Rua dos Campeões Europeus de Viena, 4350	Porto		Portugal		8.91	35
411	2013-12-14 00:00:00+05:30	Porthaninkatu 9	Helsinki		Finland	00530	13.86	44
412	2013-12-22 00:00:00+05:30	12,Community Centre	Delhi		India	110017	1.99	58
\.


--
-- Data for Name: invoice_line; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.invoice_line (invoice_line_id, unit_price, quantity, invoice_id, track_id) FROM stdin;
579	0.99	1	108	1
1	0.99	1	1	2
1154	0.99	1	214	2
1728	0.99	1	319	3
2	0.99	1	1	4
580	0.99	1	108	5
3	0.99	1	2	6
4	0.99	1	2	8
1155	0.99	1	214	8
581	0.99	1	108	9
1729	0.99	1	319	9
5	0.99	1	2	10
6	0.99	1	2	12
582	0.99	1	108	13
1156	0.99	1	214	14
1730	0.99	1	319	15
7	0.99	1	3	16
583	0.99	1	109	19
8	0.99	1	3	20
1157	0.99	1	214	20
1731	0.99	1	319	21
9	0.99	1	3	24
584	0.99	1	109	25
1158	0.99	1	214	26
10	0.99	1	3	28
1732	0.99	1	320	30
585	0.99	1	109	31
11	0.99	1	3	32
1159	0.99	1	214	32
12	0.99	1	3	36
586	0.99	1	109	37
1160	0.99	1	214	38
1733	0.99	1	320	39
13	0.99	1	4	42
587	0.99	1	109	43
1161	0.99	1	214	44
14	0.99	1	4	48
1734	0.99	1	320	48
588	0.99	1	109	49
1162	0.99	1	215	53
15	0.99	1	4	54
589	0.99	1	109	55
1735	0.99	1	320	57
16	0.99	1	4	60
590	0.99	1	109	61
1163	0.99	1	215	62
17	0.99	1	4	66
1736	0.99	1	320	66
591	0.99	1	109	67
1164	0.99	1	215	71
18	0.99	1	4	72
1737	0.99	1	320	75
592	0.99	1	110	76
19	0.99	1	4	78
1165	0.99	1	215	80
20	0.99	1	4	84
1738	0.99	1	320	84
593	0.99	1	110	85
1166	0.99	1	215	89
21	0.99	1	4	90
1739	0.99	1	320	93
594	0.99	1	110	94
1167	0.99	1	215	98
22	0.99	1	5	99
1740	0.99	1	320	102
595	0.99	1	110	103
1168	0.99	1	215	107
23	0.99	1	5	108
1741	0.99	1	320	111
596	0.99	1	110	112
1169	0.99	1	215	116
24	0.99	1	5	117
1742	0.99	1	320	120
597	0.99	1	110	121
1170	0.99	1	215	125
25	0.99	1	5	126
1743	0.99	1	320	129
598	0.99	1	110	130
1171	0.99	1	215	134
26	0.99	1	5	135
1744	0.99	1	320	138
599	0.99	1	110	139
1172	0.99	1	215	143
27	0.99	1	5	144
1745	0.99	1	320	147
600	0.99	1	110	148
1173	0.99	1	215	152
28	0.99	1	5	153
601	0.99	1	110	157
1174	0.99	1	215	161
1746	0.99	1	321	161
29	0.99	1	5	162
1747	0.99	1	322	162
1748	0.99	1	322	163
1749	0.99	1	323	165
602	0.99	1	110	166
1750	0.99	1	323	167
1751	0.99	1	324	169
1175	0.99	1	215	170
30	0.99	1	5	171
1752	0.99	1	324	171
1753	0.99	1	324	173
603	0.99	1	110	175
1754	0.99	1	324	175
1755	0.99	1	325	179
31	0.99	1	5	180
1756	0.99	1	325	183
604	0.99	1	110	184
1176	0.99	1	216	184
1177	0.99	1	217	185
1178	0.99	1	217	186
1757	0.99	1	325	187
1179	0.99	1	218	188
32	0.99	1	5	189
1180	0.99	1	218	190
1758	0.99	1	325	191
1181	0.99	1	219	192
605	0.99	1	110	193
1182	0.99	1	219	194
1759	0.99	1	325	195
1183	0.99	1	219	196
33	0.99	1	5	198
1184	0.99	1	219	198
1760	0.99	1	325	199
1185	0.99	1	220	202
1761	0.99	1	326	205
1186	0.99	1	220	206
34	0.99	1	5	207
606	0.99	1	111	207
607	0.99	1	112	208
608	0.99	1	112	209
1187	0.99	1	220	210
609	0.99	1	113	211
1762	0.99	1	326	211
610	0.99	1	113	213
1188	0.99	1	220	214
611	0.99	1	114	215
35	0.99	1	5	216
612	0.99	1	114	217
1763	0.99	1	326	217
1189	0.99	1	220	218
613	0.99	1	114	219
614	0.99	1	114	221
1190	0.99	1	220	222
1764	0.99	1	326	223
615	0.99	1	115	225
1191	0.99	1	221	228
616	0.99	1	115	229
1765	0.99	1	326	229
36	0.99	1	6	230
37	0.99	1	7	231
38	0.99	1	7	232
617	0.99	1	115	233
39	0.99	1	8	234
1192	0.99	1	221	234
1766	0.99	1	326	235
40	0.99	1	8	236
618	0.99	1	115	237
41	0.99	1	9	238
42	0.99	1	9	240
1193	0.99	1	221	240
619	0.99	1	115	241
1767	0.99	1	326	241
43	0.99	1	9	242
44	0.99	1	9	244
620	0.99	1	115	245
1194	0.99	1	221	246
1768	0.99	1	326	247
45	0.99	1	10	248
621	0.99	1	116	251
46	0.99	1	10	252
1195	0.99	1	221	252
1769	0.99	1	326	253
47	0.99	1	10	256
622	0.99	1	116	257
1196	0.99	1	221	258
48	0.99	1	10	260
1770	0.99	1	327	262
623	0.99	1	116	263
49	0.99	1	10	264
1197	0.99	1	221	264
50	0.99	1	10	268
624	0.99	1	116	269
1198	0.99	1	221	270
1771	0.99	1	327	271
51	0.99	1	11	274
625	0.99	1	116	275
1199	0.99	1	221	276
52	0.99	1	11	280
1772	0.99	1	327	280
626	0.99	1	116	281
1200	0.99	1	222	285
53	0.99	1	11	286
627	0.99	1	116	287
1773	0.99	1	327	289
54	0.99	1	11	292
628	0.99	1	116	293
1201	0.99	1	222	294
55	0.99	1	11	298
1774	0.99	1	327	298
629	0.99	1	116	299
1202	0.99	1	222	303
56	0.99	1	11	304
1775	0.99	1	327	307
630	0.99	1	117	308
57	0.99	1	11	310
1203	0.99	1	222	312
58	0.99	1	11	316
1776	0.99	1	327	316
631	0.99	1	117	317
1204	0.99	1	222	321
59	0.99	1	11	322
1777	0.99	1	327	325
632	0.99	1	117	326
1205	0.99	1	222	330
60	0.99	1	12	331
1778	0.99	1	327	334
633	0.99	1	117	335
1206	0.99	1	222	339
61	0.99	1	12	340
1779	0.99	1	327	343
634	0.99	1	117	344
1207	0.99	1	222	348
62	0.99	1	12	349
1780	0.99	1	327	352
635	0.99	1	117	353
1208	0.99	1	222	357
63	0.99	1	12	358
1781	0.99	1	327	361
636	0.99	1	117	362
1209	0.99	1	222	366
64	0.99	1	12	367
1782	0.99	1	327	370
637	0.99	1	117	371
1210	0.99	1	222	375
65	0.99	1	12	376
1783	0.99	1	327	379
638	0.99	1	117	380
1211	0.99	1	222	384
66	0.99	1	12	385
639	0.99	1	117	389
1212	0.99	1	222	393
1784	0.99	1	328	393
67	0.99	1	12	394
1785	0.99	1	329	394
1786	0.99	1	329	395
1787	0.99	1	330	397
640	0.99	1	117	398
1788	0.99	1	330	399
1789	0.99	1	331	401
1213	0.99	1	222	402
68	0.99	1	12	403
1790	0.99	1	331	403
1791	0.99	1	331	405
641	0.99	1	117	407
1792	0.99	1	331	407
1793	0.99	1	332	411
69	0.99	1	12	412
1794	0.99	1	332	415
642	0.99	1	117	416
1214	0.99	1	223	416
1215	0.99	1	224	417
1216	0.99	1	224	418
1795	0.99	1	332	419
1217	0.99	1	225	420
70	0.99	1	12	421
1218	0.99	1	225	422
1796	0.99	1	332	423
1219	0.99	1	226	424
643	0.99	1	117	425
1220	0.99	1	226	426
1797	0.99	1	332	427
1221	0.99	1	226	428
71	0.99	1	12	430
1222	0.99	1	226	430
1798	0.99	1	332	431
1223	0.99	1	227	434
1799	0.99	1	333	437
1224	0.99	1	227	438
72	0.99	1	12	439
644	0.99	1	118	439
645	0.99	1	119	440
646	0.99	1	119	441
1225	0.99	1	227	442
647	0.99	1	120	443
1800	0.99	1	333	443
648	0.99	1	120	445
1226	0.99	1	227	446
649	0.99	1	121	447
73	0.99	1	12	448
650	0.99	1	121	449
1801	0.99	1	333	449
1227	0.99	1	227	450
651	0.99	1	121	451
652	0.99	1	121	453
1228	0.99	1	227	454
1802	0.99	1	333	455
653	0.99	1	122	457
1229	0.99	1	228	460
654	0.99	1	122	461
1803	0.99	1	333	461
74	0.99	1	13	462
75	0.99	1	14	463
76	0.99	1	14	464
655	0.99	1	122	465
77	0.99	1	15	466
1230	0.99	1	228	466
1804	0.99	1	333	467
78	0.99	1	15	468
656	0.99	1	122	469
79	0.99	1	16	470
80	0.99	1	16	472
1231	0.99	1	228	472
657	0.99	1	122	473
1805	0.99	1	333	473
81	0.99	1	16	474
82	0.99	1	16	476
658	0.99	1	122	477
1232	0.99	1	228	478
1806	0.99	1	333	479
83	0.99	1	17	480
659	0.99	1	123	483
84	0.99	1	17	484
1233	0.99	1	228	484
1807	0.99	1	333	485
85	0.99	1	17	488
660	0.99	1	123	489
1234	0.99	1	228	490
86	0.99	1	17	492
1808	0.99	1	334	494
661	0.99	1	123	495
87	0.99	1	17	496
1235	0.99	1	228	496
88	0.99	1	17	500
662	0.99	1	123	501
1236	0.99	1	228	502
1809	0.99	1	334	503
89	0.99	1	18	506
663	0.99	1	123	507
1237	0.99	1	228	508
90	0.99	1	18	512
1810	0.99	1	334	512
664	0.99	1	123	513
1238	0.99	1	229	517
91	0.99	1	18	518
665	0.99	1	123	519
1811	0.99	1	334	521
92	0.99	1	18	524
666	0.99	1	123	525
1239	0.99	1	229	526
93	0.99	1	18	530
1812	0.99	1	334	530
667	0.99	1	123	531
1240	0.99	1	229	535
94	0.99	1	18	536
1813	0.99	1	334	539
668	0.99	1	124	540
95	0.99	1	18	542
1241	0.99	1	229	544
96	0.99	1	18	548
1814	0.99	1	334	548
669	0.99	1	124	549
1242	0.99	1	229	553
97	0.99	1	18	554
1815	0.99	1	334	557
670	0.99	1	124	558
1243	0.99	1	229	562
98	0.99	1	19	563
1816	0.99	1	334	566
671	0.99	1	124	567
1244	0.99	1	229	571
99	0.99	1	19	572
1817	0.99	1	334	575
672	0.99	1	124	576
1245	0.99	1	229	580
100	0.99	1	19	581
1818	0.99	1	334	584
673	0.99	1	124	585
1246	0.99	1	229	589
101	0.99	1	19	590
1819	0.99	1	334	593
674	0.99	1	124	594
1247	0.99	1	229	598
102	0.99	1	19	599
1820	0.99	1	334	602
675	0.99	1	124	603
1248	0.99	1	229	607
103	0.99	1	19	608
1821	0.99	1	334	611
676	0.99	1	124	612
1249	0.99	1	229	616
104	0.99	1	19	617
677	0.99	1	124	621
1250	0.99	1	229	625
1822	0.99	1	335	625
105	0.99	1	19	626
1823	0.99	1	336	626
1824	0.99	1	336	627
1825	0.99	1	337	629
678	0.99	1	124	630
1826	0.99	1	337	631
1827	0.99	1	338	633
1251	0.99	1	229	634
106	0.99	1	19	635
1828	0.99	1	338	635
1829	0.99	1	338	637
679	0.99	1	124	639
1830	0.99	1	338	639
1831	0.99	1	339	643
107	0.99	1	19	644
1832	0.99	1	339	647
680	0.99	1	124	648
1252	0.99	1	230	648
1253	0.99	1	231	649
1254	0.99	1	231	650
1833	0.99	1	339	651
1255	0.99	1	232	652
108	0.99	1	19	653
1256	0.99	1	232	654
1834	0.99	1	339	655
1257	0.99	1	233	656
681	0.99	1	124	657
1258	0.99	1	233	658
1835	0.99	1	339	659
1259	0.99	1	233	660
109	0.99	1	19	662
1260	0.99	1	233	662
1836	0.99	1	339	663
1261	0.99	1	234	666
1837	0.99	1	340	669
1262	0.99	1	234	670
110	0.99	1	19	671
682	0.99	1	125	671
683	0.99	1	126	672
684	0.99	1	126	673
1263	0.99	1	234	674
685	0.99	1	127	675
1838	0.99	1	340	675
686	0.99	1	127	677
1264	0.99	1	234	678
687	0.99	1	128	679
111	0.99	1	19	680
688	0.99	1	128	681
1839	0.99	1	340	681
1265	0.99	1	234	682
689	0.99	1	128	683
690	0.99	1	128	685
1266	0.99	1	234	686
1840	0.99	1	340	687
691	0.99	1	129	689
1267	0.99	1	235	692
692	0.99	1	129	693
1841	0.99	1	340	693
112	0.99	1	20	694
113	0.99	1	21	695
114	0.99	1	21	696
693	0.99	1	129	697
115	0.99	1	22	698
1268	0.99	1	235	698
1842	0.99	1	340	699
116	0.99	1	22	700
694	0.99	1	129	701
117	0.99	1	23	702
118	0.99	1	23	704
1269	0.99	1	235	704
695	0.99	1	129	705
1843	0.99	1	340	705
119	0.99	1	23	706
120	0.99	1	23	708
696	0.99	1	129	709
1270	0.99	1	235	710
1844	0.99	1	340	711
121	0.99	1	24	712
697	0.99	1	130	715
122	0.99	1	24	716
1271	0.99	1	235	716
1845	0.99	1	340	717
123	0.99	1	24	720
698	0.99	1	130	721
1272	0.99	1	235	722
124	0.99	1	24	724
1846	0.99	1	341	726
699	0.99	1	130	727
125	0.99	1	24	728
1273	0.99	1	235	728
126	0.99	1	24	732
700	0.99	1	130	733
1274	0.99	1	235	734
1847	0.99	1	341	735
127	0.99	1	25	738
701	0.99	1	130	739
1275	0.99	1	235	740
128	0.99	1	25	744
1848	0.99	1	341	744
702	0.99	1	130	745
1276	0.99	1	236	749
129	0.99	1	25	750
703	0.99	1	130	751
1849	0.99	1	341	753
130	0.99	1	25	756
704	0.99	1	130	757
1277	0.99	1	236	758
131	0.99	1	25	762
1850	0.99	1	341	762
705	0.99	1	130	763
1278	0.99	1	236	767
132	0.99	1	25	768
1851	0.99	1	341	771
706	0.99	1	131	772
133	0.99	1	25	774
1279	0.99	1	236	776
134	0.99	1	25	780
1852	0.99	1	341	780
707	0.99	1	131	781
1280	0.99	1	236	785
135	0.99	1	25	786
1853	0.99	1	341	789
708	0.99	1	131	790
1281	0.99	1	236	794
136	0.99	1	26	795
1854	0.99	1	341	798
709	0.99	1	131	799
1282	0.99	1	236	803
137	0.99	1	26	804
1855	0.99	1	341	807
710	0.99	1	131	808
1283	0.99	1	236	812
138	0.99	1	26	813
1856	0.99	1	341	816
711	0.99	1	131	817
1284	0.99	1	236	821
139	0.99	1	26	822
1857	0.99	1	341	825
712	0.99	1	131	826
1285	0.99	1	236	830
140	0.99	1	26	831
1858	0.99	1	341	834
713	0.99	1	131	835
1286	0.99	1	236	839
141	0.99	1	26	840
1859	0.99	1	341	843
714	0.99	1	131	844
1287	0.99	1	236	848
142	0.99	1	26	849
715	0.99	1	131	853
1288	0.99	1	236	857
1860	0.99	1	342	857
143	0.99	1	26	858
1861	0.99	1	343	858
1862	0.99	1	343	859
1863	0.99	1	344	861
716	0.99	1	131	862
1864	0.99	1	344	863
1865	0.99	1	345	865
1289	0.99	1	236	866
144	0.99	1	26	867
1866	0.99	1	345	867
1867	0.99	1	345	869
717	0.99	1	131	871
1868	0.99	1	345	871
1869	0.99	1	346	875
145	0.99	1	26	876
1870	0.99	1	346	879
718	0.99	1	131	880
1290	0.99	1	237	880
1291	0.99	1	238	881
1292	0.99	1	238	882
1871	0.99	1	346	883
1293	0.99	1	239	884
146	0.99	1	26	885
1294	0.99	1	239	886
1872	0.99	1	346	887
1295	0.99	1	240	888
719	0.99	1	131	889
1296	0.99	1	240	890
1873	0.99	1	346	891
1297	0.99	1	240	892
147	0.99	1	26	894
1298	0.99	1	240	894
1874	0.99	1	346	895
1299	0.99	1	241	898
1875	0.99	1	347	901
1300	0.99	1	241	902
148	0.99	1	26	903
720	0.99	1	132	903
721	0.99	1	133	904
722	0.99	1	133	905
1301	0.99	1	241	906
723	0.99	1	134	907
1876	0.99	1	347	907
724	0.99	1	134	909
1302	0.99	1	241	910
725	0.99	1	135	911
149	0.99	1	26	912
726	0.99	1	135	913
1877	0.99	1	347	913
1303	0.99	1	241	914
727	0.99	1	135	915
728	0.99	1	135	917
1304	0.99	1	241	918
1878	0.99	1	347	919
729	0.99	1	136	921
1305	0.99	1	242	924
730	0.99	1	136	925
1879	0.99	1	347	925
150	0.99	1	27	926
151	0.99	1	28	927
152	0.99	1	28	928
731	0.99	1	136	929
153	0.99	1	29	930
1306	0.99	1	242	930
1880	0.99	1	347	931
154	0.99	1	29	932
732	0.99	1	136	933
155	0.99	1	30	934
156	0.99	1	30	936
1307	0.99	1	242	936
733	0.99	1	136	937
1881	0.99	1	347	937
157	0.99	1	30	938
158	0.99	1	30	940
734	0.99	1	136	941
1308	0.99	1	242	942
1882	0.99	1	347	943
159	0.99	1	31	944
735	0.99	1	137	947
160	0.99	1	31	948
1309	0.99	1	242	948
1883	0.99	1	347	949
161	0.99	1	31	952
736	0.99	1	137	953
1310	0.99	1	242	954
162	0.99	1	31	956
1884	0.99	1	348	958
737	0.99	1	137	959
163	0.99	1	31	960
1311	0.99	1	242	960
164	0.99	1	31	964
738	0.99	1	137	965
1312	0.99	1	242	966
1885	0.99	1	348	967
165	0.99	1	32	970
739	0.99	1	137	971
1313	0.99	1	242	972
166	0.99	1	32	976
1886	0.99	1	348	976
740	0.99	1	137	977
1314	0.99	1	243	981
167	0.99	1	32	982
741	0.99	1	137	983
1887	0.99	1	348	985
168	0.99	1	32	988
742	0.99	1	137	989
1315	0.99	1	243	990
169	0.99	1	32	994
1888	0.99	1	348	994
743	0.99	1	137	995
1316	0.99	1	243	999
170	0.99	1	32	1000
1889	0.99	1	348	1003
744	0.99	1	138	1004
171	0.99	1	32	1006
1317	0.99	1	243	1008
172	0.99	1	32	1012
1890	0.99	1	348	1012
745	0.99	1	138	1013
1318	0.99	1	243	1017
173	0.99	1	32	1018
1891	0.99	1	348	1021
746	0.99	1	138	1022
1319	0.99	1	243	1026
174	0.99	1	33	1027
1892	0.99	1	348	1030
747	0.99	1	138	1031
1320	0.99	1	243	1035
175	0.99	1	33	1036
1893	0.99	1	348	1039
748	0.99	1	138	1040
1321	0.99	1	243	1044
176	0.99	1	33	1045
1894	0.99	1	348	1048
749	0.99	1	138	1049
1322	0.99	1	243	1053
177	0.99	1	33	1054
1895	0.99	1	348	1057
750	0.99	1	138	1058
1323	0.99	1	243	1062
178	0.99	1	33	1063
1896	0.99	1	348	1066
751	0.99	1	138	1067
1324	0.99	1	243	1071
179	0.99	1	33	1072
1897	0.99	1	348	1075
752	0.99	1	138	1076
1325	0.99	1	243	1080
180	0.99	1	33	1081
753	0.99	1	138	1085
1326	0.99	1	243	1089
1898	0.99	1	349	1089
181	0.99	1	33	1090
1899	0.99	1	350	1090
1900	0.99	1	350	1091
1901	0.99	1	351	1093
754	0.99	1	138	1094
1902	0.99	1	351	1095
1903	0.99	1	352	1097
1327	0.99	1	243	1098
182	0.99	1	33	1099
1904	0.99	1	352	1099
1905	0.99	1	352	1101
755	0.99	1	138	1103
1906	0.99	1	352	1103
1907	0.99	1	353	1107
183	0.99	1	33	1108
1908	0.99	1	353	1111
756	0.99	1	138	1112
1328	0.99	1	244	1112
1329	0.99	1	245	1113
1330	0.99	1	245	1114
1909	0.99	1	353	1115
1331	0.99	1	246	1116
184	0.99	1	33	1117
1332	0.99	1	246	1118
1910	0.99	1	353	1119
1333	0.99	1	247	1120
757	0.99	1	138	1121
1334	0.99	1	247	1122
1911	0.99	1	353	1123
1335	0.99	1	247	1124
185	0.99	1	33	1126
1336	0.99	1	247	1126
1912	0.99	1	353	1127
1337	0.99	1	248	1130
1913	0.99	1	354	1133
1338	0.99	1	248	1134
186	0.99	1	33	1135
758	0.99	1	139	1135
759	0.99	1	140	1136
760	0.99	1	140	1137
1339	0.99	1	248	1138
761	0.99	1	141	1139
1914	0.99	1	354	1139
762	0.99	1	141	1141
1340	0.99	1	248	1142
763	0.99	1	142	1143
187	0.99	1	33	1144
764	0.99	1	142	1145
1915	0.99	1	354	1145
1341	0.99	1	248	1146
765	0.99	1	142	1147
766	0.99	1	142	1149
1342	0.99	1	248	1150
1916	0.99	1	354	1151
767	0.99	1	143	1153
1343	0.99	1	249	1156
768	0.99	1	143	1157
1917	0.99	1	354	1157
188	0.99	1	34	1158
189	0.99	1	35	1159
190	0.99	1	35	1160
769	0.99	1	143	1161
191	0.99	1	36	1162
1344	0.99	1	249	1162
1918	0.99	1	354	1163
192	0.99	1	36	1164
770	0.99	1	143	1165
193	0.99	1	37	1166
194	0.99	1	37	1168
1345	0.99	1	249	1168
771	0.99	1	143	1169
1919	0.99	1	354	1169
195	0.99	1	37	1170
196	0.99	1	37	1172
772	0.99	1	143	1173
1346	0.99	1	249	1174
1920	0.99	1	354	1175
197	0.99	1	38	1176
773	0.99	1	144	1179
198	0.99	1	38	1180
1347	0.99	1	249	1180
1921	0.99	1	354	1181
199	0.99	1	38	1184
774	0.99	1	144	1185
1348	0.99	1	249	1186
200	0.99	1	38	1188
1922	0.99	1	355	1190
775	0.99	1	144	1191
201	0.99	1	38	1192
1349	0.99	1	249	1192
202	0.99	1	38	1196
776	0.99	1	144	1197
1350	0.99	1	249	1198
1923	0.99	1	355	1199
203	0.99	1	39	1202
777	0.99	1	144	1203
1351	0.99	1	249	1204
204	0.99	1	39	1208
1924	0.99	1	355	1208
778	0.99	1	144	1209
1352	0.99	1	250	1213
205	0.99	1	39	1214
779	0.99	1	144	1215
1925	0.99	1	355	1217
206	0.99	1	39	1220
780	0.99	1	144	1221
1353	0.99	1	250	1222
207	0.99	1	39	1226
1926	0.99	1	355	1226
781	0.99	1	144	1227
1354	0.99	1	250	1231
208	0.99	1	39	1232
1927	0.99	1	355	1235
782	0.99	1	145	1236
209	0.99	1	39	1238
1355	0.99	1	250	1240
210	0.99	1	39	1244
1928	0.99	1	355	1244
783	0.99	1	145	1245
1356	0.99	1	250	1249
211	0.99	1	39	1250
1929	0.99	1	355	1253
784	0.99	1	145	1254
1357	0.99	1	250	1258
212	0.99	1	40	1259
1930	0.99	1	355	1262
785	0.99	1	145	1263
1358	0.99	1	250	1267
213	0.99	1	40	1268
1931	0.99	1	355	1271
786	0.99	1	145	1272
1359	0.99	1	250	1276
214	0.99	1	40	1277
1932	0.99	1	355	1280
787	0.99	1	145	1281
1360	0.99	1	250	1285
215	0.99	1	40	1286
1933	0.99	1	355	1289
788	0.99	1	145	1290
1361	0.99	1	250	1294
216	0.99	1	40	1295
1934	0.99	1	355	1298
789	0.99	1	145	1299
1362	0.99	1	250	1303
217	0.99	1	40	1304
1935	0.99	1	355	1307
790	0.99	1	145	1308
1363	0.99	1	250	1312
218	0.99	1	40	1313
791	0.99	1	145	1317
1364	0.99	1	250	1321
1936	0.99	1	356	1321
219	0.99	1	40	1322
1937	0.99	1	357	1322
1938	0.99	1	357	1323
1939	0.99	1	358	1325
792	0.99	1	145	1326
1940	0.99	1	358	1327
1941	0.99	1	359	1329
1365	0.99	1	250	1330
220	0.99	1	40	1331
1942	0.99	1	359	1331
1943	0.99	1	359	1333
793	0.99	1	145	1335
1944	0.99	1	359	1335
1945	0.99	1	360	1339
221	0.99	1	40	1340
1946	0.99	1	360	1343
794	0.99	1	145	1344
1366	0.99	1	251	1344
1367	0.99	1	252	1345
1368	0.99	1	252	1346
1947	0.99	1	360	1347
1369	0.99	1	253	1348
222	0.99	1	40	1349
1370	0.99	1	253	1350
1948	0.99	1	360	1351
1371	0.99	1	254	1352
795	0.99	1	145	1353
1372	0.99	1	254	1354
1949	0.99	1	360	1355
1373	0.99	1	254	1356
223	0.99	1	40	1358
1374	0.99	1	254	1358
1950	0.99	1	360	1359
1375	0.99	1	255	1362
1951	0.99	1	361	1365
1376	0.99	1	255	1366
224	0.99	1	40	1367
796	0.99	1	146	1367
797	0.99	1	147	1368
798	0.99	1	147	1369
1377	0.99	1	255	1370
799	0.99	1	148	1371
1952	0.99	1	361	1371
800	0.99	1	148	1373
1378	0.99	1	255	1374
801	0.99	1	149	1375
225	0.99	1	40	1376
802	0.99	1	149	1377
1953	0.99	1	361	1377
1379	0.99	1	255	1378
803	0.99	1	149	1379
804	0.99	1	149	1381
1380	0.99	1	255	1382
1954	0.99	1	361	1383
805	0.99	1	150	1385
1381	0.99	1	256	1388
806	0.99	1	150	1389
1955	0.99	1	361	1389
226	0.99	1	41	1390
227	0.99	1	42	1391
228	0.99	1	42	1392
807	0.99	1	150	1393
229	0.99	1	43	1394
1382	0.99	1	256	1394
1956	0.99	1	361	1395
230	0.99	1	43	1396
808	0.99	1	150	1397
231	0.99	1	44	1398
232	0.99	1	44	1400
1383	0.99	1	256	1400
809	0.99	1	150	1401
1957	0.99	1	361	1401
233	0.99	1	44	1402
234	0.99	1	44	1404
810	0.99	1	150	1405
1384	0.99	1	256	1406
1958	0.99	1	361	1407
235	0.99	1	45	1408
811	0.99	1	151	1411
236	0.99	1	45	1412
1385	0.99	1	256	1412
1959	0.99	1	361	1413
237	0.99	1	45	1416
812	0.99	1	151	1417
1386	0.99	1	256	1418
238	0.99	1	45	1420
1960	0.99	1	362	1422
813	0.99	1	151	1423
239	0.99	1	45	1424
1387	0.99	1	256	1424
240	0.99	1	45	1428
814	0.99	1	151	1429
1388	0.99	1	256	1430
1961	0.99	1	362	1431
241	0.99	1	46	1434
815	0.99	1	151	1435
1389	0.99	1	256	1436
242	0.99	1	46	1440
1962	0.99	1	362	1440
816	0.99	1	151	1441
1390	0.99	1	257	1445
243	0.99	1	46	1446
817	0.99	1	151	1447
1963	0.99	1	362	1449
244	0.99	1	46	1452
818	0.99	1	151	1453
1391	0.99	1	257	1454
245	0.99	1	46	1458
1964	0.99	1	362	1458
819	0.99	1	151	1459
1392	0.99	1	257	1463
246	0.99	1	46	1464
1965	0.99	1	362	1467
820	0.99	1	152	1468
247	0.99	1	46	1470
1393	0.99	1	257	1472
248	0.99	1	46	1476
1966	0.99	1	362	1476
821	0.99	1	152	1477
1394	0.99	1	257	1481
249	0.99	1	46	1482
1967	0.99	1	362	1485
822	0.99	1	152	1486
1395	0.99	1	257	1490
250	0.99	1	47	1491
1968	0.99	1	362	1494
823	0.99	1	152	1495
1396	0.99	1	257	1499
251	0.99	1	47	1500
1969	0.99	1	362	1503
824	0.99	1	152	1504
1397	0.99	1	257	1508
252	0.99	1	47	1509
1970	0.99	1	362	1512
825	0.99	1	152	1513
1398	0.99	1	257	1517
253	0.99	1	47	1518
1971	0.99	1	362	1521
826	0.99	1	152	1522
1399	0.99	1	257	1526
254	0.99	1	47	1527
1972	0.99	1	362	1530
827	0.99	1	152	1531
1400	0.99	1	257	1535
255	0.99	1	47	1536
1973	0.99	1	362	1539
828	0.99	1	152	1540
1401	0.99	1	257	1544
256	0.99	1	47	1545
829	0.99	1	152	1549
1402	0.99	1	257	1553
1974	0.99	1	363	1553
257	0.99	1	47	1554
1975	0.99	1	364	1554
1976	0.99	1	364	1555
1977	0.99	1	365	1557
830	0.99	1	152	1558
1978	0.99	1	365	1559
1979	0.99	1	366	1561
1403	0.99	1	257	1562
258	0.99	1	47	1563
1980	0.99	1	366	1563
1981	0.99	1	366	1565
831	0.99	1	152	1567
1982	0.99	1	366	1567
1983	0.99	1	367	1571
259	0.99	1	47	1572
1984	0.99	1	367	1575
832	0.99	1	152	1576
1404	0.99	1	258	1576
1405	0.99	1	259	1577
1406	0.99	1	259	1578
1985	0.99	1	367	1579
1407	0.99	1	260	1580
260	0.99	1	47	1581
1408	0.99	1	260	1582
1986	0.99	1	367	1583
1409	0.99	1	261	1584
833	0.99	1	152	1585
1410	0.99	1	261	1586
1987	0.99	1	367	1587
1411	0.99	1	261	1588
261	0.99	1	47	1590
1412	0.99	1	261	1590
1988	0.99	1	367	1591
1413	0.99	1	262	1594
1989	0.99	1	368	1597
1414	0.99	1	262	1598
262	0.99	1	47	1599
834	0.99	1	153	1599
835	0.99	1	154	1600
836	0.99	1	154	1601
1415	0.99	1	262	1602
837	0.99	1	155	1603
1990	0.99	1	368	1603
838	0.99	1	155	1605
1416	0.99	1	262	1606
839	0.99	1	156	1607
263	0.99	1	47	1608
840	0.99	1	156	1609
1991	0.99	1	368	1609
1417	0.99	1	262	1610
841	0.99	1	156	1611
842	0.99	1	156	1613
1418	0.99	1	262	1614
1992	0.99	1	368	1615
843	0.99	1	157	1617
1419	0.99	1	263	1620
844	0.99	1	157	1621
1993	0.99	1	368	1621
264	0.99	1	48	1622
265	0.99	1	49	1623
266	0.99	1	49	1624
845	0.99	1	157	1625
267	0.99	1	50	1626
1420	0.99	1	263	1626
1994	0.99	1	368	1627
268	0.99	1	50	1628
846	0.99	1	157	1629
269	0.99	1	51	1630
270	0.99	1	51	1632
1421	0.99	1	263	1632
847	0.99	1	157	1633
1995	0.99	1	368	1633
271	0.99	1	51	1634
272	0.99	1	51	1636
848	0.99	1	157	1637
1422	0.99	1	263	1638
1996	0.99	1	368	1639
273	0.99	1	52	1640
849	0.99	1	158	1643
274	0.99	1	52	1644
1423	0.99	1	263	1644
1997	0.99	1	368	1645
275	0.99	1	52	1648
850	0.99	1	158	1649
1424	0.99	1	263	1650
276	0.99	1	52	1652
1998	0.99	1	369	1654
851	0.99	1	158	1655
277	0.99	1	52	1656
1425	0.99	1	263	1656
278	0.99	1	52	1660
852	0.99	1	158	1661
1426	0.99	1	263	1662
1999	0.99	1	369	1663
279	0.99	1	53	1666
853	0.99	1	158	1667
1427	0.99	1	263	1668
280	0.99	1	53	1672
2000	0.99	1	369	1672
854	0.99	1	158	1673
1428	0.99	1	264	1677
281	0.99	1	53	1678
855	0.99	1	158	1679
2001	0.99	1	369	1681
282	0.99	1	53	1684
856	0.99	1	158	1685
1429	0.99	1	264	1686
283	0.99	1	53	1690
2002	0.99	1	369	1690
857	0.99	1	158	1691
1430	0.99	1	264	1695
284	0.99	1	53	1696
2003	0.99	1	369	1699
858	0.99	1	159	1700
285	0.99	1	53	1702
1431	0.99	1	264	1704
286	0.99	1	53	1708
2004	0.99	1	369	1708
859	0.99	1	159	1709
1432	0.99	1	264	1713
287	0.99	1	53	1714
2005	0.99	1	369	1717
860	0.99	1	159	1718
1433	0.99	1	264	1722
288	0.99	1	54	1723
2006	0.99	1	369	1726
861	0.99	1	159	1727
1434	0.99	1	264	1731
289	0.99	1	54	1732
2007	0.99	1	369	1735
862	0.99	1	159	1736
1435	0.99	1	264	1740
290	0.99	1	54	1741
2008	0.99	1	369	1744
863	0.99	1	159	1745
1436	0.99	1	264	1749
291	0.99	1	54	1750
2009	0.99	1	369	1753
864	0.99	1	159	1754
1437	0.99	1	264	1758
292	0.99	1	54	1759
2010	0.99	1	369	1762
865	0.99	1	159	1763
1438	0.99	1	264	1767
293	0.99	1	54	1768
2011	0.99	1	369	1771
866	0.99	1	159	1772
1439	0.99	1	264	1776
294	0.99	1	54	1777
867	0.99	1	159	1781
1440	0.99	1	264	1785
2012	0.99	1	370	1785
295	0.99	1	54	1786
2013	0.99	1	371	1786
2014	0.99	1	371	1787
2015	0.99	1	372	1789
868	0.99	1	159	1790
2016	0.99	1	372	1791
2017	0.99	1	373	1793
1441	0.99	1	264	1794
296	0.99	1	54	1795
2018	0.99	1	373	1795
2019	0.99	1	373	1797
869	0.99	1	159	1799
2020	0.99	1	373	1799
2021	0.99	1	374	1803
297	0.99	1	54	1804
2022	0.99	1	374	1807
870	0.99	1	159	1808
1442	0.99	1	265	1808
1443	0.99	1	266	1809
1444	0.99	1	266	1810
2023	0.99	1	374	1811
1445	0.99	1	267	1812
298	0.99	1	54	1813
1446	0.99	1	267	1814
2024	0.99	1	374	1815
1447	0.99	1	268	1816
871	0.99	1	159	1817
1448	0.99	1	268	1818
2025	0.99	1	374	1819
1449	0.99	1	268	1820
299	0.99	1	54	1822
1450	0.99	1	268	1822
2026	0.99	1	374	1823
1451	0.99	1	269	1826
2027	0.99	1	375	1829
1452	0.99	1	269	1830
300	0.99	1	54	1831
872	0.99	1	160	1831
873	0.99	1	161	1832
874	0.99	1	161	1833
1453	0.99	1	269	1834
875	0.99	1	162	1835
2028	0.99	1	375	1835
876	0.99	1	162	1837
1454	0.99	1	269	1838
877	0.99	1	163	1839
301	0.99	1	54	1840
878	0.99	1	163	1841
2029	0.99	1	375	1841
1455	0.99	1	269	1842
879	0.99	1	163	1843
880	0.99	1	163	1845
1456	0.99	1	269	1846
2030	0.99	1	375	1847
881	0.99	1	164	1849
1457	0.99	1	270	1852
882	0.99	1	164	1853
2031	0.99	1	375	1853
302	0.99	1	55	1854
303	0.99	1	56	1855
304	0.99	1	56	1856
883	0.99	1	164	1857
305	0.99	1	57	1858
1458	0.99	1	270	1858
2032	0.99	1	375	1859
306	0.99	1	57	1860
884	0.99	1	164	1861
307	0.99	1	58	1862
308	0.99	1	58	1864
1459	0.99	1	270	1864
885	0.99	1	164	1865
2033	0.99	1	375	1865
309	0.99	1	58	1866
310	0.99	1	58	1868
886	0.99	1	164	1869
1460	0.99	1	270	1870
2034	0.99	1	375	1871
311	0.99	1	59	1872
887	0.99	1	165	1875
312	0.99	1	59	1876
1461	0.99	1	270	1876
2035	0.99	1	375	1877
313	0.99	1	59	1880
888	0.99	1	165	1881
1462	0.99	1	270	1882
314	0.99	1	59	1884
2036	0.99	1	376	1886
889	0.99	1	165	1887
315	0.99	1	59	1888
1463	0.99	1	270	1888
316	0.99	1	59	1892
890	0.99	1	165	1893
1464	0.99	1	270	1894
2037	0.99	1	376	1895
317	0.99	1	60	1898
891	0.99	1	165	1899
1465	0.99	1	270	1900
318	0.99	1	60	1904
2038	0.99	1	376	1904
892	0.99	1	165	1905
1466	0.99	1	271	1909
319	0.99	1	60	1910
893	0.99	1	165	1911
2039	0.99	1	376	1913
320	0.99	1	60	1916
894	0.99	1	165	1917
1467	0.99	1	271	1918
321	0.99	1	60	1922
2040	0.99	1	376	1922
895	0.99	1	165	1923
1468	0.99	1	271	1927
322	0.99	1	60	1928
2041	0.99	1	376	1931
896	0.99	1	166	1932
323	0.99	1	60	1934
1469	0.99	1	271	1936
324	0.99	1	60	1940
2042	0.99	1	376	1940
897	0.99	1	166	1941
1470	0.99	1	271	1945
325	0.99	1	60	1946
2043	0.99	1	376	1949
898	0.99	1	166	1950
1471	0.99	1	271	1954
326	0.99	1	61	1955
2044	0.99	1	376	1958
899	0.99	1	166	1959
1472	0.99	1	271	1963
327	0.99	1	61	1964
2045	0.99	1	376	1967
900	0.99	1	166	1968
1473	0.99	1	271	1972
328	0.99	1	61	1973
2046	0.99	1	376	1976
901	0.99	1	166	1977
1474	0.99	1	271	1981
329	0.99	1	61	1982
2047	0.99	1	376	1985
902	0.99	1	166	1986
1475	0.99	1	271	1990
330	0.99	1	61	1991
2048	0.99	1	376	1994
903	0.99	1	166	1995
1476	0.99	1	271	1999
331	0.99	1	61	2000
2049	0.99	1	376	2003
904	0.99	1	166	2004
1477	0.99	1	271	2008
332	0.99	1	61	2009
905	0.99	1	166	2013
1478	0.99	1	271	2017
2050	0.99	1	377	2017
333	0.99	1	61	2018
2051	0.99	1	378	2018
2052	0.99	1	378	2019
2053	0.99	1	379	2021
906	0.99	1	166	2022
2054	0.99	1	379	2023
2055	0.99	1	380	2025
1479	0.99	1	271	2026
334	0.99	1	61	2027
2056	0.99	1	380	2027
2057	0.99	1	380	2029
907	0.99	1	166	2031
2058	0.99	1	380	2031
2059	0.99	1	381	2035
335	0.99	1	61	2036
2060	0.99	1	381	2039
908	0.99	1	166	2040
1480	0.99	1	272	2040
1481	0.99	1	273	2041
1482	0.99	1	273	2042
2061	0.99	1	381	2043
1483	0.99	1	274	2044
336	0.99	1	61	2045
1484	0.99	1	274	2046
2062	0.99	1	381	2047
1485	0.99	1	275	2048
909	0.99	1	166	2049
1486	0.99	1	275	2050
2063	0.99	1	381	2051
1487	0.99	1	275	2052
337	0.99	1	61	2054
1488	0.99	1	275	2054
2064	0.99	1	381	2055
1489	0.99	1	276	2058
2065	0.99	1	382	2061
1490	0.99	1	276	2062
338	0.99	1	61	2063
910	0.99	1	167	2063
911	0.99	1	168	2064
912	0.99	1	168	2065
1491	0.99	1	276	2066
913	0.99	1	169	2067
2066	0.99	1	382	2067
914	0.99	1	169	2069
1492	0.99	1	276	2070
915	0.99	1	170	2071
339	0.99	1	61	2072
916	0.99	1	170	2073
2067	0.99	1	382	2073
1493	0.99	1	276	2074
917	0.99	1	170	2075
918	0.99	1	170	2077
1494	0.99	1	276	2078
2068	0.99	1	382	2079
919	0.99	1	171	2081
1495	0.99	1	277	2084
920	0.99	1	171	2085
2069	0.99	1	382	2085
340	0.99	1	62	2086
341	0.99	1	63	2087
342	0.99	1	63	2088
921	0.99	1	171	2089
343	0.99	1	64	2090
1496	0.99	1	277	2090
2070	0.99	1	382	2091
344	0.99	1	64	2092
922	0.99	1	171	2093
345	0.99	1	65	2094
346	0.99	1	65	2096
1497	0.99	1	277	2096
923	0.99	1	171	2097
2071	0.99	1	382	2097
347	0.99	1	65	2098
348	0.99	1	65	2100
924	0.99	1	171	2101
1498	0.99	1	277	2102
2072	0.99	1	382	2103
349	0.99	1	66	2104
925	0.99	1	172	2107
350	0.99	1	66	2108
1499	0.99	1	277	2108
2073	0.99	1	382	2109
351	0.99	1	66	2112
926	0.99	1	172	2113
1500	0.99	1	277	2114
352	0.99	1	66	2116
2074	0.99	1	383	2118
927	0.99	1	172	2119
353	0.99	1	66	2120
1501	0.99	1	277	2120
354	0.99	1	66	2124
928	0.99	1	172	2125
1502	0.99	1	277	2126
2075	0.99	1	383	2127
355	0.99	1	67	2130
929	0.99	1	172	2131
1503	0.99	1	277	2132
356	0.99	1	67	2136
2076	0.99	1	383	2136
930	0.99	1	172	2137
1504	0.99	1	278	2141
357	0.99	1	67	2142
931	0.99	1	172	2143
2077	0.99	1	383	2145
358	0.99	1	67	2148
932	0.99	1	172	2149
1505	0.99	1	278	2150
359	0.99	1	67	2154
2078	0.99	1	383	2154
933	0.99	1	172	2155
1506	0.99	1	278	2159
360	0.99	1	67	2160
2079	0.99	1	383	2163
934	0.99	1	173	2164
361	0.99	1	67	2166
1507	0.99	1	278	2168
362	0.99	1	67	2172
2080	0.99	1	383	2172
935	0.99	1	173	2173
1508	0.99	1	278	2177
363	0.99	1	67	2178
2081	0.99	1	383	2181
936	0.99	1	173	2182
1509	0.99	1	278	2186
364	0.99	1	68	2187
2082	0.99	1	383	2190
937	0.99	1	173	2191
1510	0.99	1	278	2195
365	0.99	1	68	2196
2083	0.99	1	383	2199
938	0.99	1	173	2200
1511	0.99	1	278	2204
366	0.99	1	68	2205
2084	0.99	1	383	2208
939	0.99	1	173	2209
1512	0.99	1	278	2213
367	0.99	1	68	2214
2085	0.99	1	383	2217
940	0.99	1	173	2218
1513	0.99	1	278	2222
368	0.99	1	68	2223
2086	0.99	1	383	2226
941	0.99	1	173	2227
1514	0.99	1	278	2231
369	0.99	1	68	2232
2087	0.99	1	383	2235
942	0.99	1	173	2236
1515	0.99	1	278	2240
370	0.99	1	68	2241
943	0.99	1	173	2245
1516	0.99	1	278	2249
2088	0.99	1	384	2249
371	0.99	1	68	2250
2089	0.99	1	385	2250
2090	0.99	1	385	2251
2091	0.99	1	386	2253
944	0.99	1	173	2254
2092	0.99	1	386	2255
2093	0.99	1	387	2257
1517	0.99	1	278	2258
372	0.99	1	68	2259
2094	0.99	1	387	2259
2095	0.99	1	387	2261
945	0.99	1	173	2263
2096	0.99	1	387	2263
2097	0.99	1	388	2267
373	0.99	1	68	2268
2098	0.99	1	388	2271
946	0.99	1	173	2272
1518	0.99	1	279	2272
1519	0.99	1	280	2273
1520	0.99	1	280	2274
2099	0.99	1	388	2275
1521	0.99	1	281	2276
374	0.99	1	68	2277
1522	0.99	1	281	2278
2100	0.99	1	388	2279
1523	0.99	1	282	2280
947	0.99	1	173	2281
1524	0.99	1	282	2282
2101	0.99	1	388	2283
1525	0.99	1	282	2284
375	0.99	1	68	2286
1526	0.99	1	282	2286
2102	0.99	1	388	2287
1527	0.99	1	283	2290
2103	0.99	1	389	2293
1528	0.99	1	283	2294
376	0.99	1	68	2295
948	0.99	1	174	2295
949	0.99	1	175	2296
950	0.99	1	175	2297
1529	0.99	1	283	2298
951	0.99	1	176	2299
2104	0.99	1	389	2299
952	0.99	1	176	2301
1530	0.99	1	283	2302
953	0.99	1	177	2303
377	0.99	1	68	2304
954	0.99	1	177	2305
2105	0.99	1	389	2305
1531	0.99	1	283	2306
955	0.99	1	177	2307
956	0.99	1	177	2309
1532	0.99	1	283	2310
2106	0.99	1	389	2311
957	0.99	1	178	2313
1533	0.99	1	284	2316
958	0.99	1	178	2317
2107	0.99	1	389	2317
378	0.99	1	69	2318
379	0.99	1	70	2319
380	0.99	1	70	2320
959	0.99	1	178	2321
381	0.99	1	71	2322
1534	0.99	1	284	2322
2108	0.99	1	389	2323
382	0.99	1	71	2324
960	0.99	1	178	2325
383	0.99	1	72	2326
384	0.99	1	72	2328
1535	0.99	1	284	2328
961	0.99	1	178	2329
2109	0.99	1	389	2329
385	0.99	1	72	2330
386	0.99	1	72	2332
962	0.99	1	178	2333
1536	0.99	1	284	2334
2110	0.99	1	389	2335
387	0.99	1	73	2336
963	0.99	1	179	2339
388	0.99	1	73	2340
1537	0.99	1	284	2340
2111	0.99	1	389	2341
389	0.99	1	73	2344
964	0.99	1	179	2345
1538	0.99	1	284	2346
390	0.99	1	73	2348
2112	0.99	1	390	2350
965	0.99	1	179	2351
391	0.99	1	73	2352
1539	0.99	1	284	2352
392	0.99	1	73	2356
966	0.99	1	179	2357
1540	0.99	1	284	2358
2113	0.99	1	390	2359
393	0.99	1	74	2362
967	0.99	1	179	2363
1541	0.99	1	284	2364
394	0.99	1	74	2368
2114	0.99	1	390	2368
968	0.99	1	179	2369
1542	0.99	1	285	2373
395	0.99	1	74	2374
969	0.99	1	179	2375
2115	0.99	1	390	2377
396	0.99	1	74	2380
970	0.99	1	179	2381
1543	0.99	1	285	2382
397	0.99	1	74	2386
2116	0.99	1	390	2386
971	0.99	1	179	2387
1544	0.99	1	285	2391
398	0.99	1	74	2392
2117	0.99	1	390	2395
972	0.99	1	180	2396
399	0.99	1	74	2398
1545	0.99	1	285	2400
400	0.99	1	74	2404
2118	0.99	1	390	2404
973	0.99	1	180	2405
1546	0.99	1	285	2409
401	0.99	1	74	2410
2119	0.99	1	390	2413
974	0.99	1	180	2414
1547	0.99	1	285	2418
402	0.99	1	75	2419
2120	0.99	1	390	2422
975	0.99	1	180	2423
1548	0.99	1	285	2427
403	0.99	1	75	2428
2121	0.99	1	390	2431
976	0.99	1	180	2432
1549	0.99	1	285	2436
404	0.99	1	75	2437
2122	0.99	1	390	2440
977	0.99	1	180	2441
1550	0.99	1	285	2445
405	0.99	1	75	2446
2123	0.99	1	390	2449
978	0.99	1	180	2450
1551	0.99	1	285	2454
406	0.99	1	75	2455
2124	0.99	1	390	2458
979	0.99	1	180	2459
1552	0.99	1	285	2463
407	0.99	1	75	2464
2125	0.99	1	390	2467
980	0.99	1	180	2468
1553	0.99	1	285	2472
408	0.99	1	75	2473
981	0.99	1	180	2477
1554	0.99	1	285	2481
2126	0.99	1	391	2481
409	0.99	1	75	2482
2127	0.99	1	392	2482
2128	0.99	1	392	2483
2129	0.99	1	393	2485
982	0.99	1	180	2486
2130	0.99	1	393	2487
2131	0.99	1	394	2489
1555	0.99	1	285	2490
410	0.99	1	75	2491
2132	0.99	1	394	2491
2133	0.99	1	394	2493
983	0.99	1	180	2495
2134	0.99	1	394	2495
2135	0.99	1	395	2499
411	0.99	1	75	2500
2136	0.99	1	395	2503
984	0.99	1	180	2504
1556	0.99	1	286	2504
1557	0.99	1	287	2505
1558	0.99	1	287	2506
2137	0.99	1	395	2507
1559	0.99	1	288	2508
412	0.99	1	75	2509
1560	0.99	1	288	2510
2138	0.99	1	395	2511
1561	0.99	1	289	2512
985	0.99	1	180	2513
1562	0.99	1	289	2514
2139	0.99	1	395	2515
1563	0.99	1	289	2516
413	0.99	1	75	2518
1564	0.99	1	289	2518
2140	0.99	1	395	2519
1565	0.99	1	290	2522
2141	0.99	1	396	2525
1566	0.99	1	290	2526
414	0.99	1	75	2527
986	0.99	1	181	2527
987	0.99	1	182	2528
988	0.99	1	182	2529
1567	0.99	1	290	2530
989	0.99	1	183	2531
2142	0.99	1	396	2531
990	0.99	1	183	2533
1568	0.99	1	290	2534
991	0.99	1	184	2535
415	0.99	1	75	2536
992	0.99	1	184	2537
2143	0.99	1	396	2537
1569	0.99	1	290	2538
993	0.99	1	184	2539
994	0.99	1	184	2541
1570	0.99	1	290	2542
2144	0.99	1	396	2543
995	0.99	1	185	2545
1571	0.99	1	291	2548
996	0.99	1	185	2549
2145	0.99	1	396	2549
416	0.99	1	76	2550
417	0.99	1	77	2551
418	0.99	1	77	2552
997	0.99	1	185	2553
419	0.99	1	78	2554
1572	0.99	1	291	2554
2146	0.99	1	396	2555
420	0.99	1	78	2556
998	0.99	1	185	2557
421	0.99	1	79	2558
422	0.99	1	79	2560
1573	0.99	1	291	2560
999	0.99	1	185	2561
2147	0.99	1	396	2561
423	0.99	1	79	2562
424	0.99	1	79	2564
1000	0.99	1	185	2565
1574	0.99	1	291	2566
2148	0.99	1	396	2567
425	0.99	1	80	2568
1001	0.99	1	186	2571
426	0.99	1	80	2572
1575	0.99	1	291	2572
2149	0.99	1	396	2573
427	0.99	1	80	2576
1002	0.99	1	186	2577
1576	0.99	1	291	2578
428	0.99	1	80	2580
2150	0.99	1	397	2582
1003	0.99	1	186	2583
429	0.99	1	80	2584
1577	0.99	1	291	2584
430	0.99	1	80	2588
1004	0.99	1	186	2589
1578	0.99	1	291	2590
2151	0.99	1	397	2591
431	0.99	1	81	2594
1005	0.99	1	186	2595
1579	0.99	1	291	2596
432	0.99	1	81	2600
2152	0.99	1	397	2600
1006	0.99	1	186	2601
1580	0.99	1	292	2605
433	0.99	1	81	2606
1007	0.99	1	186	2607
2153	0.99	1	397	2609
434	0.99	1	81	2612
1008	0.99	1	186	2613
1581	0.99	1	292	2614
435	0.99	1	81	2618
2154	0.99	1	397	2618
1009	0.99	1	186	2619
1582	0.99	1	292	2623
436	0.99	1	81	2624
2155	0.99	1	397	2627
1010	0.99	1	187	2628
437	0.99	1	81	2630
1583	0.99	1	292	2632
438	0.99	1	81	2636
2156	0.99	1	397	2636
1011	0.99	1	187	2637
1584	0.99	1	292	2641
439	0.99	1	81	2642
2157	0.99	1	397	2645
1012	0.99	1	187	2646
1585	0.99	1	292	2650
440	0.99	1	82	2651
2158	0.99	1	397	2654
1013	0.99	1	187	2655
1586	0.99	1	292	2659
441	0.99	1	82	2660
2159	0.99	1	397	2663
1014	0.99	1	187	2664
1587	0.99	1	292	2668
442	0.99	1	82	2669
2160	0.99	1	397	2672
1015	0.99	1	187	2673
1588	0.99	1	292	2677
443	0.99	1	82	2678
2161	0.99	1	397	2681
1016	0.99	1	187	2682
1589	0.99	1	292	2686
444	0.99	1	82	2687
2162	0.99	1	397	2690
1017	0.99	1	187	2691
1590	0.99	1	292	2695
445	0.99	1	82	2696
2163	0.99	1	397	2699
1018	0.99	1	187	2700
1591	0.99	1	292	2704
446	0.99	1	82	2705
1019	0.99	1	187	2709
1592	0.99	1	292	2713
2164	0.99	1	398	2713
447	0.99	1	82	2714
2165	0.99	1	399	2714
2166	0.99	1	399	2715
2167	0.99	1	400	2717
1020	0.99	1	187	2718
2168	0.99	1	400	2719
2169	0.99	1	401	2721
1593	0.99	1	292	2722
448	0.99	1	82	2723
2170	0.99	1	401	2723
2171	0.99	1	401	2725
1021	0.99	1	187	2727
2172	0.99	1	401	2727
2173	0.99	1	402	2731
449	0.99	1	82	2732
2174	0.99	1	402	2735
1022	0.99	1	187	2736
1594	0.99	1	293	2736
1595	0.99	1	294	2737
1596	0.99	1	294	2738
2175	0.99	1	402	2739
1597	0.99	1	295	2740
450	0.99	1	82	2741
1598	0.99	1	295	2742
2176	0.99	1	402	2743
1599	0.99	1	296	2744
1023	0.99	1	187	2745
1600	0.99	1	296	2746
2177	0.99	1	402	2747
1601	0.99	1	296	2748
451	0.99	1	82	2750
1602	0.99	1	296	2750
2178	0.99	1	402	2751
1603	0.99	1	297	2754
2179	0.99	1	403	2757
1604	0.99	1	297	2758
452	0.99	1	82	2759
1024	0.99	1	188	2759
1025	0.99	1	189	2760
1026	0.99	1	189	2761
1605	0.99	1	297	2762
1027	0.99	1	190	2763
2180	0.99	1	403	2763
1028	0.99	1	190	2765
1606	0.99	1	297	2766
1029	0.99	1	191	2767
453	0.99	1	82	2768
1030	0.99	1	191	2769
2181	0.99	1	403	2769
1607	0.99	1	297	2770
1031	0.99	1	191	2771
1032	0.99	1	191	2773
1608	0.99	1	297	2774
2182	0.99	1	403	2775
1033	0.99	1	192	2777
1609	0.99	1	298	2780
1034	0.99	1	192	2781
2183	0.99	1	403	2781
454	0.99	1	83	2782
455	0.99	1	84	2783
456	0.99	1	84	2784
1035	0.99	1	192	2785
457	0.99	1	85	2786
1610	0.99	1	298	2786
2184	0.99	1	403	2787
458	0.99	1	85	2788
1036	0.99	1	192	2789
459	0.99	1	86	2790
460	0.99	1	86	2792
1611	0.99	1	298	2792
1037	0.99	1	192	2793
2185	0.99	1	403	2793
461	0.99	1	86	2794
462	0.99	1	86	2796
1038	0.99	1	192	2797
1612	0.99	1	298	2798
2186	0.99	1	403	2799
463	0.99	1	87	2800
1039	0.99	1	193	2803
464	0.99	1	87	2804
1613	0.99	1	298	2804
2187	0.99	1	403	2805
465	0.99	1	87	2808
1040	0.99	1	193	2809
1614	0.99	1	298	2810
466	0.99	1	87	2812
2188	0.99	1	404	2814
1041	0.99	1	193	2815
467	0.99	1	87	2816
1615	0.99	1	298	2816
468	1.99	1	87	2820
1042	1.99	1	193	2821
1616	1.99	1	298	2822
2189	1.99	1	404	2823
469	1.99	1	88	2826
1043	1.99	1	193	2827
1617	1.99	1	298	2828
470	1.99	1	88	2832
2190	1.99	1	404	2832
1044	1.99	1	193	2833
1618	1.99	1	299	2837
471	1.99	1	88	2838
1045	1.99	1	193	2839
2191	1.99	1	404	2841
472	1.99	1	88	2844
1046	1.99	1	193	2845
1619	1.99	1	299	2846
473	1.99	1	88	2850
2192	1.99	1	404	2850
1047	1.99	1	193	2851
1620	1.99	1	299	2855
474	1.99	1	88	2856
2193	1.99	1	404	2859
1048	1.99	1	194	2860
475	1.99	1	88	2862
1621	1.99	1	299	2864
476	1.99	1	88	2868
2194	1.99	1	404	2868
1049	1.99	1	194	2869
1622	1.99	1	299	2873
477	1.99	1	88	2874
2195	1.99	1	404	2877
1050	1.99	1	194	2878
1623	1.99	1	299	2882
478	1.99	1	89	2883
2196	1.99	1	404	2886
1051	1.99	1	194	2887
1624	1.99	1	299	2891
479	1.99	1	89	2892
2197	1.99	1	404	2895
1052	1.99	1	194	2896
1625	1.99	1	299	2900
480	1.99	1	89	2901
2198	1.99	1	404	2904
1053	1.99	1	194	2905
1626	1.99	1	299	2909
481	1.99	1	89	2910
2199	1.99	1	404	2913
1054	1.99	1	194	2914
1627	1.99	1	299	2918
482	1.99	1	89	2919
2200	1.99	1	404	2922
1055	1.99	1	194	2923
1628	0.99	1	299	2927
483	0.99	1	89	2928
2201	0.99	1	404	2931
1056	0.99	1	194	2932
1629	0.99	1	299	2936
484	0.99	1	89	2937
1057	0.99	1	194	2941
1630	0.99	1	299	2945
2202	0.99	1	405	2945
485	0.99	1	89	2946
2203	0.99	1	406	2946
2204	0.99	1	406	2947
2205	0.99	1	407	2949
1058	0.99	1	194	2950
2206	0.99	1	407	2951
2207	0.99	1	408	2953
1631	0.99	1	299	2954
486	0.99	1	89	2955
2208	0.99	1	408	2955
2209	0.99	1	408	2957
1059	0.99	1	194	2959
2210	0.99	1	408	2959
2211	0.99	1	409	2963
487	0.99	1	89	2964
2212	0.99	1	409	2967
1060	0.99	1	194	2968
1632	0.99	1	300	2968
1633	0.99	1	301	2969
1634	0.99	1	301	2970
2213	0.99	1	409	2971
1635	0.99	1	302	2972
488	0.99	1	89	2973
1636	0.99	1	302	2974
2214	0.99	1	409	2975
1637	0.99	1	303	2976
1061	0.99	1	194	2977
1638	0.99	1	303	2978
2215	0.99	1	409	2979
1639	0.99	1	303	2980
489	0.99	1	89	2982
1640	0.99	1	303	2982
2216	0.99	1	409	2983
1641	0.99	1	304	2986
2217	0.99	1	410	2989
1642	0.99	1	304	2990
490	0.99	1	89	2991
1062	0.99	1	195	2991
1063	0.99	1	196	2992
1064	0.99	1	196	2993
1643	0.99	1	304	2994
1065	0.99	1	197	2995
2218	0.99	1	410	2995
1066	0.99	1	197	2997
1644	0.99	1	304	2998
1067	0.99	1	198	2999
491	0.99	1	89	3000
1068	0.99	1	198	3001
2219	0.99	1	410	3001
1645	0.99	1	304	3002
1069	0.99	1	198	3003
1070	0.99	1	198	3005
1646	0.99	1	304	3006
2220	0.99	1	410	3007
1071	0.99	1	199	3009
1647	0.99	1	305	3012
1072	0.99	1	199	3013
2221	0.99	1	410	3013
492	0.99	1	90	3014
493	0.99	1	91	3015
494	0.99	1	91	3016
1073	0.99	1	199	3017
495	0.99	1	92	3018
1648	0.99	1	305	3018
2222	0.99	1	410	3019
496	0.99	1	92	3020
1074	0.99	1	199	3021
497	0.99	1	93	3022
498	0.99	1	93	3024
1649	0.99	1	305	3024
1075	0.99	1	199	3025
2223	0.99	1	410	3025
499	0.99	1	93	3026
500	0.99	1	93	3028
1076	0.99	1	199	3029
1650	0.99	1	305	3030
2224	0.99	1	410	3031
501	0.99	1	94	3032
1077	0.99	1	200	3035
502	0.99	1	94	3036
1651	0.99	1	305	3036
2225	0.99	1	410	3037
503	0.99	1	94	3040
1078	0.99	1	200	3041
1652	0.99	1	305	3042
504	0.99	1	94	3044
2226	0.99	1	411	3046
1079	0.99	1	200	3047
505	0.99	1	94	3048
1653	0.99	1	305	3048
506	0.99	1	94	3052
1080	0.99	1	200	3053
1654	0.99	1	305	3054
2227	0.99	1	411	3055
507	0.99	1	95	3058
1081	0.99	1	200	3059
1655	0.99	1	305	3060
508	0.99	1	95	3064
2228	0.99	1	411	3064
1082	0.99	1	200	3065
1656	0.99	1	306	3069
509	0.99	1	95	3070
1083	0.99	1	200	3071
2229	0.99	1	411	3073
510	0.99	1	95	3076
1084	0.99	1	200	3077
1657	0.99	1	306	3078
511	0.99	1	95	3082
2230	0.99	1	411	3082
1085	0.99	1	200	3083
1658	0.99	1	306	3087
512	0.99	1	95	3088
2231	0.99	1	411	3091
1086	0.99	1	201	3092
513	0.99	1	95	3094
1659	0.99	1	306	3096
514	0.99	1	95	3100
2232	0.99	1	411	3100
1087	0.99	1	201	3101
1660	0.99	1	306	3105
515	0.99	1	95	3106
2233	0.99	1	411	3109
1088	0.99	1	201	3110
1661	0.99	1	306	3114
516	0.99	1	96	3115
2234	0.99	1	411	3118
1089	0.99	1	201	3119
1662	0.99	1	306	3123
517	0.99	1	96	3124
2235	0.99	1	411	3127
1090	0.99	1	201	3128
1663	0.99	1	306	3132
518	0.99	1	96	3133
2236	0.99	1	411	3136
1091	0.99	1	201	3137
1664	0.99	1	306	3141
519	0.99	1	96	3142
2237	0.99	1	411	3145
1092	0.99	1	201	3146
1665	0.99	1	306	3150
520	0.99	1	96	3151
2238	0.99	1	411	3154
1093	0.99	1	201	3155
1666	0.99	1	306	3159
521	0.99	1	96	3160
2239	0.99	1	411	3163
1094	0.99	1	201	3164
1667	1.99	1	306	3168
522	1.99	1	96	3169
1095	1.99	1	201	3173
1668	1.99	1	306	3177
2240	1.99	1	412	3177
523	1.99	1	96	3178
1096	1.99	1	201	3182
1669	1.99	1	306	3186
524	1.99	1	96	3187
1097	1.99	1	201	3191
525	1.99	1	96	3196
1098	1.99	1	201	3200
1670	1.99	1	307	3200
1671	1.99	1	308	3201
1672	1.99	1	308	3202
1673	1.99	1	309	3204
526	1.99	1	96	3205
1674	1.99	1	309	3206
1675	1.99	1	310	3208
1099	1.99	1	201	3209
1676	1.99	1	310	3210
1677	1.99	1	310	3212
527	1.99	1	96	3214
1678	1.99	1	310	3214
1679	1.99	1	311	3218
1680	1.99	1	311	3222
528	1.99	1	96	3223
1100	1.99	1	202	3223
1101	1.99	1	203	3224
1102	0.99	1	203	3225
1681	1.99	1	311	3226
1103	1.99	1	204	3227
1104	1.99	1	204	3229
1682	1.99	1	311	3230
1105	1.99	1	205	3231
529	1.99	1	96	3232
1106	1.99	1	205	3233
1683	1.99	1	311	3234
1107	1.99	1	205	3235
1108	1.99	1	205	3237
1684	1.99	1	311	3238
1109	1.99	1	206	3241
1685	1.99	1	312	3244
1110	1.99	1	206	3245
530	1.99	1	97	3246
531	1.99	1	98	3247
532	1.99	1	98	3248
1111	1.99	1	206	3249
533	1.99	1	99	3250
1686	1.99	1	312	3250
534	1.99	1	99	3252
1112	0.99	1	206	3253
535	0.99	1	100	3254
536	0.99	1	100	3256
1687	0.99	1	312	3256
1113	0.99	1	206	3257
537	0.99	1	100	3258
538	0.99	1	100	3260
1114	0.99	1	206	3261
1688	0.99	1	312	3262
539	0.99	1	101	3264
1115	0.99	1	207	3267
540	0.99	1	101	3268
1689	0.99	1	312	3268
541	0.99	1	101	3272
1116	0.99	1	207	3273
1690	0.99	1	312	3274
542	0.99	1	101	3276
1117	0.99	1	207	3279
543	0.99	1	101	3280
1691	0.99	1	312	3280
544	0.99	1	101	3284
1118	0.99	1	207	3285
1692	0.99	1	312	3286
545	0.99	1	102	3290
1119	0.99	1	207	3291
1693	0.99	1	312	3292
546	0.99	1	102	3296
1120	0.99	1	207	3297
1694	0.99	1	313	3301
547	0.99	1	102	3302
1121	0.99	1	207	3303
548	0.99	1	102	3308
1122	0.99	1	207	3309
1695	0.99	1	313	3310
549	0.99	1	102	3314
1123	0.99	1	207	3315
1696	0.99	1	313	3319
550	0.99	1	102	3320
1124	0.99	1	208	3324
551	0.99	1	102	3326
1697	0.99	1	313	3328
552	0.99	1	102	3332
1125	0.99	1	208	3333
1698	1.99	1	313	3337
553	1.99	1	102	3338
1126	1.99	1	208	3342
1699	1.99	1	313	3346
554	1.99	1	103	3347
1127	0.99	1	208	3351
1700	0.99	1	313	3355
555	0.99	1	103	3356
1128	1.99	1	208	3360
1701	1.99	1	313	3364
556	0.99	1	103	3365
1129	0.99	1	208	3369
1702	0.99	1	313	3373
557	0.99	1	103	3374
1130	0.99	1	208	3378
1703	0.99	1	313	3382
558	0.99	1	103	3383
1131	0.99	1	208	3387
1704	0.99	1	313	3391
559	0.99	1	103	3392
1132	0.99	1	208	3396
1705	0.99	1	313	3400
560	0.99	1	103	3401
1133	0.99	1	208	3405
1706	0.99	1	313	3409
561	0.99	1	103	3410
1134	0.99	1	208	3414
1707	0.99	1	313	3418
562	0.99	1	103	3419
1135	0.99	1	208	3423
563	1.99	1	103	3428
1136	0.99	1	208	3432
1708	0.99	1	314	3432
1709	0.99	1	315	3433
1710	0.99	1	315	3434
1711	0.99	1	316	3436
564	0.99	1	103	3437
1712	0.99	1	316	3438
1713	0.99	1	317	3440
1137	0.99	1	208	3441
1714	0.99	1	317	3442
1715	0.99	1	317	3444
565	0.99	1	103	3446
1716	0.99	1	317	3446
1717	0.99	1	318	3450
1718	0.99	1	318	3454
566	0.99	1	103	3455
1138	0.99	1	209	3455
1139	0.99	1	210	3456
1140	0.99	1	210	3457
1719	0.99	1	318	3458
1141	0.99	1	211	3459
1142	0.99	1	211	3461
1720	0.99	1	318	3462
1143	0.99	1	212	3463
567	0.99	1	103	3464
1144	0.99	1	212	3465
1721	0.99	1	318	3466
1145	0.99	1	212	3467
1146	0.99	1	212	3469
1722	0.99	1	318	3470
1147	0.99	1	213	3473
1723	0.99	1	319	3476
1148	0.99	1	213	3477
568	0.99	1	104	3478
569	0.99	1	105	3479
570	0.99	1	105	3480
1149	0.99	1	213	3481
571	0.99	1	106	3482
1724	0.99	1	319	3482
572	0.99	1	106	3484
1150	0.99	1	213	3485
573	0.99	1	107	3486
574	0.99	1	107	3488
1725	0.99	1	319	3488
1151	0.99	1	213	3489
575	0.99	1	107	3490
576	0.99	1	107	3492
1152	0.99	1	213	3493
1726	0.99	1	319	3494
577	0.99	1	108	3496
1153	0.99	1	214	3499
578	0.99	1	108	3500
1727	0.99	1	319	3500
\.


--
-- Data for Name: media_type; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.media_type (media_type_id, name) FROM stdin;
1	MPEG audio file
2	Protected AAC audio file
3	Protected MPEG-4 video file
4	Purchased AAC audio file
5	AAC audio file
\.


--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.playlist (playlist_id, name) FROM stdin;
1	Music
2	Movies
3	TV Shows
4	Audiobooks
5	90s Music
6	Audiobooks
7	Movies
8	Music
9	Music Videos
10	TV Shows
11	Brazilian Music
12	Classical
13	Classical 101 - Deep Cuts
14	Classical 101 - Next Steps
15	Classical 101 - The Basics
16	Grunge
17	Heavy Metal Classic
18	On-The-Go 1
\.


--
-- Data for Name: playlist_track; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.playlist_track (playlist_track_id, playlist_id, track_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	1	93
94	1	94
95	1	95
96	1	96
97	1	97
98	1	98
99	1	99
100	1	100
101	1	101
102	1	102
103	1	103
104	1	104
105	1	105
106	1	106
107	1	107
108	1	108
109	1	109
110	1	110
111	1	111
112	1	112
113	1	113
114	1	114
115	1	115
116	1	116
117	1	117
118	1	118
119	1	119
120	1	120
121	1	121
122	1	122
123	1	123
124	1	124
125	1	125
126	1	126
127	1	127
128	1	128
129	1	129
130	1	130
131	1	131
132	1	132
133	1	133
134	1	134
135	1	135
136	1	136
137	1	137
138	1	138
139	1	139
140	1	140
141	1	141
142	1	142
143	1	143
144	1	144
145	1	145
146	1	146
147	1	147
148	1	148
149	1	149
150	1	150
151	1	151
152	1	152
153	1	153
154	1	154
155	1	155
156	1	156
157	1	157
158	1	158
159	1	159
160	1	160
161	1	161
162	1	162
163	1	163
164	1	164
165	1	165
166	1	166
167	1	167
168	1	168
169	1	169
170	1	170
171	1	171
172	1	172
173	1	173
174	1	174
175	1	175
176	1	176
177	1	177
178	1	178
179	1	179
180	1	180
181	1	181
182	1	182
183	1	183
184	1	184
185	1	185
186	1	186
187	1	187
188	1	188
189	1	189
190	1	190
191	1	191
192	1	192
193	1	193
194	1	194
195	1	195
196	1	196
197	1	197
198	1	198
199	1	199
200	1	200
201	1	201
202	1	202
203	1	203
204	1	204
205	1	205
206	1	206
207	1	207
208	1	208
209	1	209
210	1	210
211	1	211
212	1	212
213	1	213
214	1	214
215	1	215
216	1	216
217	1	217
218	1	218
219	1	219
220	1	220
221	1	221
222	1	222
223	1	223
224	1	224
225	1	225
226	1	226
227	1	227
228	1	228
229	1	229
230	1	230
231	1	231
232	1	232
233	1	233
234	1	234
235	1	235
236	1	236
237	1	237
238	1	238
239	1	239
240	1	240
241	1	241
242	1	242
243	1	243
244	1	244
245	1	245
246	1	246
247	1	247
248	1	248
249	1	249
250	1	250
251	1	251
252	1	252
253	1	253
254	1	254
255	1	255
256	1	256
257	1	257
258	1	258
259	1	259
260	1	260
261	1	261
262	1	262
263	1	263
264	1	264
265	1	265
266	1	266
267	1	267
268	1	268
269	1	269
270	1	270
271	1	271
272	1	272
273	1	273
274	1	274
275	1	275
276	1	276
277	1	277
278	1	278
279	1	279
280	1	280
281	1	281
282	1	282
283	1	283
284	1	284
285	1	285
286	1	286
287	1	287
288	1	288
289	1	289
290	1	290
291	1	291
292	1	292
293	1	293
294	1	294
295	1	295
296	1	296
297	1	297
298	1	298
299	1	299
300	1	300
301	1	301
302	1	302
303	1	303
304	1	304
305	1	305
306	1	306
307	1	307
308	1	308
309	1	309
310	1	310
311	1	311
312	1	312
313	1	313
314	1	314
315	1	315
316	1	316
317	1	317
318	1	318
319	1	319
320	1	320
321	1	321
322	1	322
323	1	323
324	1	324
325	1	325
326	1	326
327	1	327
328	1	328
329	1	329
330	1	330
331	1	331
332	1	332
333	1	333
334	1	334
335	1	335
336	1	336
337	1	337
338	1	338
339	1	339
340	1	340
341	1	341
342	1	342
343	1	343
344	1	344
345	1	345
346	1	346
347	1	347
348	1	348
349	1	349
350	1	350
351	1	351
352	1	352
353	1	353
354	1	354
355	1	355
356	1	356
357	1	357
358	1	358
359	1	359
360	1	360
361	1	361
362	1	362
363	1	363
364	1	364
365	1	365
366	1	366
367	1	367
368	1	368
369	1	369
370	1	370
371	1	371
372	1	372
373	1	373
374	1	374
375	1	375
376	1	376
377	1	377
378	1	378
379	1	379
380	1	380
381	1	381
382	1	382
383	1	383
384	1	384
385	1	385
386	1	386
387	1	387
388	1	388
389	1	389
390	1	390
391	1	391
392	1	392
393	1	393
394	1	394
395	1	395
396	1	396
397	1	397
398	1	398
399	1	399
400	1	400
401	1	401
402	1	402
403	1	403
404	1	404
405	1	405
406	1	406
407	1	407
408	1	408
409	1	409
410	1	410
411	1	411
412	1	412
413	1	413
414	1	414
415	1	415
416	1	416
417	1	417
418	1	418
419	1	419
420	1	420
421	1	421
422	1	422
423	1	423
424	1	424
425	1	425
426	1	426
427	1	427
428	1	428
429	1	429
430	1	430
431	1	431
432	1	432
433	1	433
434	1	434
435	1	435
436	1	436
437	1	437
438	1	438
439	1	439
440	1	440
441	1	441
442	1	442
443	1	443
444	1	444
445	1	445
446	1	446
447	1	447
448	1	448
449	1	449
450	1	450
451	1	451
452	1	452
453	1	453
454	1	454
455	1	455
456	1	456
457	1	457
458	1	458
459	1	459
460	1	460
461	1	461
462	1	462
463	1	463
464	1	464
465	1	465
466	1	466
467	1	467
468	1	468
469	1	469
470	1	470
471	1	471
472	1	472
473	1	473
474	1	474
475	1	475
476	1	476
477	1	477
478	1	478
479	1	479
480	1	480
481	1	481
482	1	482
483	1	483
484	1	484
485	1	485
486	1	486
487	1	487
488	1	488
489	1	489
490	1	490
491	1	491
492	1	492
493	1	493
494	1	494
495	1	495
496	1	496
497	1	497
498	1	498
499	1	499
500	1	500
501	1	501
502	1	502
503	1	503
504	1	504
505	1	505
506	1	506
507	1	507
508	1	508
509	1	509
510	1	510
511	1	511
512	1	512
513	1	513
514	1	514
515	1	515
516	1	516
517	1	517
518	1	518
519	1	519
520	1	520
521	1	521
522	1	522
523	1	523
524	1	524
525	1	525
526	1	526
527	1	527
528	1	528
529	1	529
530	1	530
531	1	531
532	1	532
533	1	533
534	1	534
535	1	535
536	1	536
537	1	537
538	1	538
539	1	539
540	1	540
541	1	541
542	1	542
543	1	543
544	1	544
545	1	545
546	1	546
547	1	547
548	1	548
549	1	549
550	1	550
551	1	551
552	1	552
553	1	553
554	1	554
555	1	555
556	1	556
557	1	557
558	1	558
559	1	559
560	1	560
561	1	561
562	1	562
563	1	563
564	1	564
565	1	565
566	1	566
567	1	567
568	1	568
569	1	569
570	1	570
571	1	571
572	1	572
573	1	573
574	1	574
575	1	575
576	1	576
577	1	577
578	1	578
579	1	579
580	1	580
581	1	581
582	1	582
583	1	583
584	1	584
585	1	585
586	1	586
587	1	587
588	1	588
589	1	589
590	1	590
591	1	591
592	1	592
593	1	593
594	1	594
595	1	595
596	1	596
597	1	597
598	1	598
599	1	599
600	1	600
601	1	601
602	1	602
603	1	603
604	1	604
605	1	605
606	1	606
607	1	607
608	1	608
609	1	609
610	1	610
611	1	611
612	1	612
613	1	613
614	1	614
615	1	615
616	1	616
617	1	617
618	1	618
619	1	619
620	1	620
621	1	621
622	1	622
623	1	623
624	1	624
625	1	625
626	1	626
627	1	627
628	1	628
629	1	629
630	1	630
631	1	631
632	1	632
633	1	633
634	1	634
635	1	635
636	1	636
637	1	637
638	1	638
639	1	639
640	1	640
641	1	641
642	1	642
643	1	643
644	1	644
645	1	645
646	1	646
647	1	647
648	1	648
649	1	649
650	1	650
651	1	651
652	1	652
653	1	653
654	1	654
655	1	655
656	1	656
657	1	657
658	1	658
659	1	659
660	1	660
661	1	661
662	1	662
663	1	663
664	1	664
665	1	665
666	1	666
667	1	667
668	1	668
669	1	669
670	1	670
671	1	671
672	1	672
673	1	673
674	1	674
675	1	675
676	1	676
677	1	677
678	1	678
679	1	679
680	1	680
681	1	681
682	1	682
683	1	683
684	1	684
685	1	685
686	1	686
687	1	687
688	1	688
689	1	689
690	1	690
691	1	691
692	1	692
693	1	693
694	1	694
695	1	695
696	1	696
697	1	697
698	1	698
699	1	699
700	1	700
701	1	701
702	1	702
703	1	703
704	1	704
705	1	705
706	1	706
707	1	707
708	1	708
709	1	709
710	1	710
711	1	711
712	1	712
713	1	713
714	1	714
715	1	715
716	1	716
717	1	717
718	1	718
719	1	719
720	1	720
721	1	721
722	1	722
723	1	723
724	1	724
725	1	725
726	1	726
727	1	727
728	1	728
729	1	729
730	1	730
731	1	731
732	1	732
733	1	733
734	1	734
735	1	735
736	1	736
737	1	737
738	1	738
739	1	739
740	1	740
741	1	741
742	1	742
743	1	743
744	1	744
745	1	745
746	1	746
747	1	747
748	1	748
749	1	749
750	1	750
751	1	751
752	1	752
753	1	753
754	1	754
755	1	755
756	1	756
757	1	757
758	1	758
759	1	759
760	1	760
761	1	761
762	1	762
763	1	763
764	1	764
765	1	765
766	1	766
767	1	767
768	1	768
769	1	769
770	1	770
771	1	771
772	1	772
773	1	773
774	1	774
775	1	775
776	1	776
777	1	777
778	1	778
779	1	779
780	1	780
781	1	781
782	1	782
783	1	783
784	1	784
785	1	785
786	1	786
787	1	787
788	1	788
789	1	789
790	1	790
791	1	791
792	1	792
793	1	793
794	1	794
795	1	795
796	1	796
797	1	797
798	1	798
799	1	799
800	1	800
801	1	801
802	1	802
803	1	803
804	1	804
805	1	805
806	1	806
807	1	807
808	1	808
809	1	809
810	1	810
811	1	811
812	1	812
813	1	813
814	1	814
815	1	815
816	1	816
817	1	817
818	1	818
819	1	819
820	1	820
821	1	821
822	1	822
823	1	823
824	1	824
825	1	825
826	1	826
827	1	827
828	1	828
829	1	829
830	1	830
831	1	831
832	1	832
833	1	833
834	1	834
835	1	835
836	1	836
837	1	837
838	1	838
839	1	839
840	1	840
841	1	841
842	1	842
843	1	843
844	1	844
845	1	845
846	1	846
847	1	847
848	1	848
849	1	849
850	1	850
851	1	851
852	1	852
853	1	853
854	1	854
855	1	855
856	1	856
857	1	857
858	1	858
859	1	859
860	1	860
861	1	861
862	1	862
863	1	863
864	1	864
865	1	865
866	1	866
867	1	867
868	1	868
869	1	869
870	1	870
871	1	871
872	1	872
873	1	873
874	1	874
875	1	875
876	1	876
877	1	877
878	1	878
879	1	879
880	1	880
881	1	881
882	1	882
883	1	883
884	1	884
885	1	885
886	1	886
887	1	887
888	1	888
889	1	889
890	1	890
891	1	891
892	1	892
893	1	893
894	1	894
895	1	895
896	1	896
897	1	897
898	1	898
899	1	899
900	1	900
901	1	901
902	1	902
903	1	903
904	1	904
905	1	905
906	1	906
907	1	907
908	1	908
909	1	909
910	1	910
911	1	911
912	1	912
913	1	913
914	1	914
915	1	915
916	1	916
917	1	917
918	1	918
919	1	919
920	1	920
921	1	921
922	1	922
923	1	923
924	1	924
925	1	925
926	1	926
927	1	927
928	1	928
929	1	929
930	1	930
931	1	931
932	1	932
933	1	933
934	1	934
935	1	935
936	1	936
937	1	937
938	1	938
939	1	939
940	1	940
941	1	941
942	1	942
943	1	943
944	1	944
945	1	945
946	1	946
947	1	947
948	1	948
949	1	949
950	1	950
951	1	951
952	1	952
953	1	953
954	1	954
955	1	955
956	1	956
957	1	957
958	1	958
959	1	959
960	1	960
961	1	961
962	1	962
963	1	963
964	1	964
965	1	965
966	1	966
967	1	967
968	1	968
969	1	969
970	1	970
971	1	971
972	1	972
973	1	973
974	1	974
975	1	975
976	1	976
977	1	977
978	1	978
979	1	979
980	1	980
981	1	981
982	1	982
983	1	983
984	1	984
985	1	985
986	1	986
987	1	987
988	1	988
989	1	989
990	1	990
991	1	991
992	1	992
993	1	993
994	1	994
995	1	995
996	1	996
997	1	997
998	1	998
999	1	999
1000	1	1000
1001	1	1001
1002	1	1002
1003	1	1003
1004	1	1004
1005	1	1005
1006	1	1006
1007	1	1007
1008	1	1008
1009	1	1009
1010	1	1010
1011	1	1011
1012	1	1012
1013	1	1013
1014	1	1014
1015	1	1015
1016	1	1016
1017	1	1017
1018	1	1018
1019	1	1019
1020	1	1020
1021	1	1021
1022	1	1022
1023	1	1023
1024	1	1024
1025	1	1025
1026	1	1026
1027	1	1027
1028	1	1028
1029	1	1029
1030	1	1030
1031	1	1031
1032	1	1032
1033	1	1033
1034	1	1034
1035	1	1035
1036	1	1036
1037	1	1037
1038	1	1038
1039	1	1039
1040	1	1040
1041	1	1041
1042	1	1042
1043	1	1043
1044	1	1044
1045	1	1045
1046	1	1046
1047	1	1047
1048	1	1048
1049	1	1049
1050	1	1050
1051	1	1051
1052	1	1052
1053	1	1053
1054	1	1054
1055	1	1055
1056	1	1056
1057	1	1057
1058	1	1058
1059	1	1059
1060	1	1060
1061	1	1061
1062	1	1062
1063	1	1063
1064	1	1064
1065	1	1065
1066	1	1066
1067	1	1067
1068	1	1068
1069	1	1069
1070	1	1070
1071	1	1071
1072	1	1072
1073	1	1073
1074	1	1074
1075	1	1075
1076	1	1076
1077	1	1077
1078	1	1078
1079	1	1079
1080	1	1080
1081	1	1081
1082	1	1082
1083	1	1083
1084	1	1084
1085	1	1085
1086	1	1086
1087	1	1087
1088	1	1088
1089	1	1089
1090	1	1090
1091	1	1091
1092	1	1092
1093	1	1093
1094	1	1094
1095	1	1095
1096	1	1096
1097	1	1097
1098	1	1098
1099	1	1099
1100	1	1100
1101	1	1101
1102	1	1102
1103	1	1103
1104	1	1104
1105	1	1105
1106	1	1106
1107	1	1107
1108	1	1108
1109	1	1109
1110	1	1110
1111	1	1111
1112	1	1112
1113	1	1113
1114	1	1114
1115	1	1115
1116	1	1116
1117	1	1117
1118	1	1118
1119	1	1119
1120	1	1120
1121	1	1121
1122	1	1122
1123	1	1123
1124	1	1124
1125	1	1125
1126	1	1126
1127	1	1127
1128	1	1128
1129	1	1129
1130	1	1130
1131	1	1131
1132	1	1132
1133	1	1133
1134	1	1134
1135	1	1135
1136	1	1136
1137	1	1137
1138	1	1138
1139	1	1139
1140	1	1140
1141	1	1141
1142	1	1142
1143	1	1143
1144	1	1144
1145	1	1145
1146	1	1146
1147	1	1147
1148	1	1148
1149	1	1149
1150	1	1150
1151	1	1151
1152	1	1152
1153	1	1153
1154	1	1154
1155	1	1155
1156	1	1156
1157	1	1157
1158	1	1158
1159	1	1159
1160	1	1160
1161	1	1161
1162	1	1162
1163	1	1163
1164	1	1164
1165	1	1165
1166	1	1166
1167	1	1167
1168	1	1168
1169	1	1169
1170	1	1170
1171	1	1171
1172	1	1172
1173	1	1173
1174	1	1174
1175	1	1175
1176	1	1176
1177	1	1177
1178	1	1178
1179	1	1179
1180	1	1180
1181	1	1181
1182	1	1182
1183	1	1183
1184	1	1184
1185	1	1185
1186	1	1186
1187	1	1187
1188	1	1188
1189	1	1189
1190	1	1190
1191	1	1191
1192	1	1192
1193	1	1193
1194	1	1194
1195	1	1195
1196	1	1196
1197	1	1197
1198	1	1198
1199	1	1199
1200	1	1200
1201	1	1201
1202	1	1202
1203	1	1203
1204	1	1204
1205	1	1205
1206	1	1206
1207	1	1207
1208	1	1208
1209	1	1209
1210	1	1210
1211	1	1211
1212	1	1212
1213	1	1213
1214	1	1214
1215	1	1215
1216	1	1216
1217	1	1217
1218	1	1218
1219	1	1219
1220	1	1220
1221	1	1221
1222	1	1222
1223	1	1223
1224	1	1224
1225	1	1225
1226	1	1226
1227	1	1227
1228	1	1228
1229	1	1229
1230	1	1230
1231	1	1231
1232	1	1232
1233	1	1233
1234	1	1234
1235	1	1235
1236	1	1236
1237	1	1237
1238	1	1238
1239	1	1239
1240	1	1240
1241	1	1241
1242	1	1242
1243	1	1243
1244	1	1244
1245	1	1245
1246	1	1246
1247	1	1247
1248	1	1248
1249	1	1249
1250	1	1250
1251	1	1251
1252	1	1252
1253	1	1253
1254	1	1254
1255	1	1255
1256	1	1256
1257	1	1257
1258	1	1258
1259	1	1259
1260	1	1260
1261	1	1261
1262	1	1262
1263	1	1263
1264	1	1264
1265	1	1265
1266	1	1266
1267	1	1267
1268	1	1268
1269	1	1269
1270	1	1270
1271	1	1271
1272	1	1272
1273	1	1273
1274	1	1274
1275	1	1275
1276	1	1276
1277	1	1277
1278	1	1278
1279	1	1279
1280	1	1280
1281	1	1281
1282	1	1282
1283	1	1283
1284	1	1284
1285	1	1285
1286	1	1286
1287	1	1287
1288	1	1288
1289	1	1289
1290	1	1290
1291	1	1291
1292	1	1292
1293	1	1293
1294	1	1294
1295	1	1295
1296	1	1296
1297	1	1297
1298	1	1298
1299	1	1299
1300	1	1300
1301	1	1301
1302	1	1302
1303	1	1303
1304	1	1304
1305	1	1305
1306	1	1306
1307	1	1307
1308	1	1308
1309	1	1309
1310	1	1310
1311	1	1311
1312	1	1312
1313	1	1313
1314	1	1314
1315	1	1315
1316	1	1316
1317	1	1317
1318	1	1318
1319	1	1319
1320	1	1320
1321	1	1321
1322	1	1322
1323	1	1323
1324	1	1324
1325	1	1325
1326	1	1326
1327	1	1327
1328	1	1328
1329	1	1329
1330	1	1330
1331	1	1331
1332	1	1332
1333	1	1333
1334	1	1334
1335	1	1335
1336	1	1336
1337	1	1337
1338	1	1338
1339	1	1339
1340	1	1340
1341	1	1341
1342	1	1342
1343	1	1343
1344	1	1344
1345	1	1345
1346	1	1346
1347	1	1347
1348	1	1348
1349	1	1349
1350	1	1350
1351	1	1351
1352	1	1352
1353	1	1353
1354	1	1354
1355	1	1355
1356	1	1356
1357	1	1357
1358	1	1358
1359	1	1359
1360	1	1360
1361	1	1361
1362	1	1362
1363	1	1363
1364	1	1364
1365	1	1365
1366	1	1366
1367	1	1367
1368	1	1368
1369	1	1369
1370	1	1370
1371	1	1371
1372	1	1372
1373	1	1373
1374	1	1374
1375	1	1375
1376	1	1376
1377	1	1377
1378	1	1378
1379	1	1379
1380	1	1380
1381	1	1381
1382	1	1382
1383	1	1383
1384	1	1384
1385	1	1385
1386	1	1386
1387	1	1387
1388	1	1388
1389	1	1389
1390	1	1390
1391	1	1391
1392	1	1392
1393	1	1393
1394	1	1394
1395	1	1395
1396	1	1396
1397	1	1397
1398	1	1398
1399	1	1399
1400	1	1400
1401	1	1401
1402	1	1402
1403	1	1403
1404	1	1404
1405	1	1405
1406	1	1406
1407	1	1407
1408	1	1408
1409	1	1409
1410	1	1410
1411	1	1411
1412	1	1412
1413	1	1413
1414	1	1414
1415	1	1415
1416	1	1416
1417	1	1417
1418	1	1418
1419	1	1419
1420	1	1420
1421	1	1421
1422	1	1422
1423	1	1423
1424	1	1424
1425	1	1425
1426	1	1426
1427	1	1427
1428	1	1428
1429	1	1429
1430	1	1430
1431	1	1431
1432	1	1432
1433	1	1433
1434	1	1434
1435	1	1435
1436	1	1436
1437	1	1437
1438	1	1438
1439	1	1439
1440	1	1440
1441	1	1441
1442	1	1442
1443	1	1443
1444	1	1444
1445	1	1445
1446	1	1446
1447	1	1447
1448	1	1448
1449	1	1449
1450	1	1450
1451	1	1451
1452	1	1452
1453	1	1453
1454	1	1454
1455	1	1455
1456	1	1456
1457	1	1457
1458	1	1458
1459	1	1459
1460	1	1460
1461	1	1461
1462	1	1462
1463	1	1463
1464	1	1464
1465	1	1465
1466	1	1466
1467	1	1467
1468	1	1468
1469	1	1469
1470	1	1470
1471	1	1471
1472	1	1472
1473	1	1473
1474	1	1474
1475	1	1475
1476	1	1476
1477	1	1477
1478	1	1478
1479	1	1479
1480	1	1480
1481	1	1481
1482	1	1482
1483	1	1483
1484	1	1484
1485	1	1485
1486	1	1486
1487	1	1487
1488	1	1488
1489	1	1489
1490	1	1490
1491	1	1491
1492	1	1492
1493	1	1493
1494	1	1494
1495	1	1495
1496	1	1496
1497	1	1497
1498	1	1498
1499	1	1499
1500	1	1500
1501	1	1501
1502	1	1502
1503	1	1503
1504	1	1504
1505	1	1505
1506	1	1506
1507	1	1507
1508	1	1508
1509	1	1509
1510	1	1510
1511	1	1511
1512	1	1512
1513	1	1513
1514	1	1514
1515	1	1515
1516	1	1516
1517	1	1517
1518	1	1518
1519	1	1519
1520	1	1520
1521	1	1521
1522	1	1522
1523	1	1523
1524	1	1524
1525	1	1525
1526	1	1526
1527	1	1527
1528	1	1528
1529	1	1529
1530	1	1530
1531	1	1531
1532	1	1532
1533	1	1533
1534	1	1534
1535	1	1535
1536	1	1536
1537	1	1537
1538	1	1538
1539	1	1539
1540	1	1540
1541	1	1541
1542	1	1542
1543	1	1543
1544	1	1544
1545	1	1545
1546	1	1546
1547	1	1547
1548	1	1548
1549	1	1549
1550	1	1550
1551	1	1551
1552	1	1552
1553	1	1553
1554	1	1554
1555	1	1555
1556	1	1556
1557	1	1557
1558	1	1558
1559	1	1559
1560	1	1560
1561	1	1561
1562	1	1562
1563	1	1563
1564	1	1564
1565	1	1565
1566	1	1566
1567	1	1567
1568	1	1568
1569	1	1569
1570	1	1570
1571	1	1571
1572	1	1572
1573	1	1573
1574	1	1574
1575	1	1575
1576	1	1576
1577	1	1577
1578	1	1578
1579	1	1579
1580	1	1580
1581	1	1581
1582	1	1582
1583	1	1583
1584	1	1584
1585	1	1585
1586	1	1586
1587	1	1587
1588	1	1588
1589	1	1589
1590	1	1590
1591	1	1591
1592	1	1592
1593	1	1593
1594	1	1594
1595	1	1595
1596	1	1596
1597	1	1597
1598	1	1598
1599	1	1599
1600	1	1600
1601	1	1601
1602	1	1602
1603	1	1603
1604	1	1604
1605	1	1605
1606	1	1606
1607	1	1607
1608	1	1608
1609	1	1609
1610	1	1610
1611	1	1611
1612	1	1612
1613	1	1613
1614	1	1614
1615	1	1615
1616	1	1616
1617	1	1617
1618	1	1618
1619	1	1619
1620	1	1620
1621	1	1621
1622	1	1622
1623	1	1623
1624	1	1624
1625	1	1625
1626	1	1626
1627	1	1627
1628	1	1628
1629	1	1629
1630	1	1630
1631	1	1631
1632	1	1632
1633	1	1633
1634	1	1634
1635	1	1635
1636	1	1636
1637	1	1637
1638	1	1638
1639	1	1639
1640	1	1640
1641	1	1641
1642	1	1642
1643	1	1643
1644	1	1644
1645	1	1645
1646	1	1646
1647	1	1647
1648	1	1648
1649	1	1649
1650	1	1650
1651	1	1651
1652	1	1652
1653	1	1653
1654	1	1654
1655	1	1655
1656	1	1656
1657	1	1657
1658	1	1658
1659	1	1659
1660	1	1660
1661	1	1661
1662	1	1662
1663	1	1663
1664	1	1664
1665	1	1665
1666	1	1666
1667	1	1667
1668	1	1668
1669	1	1669
1670	1	1670
1671	1	1671
1672	1	1672
1673	1	1673
1674	1	1674
1675	1	1675
1676	1	1676
1677	1	1677
1678	1	1678
1679	1	1679
1680	1	1680
1681	1	1681
1682	1	1682
1683	1	1683
1684	1	1684
1685	1	1685
1686	1	1686
1687	1	1687
1688	1	1688
1689	1	1689
1690	1	1690
1691	1	1691
1692	1	1692
1693	1	1693
1694	1	1694
1695	1	1695
1696	1	1696
1697	1	1697
1698	1	1698
1699	1	1699
1700	1	1700
1701	1	1701
1702	1	1702
1703	1	1703
1704	1	1704
1705	1	1705
1706	1	1706
1707	1	1707
1708	1	1708
1709	1	1709
1710	1	1710
1711	1	1711
1712	1	1712
1713	1	1713
1714	1	1714
1715	1	1715
1716	1	1716
1717	1	1717
1718	1	1718
1719	1	1719
1720	1	1720
1721	1	1721
1722	1	1722
1723	1	1723
1724	1	1724
1725	1	1725
1726	1	1726
1727	1	1727
1728	1	1728
1729	1	1729
1730	1	1730
1731	1	1731
1732	1	1732
1733	1	1733
1734	1	1734
1735	1	1735
1736	1	1736
1737	1	1737
1738	1	1738
1739	1	1739
1740	1	1740
1741	1	1741
1742	1	1742
1743	1	1743
1744	1	1744
1745	1	1745
1746	1	1746
1747	1	1747
1748	1	1748
1749	1	1749
1750	1	1750
1751	1	1751
1752	1	1752
1753	1	1753
1754	1	1754
1755	1	1755
1756	1	1756
1757	1	1757
1758	1	1758
1759	1	1759
1760	1	1760
1761	1	1761
1762	1	1762
1763	1	1763
1764	1	1764
1765	1	1765
1766	1	1766
1767	1	1767
1768	1	1768
1769	1	1769
1770	1	1770
1771	1	1771
1772	1	1772
1773	1	1773
1774	1	1774
1775	1	1775
1776	1	1776
1777	1	1777
1778	1	1778
1779	1	1779
1780	1	1780
1781	1	1781
1782	1	1782
1783	1	1783
1784	1	1784
1785	1	1785
1786	1	1786
1787	1	1787
1788	1	1788
1789	1	1789
1790	1	1790
1791	1	1791
1792	1	1792
1793	1	1793
1794	1	1794
1795	1	1795
1796	1	1796
1797	1	1797
1798	1	1798
1799	1	1799
1800	1	1800
1801	1	1801
1802	1	1802
1803	1	1803
1804	1	1804
1805	1	1805
1806	1	1806
1807	1	1807
1808	1	1808
1809	1	1809
1810	1	1810
1811	1	1811
1812	1	1812
1813	1	1813
1814	1	1814
1815	1	1815
1816	1	1816
1817	1	1817
1818	1	1818
1819	1	1819
1820	1	1820
1821	1	1821
1822	1	1822
1823	1	1823
1824	1	1824
1825	1	1825
1826	1	1826
1827	1	1827
1828	1	1828
1829	1	1829
1830	1	1830
1831	1	1831
1832	1	1832
1833	1	1833
1834	1	1834
1835	1	1835
1836	1	1836
1837	1	1837
1838	1	1838
1839	1	1839
1840	1	1840
1841	1	1841
1842	1	1842
1843	1	1843
1844	1	1844
1845	1	1845
1846	1	1846
1847	1	1847
1848	1	1848
1849	1	1849
1850	1	1850
1851	1	1851
1852	1	1852
1853	1	1853
1854	1	1854
1855	1	1855
1856	1	1856
1857	1	1857
1858	1	1858
1859	1	1859
1860	1	1860
1861	1	1861
1862	1	1862
1863	1	1863
1864	1	1864
1865	1	1865
1866	1	1866
1867	1	1867
1868	1	1868
1869	1	1869
1870	1	1870
1871	1	1871
1872	1	1872
1873	1	1873
1874	1	1874
1875	1	1875
1876	1	1876
1877	1	1877
1878	1	1878
1879	1	1879
1880	1	1880
1881	1	1881
1882	1	1882
1883	1	1883
1884	1	1884
1885	1	1885
1886	1	1886
1887	1	1887
1888	1	1888
1889	1	1889
1890	1	1890
1891	1	1891
1892	1	1892
1893	1	1893
1894	1	1894
1895	1	1895
1896	1	1896
1897	1	1897
1898	1	1898
1899	1	1899
1900	1	1900
1901	1	1901
1902	1	1902
1903	1	1903
1904	1	1904
1905	1	1905
1906	1	1906
1907	1	1907
1908	1	1908
1909	1	1909
1910	1	1910
1911	1	1911
1912	1	1912
1913	1	1913
1914	1	1914
1915	1	1915
1916	1	1916
1917	1	1917
1918	1	1918
1919	1	1919
1920	1	1920
1921	1	1921
1922	1	1922
1923	1	1923
1924	1	1924
1925	1	1925
1926	1	1926
1927	1	1927
1928	1	1928
1929	1	1929
1930	1	1930
1931	1	1931
1932	1	1932
1933	1	1933
1934	1	1934
1935	1	1935
1936	1	1936
1937	1	1937
1938	1	1938
1939	1	1939
1940	1	1940
1941	1	1941
1942	1	1942
1943	1	1943
1944	1	1944
1945	1	1945
1946	1	1946
1947	1	1947
1948	1	1948
1949	1	1949
1950	1	1950
1951	1	1951
1952	1	1952
1953	1	1953
1954	1	1954
1955	1	1955
1956	1	1956
1957	1	1957
1958	1	1958
1959	1	1959
1960	1	1960
1961	1	1961
1962	1	1962
1963	1	1963
1964	1	1964
1965	1	1965
1966	1	1966
1967	1	1967
1968	1	1968
1969	1	1969
1970	1	1970
1971	1	1971
1972	1	1972
1973	1	1973
1974	1	1974
1975	1	1975
1976	1	1976
1977	1	1977
1978	1	1978
1979	1	1979
1980	1	1980
1981	1	1981
1982	1	1982
1983	1	1983
1984	1	1984
1985	1	1985
1986	1	1986
1987	1	1987
1988	1	1988
1989	1	1989
1990	1	1990
1991	1	1991
1992	1	1992
1993	1	1993
1994	1	1994
1995	1	1995
1996	1	1996
1997	1	1997
1998	1	1998
1999	1	1999
2000	1	2000
2001	1	2001
2002	1	2002
2003	1	2003
2004	1	2004
2005	1	2005
2006	1	2006
2007	1	2007
2008	1	2008
2009	1	2009
2010	1	2010
2011	1	2011
2012	1	2012
2013	1	2013
2014	1	2014
2015	1	2015
2016	1	2016
2017	1	2017
2018	1	2018
2019	1	2019
2020	1	2020
2021	1	2021
2022	1	2022
2023	1	2023
2024	1	2024
2025	1	2025
2026	1	2026
2027	1	2027
2028	1	2028
2029	1	2029
2030	1	2030
2031	1	2031
2032	1	2032
2033	1	2033
2034	1	2034
2035	1	2035
2036	1	2036
2037	1	2037
2038	1	2038
2039	1	2039
2040	1	2040
2041	1	2041
2042	1	2042
2043	1	2043
2044	1	2044
2045	1	2045
2046	1	2046
2047	1	2047
2048	1	2048
2049	1	2049
2050	1	2050
2051	1	2051
2052	1	2052
2053	1	2053
2054	1	2054
2055	1	2055
2056	1	2056
2057	1	2057
2058	1	2058
2059	1	2059
2060	1	2060
2061	1	2061
2062	1	2062
2063	1	2063
2064	1	2064
2065	1	2065
2066	1	2066
2067	1	2067
2068	1	2068
2069	1	2069
2070	1	2070
2071	1	2071
2072	1	2072
2073	1	2073
2074	1	2074
2075	1	2075
2076	1	2076
2077	1	2077
2078	1	2078
2079	1	2079
2080	1	2080
2081	1	2081
2082	1	2082
2083	1	2083
2084	1	2084
2085	1	2085
2086	1	2086
2087	1	2087
2088	1	2088
2089	1	2089
2090	1	2090
2091	1	2091
2092	1	2092
2093	1	2093
2094	1	2094
2095	1	2095
2096	1	2096
2097	1	2097
2098	1	2098
2099	1	2099
2100	1	2100
2101	1	2101
2102	1	2102
2103	1	2103
2104	1	2104
2105	1	2105
2106	1	2106
2107	1	2107
2108	1	2108
2109	1	2109
2110	1	2110
2111	1	2111
2112	1	2112
2113	1	2113
2114	1	2114
2115	1	2115
2116	1	2116
2117	1	2117
2118	1	2118
2119	1	2119
2120	1	2120
2121	1	2121
2122	1	2122
2123	1	2123
2124	1	2124
2125	1	2125
2126	1	2126
2127	1	2127
2128	1	2128
2129	1	2129
2130	1	2130
2131	1	2131
2132	1	2132
2133	1	2133
2134	1	2134
2135	1	2135
2136	1	2136
2137	1	2137
2138	1	2138
2139	1	2139
2140	1	2140
2141	1	2141
2142	1	2142
2143	1	2143
2144	1	2144
2145	1	2145
2146	1	2146
2147	1	2147
2148	1	2148
2149	1	2149
2150	1	2150
2151	1	2151
2152	1	2152
2153	1	2153
2154	1	2154
2155	1	2155
2156	1	2156
2157	1	2157
2158	1	2158
2159	1	2159
2160	1	2160
2161	1	2161
2162	1	2162
2163	1	2163
2164	1	2164
2165	1	2165
2166	1	2166
2167	1	2167
2168	1	2168
2169	1	2169
2170	1	2170
2171	1	2171
2172	1	2172
2173	1	2173
2174	1	2174
2175	1	2175
2176	1	2176
2177	1	2177
2178	1	2178
2179	1	2179
2180	1	2180
2181	1	2181
2182	1	2182
2183	1	2183
2184	1	2184
2185	1	2185
2186	1	2186
2187	1	2187
2188	1	2188
2189	1	2189
2190	1	2190
2191	1	2191
2192	1	2192
2193	1	2193
2194	1	2194
2195	1	2195
2196	1	2196
2197	1	2197
2198	1	2198
2199	1	2199
2200	1	2200
2201	1	2201
2202	1	2202
2203	1	2203
2204	1	2204
2205	1	2205
2206	1	2206
2207	1	2207
2208	1	2208
2209	1	2209
2210	1	2210
2211	1	2211
2212	1	2212
2213	1	2213
2214	1	2214
2215	1	2215
2216	1	2216
2217	1	2217
2218	1	2218
2219	1	2219
2220	1	2220
2221	1	2221
2222	1	2222
2223	1	2223
2224	1	2224
2225	1	2225
2226	1	2226
2227	1	2227
2228	1	2228
2229	1	2229
2230	1	2230
2231	1	2231
2232	1	2232
2233	1	2233
2234	1	2234
2235	1	2235
2236	1	2236
2237	1	2237
2238	1	2238
2239	1	2239
2240	1	2240
2241	1	2241
2242	1	2242
2243	1	2243
2244	1	2244
2245	1	2245
2246	1	2246
2247	1	2247
2248	1	2248
2249	1	2249
2250	1	2250
2251	1	2251
2252	1	2252
2253	1	2253
2254	1	2254
2255	1	2255
2256	1	2256
2257	1	2257
2258	1	2258
2259	1	2259
2260	1	2260
2261	1	2261
2262	1	2262
2263	1	2263
2264	1	2264
2265	1	2265
2266	1	2266
2267	1	2267
2268	1	2268
2269	1	2269
2270	1	2270
2271	1	2271
2272	1	2272
2273	1	2273
2274	1	2274
2275	1	2275
2276	1	2276
2277	1	2277
2278	1	2278
2279	1	2279
2280	1	2280
2281	1	2281
2282	1	2282
2283	1	2283
2284	1	2284
2285	1	2285
2286	1	2286
2287	1	2287
2288	1	2288
2289	1	2289
2290	1	2290
2291	1	2291
2292	1	2292
2293	1	2293
2294	1	2294
2295	1	2295
2296	1	2296
2297	1	2297
2298	1	2298
2299	1	2299
2300	1	2300
2301	1	2301
2302	1	2302
2303	1	2303
2304	1	2304
2305	1	2305
2306	1	2306
2307	1	2307
2308	1	2308
2309	1	2309
2310	1	2310
2311	1	2311
2312	1	2312
2313	1	2313
2314	1	2314
2315	1	2315
2316	1	2316
2317	1	2317
2318	1	2318
2319	1	2319
2320	1	2320
2321	1	2321
2322	1	2322
2323	1	2323
2324	1	2324
2325	1	2325
2326	1	2326
2327	1	2327
2328	1	2328
2329	1	2329
2330	1	2330
2331	1	2331
2332	1	2332
2333	1	2333
2334	1	2334
2335	1	2335
2336	1	2336
2337	1	2337
2338	1	2338
2339	1	2339
2340	1	2340
2341	1	2341
2342	1	2342
2343	1	2343
2344	1	2344
2345	1	2345
2346	1	2346
2347	1	2347
2348	1	2348
2349	1	2349
2350	1	2350
2351	1	2351
2352	1	2352
2353	1	2353
2354	1	2354
2355	1	2355
2356	1	2356
2357	1	2357
2358	1	2358
2359	1	2359
2360	1	2360
2361	1	2361
2362	1	2362
2363	1	2363
2364	1	2364
2365	1	2365
2366	1	2366
2367	1	2367
2368	1	2368
2369	1	2369
2370	1	2370
2371	1	2371
2372	1	2372
2373	1	2373
2374	1	2374
2375	1	2375
2376	1	2376
2377	1	2377
2378	1	2378
2379	1	2379
2380	1	2380
2381	1	2381
2382	1	2382
2383	1	2383
2384	1	2384
2385	1	2385
2386	1	2386
2387	1	2387
2388	1	2388
2389	1	2389
2390	1	2390
2391	1	2391
2392	1	2392
2393	1	2393
2394	1	2394
2395	1	2395
2396	1	2396
2397	1	2397
2398	1	2398
2399	1	2399
2400	1	2400
2401	1	2401
2402	1	2402
2403	1	2403
2404	1	2404
2405	1	2405
2406	1	2406
2407	1	2407
2408	1	2408
2409	1	2409
2410	1	2410
2411	1	2411
2412	1	2412
2413	1	2413
2414	1	2414
2415	1	2415
2416	1	2416
2417	1	2417
2418	1	2418
2419	1	2419
2420	1	2420
2421	1	2421
2422	1	2422
2423	1	2423
2424	1	2424
2425	1	2425
2426	1	2426
2427	1	2427
2428	1	2428
2429	1	2429
2430	1	2430
2431	1	2431
2432	1	2432
2433	1	2433
2434	1	2434
2435	1	2435
2436	1	2436
2437	1	2437
2438	1	2438
2439	1	2439
2440	1	2440
2441	1	2441
2442	1	2442
2443	1	2443
2444	1	2444
2445	1	2445
2446	1	2446
2447	1	2447
2448	1	2448
2449	1	2449
2450	1	2450
2451	1	2451
2452	1	2452
2453	1	2453
2454	1	2454
2455	1	2455
2456	1	2456
2457	1	2457
2458	1	2458
2459	1	2459
2460	1	2460
2461	1	2461
2462	1	2462
2463	1	2463
2464	1	2464
2465	1	2465
2466	1	2466
2467	1	2467
2468	1	2468
2469	1	2469
2470	1	2470
2471	1	2471
2472	1	2472
2473	1	2473
2474	1	2474
2475	1	2475
2476	1	2476
2477	1	2477
2478	1	2478
2479	1	2479
2480	1	2480
2481	1	2481
2482	1	2482
2483	1	2483
2484	1	2484
2485	1	2485
2486	1	2486
2487	1	2487
2488	1	2488
2489	1	2489
2490	1	2490
2491	1	2491
2492	1	2492
2493	1	2493
2494	1	2494
2495	1	2495
2496	1	2496
2497	1	2497
2498	1	2498
2499	1	2499
2500	1	2500
2501	1	2501
2502	1	2502
2503	1	2503
2504	1	2504
2505	1	2505
2506	1	2506
2507	1	2507
2508	1	2508
2509	1	2509
2510	1	2510
2511	1	2511
2512	1	2512
2513	1	2513
2514	1	2514
2515	1	2515
2516	1	2516
2517	1	2517
2518	1	2518
2519	1	2519
2520	1	2520
2521	1	2521
2522	1	2522
2523	1	2523
2524	1	2524
2525	1	2525
2526	1	2526
2527	1	2527
2528	1	2528
2529	1	2529
2530	1	2530
2531	1	2531
2532	1	2532
2533	1	2533
2534	1	2534
2535	1	2535
2536	1	2536
2537	1	2537
2538	1	2538
2539	1	2539
2540	1	2540
2541	1	2541
2542	1	2542
2543	1	2543
2544	1	2544
2545	1	2545
2546	1	2546
2547	1	2547
2548	1	2548
2549	1	2549
2550	1	2550
2551	1	2551
2552	1	2552
2553	1	2553
2554	1	2554
2555	1	2555
2556	1	2556
2557	1	2557
2558	1	2558
2559	1	2559
2560	1	2560
2561	1	2561
2562	1	2562
2563	1	2563
2564	1	2564
2565	1	2565
2566	1	2566
2567	1	2567
2568	1	2568
2569	1	2569
2570	1	2570
2571	1	2571
2572	1	2572
2573	1	2573
2574	1	2574
2575	1	2575
2576	1	2576
2577	1	2577
2578	1	2578
2579	1	2579
2580	1	2580
2581	1	2581
2582	1	2582
2583	1	2583
2584	1	2584
2585	1	2585
2586	1	2586
2587	1	2587
2588	1	2588
2589	1	2589
2590	1	2590
2591	1	2591
2592	1	2592
2593	1	2593
2594	1	2594
2595	1	2595
2596	1	2596
2597	1	2597
2598	1	2598
2599	1	2599
2600	1	2600
2601	1	2601
2602	1	2602
2603	1	2603
2604	1	2604
2605	1	2605
2606	1	2606
2607	1	2607
2608	1	2608
2609	1	2609
2610	1	2610
2611	1	2611
2612	1	2612
2613	1	2613
2614	1	2614
2615	1	2615
2616	1	2616
2617	1	2617
2618	1	2618
2619	1	2619
2620	1	2620
2621	1	2621
2622	1	2622
2623	1	2623
2624	1	2624
2625	1	2625
2626	1	2626
2627	1	2627
2628	1	2628
2629	1	2629
2630	1	2630
2631	1	2631
2632	1	2632
2633	1	2633
2634	1	2634
2635	1	2635
2636	1	2636
2637	1	2637
2638	1	2638
2639	1	2639
2640	1	2640
2641	1	2641
2642	1	2642
2643	1	2643
2644	1	2644
2645	1	2645
2646	1	2646
2647	1	2647
2648	1	2648
2649	1	2649
2650	1	2650
2651	1	2651
2652	1	2652
2653	1	2653
2654	1	2654
2655	1	2655
2656	1	2656
2657	1	2657
2658	1	2658
2659	1	2659
2660	1	2660
2661	1	2661
2662	1	2662
2663	1	2663
2664	1	2664
2665	1	2665
2666	1	2666
2667	1	2667
2668	1	2668
2669	1	2669
2670	1	2670
2671	1	2671
2672	1	2672
2673	1	2673
2674	1	2674
2675	1	2675
2676	1	2676
2677	1	2677
2678	1	2678
2679	1	2679
2680	1	2680
2681	1	2681
2682	1	2682
2683	1	2683
2684	1	2684
2685	1	2685
2686	1	2686
2687	1	2687
2688	1	2688
2689	1	2689
2690	1	2690
2691	1	2691
2692	1	2692
2693	1	2693
2694	1	2694
2695	1	2695
2696	1	2696
2697	1	2697
2698	1	2698
2699	1	2699
2700	1	2700
2701	1	2701
2702	1	2702
2703	1	2703
2704	1	2704
2705	1	2705
2706	1	2706
2707	1	2707
2708	1	2708
2709	1	2709
2710	1	2710
2711	1	2711
2712	1	2712
2713	1	2713
2714	1	2714
2715	1	2715
2716	1	2716
2717	1	2717
2718	1	2718
2719	1	2719
2720	1	2720
2721	1	2721
2722	1	2722
2723	1	2723
2724	1	2724
2725	1	2725
2726	1	2726
2727	1	2727
2728	1	2728
2729	1	2729
2730	1	2730
2731	1	2731
2732	1	2732
2733	1	2733
2734	1	2734
2735	1	2735
2736	1	2736
2737	1	2737
2738	1	2738
2739	1	2739
2740	1	2740
2741	1	2741
2742	1	2742
2743	1	2743
2744	1	2744
2745	1	2745
2746	1	2746
2747	1	2747
2748	1	2748
2749	1	2749
2750	1	2750
2751	1	2751
2752	1	2752
2753	1	2753
2754	1	2754
2755	1	2755
2756	1	2756
2757	1	2757
2758	1	2758
2759	1	2759
2760	1	2760
2761	1	2761
2762	1	2762
2763	1	2763
2764	1	2764
2765	1	2765
2766	1	2766
2767	1	2767
2768	1	2768
2769	1	2769
2770	1	2770
2771	1	2771
2772	1	2772
2773	1	2773
2774	1	2774
2775	1	2775
2776	1	2776
2777	1	2777
2778	1	2778
2779	1	2779
2780	1	2780
2781	1	2781
2782	1	2782
2783	1	2783
2784	1	2784
2785	1	2785
2786	1	2786
2787	1	2787
2788	1	2788
2789	1	2789
2790	1	2790
2791	1	2791
2792	1	2792
2793	1	2793
2794	1	2794
2795	1	2795
2796	1	2796
2797	1	2797
2798	1	2798
2799	1	2799
2800	1	2800
2801	1	2801
2802	1	2802
2803	1	2803
2804	1	2804
2805	1	2805
2806	1	2806
2807	1	2807
2808	1	2808
2809	1	2809
2810	1	2810
2811	1	2811
2812	1	2812
2813	1	2813
2814	1	2814
2815	1	2815
2816	1	2816
2817	1	2817
2818	1	2818
2819	1	2926
2820	1	2927
2821	1	2928
2822	1	2929
2823	1	2930
2824	1	2931
2825	1	2932
2826	1	2933
2827	1	2934
2828	1	2935
2829	1	2936
2830	1	2937
2831	1	2938
2832	1	2939
2833	1	2940
2834	1	2941
2835	1	2942
2836	1	2943
2837	1	2944
2838	1	2945
2839	1	2946
2840	1	2947
2841	1	2948
2842	1	2949
2843	1	2950
2844	1	2951
2845	1	2952
2846	1	2953
2847	1	2954
2848	1	2955
2849	1	2956
2850	1	2957
2851	1	2958
2852	1	2959
2853	1	2960
2854	1	2961
2855	1	2962
2856	1	2963
2857	1	2964
2858	1	2965
2859	1	2966
2860	1	2967
2861	1	2968
2862	1	2969
2863	1	2970
2864	1	2971
2865	1	2972
2866	1	2973
2867	1	2974
2868	1	2975
2869	1	2976
2870	1	2977
2871	1	2978
2872	1	2979
2873	1	2980
2874	1	2981
2875	1	2982
2876	1	2983
2877	1	2984
2878	1	2985
2879	1	2986
2880	1	2987
2881	1	2988
2882	1	2989
2883	1	2990
2884	1	2991
2885	1	2992
2886	1	2993
2887	1	2994
2888	1	2995
2889	1	2996
2890	1	2997
2891	1	2998
2892	1	2999
2893	1	3000
2894	1	3001
2895	1	3002
2896	1	3003
2897	1	3004
2898	1	3005
2899	1	3006
2900	1	3007
2901	1	3008
2902	1	3009
2903	1	3010
2904	1	3011
2905	1	3012
2906	1	3013
2907	1	3014
2908	1	3015
2909	1	3016
2910	1	3017
2911	1	3018
2912	1	3019
2913	1	3020
2914	1	3021
2915	1	3022
2916	1	3023
2917	1	3024
2918	1	3025
2919	1	3026
2920	1	3027
2921	1	3028
2922	1	3029
2923	1	3030
2924	1	3031
2925	1	3032
2926	1	3033
2927	1	3034
2928	1	3035
2929	1	3036
2930	1	3037
2931	1	3038
2932	1	3039
2933	1	3040
2934	1	3041
2935	1	3042
2936	1	3043
2937	1	3044
2938	1	3045
2939	1	3046
2940	1	3047
2941	1	3048
2942	1	3049
2943	1	3050
2944	1	3051
2945	1	3052
2946	1	3053
2947	1	3054
2948	1	3055
2949	1	3056
2950	1	3057
2951	1	3058
2952	1	3059
2953	1	3060
2954	1	3061
2955	1	3062
2956	1	3063
2957	1	3064
2958	1	3065
2959	1	3066
2960	1	3067
2961	1	3068
2962	1	3069
2963	1	3070
2964	1	3071
2965	1	3072
2966	1	3073
2967	1	3074
2968	1	3075
2969	1	3076
2970	1	3077
2971	1	3078
2972	1	3079
2973	1	3080
2974	1	3081
2975	1	3082
2976	1	3083
2977	1	3084
2978	1	3085
2979	1	3086
2980	1	3087
2981	1	3088
2982	1	3089
2983	1	3090
2984	1	3091
2985	1	3092
2986	1	3093
2987	1	3094
2988	1	3095
2989	1	3096
2990	1	3097
2991	1	3098
2992	1	3099
2993	1	3100
2994	1	3101
2995	1	3102
2996	1	3103
2997	1	3104
2998	1	3105
2999	1	3106
3000	1	3107
3001	1	3108
3002	1	3109
3003	1	3110
3004	1	3111
3005	1	3112
3006	1	3113
3007	1	3114
3008	1	3115
3009	1	3116
3010	1	3117
3011	1	3118
3012	1	3119
3013	1	3120
3014	1	3121
3015	1	3122
3016	1	3123
3017	1	3124
3018	1	3125
3019	1	3126
3020	1	3127
3021	1	3128
3022	1	3129
3023	1	3130
3024	1	3131
3025	1	3132
3026	1	3133
3027	1	3134
3028	1	3135
3029	1	3136
3030	1	3137
3031	1	3138
3032	1	3139
3033	1	3140
3034	1	3141
3035	1	3142
3036	1	3143
3037	1	3144
3038	1	3145
3039	1	3146
3040	1	3147
3041	1	3148
3042	1	3149
3043	1	3150
3044	1	3151
3045	1	3152
3046	1	3153
3047	1	3154
3048	1	3155
3049	1	3156
3050	1	3157
3051	1	3158
3052	1	3159
3053	1	3160
3054	1	3161
3055	1	3162
3056	1	3163
3057	1	3164
3058	1	3225
3059	1	3253
3060	1	3254
3061	1	3255
3062	1	3256
3063	1	3257
3064	1	3258
3065	1	3259
3066	1	3260
3067	1	3261
3068	1	3262
3069	1	3263
3070	1	3264
3071	1	3265
3072	1	3266
3073	1	3267
3074	1	3268
3075	1	3269
3076	1	3270
3077	1	3271
3078	1	3272
3079	1	3273
3080	1	3274
3081	1	3275
3082	1	3276
3083	1	3277
3084	1	3278
3085	1	3279
3086	1	3280
3087	1	3281
3088	1	3282
3089	1	3283
3090	1	3284
3091	1	3285
3092	1	3286
3093	1	3287
3094	1	3288
3095	1	3289
3096	1	3290
3097	1	3291
3098	1	3292
3099	1	3293
3100	1	3294
3101	1	3295
3102	1	3296
3103	1	3297
3104	1	3298
3105	1	3299
3106	1	3300
3107	1	3301
3108	1	3302
3109	1	3303
3110	1	3304
3111	1	3305
3112	1	3306
3113	1	3307
3114	1	3308
3115	1	3309
3116	1	3310
3117	1	3311
3118	1	3312
3119	1	3313
3120	1	3314
3121	1	3315
3122	1	3316
3123	1	3317
3124	1	3318
3125	1	3319
3126	1	3320
3127	1	3321
3128	1	3322
3129	1	3323
3130	1	3324
3131	1	3325
3132	1	3326
3133	1	3327
3134	1	3328
3135	1	3329
3136	1	3330
3137	1	3331
3138	1	3332
3139	1	3333
3140	1	3334
3141	1	3335
3142	1	3336
3143	1	3349
3144	1	3350
3145	1	3351
3146	1	3352
3147	1	3353
3148	1	3354
3149	1	3355
3150	1	3356
3151	1	3357
3152	1	3358
3153	1	3359
3154	1	3365
3155	1	3366
3156	1	3367
3157	1	3368
3158	1	3369
3159	1	3370
3160	1	3371
3161	1	3372
3162	1	3373
3163	1	3374
3164	1	3375
3165	1	3376
3166	1	3377
3167	1	3378
3168	1	3379
3169	1	3380
3170	1	3381
3171	1	3382
3172	1	3383
3173	1	3384
3174	1	3385
3175	1	3386
3176	1	3387
3177	1	3388
3178	1	3389
3179	1	3390
3180	1	3391
3181	1	3392
3182	1	3393
3183	1	3394
3184	1	3395
3185	1	3396
3186	1	3397
3187	1	3398
3188	1	3399
3189	1	3400
3190	1	3401
3191	1	3402
3192	1	3403
3193	1	3404
3194	1	3405
3195	1	3406
3196	1	3407
3197	1	3408
3198	1	3409
3199	1	3410
3200	1	3411
3201	1	3412
3202	1	3413
3203	1	3414
3204	1	3415
3205	1	3416
3206	1	3417
3207	1	3418
3208	1	3419
3209	1	3420
3210	1	3421
3211	1	3422
3212	1	3423
3213	1	3424
3214	1	3425
3215	1	3426
3216	1	3427
3217	1	3430
3218	1	3431
3219	1	3432
3220	1	3433
3221	1	3434
3222	1	3435
3223	1	3436
3224	1	3437
3225	1	3438
3226	1	3439
3227	1	3440
3228	1	3441
3229	1	3442
3230	1	3443
3231	1	3444
3232	1	3445
3233	1	3446
3234	1	3447
3235	1	3448
3236	1	3449
3237	1	3450
3238	1	3451
3239	1	3452
3240	1	3453
3241	1	3454
3242	1	3455
3243	1	3456
3244	1	3457
3245	1	3458
3246	1	3459
3247	1	3460
3248	1	3461
3249	1	3462
3250	1	3463
3251	1	3464
3252	1	3465
3253	1	3466
3254	1	3467
3255	1	3468
3256	1	3469
3257	1	3470
3258	1	3471
3259	1	3472
3260	1	3473
3261	1	3474
3262	1	3475
3263	1	3476
3264	1	3477
3265	1	3478
3266	1	3479
3267	1	3480
3268	1	3481
3269	1	3482
3270	1	3483
3271	1	3484
3272	1	3485
3273	1	3486
3274	1	3487
3275	1	3488
3276	1	3489
3277	1	3490
3278	1	3491
3279	1	3492
3280	1	3493
3281	1	3494
3282	1	3495
3283	1	3496
3284	1	3497
3285	1	3498
3286	1	3499
3287	1	3500
3288	1	3501
3289	1	3502
3290	1	3503
3291	3	2819
3292	3	2820
3293	3	2821
3294	3	2822
3295	3	2823
3296	3	2824
3297	3	2825
3298	3	2826
3299	3	2827
3300	3	2828
3301	3	2829
3302	3	2830
3303	3	2831
3304	3	2832
3305	3	2833
3306	3	2834
3307	3	2835
3308	3	2836
3309	3	2837
3310	3	2838
3311	3	2839
3312	3	2840
3313	3	2841
3314	3	2842
3315	3	2843
3316	3	2844
3317	3	2845
3318	3	2846
3319	3	2847
3320	3	2848
3321	3	2849
3322	3	2850
3323	3	2851
3324	3	2852
3325	3	2853
3326	3	2854
3327	3	2855
3328	3	2856
3329	3	2857
3330	3	2858
3331	3	2859
3332	3	2860
3333	3	2861
3334	3	2862
3335	3	2863
3336	3	2864
3337	3	2865
3338	3	2866
3339	3	2867
3340	3	2868
3341	3	2869
3342	3	2870
3343	3	2871
3344	3	2872
3345	3	2873
3346	3	2874
3347	3	2875
3348	3	2876
3349	3	2877
3350	3	2878
3351	3	2879
3352	3	2880
3353	3	2881
3354	3	2882
3355	3	2883
3356	3	2884
3357	3	2885
3358	3	2886
3359	3	2887
3360	3	2888
3361	3	2889
3362	3	2890
3363	3	2891
3364	3	2892
3365	3	2893
3366	3	2894
3367	3	2895
3368	3	2896
3369	3	2897
3370	3	2898
3371	3	2899
3372	3	2900
3373	3	2901
3374	3	2902
3375	3	2903
3376	3	2904
3377	3	2905
3378	3	2906
3379	3	2907
3380	3	2908
3381	3	2909
3382	3	2910
3383	3	2911
3384	3	2912
3385	3	2913
3386	3	2914
3387	3	2915
3388	3	2916
3389	3	2917
3390	3	2918
3391	3	2919
3392	3	2920
3393	3	2921
3394	3	2922
3395	3	2923
3396	3	2924
3397	3	2925
3398	3	3165
3399	3	3166
3400	3	3167
3401	3	3168
3402	3	3169
3403	3	3170
3404	3	3171
3405	3	3172
3406	3	3173
3407	3	3174
3408	3	3175
3409	3	3176
3410	3	3177
3411	3	3178
3412	3	3179
3413	3	3180
3414	3	3181
3415	3	3182
3416	3	3183
3417	3	3184
3418	3	3185
3419	3	3186
3420	3	3187
3421	3	3188
3422	3	3189
3423	3	3190
3424	3	3191
3425	3	3192
3426	3	3193
3427	3	3194
3428	3	3195
3429	3	3196
3430	3	3197
3431	3	3198
3432	3	3199
3433	3	3200
3434	3	3201
3435	3	3202
3436	3	3203
3437	3	3204
3438	3	3205
3439	3	3206
3440	3	3207
3441	3	3208
3442	3	3209
3443	3	3210
3444	3	3211
3445	3	3212
3446	3	3213
3447	3	3214
3448	3	3215
3449	3	3216
3450	3	3217
3451	3	3218
3452	3	3219
3453	3	3220
3454	3	3221
3455	3	3222
3456	3	3223
3457	3	3224
3458	3	3226
3459	3	3227
3460	3	3228
3461	3	3229
3462	3	3230
3463	3	3231
3464	3	3232
3465	3	3233
3466	3	3234
3467	3	3235
3468	3	3236
3469	3	3237
3470	3	3238
3471	3	3239
3472	3	3240
3473	3	3241
3474	3	3242
3475	3	3243
3476	3	3244
3477	3	3245
3478	3	3246
3479	3	3247
3480	3	3248
3481	3	3249
3482	3	3250
3483	3	3251
3484	3	3252
3485	3	3337
3486	3	3338
3487	3	3339
3488	3	3340
3489	3	3341
3490	3	3342
3491	3	3343
3492	3	3344
3493	3	3345
3494	3	3346
3495	3	3347
3496	3	3348
3497	3	3360
3498	3	3361
3499	3	3362
3500	3	3363
3501	3	3364
3502	3	3428
3503	3	3429
3504	5	3
3505	5	4
3506	5	5
3507	5	23
3508	5	24
3509	5	25
3510	5	26
3511	5	27
3512	5	28
3513	5	29
3514	5	30
3515	5	31
3516	5	32
3517	5	33
3518	5	34
3519	5	35
3520	5	36
3521	5	37
3522	5	38
3523	5	39
3524	5	40
3525	5	41
3526	5	42
3527	5	43
3528	5	44
3529	5	45
3530	5	46
3531	5	47
3532	5	48
3533	5	49
3534	5	50
3535	5	51
3536	5	52
3537	5	53
3538	5	54
3539	5	55
3540	5	56
3541	5	57
3542	5	58
3543	5	59
3544	5	60
3545	5	61
3546	5	62
3547	5	77
3548	5	78
3549	5	79
3550	5	80
3551	5	81
3552	5	82
3553	5	83
3554	5	84
3555	5	111
3556	5	112
3557	5	113
3558	5	114
3559	5	115
3560	5	116
3561	5	117
3562	5	118
3563	5	119
3564	5	120
3565	5	121
3566	5	122
3567	5	166
3568	5	167
3569	5	168
3570	5	169
3571	5	170
3572	5	171
3573	5	172
3574	5	173
3575	5	174
3576	5	175
3577	5	176
3578	5	177
3579	5	178
3580	5	179
3581	5	180
3582	5	181
3583	5	182
3584	5	183
3585	5	184
3586	5	185
3587	5	186
3588	5	187
3589	5	188
3590	5	189
3591	5	190
3592	5	191
3593	5	192
3594	5	193
3595	5	205
3596	5	206
3597	5	207
3598	5	208
3599	5	209
3600	5	210
3601	5	211
3602	5	212
3603	5	213
3604	5	214
3605	5	215
3606	5	216
3607	5	217
3608	5	218
3609	5	219
3610	5	220
3611	5	221
3612	5	222
3613	5	246
3614	5	247
3615	5	248
3616	5	249
3617	5	250
3618	5	251
3619	5	252
3620	5	253
3621	5	254
3622	5	255
3623	5	256
3624	5	257
3625	5	258
3626	5	259
3627	5	260
3628	5	261
3629	5	262
3630	5	263
3631	5	264
3632	5	265
3633	5	266
3634	5	267
3635	5	268
3636	5	269
3637	5	270
3638	5	271
3639	5	272
3640	5	273
3641	5	274
3642	5	275
3643	5	276
3644	5	277
3645	5	278
3646	5	279
3647	5	280
3648	5	281
3649	5	299
3650	5	300
3651	5	301
3652	5	302
3653	5	303
3654	5	304
3655	5	305
3656	5	306
3657	5	307
3658	5	308
3659	5	309
3660	5	310
3661	5	311
3662	5	312
3663	5	337
3664	5	338
3665	5	339
3666	5	340
3667	5	341
3668	5	342
3669	5	343
3670	5	344
3671	5	345
3672	5	346
3673	5	347
3674	5	348
3675	5	349
3676	5	350
3677	5	408
3678	5	409
3679	5	410
3680	5	411
3681	5	412
3682	5	413
3683	5	414
3684	5	415
3685	5	416
3686	5	417
3687	5	418
3688	5	424
3689	5	428
3690	5	430
3691	5	434
3692	5	436
3693	5	437
3694	5	438
3695	5	439
3696	5	440
3697	5	441
3698	5	442
3699	5	443
3700	5	444
3701	5	445
3702	5	446
3703	5	447
3704	5	448
3705	5	449
3706	5	450
3707	5	451
3708	5	453
3709	5	454
3710	5	455
3711	5	456
3712	5	457
3713	5	458
3714	5	459
3715	5	460
3716	5	461
3717	5	462
3718	5	463
3719	5	464
3720	5	465
3721	5	466
3722	5	467
3723	5	470
3724	5	471
3725	5	472
3726	5	473
3727	5	474
3728	5	475
3729	5	476
3730	5	477
3731	5	478
3732	5	479
3733	5	480
3734	5	481
3735	5	482
3736	5	483
3737	5	484
3738	5	501
3739	5	502
3740	5	503
3741	5	504
3742	5	505
3743	5	506
3744	5	507
3745	5	508
3746	5	509
3747	5	510
3748	5	511
3749	5	512
3750	5	513
3751	5	514
3752	5	515
3753	5	516
3754	5	517
3755	5	518
3756	5	519
3757	5	520
3758	5	521
3759	5	522
3760	5	523
3761	5	524
3762	5	525
3763	5	526
3764	5	527
3765	5	528
3766	5	570
3767	5	571
3768	5	572
3769	5	573
3770	5	574
3771	5	575
3772	5	576
3773	5	577
3774	5	578
3775	5	579
3776	5	580
3777	5	581
3778	5	582
3779	5	583
3780	5	584
3781	5	585
3782	5	586
3783	5	587
3784	5	588
3785	5	589
3786	5	590
3787	5	591
3788	5	592
3789	5	593
3790	5	594
3791	5	595
3792	5	596
3793	5	768
3794	5	769
3795	5	770
3796	5	771
3797	5	772
3798	5	773
3799	5	774
3800	5	775
3801	5	776
3802	5	777
3803	5	778
3804	5	786
3805	5	787
3806	5	788
3807	5	789
3808	5	790
3809	5	791
3810	5	792
3811	5	793
3812	5	794
3813	5	795
3814	5	796
3815	5	797
3816	5	798
3817	5	799
3818	5	800
3819	5	801
3820	5	802
3821	5	803
3822	5	804
3823	5	805
3824	5	806
3825	5	816
3826	5	817
3827	5	818
3828	5	819
3829	5	820
3830	5	821
3831	5	822
3832	5	823
3833	5	824
3834	5	825
3835	5	826
3836	5	827
3837	5	828
3838	5	829
3839	5	830
3840	5	831
3841	5	832
3842	5	833
3843	5	834
3844	5	835
3845	5	836
3846	5	837
3847	5	838
3848	5	839
3849	5	840
3850	5	841
3851	5	851
3852	5	852
3853	5	853
3854	5	854
3855	5	855
3856	5	856
3857	5	857
3858	5	858
3859	5	859
3860	5	860
3861	5	861
3862	5	862
3863	5	863
3864	5	864
3865	5	865
3866	5	866
3867	5	867
3868	5	868
3869	5	869
3870	5	870
3871	5	871
3872	5	872
3873	5	873
3874	5	874
3875	5	875
3876	5	876
3877	5	891
3878	5	892
3879	5	893
3880	5	894
3881	5	895
3882	5	896
3883	5	897
3884	5	898
3885	5	899
3886	5	900
3887	5	901
3888	5	902
3889	5	903
3890	5	904
3891	5	905
3892	5	906
3893	5	907
3894	5	908
3895	5	909
3896	5	910
3897	5	911
3898	5	912
3899	5	913
3900	5	914
3901	5	915
3902	5	916
3903	5	917
3904	5	918
3905	5	919
3906	5	920
3907	5	921
3908	5	922
3909	5	923
3910	5	924
3911	5	925
3912	5	926
3913	5	927
3914	5	928
3915	5	929
3916	5	930
3917	5	931
3918	5	932
3919	5	933
3920	5	934
3921	5	935
3922	5	936
3923	5	937
3924	5	938
3925	5	939
3926	5	940
3927	5	941
3928	5	942
3929	5	943
3930	5	944
3931	5	945
3932	5	946
3933	5	947
3934	5	948
3935	5	949
3936	5	950
3937	5	951
3938	5	952
3939	5	953
3940	5	954
3941	5	955
3942	5	956
3943	5	957
3944	5	958
3945	5	959
3946	5	960
3947	5	961
3948	5	962
3949	5	963
3950	5	976
3951	5	977
3952	5	978
3953	5	979
3954	5	984
3955	5	1020
3956	5	1021
3957	5	1022
3958	5	1023
3959	5	1024
3960	5	1025
3961	5	1026
3962	5	1027
3963	5	1028
3964	5	1029
3965	5	1030
3966	5	1031
3967	5	1032
3968	5	1057
3969	5	1058
3970	5	1059
3971	5	1060
3972	5	1061
3973	5	1062
3974	5	1063
3975	5	1064
3976	5	1065
3977	5	1066
3978	5	1067
3979	5	1068
3980	5	1069
3981	5	1070
3982	5	1071
3983	5	1072
3984	5	1087
3985	5	1088
3986	5	1089
3987	5	1090
3988	5	1091
3989	5	1092
3990	5	1093
3991	5	1094
3992	5	1095
3993	5	1096
3994	5	1097
3995	5	1098
3996	5	1099
3997	5	1100
3998	5	1101
3999	5	1105
4000	5	1106
4001	5	1107
4002	5	1108
4003	5	1109
4004	5	1110
4005	5	1111
4006	5	1112
4007	5	1113
4008	5	1114
4009	5	1115
4010	5	1116
4011	5	1117
4012	5	1118
4013	5	1119
4014	5	1120
4015	5	1158
4016	5	1159
4017	5	1160
4018	5	1161
4019	5	1162
4020	5	1163
4021	5	1164
4022	5	1165
4023	5	1166
4024	5	1167
4025	5	1168
4026	5	1169
4027	5	1170
4028	5	1171
4029	5	1172
4030	5	1173
4031	5	1174
4032	5	1175
4033	5	1176
4034	5	1177
4035	5	1178
4036	5	1179
4037	5	1180
4038	5	1181
4039	5	1182
4040	5	1183
4041	5	1184
4042	5	1185
4043	5	1186
4044	5	1187
4045	5	1188
4046	5	1189
4047	5	1190
4048	5	1191
4049	5	1192
4050	5	1193
4051	5	1194
4052	5	1195
4053	5	1196
4054	5	1197
4055	5	1198
4056	5	1199
4057	5	1200
4058	5	1212
4059	5	1213
4060	5	1214
4061	5	1215
4062	5	1216
4063	5	1217
4064	5	1218
4065	5	1219
4066	5	1220
4067	5	1221
4068	5	1222
4069	5	1223
4070	5	1224
4071	5	1225
4072	5	1226
4073	5	1227
4074	5	1228
4075	5	1229
4076	5	1230
4077	5	1231
4078	5	1232
4079	5	1233
4080	5	1234
4081	5	1256
4082	5	1257
4083	5	1258
4084	5	1259
4085	5	1260
4086	5	1261
4087	5	1262
4088	5	1263
4089	5	1264
4090	5	1265
4091	5	1266
4092	5	1267
4093	5	1305
4094	5	1306
4095	5	1307
4096	5	1308
4097	5	1309
4098	5	1310
4099	5	1311
4100	5	1312
4101	5	1313
4102	5	1314
4103	5	1315
4104	5	1316
4105	5	1317
4106	5	1318
4107	5	1319
4108	5	1320
4109	5	1321
4110	5	1322
4111	5	1323
4112	5	1324
4113	5	1325
4114	5	1326
4115	5	1327
4116	5	1328
4117	5	1329
4118	5	1330
4119	5	1331
4120	5	1332
4121	5	1333
4122	5	1334
4123	5	1395
4124	5	1396
4125	5	1397
4126	5	1398
4127	5	1399
4128	5	1400
4129	5	1401
4130	5	1402
4131	5	1403
4132	5	1404
4133	5	1405
4134	5	1406
4135	5	1407
4136	5	1408
4137	5	1409
4138	5	1410
4139	5	1411
4140	5	1412
4141	5	1413
4142	5	1414
4143	5	1415
4144	5	1416
4145	5	1417
4146	5	1418
4147	5	1419
4148	5	1420
4149	5	1421
4150	5	1422
4151	5	1423
4152	5	1424
4153	5	1425
4154	5	1426
4155	5	1427
4156	5	1428
4157	5	1429
4158	5	1430
4159	5	1431
4160	5	1432
4161	5	1433
4162	5	1434
4163	5	1435
4164	5	1436
4165	5	1437
4166	5	1438
4167	5	1439
4168	5	1440
4169	5	1441
4170	5	1442
4171	5	1443
4172	5	1444
4173	5	1445
4174	5	1446
4175	5	1447
4176	5	1448
4177	5	1449
4178	5	1450
4179	5	1451
4180	5	1452
4181	5	1453
4182	5	1454
4183	5	1455
4184	5	1456
4185	5	1457
4186	5	1458
4187	5	1459
4188	5	1460
4189	5	1461
4190	5	1462
4191	5	1463
4192	5	1464
4193	5	1465
4194	5	1496
4195	5	1497
4196	5	1498
4197	5	1499
4198	5	1500
4199	5	1501
4200	5	1502
4201	5	1503
4202	5	1504
4203	5	1505
4204	5	1520
4205	5	1521
4206	5	1522
4207	5	1523
4208	5	1524
4209	5	1525
4210	5	1526
4211	5	1527
4212	5	1528
4213	5	1529
4214	5	1530
4215	5	1531
4216	5	1557
4217	5	1562
4218	5	1563
4219	5	1564
4220	5	1565
4221	5	1566
4222	5	1567
4223	5	1568
4224	5	1569
4225	5	1570
4226	5	1571
4227	5	1572
4228	5	1573
4229	5	1574
4230	5	1575
4231	5	1576
4232	5	1577
4233	5	1578
4234	5	1579
4235	5	1580
4236	5	1581
4237	5	1582
4238	5	1583
4239	5	1584
4240	5	1585
4241	5	1586
4242	5	1671
4243	5	1672
4244	5	1673
4245	5	1674
4246	5	1675
4247	5	1676
4248	5	1677
4249	5	1678
4250	5	1679
4251	5	1680
4252	5	1681
4253	5	1682
4254	5	1683
4255	5	1684
4256	5	1685
4257	5	1686
4258	5	1687
4259	5	1688
4260	5	1689
4261	5	1690
4262	5	1691
4263	5	1692
4264	5	1693
4265	5	1694
4266	5	1695
4267	5	1696
4268	5	1697
4269	5	1698
4270	5	1699
4271	5	1700
4272	5	1701
4273	5	1801
4274	5	1802
4275	5	1803
4276	5	1804
4277	5	1805
4278	5	1806
4279	5	1807
4280	5	1808
4281	5	1809
4282	5	1810
4283	5	1811
4284	5	1812
4285	5	1813
4286	5	1814
4287	5	1815
4288	5	1816
4289	5	1817
4290	5	1818
4291	5	1819
4292	5	1820
4293	5	1821
4294	5	1822
4295	5	1823
4296	5	1824
4297	5	1825
4298	5	1826
4299	5	1827
4300	5	1828
4301	5	1839
4302	5	1840
4303	5	1841
4304	5	1842
4305	5	1843
4306	5	1844
4307	5	1845
4308	5	1846
4309	5	1847
4310	5	1848
4311	5	1849
4312	5	1850
4313	5	1851
4314	5	1852
4315	5	1861
4316	5	1862
4317	5	1863
4318	5	1864
4319	5	1865
4320	5	1866
4321	5	1867
4322	5	1868
4323	5	1869
4324	5	1870
4325	5	1871
4326	5	1872
4327	5	1873
4328	5	1969
4329	5	1970
4330	5	1971
4331	5	1972
4332	5	1973
4333	5	1974
4334	5	1975
4335	5	1976
4336	5	1977
4337	5	1978
4338	5	1979
4339	5	1980
4340	5	1981
4341	5	1982
4342	5	1983
4343	5	1984
4344	5	1985
4345	5	1986
4346	5	1987
4347	5	1988
4348	5	1989
4349	5	1990
4350	5	1991
4351	5	1992
4352	5	1993
4353	5	1994
4354	5	1995
4355	5	1996
4356	5	1997
4357	5	1998
4358	5	1999
4359	5	2000
4360	5	2001
4361	5	2002
4362	5	2003
4363	5	2004
4364	5	2005
4365	5	2006
4366	5	2007
4367	5	2008
4368	5	2009
4369	5	2010
4370	5	2011
4371	5	2012
4372	5	2013
4373	5	2014
4374	5	2044
4375	5	2045
4376	5	2046
4377	5	2047
4378	5	2048
4379	5	2049
4380	5	2050
4381	5	2051
4382	5	2052
4383	5	2053
4384	5	2054
4385	5	2055
4386	5	2056
4387	5	2057
4388	5	2058
4389	5	2059
4390	5	2060
4391	5	2061
4392	5	2062
4393	5	2063
4394	5	2064
4395	5	2113
4396	5	2114
4397	5	2115
4398	5	2116
4399	5	2117
4400	5	2118
4401	5	2119
4402	5	2120
4403	5	2121
4404	5	2122
4405	5	2123
4406	5	2124
4407	5	2125
4408	5	2126
4409	5	2127
4410	5	2128
4411	5	2129
4412	5	2130
4413	5	2131
4414	5	2132
4415	5	2133
4416	5	2134
4417	5	2135
4418	5	2136
4419	5	2137
4420	5	2138
4421	5	2149
4422	5	2150
4423	5	2151
4424	5	2152
4425	5	2153
4426	5	2154
4427	5	2155
4428	5	2156
4429	5	2157
4430	5	2158
4431	5	2159
4432	5	2160
4433	5	2161
4434	5	2162
4435	5	2163
4436	5	2164
4437	5	2193
4438	5	2194
4439	5	2195
4440	5	2196
4441	5	2197
4442	5	2198
4443	5	2199
4444	5	2200
4445	5	2201
4446	5	2202
4447	5	2203
4448	5	2204
4449	5	2205
4450	5	2206
4451	5	2207
4452	5	2208
4453	5	2209
4454	5	2210
4455	5	2211
4456	5	2212
4457	5	2213
4458	5	2214
4459	5	2215
4460	5	2238
4461	5	2239
4462	5	2240
4463	5	2241
4464	5	2242
4465	5	2243
4466	5	2244
4467	5	2245
4468	5	2246
4469	5	2247
4470	5	2248
4471	5	2249
4472	5	2250
4473	5	2251
4474	5	2252
4475	5	2253
4476	5	2282
4477	5	2283
4478	5	2284
4479	5	2296
4480	5	2297
4481	5	2298
4482	5	2299
4483	5	2300
4484	5	2301
4485	5	2302
4486	5	2303
4487	5	2304
4488	5	2305
4489	5	2306
4490	5	2307
4491	5	2308
4492	5	2309
4493	5	2310
4494	5	2311
4495	5	2312
4496	5	2313
4497	5	2314
4498	5	2315
4499	5	2316
4500	5	2317
4501	5	2334
4502	5	2335
4503	5	2336
4504	5	2337
4505	5	2338
4506	5	2339
4507	5	2340
4508	5	2341
4509	5	2342
4510	5	2343
4511	5	2358
4512	5	2359
4513	5	2360
4514	5	2361
4515	5	2362
4516	5	2363
4517	5	2364
4518	5	2365
4519	5	2366
4520	5	2367
4521	5	2368
4522	5	2369
4523	5	2370
4524	5	2371
4525	5	2372
4526	5	2373
4527	5	2374
4528	5	2391
4529	5	2392
4530	5	2393
4531	5	2394
4532	5	2395
4533	5	2396
4534	5	2397
4535	5	2398
4536	5	2399
4537	5	2400
4538	5	2401
4539	5	2402
4540	5	2403
4541	5	2404
4542	5	2405
4543	5	2406
4544	5	2407
4545	5	2408
4546	5	2409
4547	5	2410
4548	5	2411
4549	5	2412
4550	5	2413
4551	5	2414
4552	5	2415
4553	5	2416
4554	5	2417
4555	5	2418
4556	5	2419
4557	5	2420
4558	5	2421
4559	5	2422
4560	5	2423
4561	5	2424
4562	5	2425
4563	5	2426
4564	5	2427
4565	5	2434
4566	5	2435
4567	5	2436
4568	5	2437
4569	5	2438
4570	5	2439
4571	5	2440
4572	5	2441
4573	5	2442
4574	5	2443
4575	5	2444
4576	5	2445
4577	5	2446
4578	5	2447
4579	5	2448
4580	5	2461
4581	5	2462
4582	5	2463
4583	5	2464
4584	5	2465
4585	5	2466
4586	5	2467
4587	5	2468
4588	5	2469
4589	5	2470
4590	5	2471
4591	5	2476
4592	5	2478
4593	5	2484
4594	5	2488
4595	5	2489
4596	5	2490
4597	5	2491
4598	5	2492
4599	5	2493
4600	5	2494
4601	5	2495
4602	5	2496
4603	5	2497
4604	5	2498
4605	5	2499
4606	5	2500
4607	5	2501
4608	5	2506
4609	5	2511
4610	5	2512
4611	5	2513
4612	5	2514
4613	5	2515
4614	5	2516
4615	5	2517
4616	5	2518
4617	5	2519
4618	5	2520
4619	5	2521
4620	5	2522
4621	5	2542
4622	5	2543
4623	5	2544
4624	5	2545
4625	5	2546
4626	5	2547
4627	5	2548
4628	5	2549
4629	5	2550
4630	5	2551
4631	5	2552
4632	5	2553
4633	5	2565
4634	5	2566
4635	5	2567
4636	5	2568
4637	5	2569
4638	5	2570
4639	5	2571
4640	5	2591
4641	5	2592
4642	5	2593
4643	5	2594
4644	5	2595
4645	5	2596
4646	5	2597
4647	5	2598
4648	5	2599
4649	5	2600
4650	5	2601
4651	5	2602
4652	5	2603
4653	5	2604
4654	5	2605
4655	5	2606
4656	5	2607
4657	5	2608
4658	5	2625
4659	5	2627
4660	5	2631
4661	5	2638
4662	5	2650
4663	5	2651
4664	5	2652
4665	5	2653
4666	5	2654
4667	5	2655
4668	5	2656
4669	5	2657
4670	5	2658
4671	5	2659
4672	5	2660
4673	5	2661
4674	5	2662
4675	5	2663
4676	5	2676
4677	5	2677
4678	5	2678
4679	5	2679
4680	5	2680
4681	5	2681
4682	5	2682
4683	5	2683
4684	5	2684
4685	5	2685
4686	5	2686
4687	5	2687
4688	5	2688
4689	5	2689
4690	5	2690
4691	5	2691
4692	5	2692
4693	5	2693
4694	5	2694
4695	5	2695
4696	5	2696
4697	5	2697
4698	5	2698
4699	5	2699
4700	5	2700
4701	5	2701
4702	5	2702
4703	5	2703
4704	5	2704
4705	5	2706
4706	5	2707
4707	5	2708
4708	5	2709
4709	5	2710
4710	5	2711
4711	5	2712
4712	5	2713
4713	5	2714
4714	5	2715
4715	5	2716
4716	5	2717
4717	5	2718
4718	5	2720
4719	5	2721
4720	5	2722
4721	5	2723
4722	5	2724
4723	5	2725
4724	5	2726
4725	5	2727
4726	5	2728
4727	5	2729
4728	5	2730
4729	5	2781
4730	5	2782
4731	5	2783
4732	5	2784
4733	5	2785
4734	5	2786
4735	5	2787
4736	5	2788
4737	5	2789
4738	5	2790
4739	5	2791
4740	5	2792
4741	5	2793
4742	5	2794
4743	5	2795
4744	5	2796
4745	5	2797
4746	5	2798
4747	5	2799
4748	5	2800
4749	5	2801
4750	5	2802
4751	5	2803
4752	5	2804
4753	5	2805
4754	5	2806
4755	5	2807
4756	5	2808
4757	5	2809
4758	5	2810
4759	5	2811
4760	5	2812
4761	5	2813
4762	5	2814
4763	5	2815
4764	5	2816
4765	5	2817
4766	5	2818
4767	5	2926
4768	5	2927
4769	5	2928
4770	5	2929
4771	5	2930
4772	5	2931
4773	5	2932
4774	5	2933
4775	5	2934
4776	5	2935
4777	5	2936
4778	5	2937
4779	5	2949
4780	5	2950
4781	5	2951
4782	5	2952
4783	5	2953
4784	5	2954
4785	5	2955
4786	5	2956
4787	5	2957
4788	5	2958
4789	5	2959
4790	5	2960
4791	5	2961
4792	5	2962
4793	5	2963
4794	5	2975
4795	5	2976
4796	5	2977
4797	5	2978
4798	5	2979
4799	5	2980
4800	5	2981
4801	5	2982
4802	5	2983
4803	5	2984
4804	5	2985
4805	5	2986
4806	5	3004
4807	5	3005
4808	5	3006
4809	5	3007
4810	5	3008
4811	5	3009
4812	5	3010
4813	5	3011
4814	5	3012
4815	5	3013
4816	5	3014
4817	5	3015
4818	5	3016
4819	5	3017
4820	5	3028
4821	5	3029
4822	5	3030
4823	5	3031
4824	5	3032
4825	5	3033
4826	5	3034
4827	5	3035
4828	5	3036
4829	5	3037
4830	5	3038
4831	5	3039
4832	5	3040
4833	5	3041
4834	5	3042
4835	5	3043
4836	5	3044
4837	5	3045
4838	5	3046
4839	5	3047
4840	5	3048
4841	5	3049
4842	5	3050
4843	5	3051
4844	5	3075
4845	5	3076
4846	5	3077
4847	5	3078
4848	5	3079
4849	5	3080
4850	5	3092
4851	5	3093
4852	5	3094
4853	5	3095
4854	5	3096
4855	5	3097
4856	5	3098
4857	5	3099
4858	5	3100
4859	5	3101
4860	5	3102
4861	5	3103
4862	5	3132
4863	5	3133
4864	5	3134
4865	5	3135
4866	5	3136
4867	5	3137
4868	5	3138
4869	5	3139
4870	5	3140
4871	5	3141
4872	5	3142
4873	5	3143
4874	5	3144
4875	5	3145
4876	5	3146
4877	5	3147
4878	5	3148
4879	5	3149
4880	5	3150
4881	5	3151
4882	5	3152
4883	5	3153
4884	5	3154
4885	5	3155
4886	5	3156
4887	5	3157
4888	5	3158
4889	5	3159
4890	5	3160
4891	5	3161
4892	5	3162
4893	5	3163
4894	5	3164
4895	5	3225
4896	5	3276
4897	5	3277
4898	5	3278
4899	5	3279
4900	5	3280
4901	5	3281
4902	5	3282
4903	5	3283
4904	5	3284
4905	5	3285
4906	5	3286
4907	5	3287
4908	5	3300
4909	5	3301
4910	5	3302
4911	5	3303
4912	5	3304
4913	5	3305
4914	5	3306
4915	5	3307
4916	5	3308
4917	5	3309
4918	5	3310
4919	5	3311
4920	5	3312
4921	5	3313
4922	5	3314
4923	5	3315
4924	5	3316
4925	5	3317
4926	5	3318
4927	5	3351
4928	5	3354
4929	5	3359
4930	5	3365
4931	5	3366
4932	5	3367
4933	5	3368
4934	5	3369
4935	5	3370
4936	5	3371
4937	5	3372
4938	5	3373
4939	5	3374
4940	5	3403
4941	5	3404
4942	5	3408
4943	5	3409
4944	5	3410
4945	5	3411
4946	5	3415
4947	5	3416
4948	5	3417
4949	5	3418
4950	5	3421
4951	5	3423
4952	5	3424
4953	5	3426
4954	5	3430
4955	5	3432
4956	5	3434
4957	5	3435
4958	5	3436
4959	5	3437
4960	5	3438
4961	5	3439
4962	5	3442
4963	5	3444
4964	5	3445
4965	5	3446
4966	5	3447
4967	5	3448
4968	5	3449
4969	5	3451
4970	5	3454
4971	5	3481
4972	5	3482
4973	5	3485
4974	5	3489
4975	5	3490
4976	5	3492
4977	5	3493
4978	5	3498
4979	5	3499
4980	5	3503
4981	8	1
4982	8	2
4983	8	3
4984	8	4
4985	8	5
4986	8	6
4987	8	7
4988	8	8
4989	8	9
4990	8	10
4991	8	11
4992	8	12
4993	8	13
4994	8	14
4995	8	15
4996	8	16
4997	8	17
4998	8	18
4999	8	19
5000	8	20
5001	8	21
5002	8	22
5003	8	23
5004	8	24
5005	8	25
5006	8	26
5007	8	27
5008	8	28
5009	8	29
5010	8	30
5011	8	31
5012	8	32
5013	8	33
5014	8	34
5015	8	35
5016	8	36
5017	8	37
5018	8	38
5019	8	39
5020	8	40
5021	8	41
5022	8	42
5023	8	43
5024	8	44
5025	8	45
5026	8	46
5027	8	47
5028	8	48
5029	8	49
5030	8	50
5031	8	51
5032	8	52
5033	8	53
5034	8	54
5035	8	55
5036	8	56
5037	8	57
5038	8	58
5039	8	59
5040	8	60
5041	8	61
5042	8	62
5043	8	63
5044	8	64
5045	8	65
5046	8	66
5047	8	67
5048	8	68
5049	8	69
5050	8	70
5051	8	71
5052	8	72
5053	8	73
5054	8	74
5055	8	75
5056	8	76
5057	8	77
5058	8	78
5059	8	79
5060	8	80
5061	8	81
5062	8	82
5063	8	83
5064	8	84
5065	8	85
5066	8	86
5067	8	87
5068	8	88
5069	8	89
5070	8	90
5071	8	91
5072	8	92
5073	8	93
5074	8	94
5075	8	95
5076	8	96
5077	8	97
5078	8	98
5079	8	99
5080	8	100
5081	8	101
5082	8	102
5083	8	103
5084	8	104
5085	8	105
5086	8	106
5087	8	107
5088	8	108
5089	8	109
5090	8	110
5091	8	111
5092	8	112
5093	8	113
5094	8	114
5095	8	115
5096	8	116
5097	8	117
5098	8	118
5099	8	119
5100	8	120
5101	8	121
5102	8	122
5103	8	123
5104	8	124
5105	8	125
5106	8	126
5107	8	127
5108	8	128
5109	8	129
5110	8	130
5111	8	131
5112	8	132
5113	8	133
5114	8	134
5115	8	135
5116	8	136
5117	8	137
5118	8	138
5119	8	139
5120	8	140
5121	8	141
5122	8	142
5123	8	143
5124	8	144
5125	8	145
5126	8	146
5127	8	147
5128	8	148
5129	8	149
5130	8	150
5131	8	151
5132	8	152
5133	8	153
5134	8	154
5135	8	155
5136	8	156
5137	8	157
5138	8	158
5139	8	159
5140	8	160
5141	8	161
5142	8	162
5143	8	163
5144	8	164
5145	8	165
5146	8	166
5147	8	167
5148	8	168
5149	8	169
5150	8	170
5151	8	171
5152	8	172
5153	8	173
5154	8	174
5155	8	175
5156	8	176
5157	8	177
5158	8	178
5159	8	179
5160	8	180
5161	8	181
5162	8	182
5163	8	183
5164	8	184
5165	8	185
5166	8	186
5167	8	187
5168	8	188
5169	8	189
5170	8	190
5171	8	191
5172	8	192
5173	8	193
5174	8	194
5175	8	195
5176	8	196
5177	8	197
5178	8	198
5179	8	199
5180	8	200
5181	8	201
5182	8	202
5183	8	203
5184	8	204
5185	8	205
5186	8	206
5187	8	207
5188	8	208
5189	8	209
5190	8	210
5191	8	211
5192	8	212
5193	8	213
5194	8	214
5195	8	215
5196	8	216
5197	8	217
5198	8	218
5199	8	219
5200	8	220
5201	8	221
5202	8	222
5203	8	223
5204	8	224
5205	8	225
5206	8	226
5207	8	227
5208	8	228
5209	8	229
5210	8	230
5211	8	231
5212	8	232
5213	8	233
5214	8	234
5215	8	235
5216	8	236
5217	8	237
5218	8	238
5219	8	239
5220	8	240
5221	8	241
5222	8	242
5223	8	243
5224	8	244
5225	8	245
5226	8	246
5227	8	247
5228	8	248
5229	8	249
5230	8	250
5231	8	251
5232	8	252
5233	8	253
5234	8	254
5235	8	255
5236	8	256
5237	8	257
5238	8	258
5239	8	259
5240	8	260
5241	8	261
5242	8	262
5243	8	263
5244	8	264
5245	8	265
5246	8	266
5247	8	267
5248	8	268
5249	8	269
5250	8	270
5251	8	271
5252	8	272
5253	8	273
5254	8	274
5255	8	275
5256	8	276
5257	8	277
5258	8	278
5259	8	279
5260	8	280
5261	8	281
5262	8	282
5263	8	283
5264	8	284
5265	8	285
5266	8	286
5267	8	287
5268	8	288
5269	8	289
5270	8	290
5271	8	291
5272	8	292
5273	8	293
5274	8	294
5275	8	295
5276	8	296
5277	8	297
5278	8	298
5279	8	299
5280	8	300
5281	8	301
5282	8	302
5283	8	303
5284	8	304
5285	8	305
5286	8	306
5287	8	307
5288	8	308
5289	8	309
5290	8	310
5291	8	311
5292	8	312
5293	8	313
5294	8	314
5295	8	315
5296	8	316
5297	8	317
5298	8	318
5299	8	319
5300	8	320
5301	8	321
5302	8	322
5303	8	323
5304	8	324
5305	8	325
5306	8	326
5307	8	327
5308	8	328
5309	8	329
5310	8	330
5311	8	331
5312	8	332
5313	8	333
5314	8	334
5315	8	335
5316	8	336
5317	8	337
5318	8	338
5319	8	339
5320	8	340
5321	8	341
5322	8	342
5323	8	343
5324	8	344
5325	8	345
5326	8	346
5327	8	347
5328	8	348
5329	8	349
5330	8	350
5331	8	351
5332	8	352
5333	8	353
5334	8	354
5335	8	355
5336	8	356
5337	8	357
5338	8	358
5339	8	359
5340	8	360
5341	8	361
5342	8	362
5343	8	363
5344	8	364
5345	8	365
5346	8	366
5347	8	367
5348	8	368
5349	8	369
5350	8	370
5351	8	371
5352	8	372
5353	8	373
5354	8	374
5355	8	375
5356	8	376
5357	8	377
5358	8	378
5359	8	379
5360	8	380
5361	8	381
5362	8	382
5363	8	383
5364	8	384
5365	8	385
5366	8	386
5367	8	387
5368	8	388
5369	8	389
5370	8	390
5371	8	391
5372	8	392
5373	8	393
5374	8	394
5375	8	395
5376	8	396
5377	8	397
5378	8	398
5379	8	399
5380	8	400
5381	8	401
5382	8	402
5383	8	403
5384	8	404
5385	8	405
5386	8	406
5387	8	407
5388	8	408
5389	8	409
5390	8	410
5391	8	411
5392	8	412
5393	8	413
5394	8	414
5395	8	415
5396	8	416
5397	8	417
5398	8	418
5399	8	419
5400	8	420
5401	8	421
5402	8	422
5403	8	423
5404	8	424
5405	8	425
5406	8	426
5407	8	427
5408	8	428
5409	8	429
5410	8	430
5411	8	431
5412	8	432
5413	8	433
5414	8	434
5415	8	435
5416	8	436
5417	8	437
5418	8	438
5419	8	439
5420	8	440
5421	8	441
5422	8	442
5423	8	443
5424	8	444
5425	8	445
5426	8	446
5427	8	447
5428	8	448
5429	8	449
5430	8	450
5431	8	451
5432	8	452
5433	8	453
5434	8	454
5435	8	455
5436	8	456
5437	8	457
5438	8	458
5439	8	459
5440	8	460
5441	8	461
5442	8	462
5443	8	463
5444	8	464
5445	8	465
5446	8	466
5447	8	467
5448	8	468
5449	8	469
5450	8	470
5451	8	471
5452	8	472
5453	8	473
5454	8	474
5455	8	475
5456	8	476
5457	8	477
5458	8	478
5459	8	479
5460	8	480
5461	8	481
5462	8	482
5463	8	483
5464	8	484
5465	8	485
5466	8	486
5467	8	487
5468	8	488
5469	8	489
5470	8	490
5471	8	491
5472	8	492
5473	8	493
5474	8	494
5475	8	495
5476	8	496
5477	8	497
5478	8	498
5479	8	499
5480	8	500
5481	8	501
5482	8	502
5483	8	503
5484	8	504
5485	8	505
5486	8	506
5487	8	507
5488	8	508
5489	8	509
5490	8	510
5491	8	511
5492	8	512
5493	8	513
5494	8	514
5495	8	515
5496	8	516
5497	8	517
5498	8	518
5499	8	519
5500	8	520
5501	8	521
5502	8	522
5503	8	523
5504	8	524
5505	8	525
5506	8	526
5507	8	527
5508	8	528
5509	8	529
5510	8	530
5511	8	531
5512	8	532
5513	8	533
5514	8	534
5515	8	535
5516	8	536
5517	8	537
5518	8	538
5519	8	539
5520	8	540
5521	8	541
5522	8	542
5523	8	543
5524	8	544
5525	8	545
5526	8	546
5527	8	547
5528	8	548
5529	8	549
5530	8	550
5531	8	551
5532	8	552
5533	8	553
5534	8	554
5535	8	555
5536	8	556
5537	8	557
5538	8	558
5539	8	559
5540	8	560
5541	8	561
5542	8	562
5543	8	563
5544	8	564
5545	8	565
5546	8	566
5547	8	567
5548	8	568
5549	8	569
5550	8	570
5551	8	571
5552	8	572
5553	8	573
5554	8	574
5555	8	575
5556	8	576
5557	8	577
5558	8	578
5559	8	579
5560	8	580
5561	8	581
5562	8	582
5563	8	583
5564	8	584
5565	8	585
5566	8	586
5567	8	587
5568	8	588
5569	8	589
5570	8	590
5571	8	591
5572	8	592
5573	8	593
5574	8	594
5575	8	595
5576	8	596
5577	8	597
5578	8	598
5579	8	599
5580	8	600
5581	8	601
5582	8	602
5583	8	603
5584	8	604
5585	8	605
5586	8	606
5587	8	607
5588	8	608
5589	8	609
5590	8	610
5591	8	611
5592	8	612
5593	8	613
5594	8	614
5595	8	615
5596	8	616
5597	8	617
5598	8	618
5599	8	619
5600	8	620
5601	8	621
5602	8	622
5603	8	623
5604	8	624
5605	8	625
5606	8	626
5607	8	627
5608	8	628
5609	8	629
5610	8	630
5611	8	631
5612	8	632
5613	8	633
5614	8	634
5615	8	635
5616	8	636
5617	8	637
5618	8	638
5619	8	639
5620	8	640
5621	8	641
5622	8	642
5623	8	643
5624	8	644
5625	8	645
5626	8	646
5627	8	647
5628	8	648
5629	8	649
5630	8	650
5631	8	651
5632	8	652
5633	8	653
5634	8	654
5635	8	655
5636	8	656
5637	8	657
5638	8	658
5639	8	659
5640	8	660
5641	8	661
5642	8	662
5643	8	663
5644	8	664
5645	8	665
5646	8	666
5647	8	667
5648	8	668
5649	8	669
5650	8	670
5651	8	671
5652	8	672
5653	8	673
5654	8	674
5655	8	675
5656	8	676
5657	8	677
5658	8	678
5659	8	679
5660	8	680
5661	8	681
5662	8	682
5663	8	683
5664	8	684
5665	8	685
5666	8	686
5667	8	687
5668	8	688
5669	8	689
5670	8	690
5671	8	691
5672	8	692
5673	8	693
5674	8	694
5675	8	695
5676	8	696
5677	8	697
5678	8	698
5679	8	699
5680	8	700
5681	8	701
5682	8	702
5683	8	703
5684	8	704
5685	8	705
5686	8	706
5687	8	707
5688	8	708
5689	8	709
5690	8	710
5691	8	711
5692	8	712
5693	8	713
5694	8	714
5695	8	715
5696	8	716
5697	8	717
5698	8	718
5699	8	719
5700	8	720
5701	8	721
5702	8	722
5703	8	723
5704	8	724
5705	8	725
5706	8	726
5707	8	727
5708	8	728
5709	8	729
5710	8	730
5711	8	731
5712	8	732
5713	8	733
5714	8	734
5715	8	735
5716	8	736
5717	8	737
5718	8	738
5719	8	739
5720	8	740
5721	8	741
5722	8	742
5723	8	743
5724	8	744
5725	8	745
5726	8	746
5727	8	747
5728	8	748
5729	8	749
5730	8	750
5731	8	751
5732	8	752
5733	8	753
5734	8	754
5735	8	755
5736	8	756
5737	8	757
5738	8	758
5739	8	759
5740	8	760
5741	8	761
5742	8	762
5743	8	763
5744	8	764
5745	8	765
5746	8	766
5747	8	767
5748	8	768
5749	8	769
5750	8	770
5751	8	771
5752	8	772
5753	8	773
5754	8	774
5755	8	775
5756	8	776
5757	8	777
5758	8	778
5759	8	779
5760	8	780
5761	8	781
5762	8	782
5763	8	783
5764	8	784
5765	8	785
5766	8	786
5767	8	787
5768	8	788
5769	8	789
5770	8	790
5771	8	791
5772	8	792
5773	8	793
5774	8	794
5775	8	795
5776	8	796
5777	8	797
5778	8	798
5779	8	799
5780	8	800
5781	8	801
5782	8	802
5783	8	803
5784	8	804
5785	8	805
5786	8	806
5787	8	807
5788	8	808
5789	8	809
5790	8	810
5791	8	811
5792	8	812
5793	8	813
5794	8	814
5795	8	815
5796	8	816
5797	8	817
5798	8	818
5799	8	819
5800	8	820
5801	8	821
5802	8	822
5803	8	823
5804	8	824
5805	8	825
5806	8	826
5807	8	827
5808	8	828
5809	8	829
5810	8	830
5811	8	831
5812	8	832
5813	8	833
5814	8	834
5815	8	835
5816	8	836
5817	8	837
5818	8	838
5819	8	839
5820	8	840
5821	8	841
5822	8	842
5823	8	843
5824	8	844
5825	8	845
5826	8	846
5827	8	847
5828	8	848
5829	8	849
5830	8	850
5831	8	851
5832	8	852
5833	8	853
5834	8	854
5835	8	855
5836	8	856
5837	8	857
5838	8	858
5839	8	859
5840	8	860
5841	8	861
5842	8	862
5843	8	863
5844	8	864
5845	8	865
5846	8	866
5847	8	867
5848	8	868
5849	8	869
5850	8	870
5851	8	871
5852	8	872
5853	8	873
5854	8	874
5855	8	875
5856	8	876
5857	8	877
5858	8	878
5859	8	879
5860	8	880
5861	8	881
5862	8	882
5863	8	883
5864	8	884
5865	8	885
5866	8	886
5867	8	887
5868	8	888
5869	8	889
5870	8	890
5871	8	891
5872	8	892
5873	8	893
5874	8	894
5875	8	895
5876	8	896
5877	8	897
5878	8	898
5879	8	899
5880	8	900
5881	8	901
5882	8	902
5883	8	903
5884	8	904
5885	8	905
5886	8	906
5887	8	907
5888	8	908
5889	8	909
5890	8	910
5891	8	911
5892	8	912
5893	8	913
5894	8	914
5895	8	915
5896	8	916
5897	8	917
5898	8	918
5899	8	919
5900	8	920
5901	8	921
5902	8	922
5903	8	923
5904	8	924
5905	8	925
5906	8	926
5907	8	927
5908	8	928
5909	8	929
5910	8	930
5911	8	931
5912	8	932
5913	8	933
5914	8	934
5915	8	935
5916	8	936
5917	8	937
5918	8	938
5919	8	939
5920	8	940
5921	8	941
5922	8	942
5923	8	943
5924	8	944
5925	8	945
5926	8	946
5927	8	947
5928	8	948
5929	8	949
5930	8	950
5931	8	951
5932	8	952
5933	8	953
5934	8	954
5935	8	955
5936	8	956
5937	8	957
5938	8	958
5939	8	959
5940	8	960
5941	8	961
5942	8	962
5943	8	963
5944	8	964
5945	8	965
5946	8	966
5947	8	967
5948	8	968
5949	8	969
5950	8	970
5951	8	971
5952	8	972
5953	8	973
5954	8	974
5955	8	975
5956	8	976
5957	8	977
5958	8	978
5959	8	979
5960	8	980
5961	8	981
5962	8	982
5963	8	983
5964	8	984
5965	8	985
5966	8	986
5967	8	987
5968	8	988
5969	8	989
5970	8	990
5971	8	991
5972	8	992
5973	8	993
5974	8	994
5975	8	995
5976	8	996
5977	8	997
5978	8	998
5979	8	999
5980	8	1000
5981	8	1001
5982	8	1002
5983	8	1003
5984	8	1004
5985	8	1005
5986	8	1006
5987	8	1007
5988	8	1008
5989	8	1009
5990	8	1010
5991	8	1011
5992	8	1012
5993	8	1013
5994	8	1014
5995	8	1015
5996	8	1016
5997	8	1017
5998	8	1018
5999	8	1019
6000	8	1020
6001	8	1021
6002	8	1022
6003	8	1023
6004	8	1024
6005	8	1025
6006	8	1026
6007	8	1027
6008	8	1028
6009	8	1029
6010	8	1030
6011	8	1031
6012	8	1032
6013	8	1033
6014	8	1034
6015	8	1035
6016	8	1036
6017	8	1037
6018	8	1038
6019	8	1039
6020	8	1040
6021	8	1041
6022	8	1042
6023	8	1043
6024	8	1044
6025	8	1045
6026	8	1046
6027	8	1047
6028	8	1048
6029	8	1049
6030	8	1050
6031	8	1051
6032	8	1052
6033	8	1053
6034	8	1054
6035	8	1055
6036	8	1056
6037	8	1057
6038	8	1058
6039	8	1059
6040	8	1060
6041	8	1061
6042	8	1062
6043	8	1063
6044	8	1064
6045	8	1065
6046	8	1066
6047	8	1067
6048	8	1068
6049	8	1069
6050	8	1070
6051	8	1071
6052	8	1072
6053	8	1073
6054	8	1074
6055	8	1075
6056	8	1076
6057	8	1077
6058	8	1078
6059	8	1079
6060	8	1080
6061	8	1081
6062	8	1082
6063	8	1083
6064	8	1084
6065	8	1085
6066	8	1086
6067	8	1087
6068	8	1088
6069	8	1089
6070	8	1090
6071	8	1091
6072	8	1092
6073	8	1093
6074	8	1094
6075	8	1095
6076	8	1096
6077	8	1097
6078	8	1098
6079	8	1099
6080	8	1100
6081	8	1101
6082	8	1102
6083	8	1103
6084	8	1104
6085	8	1105
6086	8	1106
6087	8	1107
6088	8	1108
6089	8	1109
6090	8	1110
6091	8	1111
6092	8	1112
6093	8	1113
6094	8	1114
6095	8	1115
6096	8	1116
6097	8	1117
6098	8	1118
6099	8	1119
6100	8	1120
6101	8	1121
6102	8	1122
6103	8	1123
6104	8	1124
6105	8	1125
6106	8	1126
6107	8	1127
6108	8	1128
6109	8	1129
6110	8	1130
6111	8	1131
6112	8	1132
6113	8	1133
6114	8	1134
6115	8	1135
6116	8	1136
6117	8	1137
6118	8	1138
6119	8	1139
6120	8	1140
6121	8	1141
6122	8	1142
6123	8	1143
6124	8	1144
6125	8	1145
6126	8	1146
6127	8	1147
6128	8	1148
6129	8	1149
6130	8	1150
6131	8	1151
6132	8	1152
6133	8	1153
6134	8	1154
6135	8	1155
6136	8	1156
6137	8	1157
6138	8	1158
6139	8	1159
6140	8	1160
6141	8	1161
6142	8	1162
6143	8	1163
6144	8	1164
6145	8	1165
6146	8	1166
6147	8	1167
6148	8	1168
6149	8	1169
6150	8	1170
6151	8	1171
6152	8	1172
6153	8	1173
6154	8	1174
6155	8	1175
6156	8	1176
6157	8	1177
6158	8	1178
6159	8	1179
6160	8	1180
6161	8	1181
6162	8	1182
6163	8	1183
6164	8	1184
6165	8	1185
6166	8	1186
6167	8	1187
6168	8	1188
6169	8	1189
6170	8	1190
6171	8	1191
6172	8	1192
6173	8	1193
6174	8	1194
6175	8	1195
6176	8	1196
6177	8	1197
6178	8	1198
6179	8	1199
6180	8	1200
6181	8	1201
6182	8	1202
6183	8	1203
6184	8	1204
6185	8	1205
6186	8	1206
6187	8	1207
6188	8	1208
6189	8	1209
6190	8	1210
6191	8	1211
6192	8	1212
6193	8	1213
6194	8	1214
6195	8	1215
6196	8	1216
6197	8	1217
6198	8	1218
6199	8	1219
6200	8	1220
6201	8	1221
6202	8	1222
6203	8	1223
6204	8	1224
6205	8	1225
6206	8	1226
6207	8	1227
6208	8	1228
6209	8	1229
6210	8	1230
6211	8	1231
6212	8	1232
6213	8	1233
6214	8	1234
6215	8	1235
6216	8	1236
6217	8	1237
6218	8	1238
6219	8	1239
6220	8	1240
6221	8	1241
6222	8	1242
6223	8	1243
6224	8	1244
6225	8	1245
6226	8	1246
6227	8	1247
6228	8	1248
6229	8	1249
6230	8	1250
6231	8	1251
6232	8	1252
6233	8	1253
6234	8	1254
6235	8	1255
6236	8	1256
6237	8	1257
6238	8	1258
6239	8	1259
6240	8	1260
6241	8	1261
6242	8	1262
6243	8	1263
6244	8	1264
6245	8	1265
6246	8	1266
6247	8	1267
6248	8	1268
6249	8	1269
6250	8	1270
6251	8	1271
6252	8	1272
6253	8	1273
6254	8	1274
6255	8	1275
6256	8	1276
6257	8	1277
6258	8	1278
6259	8	1279
6260	8	1280
6261	8	1281
6262	8	1282
6263	8	1283
6264	8	1284
6265	8	1285
6266	8	1286
6267	8	1287
6268	8	1288
6269	8	1289
6270	8	1290
6271	8	1291
6272	8	1292
6273	8	1293
6274	8	1294
6275	8	1295
6276	8	1296
6277	8	1297
6278	8	1298
6279	8	1299
6280	8	1300
6281	8	1301
6282	8	1302
6283	8	1303
6284	8	1304
6285	8	1305
6286	8	1306
6287	8	1307
6288	8	1308
6289	8	1309
6290	8	1310
6291	8	1311
6292	8	1312
6293	8	1313
6294	8	1314
6295	8	1315
6296	8	1316
6297	8	1317
6298	8	1318
6299	8	1319
6300	8	1320
6301	8	1321
6302	8	1322
6303	8	1323
6304	8	1324
6305	8	1325
6306	8	1326
6307	8	1327
6308	8	1328
6309	8	1329
6310	8	1330
6311	8	1331
6312	8	1332
6313	8	1333
6314	8	1334
6315	8	1335
6316	8	1336
6317	8	1337
6318	8	1338
6319	8	1339
6320	8	1340
6321	8	1341
6322	8	1342
6323	8	1343
6324	8	1344
6325	8	1345
6326	8	1346
6327	8	1347
6328	8	1348
6329	8	1349
6330	8	1350
6331	8	1351
6332	8	1352
6333	8	1353
6334	8	1354
6335	8	1355
6336	8	1356
6337	8	1357
6338	8	1358
6339	8	1359
6340	8	1360
6341	8	1361
6342	8	1362
6343	8	1363
6344	8	1364
6345	8	1365
6346	8	1366
6347	8	1367
6348	8	1368
6349	8	1369
6350	8	1370
6351	8	1371
6352	8	1372
6353	8	1373
6354	8	1374
6355	8	1375
6356	8	1376
6357	8	1377
6358	8	1378
6359	8	1379
6360	8	1380
6361	8	1381
6362	8	1382
6363	8	1383
6364	8	1384
6365	8	1385
6366	8	1386
6367	8	1387
6368	8	1388
6369	8	1389
6370	8	1390
6371	8	1391
6372	8	1392
6373	8	1393
6374	8	1394
6375	8	1395
6376	8	1396
6377	8	1397
6378	8	1398
6379	8	1399
6380	8	1400
6381	8	1401
6382	8	1402
6383	8	1403
6384	8	1404
6385	8	1405
6386	8	1406
6387	8	1407
6388	8	1408
6389	8	1409
6390	8	1410
6391	8	1411
6392	8	1412
6393	8	1413
6394	8	1414
6395	8	1415
6396	8	1416
6397	8	1417
6398	8	1418
6399	8	1419
6400	8	1420
6401	8	1421
6402	8	1422
6403	8	1423
6404	8	1424
6405	8	1425
6406	8	1426
6407	8	1427
6408	8	1428
6409	8	1429
6410	8	1430
6411	8	1431
6412	8	1432
6413	8	1433
6414	8	1434
6415	8	1435
6416	8	1436
6417	8	1437
6418	8	1438
6419	8	1439
6420	8	1440
6421	8	1441
6422	8	1442
6423	8	1443
6424	8	1444
6425	8	1445
6426	8	1446
6427	8	1447
6428	8	1448
6429	8	1449
6430	8	1450
6431	8	1451
6432	8	1452
6433	8	1453
6434	8	1454
6435	8	1455
6436	8	1456
6437	8	1457
6438	8	1458
6439	8	1459
6440	8	1460
6441	8	1461
6442	8	1462
6443	8	1463
6444	8	1464
6445	8	1465
6446	8	1466
6447	8	1467
6448	8	1468
6449	8	1469
6450	8	1470
6451	8	1471
6452	8	1472
6453	8	1473
6454	8	1474
6455	8	1475
6456	8	1476
6457	8	1477
6458	8	1478
6459	8	1479
6460	8	1480
6461	8	1481
6462	8	1482
6463	8	1483
6464	8	1484
6465	8	1485
6466	8	1486
6467	8	1487
6468	8	1488
6469	8	1489
6470	8	1490
6471	8	1491
6472	8	1492
6473	8	1493
6474	8	1494
6475	8	1495
6476	8	1496
6477	8	1497
6478	8	1498
6479	8	1499
6480	8	1500
6481	8	1501
6482	8	1502
6483	8	1503
6484	8	1504
6485	8	1505
6486	8	1506
6487	8	1507
6488	8	1508
6489	8	1509
6490	8	1510
6491	8	1511
6492	8	1512
6493	8	1513
6494	8	1514
6495	8	1515
6496	8	1516
6497	8	1517
6498	8	1518
6499	8	1519
6500	8	1520
6501	8	1521
6502	8	1522
6503	8	1523
6504	8	1524
6505	8	1525
6506	8	1526
6507	8	1527
6508	8	1528
6509	8	1529
6510	8	1530
6511	8	1531
6512	8	1532
6513	8	1533
6514	8	1534
6515	8	1535
6516	8	1536
6517	8	1537
6518	8	1538
6519	8	1539
6520	8	1540
6521	8	1541
6522	8	1542
6523	8	1543
6524	8	1544
6525	8	1545
6526	8	1546
6527	8	1547
6528	8	1548
6529	8	1549
6530	8	1550
6531	8	1551
6532	8	1552
6533	8	1553
6534	8	1554
6535	8	1555
6536	8	1556
6537	8	1557
6538	8	1558
6539	8	1559
6540	8	1560
6541	8	1561
6542	8	1562
6543	8	1563
6544	8	1564
6545	8	1565
6546	8	1566
6547	8	1567
6548	8	1568
6549	8	1569
6550	8	1570
6551	8	1571
6552	8	1572
6553	8	1573
6554	8	1574
6555	8	1575
6556	8	1576
6557	8	1577
6558	8	1578
6559	8	1579
6560	8	1580
6561	8	1581
6562	8	1582
6563	8	1583
6564	8	1584
6565	8	1585
6566	8	1586
6567	8	1587
6568	8	1588
6569	8	1589
6570	8	1590
6571	8	1591
6572	8	1592
6573	8	1593
6574	8	1594
6575	8	1595
6576	8	1596
6577	8	1597
6578	8	1598
6579	8	1599
6580	8	1600
6581	8	1601
6582	8	1602
6583	8	1603
6584	8	1604
6585	8	1605
6586	8	1606
6587	8	1607
6588	8	1608
6589	8	1609
6590	8	1610
6591	8	1611
6592	8	1612
6593	8	1613
6594	8	1614
6595	8	1615
6596	8	1616
6597	8	1617
6598	8	1618
6599	8	1619
6600	8	1620
6601	8	1621
6602	8	1622
6603	8	1623
6604	8	1624
6605	8	1625
6606	8	1626
6607	8	1627
6608	8	1628
6609	8	1629
6610	8	1630
6611	8	1631
6612	8	1632
6613	8	1633
6614	8	1634
6615	8	1635
6616	8	1636
6617	8	1637
6618	8	1638
6619	8	1639
6620	8	1640
6621	8	1641
6622	8	1642
6623	8	1643
6624	8	1644
6625	8	1645
6626	8	1646
6627	8	1647
6628	8	1648
6629	8	1649
6630	8	1650
6631	8	1651
6632	8	1652
6633	8	1653
6634	8	1654
6635	8	1655
6636	8	1656
6637	8	1657
6638	8	1658
6639	8	1659
6640	8	1660
6641	8	1661
6642	8	1662
6643	8	1663
6644	8	1664
6645	8	1665
6646	8	1666
6647	8	1667
6648	8	1668
6649	8	1669
6650	8	1670
6651	8	1671
6652	8	1672
6653	8	1673
6654	8	1674
6655	8	1675
6656	8	1676
6657	8	1677
6658	8	1678
6659	8	1679
6660	8	1680
6661	8	1681
6662	8	1682
6663	8	1683
6664	8	1684
6665	8	1685
6666	8	1686
6667	8	1687
6668	8	1688
6669	8	1689
6670	8	1690
6671	8	1691
6672	8	1692
6673	8	1693
6674	8	1694
6675	8	1695
6676	8	1696
6677	8	1697
6678	8	1698
6679	8	1699
6680	8	1700
6681	8	1701
6682	8	1702
6683	8	1703
6684	8	1704
6685	8	1705
6686	8	1706
6687	8	1707
6688	8	1708
6689	8	1709
6690	8	1710
6691	8	1711
6692	8	1712
6693	8	1713
6694	8	1714
6695	8	1715
6696	8	1716
6697	8	1717
6698	8	1718
6699	8	1719
6700	8	1720
6701	8	1721
6702	8	1722
6703	8	1723
6704	8	1724
6705	8	1725
6706	8	1726
6707	8	1727
6708	8	1728
6709	8	1729
6710	8	1730
6711	8	1731
6712	8	1732
6713	8	1733
6714	8	1734
6715	8	1735
6716	8	1736
6717	8	1737
6718	8	1738
6719	8	1739
6720	8	1740
6721	8	1741
6722	8	1742
6723	8	1743
6724	8	1744
6725	8	1745
6726	8	1746
6727	8	1747
6728	8	1748
6729	8	1749
6730	8	1750
6731	8	1751
6732	8	1752
6733	8	1753
6734	8	1754
6735	8	1755
6736	8	1756
6737	8	1757
6738	8	1758
6739	8	1759
6740	8	1760
6741	8	1761
6742	8	1762
6743	8	1763
6744	8	1764
6745	8	1765
6746	8	1766
6747	8	1767
6748	8	1768
6749	8	1769
6750	8	1770
6751	8	1771
6752	8	1772
6753	8	1773
6754	8	1774
6755	8	1775
6756	8	1776
6757	8	1777
6758	8	1778
6759	8	1779
6760	8	1780
6761	8	1781
6762	8	1782
6763	8	1783
6764	8	1784
6765	8	1785
6766	8	1786
6767	8	1787
6768	8	1788
6769	8	1789
6770	8	1790
6771	8	1791
6772	8	1792
6773	8	1793
6774	8	1794
6775	8	1795
6776	8	1796
6777	8	1797
6778	8	1798
6779	8	1799
6780	8	1800
6781	8	1801
6782	8	1802
6783	8	1803
6784	8	1804
6785	8	1805
6786	8	1806
6787	8	1807
6788	8	1808
6789	8	1809
6790	8	1810
6791	8	1811
6792	8	1812
6793	8	1813
6794	8	1814
6795	8	1815
6796	8	1816
6797	8	1817
6798	8	1818
6799	8	1819
6800	8	1820
6801	8	1821
6802	8	1822
6803	8	1823
6804	8	1824
6805	8	1825
6806	8	1826
6807	8	1827
6808	8	1828
6809	8	1829
6810	8	1830
6811	8	1831
6812	8	1832
6813	8	1833
6814	8	1834
6815	8	1835
6816	8	1836
6817	8	1837
6818	8	1838
6819	8	1839
6820	8	1840
6821	8	1841
6822	8	1842
6823	8	1843
6824	8	1844
6825	8	1845
6826	8	1846
6827	8	1847
6828	8	1848
6829	8	1849
6830	8	1850
6831	8	1851
6832	8	1852
6833	8	1853
6834	8	1854
6835	8	1855
6836	8	1856
6837	8	1857
6838	8	1858
6839	8	1859
6840	8	1860
6841	8	1861
6842	8	1862
6843	8	1863
6844	8	1864
6845	8	1865
6846	8	1866
6847	8	1867
6848	8	1868
6849	8	1869
6850	8	1870
6851	8	1871
6852	8	1872
6853	8	1873
6854	8	1874
6855	8	1875
6856	8	1876
6857	8	1877
6858	8	1878
6859	8	1879
6860	8	1880
6861	8	1881
6862	8	1882
6863	8	1883
6864	8	1884
6865	8	1885
6866	8	1886
6867	8	1887
6868	8	1888
6869	8	1889
6870	8	1890
6871	8	1891
6872	8	1892
6873	8	1893
6874	8	1894
6875	8	1895
6876	8	1896
6877	8	1897
6878	8	1898
6879	8	1899
6880	8	1900
6881	8	1901
6882	8	1902
6883	8	1903
6884	8	1904
6885	8	1905
6886	8	1906
6887	8	1907
6888	8	1908
6889	8	1909
6890	8	1910
6891	8	1911
6892	8	1912
6893	8	1913
6894	8	1914
6895	8	1915
6896	8	1916
6897	8	1917
6898	8	1918
6899	8	1919
6900	8	1920
6901	8	1921
6902	8	1922
6903	8	1923
6904	8	1924
6905	8	1925
6906	8	1926
6907	8	1927
6908	8	1928
6909	8	1929
6910	8	1930
6911	8	1931
6912	8	1932
6913	8	1933
6914	8	1934
6915	8	1935
6916	8	1936
6917	8	1937
6918	8	1938
6919	8	1939
6920	8	1940
6921	8	1941
6922	8	1942
6923	8	1943
6924	8	1944
6925	8	1945
6926	8	1946
6927	8	1947
6928	8	1948
6929	8	1949
6930	8	1950
6931	8	1951
6932	8	1952
6933	8	1953
6934	8	1954
6935	8	1955
6936	8	1956
6937	8	1957
6938	8	1958
6939	8	1959
6940	8	1960
6941	8	1961
6942	8	1962
6943	8	1963
6944	8	1964
6945	8	1965
6946	8	1966
6947	8	1967
6948	8	1968
6949	8	1969
6950	8	1970
6951	8	1971
6952	8	1972
6953	8	1973
6954	8	1974
6955	8	1975
6956	8	1976
6957	8	1977
6958	8	1978
6959	8	1979
6960	8	1980
6961	8	1981
6962	8	1982
6963	8	1983
6964	8	1984
6965	8	1985
6966	8	1986
6967	8	1987
6968	8	1988
6969	8	1989
6970	8	1990
6971	8	1991
6972	8	1992
6973	8	1993
6974	8	1994
6975	8	1995
6976	8	1996
6977	8	1997
6978	8	1998
6979	8	1999
6980	8	2000
6981	8	2001
6982	8	2002
6983	8	2003
6984	8	2004
6985	8	2005
6986	8	2006
6987	8	2007
6988	8	2008
6989	8	2009
6990	8	2010
6991	8	2011
6992	8	2012
6993	8	2013
6994	8	2014
6995	8	2015
6996	8	2016
6997	8	2017
6998	8	2018
6999	8	2019
7000	8	2020
7001	8	2021
7002	8	2022
7003	8	2023
7004	8	2024
7005	8	2025
7006	8	2026
7007	8	2027
7008	8	2028
7009	8	2029
7010	8	2030
7011	8	2031
7012	8	2032
7013	8	2033
7014	8	2034
7015	8	2035
7016	8	2036
7017	8	2037
7018	8	2038
7019	8	2039
7020	8	2040
7021	8	2041
7022	8	2042
7023	8	2043
7024	8	2044
7025	8	2045
7026	8	2046
7027	8	2047
7028	8	2048
7029	8	2049
7030	8	2050
7031	8	2051
7032	8	2052
7033	8	2053
7034	8	2054
7035	8	2055
7036	8	2056
7037	8	2057
7038	8	2058
7039	8	2059
7040	8	2060
7041	8	2061
7042	8	2062
7043	8	2063
7044	8	2064
7045	8	2065
7046	8	2066
7047	8	2067
7048	8	2068
7049	8	2069
7050	8	2070
7051	8	2071
7052	8	2072
7053	8	2073
7054	8	2074
7055	8	2075
7056	8	2076
7057	8	2077
7058	8	2078
7059	8	2079
7060	8	2080
7061	8	2081
7062	8	2082
7063	8	2083
7064	8	2084
7065	8	2085
7066	8	2086
7067	8	2087
7068	8	2088
7069	8	2089
7070	8	2090
7071	8	2091
7072	8	2092
7073	8	2093
7074	8	2094
7075	8	2095
7076	8	2096
7077	8	2097
7078	8	2098
7079	8	2099
7080	8	2100
7081	8	2101
7082	8	2102
7083	8	2103
7084	8	2104
7085	8	2105
7086	8	2106
7087	8	2107
7088	8	2108
7089	8	2109
7090	8	2110
7091	8	2111
7092	8	2112
7093	8	2113
7094	8	2114
7095	8	2115
7096	8	2116
7097	8	2117
7098	8	2118
7099	8	2119
7100	8	2120
7101	8	2121
7102	8	2122
7103	8	2123
7104	8	2124
7105	8	2125
7106	8	2126
7107	8	2127
7108	8	2128
7109	8	2129
7110	8	2130
7111	8	2131
7112	8	2132
7113	8	2133
7114	8	2134
7115	8	2135
7116	8	2136
7117	8	2137
7118	8	2138
7119	8	2139
7120	8	2140
7121	8	2141
7122	8	2142
7123	8	2143
7124	8	2144
7125	8	2145
7126	8	2146
7127	8	2147
7128	8	2148
7129	8	2149
7130	8	2150
7131	8	2151
7132	8	2152
7133	8	2153
7134	8	2154
7135	8	2155
7136	8	2156
7137	8	2157
7138	8	2158
7139	8	2159
7140	8	2160
7141	8	2161
7142	8	2162
7143	8	2163
7144	8	2164
7145	8	2165
7146	8	2166
7147	8	2167
7148	8	2168
7149	8	2169
7150	8	2170
7151	8	2171
7152	8	2172
7153	8	2173
7154	8	2174
7155	8	2175
7156	8	2176
7157	8	2177
7158	8	2178
7159	8	2179
7160	8	2180
7161	8	2181
7162	8	2182
7163	8	2183
7164	8	2184
7165	8	2185
7166	8	2186
7167	8	2187
7168	8	2188
7169	8	2189
7170	8	2190
7171	8	2191
7172	8	2192
7173	8	2193
7174	8	2194
7175	8	2195
7176	8	2196
7177	8	2197
7178	8	2198
7179	8	2199
7180	8	2200
7181	8	2201
7182	8	2202
7183	8	2203
7184	8	2204
7185	8	2205
7186	8	2206
7187	8	2207
7188	8	2208
7189	8	2209
7190	8	2210
7191	8	2211
7192	8	2212
7193	8	2213
7194	8	2214
7195	8	2215
7196	8	2216
7197	8	2217
7198	8	2218
7199	8	2219
7200	8	2220
7201	8	2221
7202	8	2222
7203	8	2223
7204	8	2224
7205	8	2225
7206	8	2226
7207	8	2227
7208	8	2228
7209	8	2229
7210	8	2230
7211	8	2231
7212	8	2232
7213	8	2233
7214	8	2234
7215	8	2235
7216	8	2236
7217	8	2237
7218	8	2238
7219	8	2239
7220	8	2240
7221	8	2241
7222	8	2242
7223	8	2243
7224	8	2244
7225	8	2245
7226	8	2246
7227	8	2247
7228	8	2248
7229	8	2249
7230	8	2250
7231	8	2251
7232	8	2252
7233	8	2253
7234	8	2254
7235	8	2255
7236	8	2256
7237	8	2257
7238	8	2258
7239	8	2259
7240	8	2260
7241	8	2261
7242	8	2262
7243	8	2263
7244	8	2264
7245	8	2265
7246	8	2266
7247	8	2267
7248	8	2268
7249	8	2269
7250	8	2270
7251	8	2271
7252	8	2272
7253	8	2273
7254	8	2274
7255	8	2275
7256	8	2276
7257	8	2277
7258	8	2278
7259	8	2279
7260	8	2280
7261	8	2281
7262	8	2282
7263	8	2283
7264	8	2284
7265	8	2285
7266	8	2286
7267	8	2287
7268	8	2288
7269	8	2289
7270	8	2290
7271	8	2291
7272	8	2292
7273	8	2293
7274	8	2294
7275	8	2295
7276	8	2296
7277	8	2297
7278	8	2298
7279	8	2299
7280	8	2300
7281	8	2301
7282	8	2302
7283	8	2303
7284	8	2304
7285	8	2305
7286	8	2306
7287	8	2307
7288	8	2308
7289	8	2309
7290	8	2310
7291	8	2311
7292	8	2312
7293	8	2313
7294	8	2314
7295	8	2315
7296	8	2316
7297	8	2317
7298	8	2318
7299	8	2319
7300	8	2320
7301	8	2321
7302	8	2322
7303	8	2323
7304	8	2324
7305	8	2325
7306	8	2326
7307	8	2327
7308	8	2328
7309	8	2329
7310	8	2330
7311	8	2331
7312	8	2332
7313	8	2333
7314	8	2334
7315	8	2335
7316	8	2336
7317	8	2337
7318	8	2338
7319	8	2339
7320	8	2340
7321	8	2341
7322	8	2342
7323	8	2343
7324	8	2344
7325	8	2345
7326	8	2346
7327	8	2347
7328	8	2348
7329	8	2349
7330	8	2350
7331	8	2351
7332	8	2352
7333	8	2353
7334	8	2354
7335	8	2355
7336	8	2356
7337	8	2357
7338	8	2358
7339	8	2359
7340	8	2360
7341	8	2361
7342	8	2362
7343	8	2363
7344	8	2364
7345	8	2365
7346	8	2366
7347	8	2367
7348	8	2368
7349	8	2369
7350	8	2370
7351	8	2371
7352	8	2372
7353	8	2373
7354	8	2374
7355	8	2375
7356	8	2376
7357	8	2377
7358	8	2378
7359	8	2379
7360	8	2380
7361	8	2381
7362	8	2382
7363	8	2383
7364	8	2384
7365	8	2385
7366	8	2386
7367	8	2387
7368	8	2388
7369	8	2389
7370	8	2390
7371	8	2391
7372	8	2392
7373	8	2393
7374	8	2394
7375	8	2395
7376	8	2396
7377	8	2397
7378	8	2398
7379	8	2399
7380	8	2400
7381	8	2401
7382	8	2402
7383	8	2403
7384	8	2404
7385	8	2405
7386	8	2406
7387	8	2407
7388	8	2408
7389	8	2409
7390	8	2410
7391	8	2411
7392	8	2412
7393	8	2413
7394	8	2414
7395	8	2415
7396	8	2416
7397	8	2417
7398	8	2418
7399	8	2419
7400	8	2420
7401	8	2421
7402	8	2422
7403	8	2423
7404	8	2424
7405	8	2425
7406	8	2426
7407	8	2427
7408	8	2428
7409	8	2429
7410	8	2430
7411	8	2431
7412	8	2432
7413	8	2433
7414	8	2434
7415	8	2435
7416	8	2436
7417	8	2437
7418	8	2438
7419	8	2439
7420	8	2440
7421	8	2441
7422	8	2442
7423	8	2443
7424	8	2444
7425	8	2445
7426	8	2446
7427	8	2447
7428	8	2448
7429	8	2449
7430	8	2450
7431	8	2451
7432	8	2452
7433	8	2453
7434	8	2454
7435	8	2455
7436	8	2456
7437	8	2457
7438	8	2458
7439	8	2459
7440	8	2460
7441	8	2461
7442	8	2462
7443	8	2463
7444	8	2464
7445	8	2465
7446	8	2466
7447	8	2467
7448	8	2468
7449	8	2469
7450	8	2470
7451	8	2471
7452	8	2472
7453	8	2473
7454	8	2474
7455	8	2475
7456	8	2476
7457	8	2477
7458	8	2478
7459	8	2479
7460	8	2480
7461	8	2481
7462	8	2482
7463	8	2483
7464	8	2484
7465	8	2485
7466	8	2486
7467	8	2487
7468	8	2488
7469	8	2489
7470	8	2490
7471	8	2491
7472	8	2492
7473	8	2493
7474	8	2494
7475	8	2495
7476	8	2496
7477	8	2497
7478	8	2498
7479	8	2499
7480	8	2500
7481	8	2501
7482	8	2502
7483	8	2503
7484	8	2504
7485	8	2505
7486	8	2506
7487	8	2507
7488	8	2508
7489	8	2509
7490	8	2510
7491	8	2511
7492	8	2512
7493	8	2513
7494	8	2514
7495	8	2515
7496	8	2516
7497	8	2517
7498	8	2518
7499	8	2519
7500	8	2520
7501	8	2521
7502	8	2522
7503	8	2523
7504	8	2524
7505	8	2525
7506	8	2526
7507	8	2527
7508	8	2528
7509	8	2529
7510	8	2530
7511	8	2531
7512	8	2532
7513	8	2533
7514	8	2534
7515	8	2535
7516	8	2536
7517	8	2537
7518	8	2538
7519	8	2539
7520	8	2540
7521	8	2541
7522	8	2542
7523	8	2543
7524	8	2544
7525	8	2545
7526	8	2546
7527	8	2547
7528	8	2548
7529	8	2549
7530	8	2550
7531	8	2551
7532	8	2552
7533	8	2553
7534	8	2554
7535	8	2555
7536	8	2556
7537	8	2557
7538	8	2558
7539	8	2559
7540	8	2560
7541	8	2561
7542	8	2562
7543	8	2563
7544	8	2564
7545	8	2565
7546	8	2566
7547	8	2567
7548	8	2568
7549	8	2569
7550	8	2570
7551	8	2571
7552	8	2572
7553	8	2573
7554	8	2574
7555	8	2575
7556	8	2576
7557	8	2577
7558	8	2578
7559	8	2579
7560	8	2580
7561	8	2581
7562	8	2582
7563	8	2583
7564	8	2584
7565	8	2585
7566	8	2586
7567	8	2587
7568	8	2588
7569	8	2589
7570	8	2590
7571	8	2591
7572	8	2592
7573	8	2593
7574	8	2594
7575	8	2595
7576	8	2596
7577	8	2597
7578	8	2598
7579	8	2599
7580	8	2600
7581	8	2601
7582	8	2602
7583	8	2603
7584	8	2604
7585	8	2605
7586	8	2606
7587	8	2607
7588	8	2608
7589	8	2609
7590	8	2610
7591	8	2611
7592	8	2612
7593	8	2613
7594	8	2614
7595	8	2615
7596	8	2616
7597	8	2617
7598	8	2618
7599	8	2619
7600	8	2620
7601	8	2621
7602	8	2622
7603	8	2623
7604	8	2624
7605	8	2625
7606	8	2626
7607	8	2627
7608	8	2628
7609	8	2629
7610	8	2630
7611	8	2631
7612	8	2632
7613	8	2633
7614	8	2634
7615	8	2635
7616	8	2636
7617	8	2637
7618	8	2638
7619	8	2639
7620	8	2640
7621	8	2641
7622	8	2642
7623	8	2643
7624	8	2644
7625	8	2645
7626	8	2646
7627	8	2647
7628	8	2648
7629	8	2649
7630	8	2650
7631	8	2651
7632	8	2652
7633	8	2653
7634	8	2654
7635	8	2655
7636	8	2656
7637	8	2657
7638	8	2658
7639	8	2659
7640	8	2660
7641	8	2661
7642	8	2662
7643	8	2663
7644	8	2664
7645	8	2665
7646	8	2666
7647	8	2667
7648	8	2668
7649	8	2669
7650	8	2670
7651	8	2671
7652	8	2672
7653	8	2673
7654	8	2674
7655	8	2675
7656	8	2676
7657	8	2677
7658	8	2678
7659	8	2679
7660	8	2680
7661	8	2681
7662	8	2682
7663	8	2683
7664	8	2684
7665	8	2685
7666	8	2686
7667	8	2687
7668	8	2688
7669	8	2689
7670	8	2690
7671	8	2691
7672	8	2692
7673	8	2693
7674	8	2694
7675	8	2695
7676	8	2696
7677	8	2697
7678	8	2698
7679	8	2699
7680	8	2700
7681	8	2701
7682	8	2702
7683	8	2703
7684	8	2704
7685	8	2705
7686	8	2706
7687	8	2707
7688	8	2708
7689	8	2709
7690	8	2710
7691	8	2711
7692	8	2712
7693	8	2713
7694	8	2714
7695	8	2715
7696	8	2716
7697	8	2717
7698	8	2718
7699	8	2719
7700	8	2720
7701	8	2721
7702	8	2722
7703	8	2723
7704	8	2724
7705	8	2725
7706	8	2726
7707	8	2727
7708	8	2728
7709	8	2729
7710	8	2730
7711	8	2731
7712	8	2732
7713	8	2733
7714	8	2734
7715	8	2735
7716	8	2736
7717	8	2737
7718	8	2738
7719	8	2739
7720	8	2740
7721	8	2741
7722	8	2742
7723	8	2743
7724	8	2744
7725	8	2745
7726	8	2746
7727	8	2747
7728	8	2748
7729	8	2749
7730	8	2750
7731	8	2751
7732	8	2752
7733	8	2753
7734	8	2754
7735	8	2755
7736	8	2756
7737	8	2757
7738	8	2758
7739	8	2759
7740	8	2760
7741	8	2761
7742	8	2762
7743	8	2763
7744	8	2764
7745	8	2765
7746	8	2766
7747	8	2767
7748	8	2768
7749	8	2769
7750	8	2770
7751	8	2771
7752	8	2772
7753	8	2773
7754	8	2774
7755	8	2775
7756	8	2776
7757	8	2777
7758	8	2778
7759	8	2779
7760	8	2780
7761	8	2781
7762	8	2782
7763	8	2783
7764	8	2784
7765	8	2785
7766	8	2786
7767	8	2787
7768	8	2788
7769	8	2789
7770	8	2790
7771	8	2791
7772	8	2792
7773	8	2793
7774	8	2794
7775	8	2795
7776	8	2796
7777	8	2797
7778	8	2798
7779	8	2799
7780	8	2800
7781	8	2801
7782	8	2802
7783	8	2803
7784	8	2804
7785	8	2805
7786	8	2806
7787	8	2807
7788	8	2808
7789	8	2809
7790	8	2810
7791	8	2811
7792	8	2812
7793	8	2813
7794	8	2814
7795	8	2815
7796	8	2816
7797	8	2817
7798	8	2818
7799	8	2926
7800	8	2927
7801	8	2928
7802	8	2929
7803	8	2930
7804	8	2931
7805	8	2932
7806	8	2933
7807	8	2934
7808	8	2935
7809	8	2936
7810	8	2937
7811	8	2938
7812	8	2939
7813	8	2940
7814	8	2941
7815	8	2942
7816	8	2943
7817	8	2944
7818	8	2945
7819	8	2946
7820	8	2947
7821	8	2948
7822	8	2949
7823	8	2950
7824	8	2951
7825	8	2952
7826	8	2953
7827	8	2954
7828	8	2955
7829	8	2956
7830	8	2957
7831	8	2958
7832	8	2959
7833	8	2960
7834	8	2961
7835	8	2962
7836	8	2963
7837	8	2964
7838	8	2965
7839	8	2966
7840	8	2967
7841	8	2968
7842	8	2969
7843	8	2970
7844	8	2971
7845	8	2972
7846	8	2973
7847	8	2974
7848	8	2975
7849	8	2976
7850	8	2977
7851	8	2978
7852	8	2979
7853	8	2980
7854	8	2981
7855	8	2982
7856	8	2983
7857	8	2984
7858	8	2985
7859	8	2986
7860	8	2987
7861	8	2988
7862	8	2989
7863	8	2990
7864	8	2991
7865	8	2992
7866	8	2993
7867	8	2994
7868	8	2995
7869	8	2996
7870	8	2997
7871	8	2998
7872	8	2999
7873	8	3000
7874	8	3001
7875	8	3002
7876	8	3003
7877	8	3004
7878	8	3005
7879	8	3006
7880	8	3007
7881	8	3008
7882	8	3009
7883	8	3010
7884	8	3011
7885	8	3012
7886	8	3013
7887	8	3014
7888	8	3015
7889	8	3016
7890	8	3017
7891	8	3018
7892	8	3019
7893	8	3020
7894	8	3021
7895	8	3022
7896	8	3023
7897	8	3024
7898	8	3025
7899	8	3026
7900	8	3027
7901	8	3028
7902	8	3029
7903	8	3030
7904	8	3031
7905	8	3032
7906	8	3033
7907	8	3034
7908	8	3035
7909	8	3036
7910	8	3037
7911	8	3038
7912	8	3039
7913	8	3040
7914	8	3041
7915	8	3042
7916	8	3043
7917	8	3044
7918	8	3045
7919	8	3046
7920	8	3047
7921	8	3048
7922	8	3049
7923	8	3050
7924	8	3051
7925	8	3052
7926	8	3053
7927	8	3054
7928	8	3055
7929	8	3056
7930	8	3057
7931	8	3058
7932	8	3059
7933	8	3060
7934	8	3061
7935	8	3062
7936	8	3063
7937	8	3064
7938	8	3065
7939	8	3066
7940	8	3067
7941	8	3068
7942	8	3069
7943	8	3070
7944	8	3071
7945	8	3072
7946	8	3073
7947	8	3074
7948	8	3075
7949	8	3076
7950	8	3077
7951	8	3078
7952	8	3079
7953	8	3080
7954	8	3081
7955	8	3082
7956	8	3083
7957	8	3084
7958	8	3085
7959	8	3086
7960	8	3087
7961	8	3088
7962	8	3089
7963	8	3090
7964	8	3091
7965	8	3092
7966	8	3093
7967	8	3094
7968	8	3095
7969	8	3096
7970	8	3097
7971	8	3098
7972	8	3099
7973	8	3100
7974	8	3101
7975	8	3102
7976	8	3103
7977	8	3104
7978	8	3105
7979	8	3106
7980	8	3107
7981	8	3108
7982	8	3109
7983	8	3110
7984	8	3111
7985	8	3112
7986	8	3113
7987	8	3114
7988	8	3115
7989	8	3116
7990	8	3117
7991	8	3118
7992	8	3119
7993	8	3120
7994	8	3121
7995	8	3122
7996	8	3123
7997	8	3124
7998	8	3125
7999	8	3126
8000	8	3127
8001	8	3128
8002	8	3129
8003	8	3130
8004	8	3131
8005	8	3132
8006	8	3133
8007	8	3134
8008	8	3135
8009	8	3136
8010	8	3137
8011	8	3138
8012	8	3139
8013	8	3140
8014	8	3141
8015	8	3142
8016	8	3143
8017	8	3144
8018	8	3145
8019	8	3146
8020	8	3147
8021	8	3148
8022	8	3149
8023	8	3150
8024	8	3151
8025	8	3152
8026	8	3153
8027	8	3154
8028	8	3155
8029	8	3156
8030	8	3157
8031	8	3158
8032	8	3159
8033	8	3160
8034	8	3161
8035	8	3162
8036	8	3163
8037	8	3164
8038	8	3225
8039	8	3253
8040	8	3254
8041	8	3255
8042	8	3256
8043	8	3257
8044	8	3258
8045	8	3259
8046	8	3260
8047	8	3261
8048	8	3262
8049	8	3263
8050	8	3264
8051	8	3265
8052	8	3266
8053	8	3267
8054	8	3268
8055	8	3269
8056	8	3270
8057	8	3271
8058	8	3272
8059	8	3273
8060	8	3274
8061	8	3275
8062	8	3276
8063	8	3277
8064	8	3278
8065	8	3279
8066	8	3280
8067	8	3281
8068	8	3282
8069	8	3283
8070	8	3284
8071	8	3285
8072	8	3286
8073	8	3287
8074	8	3288
8075	8	3289
8076	8	3290
8077	8	3291
8078	8	3292
8079	8	3293
8080	8	3294
8081	8	3295
8082	8	3296
8083	8	3297
8084	8	3298
8085	8	3299
8086	8	3300
8087	8	3301
8088	8	3302
8089	8	3303
8090	8	3304
8091	8	3305
8092	8	3306
8093	8	3307
8094	8	3308
8095	8	3309
8096	8	3310
8097	8	3311
8098	8	3312
8099	8	3313
8100	8	3314
8101	8	3315
8102	8	3316
8103	8	3317
8104	8	3318
8105	8	3319
8106	8	3320
8107	8	3321
8108	8	3322
8109	8	3323
8110	8	3324
8111	8	3325
8112	8	3326
8113	8	3327
8114	8	3328
8115	8	3329
8116	8	3330
8117	8	3331
8118	8	3332
8119	8	3333
8120	8	3334
8121	8	3335
8122	8	3336
8123	8	3349
8124	8	3350
8125	8	3351
8126	8	3352
8127	8	3353
8128	8	3354
8129	8	3355
8130	8	3356
8131	8	3357
8132	8	3358
8133	8	3359
8134	8	3365
8135	8	3366
8136	8	3367
8137	8	3368
8138	8	3369
8139	8	3370
8140	8	3371
8141	8	3372
8142	8	3373
8143	8	3374
8144	8	3375
8145	8	3376
8146	8	3377
8147	8	3378
8148	8	3379
8149	8	3380
8150	8	3381
8151	8	3382
8152	8	3383
8153	8	3384
8154	8	3385
8155	8	3386
8156	8	3387
8157	8	3388
8158	8	3389
8159	8	3390
8160	8	3391
8161	8	3392
8162	8	3393
8163	8	3394
8164	8	3395
8165	8	3396
8166	8	3397
8167	8	3398
8168	8	3399
8169	8	3400
8170	8	3401
8171	8	3402
8172	8	3403
8173	8	3404
8174	8	3405
8175	8	3406
8176	8	3407
8177	8	3408
8178	8	3409
8179	8	3410
8180	8	3411
8181	8	3412
8182	8	3413
8183	8	3414
8184	8	3415
8185	8	3416
8186	8	3417
8187	8	3418
8188	8	3419
8189	8	3420
8190	8	3421
8191	8	3422
8192	8	3423
8193	8	3424
8194	8	3425
8195	8	3426
8196	8	3427
8197	8	3430
8198	8	3431
8199	8	3432
8200	8	3433
8201	8	3434
8202	8	3435
8203	8	3436
8204	8	3437
8205	8	3438
8206	8	3439
8207	8	3440
8208	8	3441
8209	8	3442
8210	8	3443
8211	8	3444
8212	8	3445
8213	8	3446
8214	8	3447
8215	8	3448
8216	8	3449
8217	8	3450
8218	8	3451
8219	8	3452
8220	8	3453
8221	8	3454
8222	8	3455
8223	8	3456
8224	8	3457
8225	8	3458
8226	8	3459
8227	8	3460
8228	8	3461
8229	8	3462
8230	8	3463
8231	8	3464
8232	8	3465
8233	8	3466
8234	8	3467
8235	8	3468
8236	8	3469
8237	8	3470
8238	8	3471
8239	8	3472
8240	8	3473
8241	8	3474
8242	8	3475
8243	8	3476
8244	8	3477
8245	8	3478
8246	8	3479
8247	8	3480
8248	8	3481
8249	8	3482
8250	8	3483
8251	8	3484
8252	8	3485
8253	8	3486
8254	8	3487
8255	8	3488
8256	8	3489
8257	8	3490
8258	8	3491
8259	8	3492
8260	8	3493
8261	8	3494
8262	8	3495
8263	8	3496
8264	8	3497
8265	8	3498
8266	8	3499
8267	8	3500
8268	8	3501
8269	8	3502
8270	8	3503
8271	9	3402
8272	10	2819
8273	10	2820
8274	10	2821
8275	10	2822
8276	10	2823
8277	10	2824
8278	10	2825
8279	10	2826
8280	10	2827
8281	10	2828
8282	10	2829
8283	10	2830
8284	10	2831
8285	10	2832
8286	10	2833
8287	10	2834
8288	10	2835
8289	10	2836
8290	10	2837
8291	10	2838
8292	10	2839
8293	10	2840
8294	10	2841
8295	10	2842
8296	10	2843
8297	10	2844
8298	10	2845
8299	10	2846
8300	10	2847
8301	10	2848
8302	10	2849
8303	10	2850
8304	10	2851
8305	10	2852
8306	10	2853
8307	10	2854
8308	10	2855
8309	10	2856
8310	10	2857
8311	10	2858
8312	10	2859
8313	10	2860
8314	10	2861
8315	10	2862
8316	10	2863
8317	10	2864
8318	10	2865
8319	10	2866
8320	10	2867
8321	10	2868
8322	10	2869
8323	10	2870
8324	10	2871
8325	10	2872
8326	10	2873
8327	10	2874
8328	10	2875
8329	10	2876
8330	10	2877
8331	10	2878
8332	10	2879
8333	10	2880
8334	10	2881
8335	10	2882
8336	10	2883
8337	10	2884
8338	10	2885
8339	10	2886
8340	10	2887
8341	10	2888
8342	10	2889
8343	10	2890
8344	10	2891
8345	10	2892
8346	10	2893
8347	10	2894
8348	10	2895
8349	10	2896
8350	10	2897
8351	10	2898
8352	10	2899
8353	10	2900
8354	10	2901
8355	10	2902
8356	10	2903
8357	10	2904
8358	10	2905
8359	10	2906
8360	10	2907
8361	10	2908
8362	10	2909
8363	10	2910
8364	10	2911
8365	10	2912
8366	10	2913
8367	10	2914
8368	10	2915
8369	10	2916
8370	10	2917
8371	10	2918
8372	10	2919
8373	10	2920
8374	10	2921
8375	10	2922
8376	10	2923
8377	10	2924
8378	10	2925
8379	10	3165
8380	10	3166
8381	10	3167
8382	10	3168
8383	10	3169
8384	10	3170
8385	10	3171
8386	10	3172
8387	10	3173
8388	10	3174
8389	10	3175
8390	10	3176
8391	10	3177
8392	10	3178
8393	10	3179
8394	10	3180
8395	10	3181
8396	10	3182
8397	10	3183
8398	10	3184
8399	10	3185
8400	10	3186
8401	10	3187
8402	10	3188
8403	10	3189
8404	10	3190
8405	10	3191
8406	10	3192
8407	10	3193
8408	10	3194
8409	10	3195
8410	10	3196
8411	10	3197
8412	10	3198
8413	10	3199
8414	10	3200
8415	10	3201
8416	10	3202
8417	10	3203
8418	10	3204
8419	10	3205
8420	10	3206
8421	10	3207
8422	10	3208
8423	10	3209
8424	10	3210
8425	10	3211
8426	10	3212
8427	10	3213
8428	10	3214
8429	10	3215
8430	10	3216
8431	10	3217
8432	10	3218
8433	10	3219
8434	10	3220
8435	10	3221
8436	10	3222
8437	10	3223
8438	10	3224
8439	10	3226
8440	10	3227
8441	10	3228
8442	10	3229
8443	10	3230
8444	10	3231
8445	10	3232
8446	10	3233
8447	10	3234
8448	10	3235
8449	10	3236
8450	10	3237
8451	10	3238
8452	10	3239
8453	10	3240
8454	10	3241
8455	10	3242
8456	10	3243
8457	10	3244
8458	10	3245
8459	10	3246
8460	10	3247
8461	10	3248
8462	10	3249
8463	10	3250
8464	10	3251
8465	10	3252
8466	10	3337
8467	10	3338
8468	10	3339
8469	10	3340
8470	10	3341
8471	10	3342
8472	10	3343
8473	10	3344
8474	10	3345
8475	10	3346
8476	10	3347
8477	10	3348
8478	10	3360
8479	10	3361
8480	10	3362
8481	10	3363
8482	10	3364
8483	10	3428
8484	10	3429
8485	11	215
8486	11	219
8487	11	220
8488	11	228
8489	11	230
8490	11	236
8491	11	391
8492	11	393
8493	11	501
8494	11	504
8495	11	516
8496	11	523
8497	11	730
8498	11	738
8499	11	852
8500	11	858
8501	11	864
8502	11	867
8503	11	874
8504	11	877
8505	11	885
8506	11	888
8507	11	1088
8508	11	1093
8509	11	1099
8510	11	1105
8511	11	1514
8512	11	1518
8513	11	1519
8514	11	1916
8515	11	1921
8516	11	1928
8517	11	2752
8518	11	2753
8519	11	2754
8520	11	2758
8521	11	2767
8522	11	2768
8523	11	2769
8524	12	3403
8525	12	3404
8526	12	3405
8527	12	3406
8528	12	3407
8529	12	3408
8530	12	3409
8531	12	3410
8532	12	3411
8533	12	3412
8534	12	3413
8535	12	3414
8536	12	3415
8537	12	3416
8538	12	3417
8539	12	3418
8540	12	3419
8541	12	3420
8542	12	3421
8543	12	3422
8544	12	3423
8545	12	3424
8546	12	3425
8547	12	3426
8548	12	3427
8549	12	3430
8550	12	3431
8551	12	3432
8552	12	3433
8553	12	3434
8554	12	3435
8555	12	3436
8556	12	3437
8557	12	3438
8558	12	3439
8559	12	3440
8560	12	3441
8561	12	3442
8562	12	3443
8563	12	3444
8564	12	3445
8565	12	3446
8566	12	3447
8567	12	3448
8568	12	3449
8569	12	3450
8570	12	3451
8571	12	3452
8572	12	3453
8573	12	3454
8574	12	3479
8575	12	3480
8576	12	3481
8577	12	3482
8578	12	3483
8579	12	3484
8580	12	3485
8581	12	3486
8582	12	3487
8583	12	3488
8584	12	3489
8585	12	3490
8586	12	3491
8587	12	3492
8588	12	3493
8589	12	3494
8590	12	3495
8591	12	3496
8592	12	3497
8593	12	3498
8594	12	3499
8595	12	3500
8596	12	3501
8597	12	3502
8598	12	3503
8599	13	3479
8600	13	3480
8601	13	3481
8602	13	3482
8603	13	3483
8604	13	3484
8605	13	3485
8606	13	3486
8607	13	3487
8608	13	3488
8609	13	3489
8610	13	3490
8611	13	3491
8612	13	3492
8613	13	3493
8614	13	3494
8615	13	3495
8616	13	3496
8617	13	3497
8618	13	3498
8619	13	3499
8620	13	3500
8621	13	3501
8622	13	3502
8623	13	3503
8624	14	3430
8625	14	3431
8626	14	3432
8627	14	3433
8628	14	3434
8629	14	3435
8630	14	3436
8631	14	3437
8632	14	3438
8633	14	3439
8634	14	3440
8635	14	3441
8636	14	3442
8637	14	3443
8638	14	3444
8639	14	3445
8640	14	3446
8641	14	3447
8642	14	3448
8643	14	3449
8644	14	3450
8645	14	3451
8646	14	3452
8647	14	3453
8648	14	3454
8649	15	3403
8650	15	3404
8651	15	3405
8652	15	3406
8653	15	3407
8654	15	3408
8655	15	3409
8656	15	3410
8657	15	3411
8658	15	3412
8659	15	3413
8660	15	3414
8661	15	3415
8662	15	3416
8663	15	3417
8664	15	3418
8665	15	3419
8666	15	3420
8667	15	3421
8668	15	3422
8669	15	3423
8670	15	3424
8671	15	3425
8672	15	3426
8673	15	3427
8674	16	52
8675	16	2003
8676	16	2004
8677	16	2005
8678	16	2007
8679	16	2010
8680	16	2013
8681	16	2194
8682	16	2195
8683	16	2198
8684	16	2206
8685	16	2512
8686	16	2516
8687	16	2550
8688	16	3367
8689	17	1
8690	17	2
8691	17	3
8692	17	4
8693	17	5
8694	17	152
8695	17	160
8696	17	1278
8697	17	1283
8698	17	1335
8699	17	1345
8700	17	1380
8701	17	1392
8702	17	1801
8703	17	1830
8704	17	1837
8705	17	1854
8706	17	1876
8707	17	1880
8708	17	1942
8709	17	1945
8710	17	1984
8711	17	2094
8712	17	2095
8713	17	2096
8714	17	3290
8715	18	597
\.


--
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: superadmin
--

COPY public.track (track_id, name, composer, milliseconds, bytes, unit_price, album_id, genre_id, media_type_id) FROM stdin;
1	For Those About To Rock (We Salute You)	Angus Young, Malcolm Young, Brian Johnson	343719	11170334	0.99	1	1	1
2	Balls to the Wall		342562	5510424	0.99	2	1	2
3	Fast As a Shark	F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman	230619	3990994	0.99	3	1	2
4	Restless and Wild	F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman	252051	4331779	0.99	3	1	2
5	Princess of the Dawn	Deaffy & R.A. Smith-Diesel	375418	6290521	0.99	3	1	2
6	Put The Finger On You	Angus Young, Malcolm Young, Brian Johnson	205662	6713451	0.99	1	1	1
7	Let's Get It Up	Angus Young, Malcolm Young, Brian Johnson	233926	7636561	0.99	1	1	1
8	Inject The Venom	Angus Young, Malcolm Young, Brian Johnson	210834	6852860	0.99	1	1	1
9	Snowballed	Angus Young, Malcolm Young, Brian Johnson	203102	6599424	0.99	1	1	1
10	Evil Walks	Angus Young, Malcolm Young, Brian Johnson	263497	8611245	0.99	1	1	1
11	C.O.D.	Angus Young, Malcolm Young, Brian Johnson	199836	6566314	0.99	1	1	1
12	Breaking The Rules	Angus Young, Malcolm Young, Brian Johnson	263288	8596840	0.99	1	1	1
13	Night Of The Long Knives	Angus Young, Malcolm Young, Brian Johnson	205688	6706347	0.99	1	1	1
14	Spellbound	Angus Young, Malcolm Young, Brian Johnson	270863	8817038	0.99	1	1	1
15	Go Down	AC/DC	331180	10847611	0.99	4	1	1
16	Dog Eat Dog	AC/DC	215196	7032162	0.99	4	1	1
17	Let There Be Rock	AC/DC	366654	12021261	0.99	4	1	1
18	Bad Boy Boogie	AC/DC	267728	8776140	0.99	4	1	1
19	Problem Child	AC/DC	325041	10617116	0.99	4	1	1
20	Overdose	AC/DC	369319	12066294	0.99	4	1	1
21	Hell Ain't A Bad Place To Be	AC/DC	254380	8331286	0.99	4	1	1
22	Whole Lotta Rosie	AC/DC	323761	10547154	0.99	4	1	1
23	Walk On Water	Steven Tyler, Joe Perry, Jack Blades, Tommy Shaw	295680	9719579	0.99	5	1	1
24	Love In An Elevator	Steven Tyler, Joe Perry	321828	10552051	0.99	5	1	1
25	Rag Doll	Steven Tyler, Joe Perry, Jim Vallance, Holly Knight	264698	8675345	0.99	5	1	1
26	What It Takes	Steven Tyler, Joe Perry, Desmond Child	310622	10144730	0.99	5	1	1
27	Dude (Looks Like A Lady)	Steven Tyler, Joe Perry, Desmond Child	264855	8679940	0.99	5	1	1
28	Janie's Got A Gun	Steven Tyler, Tom Hamilton	330736	10869391	0.99	5	1	1
29	Cryin'	Steven Tyler, Joe Perry, Taylor Rhodes	309263	10056995	0.99	5	1	1
30	Amazing	Steven Tyler, Richie Supa	356519	11616195	0.99	5	1	1
31	Blind Man	Steven Tyler, Joe Perry, Taylor Rhodes	240718	7877453	0.99	5	1	1
32	Deuces Are Wild	Steven Tyler, Jim Vallance	215875	7074167	0.99	5	1	1
33	The Other Side	Steven Tyler, Jim Vallance	244375	7983270	0.99	5	1	1
34	Crazy	Steven Tyler, Joe Perry, Desmond Child	316656	10402398	0.99	5	1	1
35	Eat The Rich	Steven Tyler, Joe Perry, Jim Vallance	251036	8262039	0.99	5	1	1
36	Angel	Steven Tyler, Desmond Child	307617	9989331	0.99	5	1	1
37	Livin' On The Edge	Steven Tyler, Joe Perry, Mark Hudson	381231	12374569	0.99	5	1	1
38	All I Really Want	Alanis Morissette & Glenn Ballard	284891	9375567	0.99	6	1	1
39	You Oughta Know	Alanis Morissette & Glenn Ballard	249234	8196916	0.99	6	1	1
40	Perfect	Alanis Morissette & Glenn Ballard	188133	6145404	0.99	6	1	1
41	Hand In My Pocket	Alanis Morissette & Glenn Ballard	221570	7224246	0.99	6	1	1
42	Right Through You	Alanis Morissette & Glenn Ballard	176117	5793082	0.99	6	1	1
43	Forgiven	Alanis Morissette & Glenn Ballard	300355	9753256	0.99	6	1	1
44	You Learn	Alanis Morissette & Glenn Ballard	239699	7824837	0.99	6	1	1
45	Head Over Feet	Alanis Morissette & Glenn Ballard	267493	8758008	0.99	6	1	1
46	Mary Jane	Alanis Morissette & Glenn Ballard	280607	9163588	0.99	6	1	1
47	Ironic	Alanis Morissette & Glenn Ballard	229825	7598866	0.99	6	1	1
48	Not The Doctor	Alanis Morissette & Glenn Ballard	227631	7604601	0.99	6	1	1
49	Wake Up	Alanis Morissette & Glenn Ballard	293485	9703359	0.99	6	1	1
50	You Oughta Know (Alternate)	Alanis Morissette & Glenn Ballard	491885	16008629	0.99	6	1	1
51	We Die Young	Jerry Cantrell	152084	4925362	0.99	7	1	1
52	Man In The Box	Jerry Cantrell, Layne Staley	286641	9310272	0.99	7	1	1
53	Sea Of Sorrow	Jerry Cantrell	349831	11316328	0.99	7	1	1
54	Bleed The Freak	Jerry Cantrell	241946	7847716	0.99	7	1	1
55	I Can't Remember	Jerry Cantrell, Layne Staley	222955	7302550	0.99	7	1	1
56	Love, Hate, Love	Jerry Cantrell, Layne Staley	387134	12575396	0.99	7	1	1
57	It Ain't Like That	Jerry Cantrell, Michael Starr, Sean Kinney	277577	8993793	0.99	7	1	1
58	Sunshine	Jerry Cantrell	284969	9216057	0.99	7	1	1
59	Put You Down	Jerry Cantrell	196231	6420530	0.99	7	1	1
60	Confusion	Jerry Cantrell, Michael Starr, Layne Staley	344163	11183647	0.99	7	1	1
61	I Know Somethin (Bout You)	Jerry Cantrell	261955	8497788	0.99	7	1	1
62	Real Thing	Jerry Cantrell, Layne Staley	243879	7937731	0.99	7	1	1
63	Desafinado		185338	5990473	0.99	8	2	1
64	Garota De Ipanema		285048	9348428	0.99	8	2	1
65	Samba De Uma Nota Só (One Note Samba)		137273	4535401	0.99	8	2	1
66	Por Causa De Você		169900	5536496	0.99	8	2	1
67	Ligia		251977	8226934	0.99	8	2	1
68	Fotografia		129227	4198774	0.99	8	2	1
69	Dindi (Dindi)		253178	8149148	0.99	8	2	1
70	Se Todos Fossem Iguais A Você (Instrumental)		134948	4393377	0.99	8	2	1
71	Falando De Amor		219663	7121735	0.99	8	2	1
72	Angela		169508	5574957	0.99	8	2	1
73	Corcovado (Quiet Nights Of Quiet Stars)		205662	6687994	0.99	8	2	1
74	Outra Vez		126511	4110053	0.99	8	2	1
75	O Boto (Bôto)		366837	12089673	0.99	8	2	1
76	Canta, Canta Mais		271856	8719426	0.99	8	2	1
77	Enter Sandman	Apocalyptica	221701	7286305	0.99	9	3	1
78	Master Of Puppets	Apocalyptica	436453	14375310	0.99	9	3	1
79	Harvester Of Sorrow	Apocalyptica	374543	12372536	0.99	9	3	1
80	The Unforgiven	Apocalyptica	322925	10422447	0.99	9	3	1
81	Sad But True	Apocalyptica	288208	9405526	0.99	9	3	1
82	Creeping Death	Apocalyptica	308035	10110980	0.99	9	3	1
83	Wherever I May Roam	Apocalyptica	369345	12033110	0.99	9	3	1
84	Welcome Home (Sanitarium)	Apocalyptica	350197	11406431	0.99	9	3	1
85	Cochise	Audioslave/Chris Cornell	222380	5339931	0.99	10	1	1
86	Show Me How to Live	Audioslave/Chris Cornell	277890	6672176	0.99	10	1	1
87	Gasoline	Audioslave/Chris Cornell	279457	6709793	0.99	10	1	1
88	What You Are	Audioslave/Chris Cornell	249391	5988186	0.99	10	1	1
89	Like a Stone	Audioslave/Chris Cornell	294034	7059624	0.99	10	1	1
90	Set It Off	Audioslave/Chris Cornell	263262	6321091	0.99	10	1	1
91	Shadow on the Sun	Audioslave/Chris Cornell	343457	8245793	0.99	10	1	1
92	I am the Highway	Audioslave/Chris Cornell	334942	8041411	0.99	10	1	1
93	Exploder	Audioslave/Chris Cornell	206053	4948095	0.99	10	1	1
94	Hypnotize	Audioslave/Chris Cornell	206628	4961887	0.99	10	1	1
95	Bring'em Back Alive	Audioslave/Chris Cornell	329534	7911634	0.99	10	1	1
96	Light My Way	Audioslave/Chris Cornell	303595	7289084	0.99	10	1	1
97	Getaway Car	Audioslave/Chris Cornell	299598	7193162	0.99	10	1	1
98	The Last Remaining Light	Audioslave/Chris Cornell	317492	7622615	0.99	10	1	1
99	Your Time Has Come	Cornell, Commerford, Morello, Wilk	255529	8273592	0.99	11	4	1
100	Out Of Exile	Cornell, Commerford, Morello, Wilk	291291	9506571	0.99	11	4	1
101	Be Yourself	Cornell, Commerford, Morello, Wilk	279484	9106160	0.99	11	4	1
102	Doesn't Remind Me	Cornell, Commerford, Morello, Wilk	255869	8357387	0.99	11	4	1
103	Drown Me Slowly	Cornell, Commerford, Morello, Wilk	233691	7609178	0.99	11	4	1
104	Heaven's Dead	Cornell, Commerford, Morello, Wilk	276688	9006158	0.99	11	4	1
105	The Worm	Cornell, Commerford, Morello, Wilk	237714	7710800	0.99	11	4	1
106	Man Or Animal	Cornell, Commerford, Morello, Wilk	233195	7542942	0.99	11	4	1
107	Yesterday To Tomorrow	Cornell, Commerford, Morello, Wilk	273763	8944205	0.99	11	4	1
108	Dandelion	Cornell, Commerford, Morello, Wilk	278125	9003592	0.99	11	4	1
109	#1 Zero	Cornell, Commerford, Morello, Wilk	299102	9731988	0.99	11	4	1
110	The Curse	Cornell, Commerford, Morello, Wilk	309786	10029406	0.99	11	4	1
111	Money	Berry Gordy, Jr./Janie Bradford	147591	2365897	0.99	12	5	1
112	Long Tall Sally	Enotris Johnson/Little Richard/Robert Bumps Blackwell	106396	1707084	0.99	12	5	1
113	Bad Boy	Larry Williams	116088	1862126	0.99	12	5	1
114	Twist And Shout	Bert Russell/Phil Medley	161123	2582553	0.99	12	5	1
115	Please Mr. Postman	Brian Holland/Freddie Gorman/Georgia Dobbins/Robert Bateman/William Garrett	137639	2206986	0.99	12	5	1
116	C'Mon Everybody	Eddie Cochran/Jerry Capehart	140199	2247846	0.99	12	5	1
117	Rock 'N' Roll Music	Chuck Berry	141923	2276788	0.99	12	5	1
118	Slow Down	Larry Williams	163265	2616981	0.99	12	5	1
119	Roadrunner	Bo Diddley	143595	2301989	0.99	12	5	1
120	Carol	Chuck Berry	143830	2306019	0.99	12	5	1
121	Good Golly Miss Molly	Little Richard	106266	1704918	0.99	12	5	1
122	20 Flight Rock	Ned Fairchild	107807	1299960	0.99	12	5	1
123	Quadrant	Billy Cobham	261851	8538199	0.99	13	2	1
124	Snoopy's search-Red baron	Billy Cobham	456071	15075616	0.99	13	2	1
125	Spanish moss-"A sound portrait"-Spanish moss	Billy Cobham	248084	8217867	0.99	13	2	1
126	Moon germs	Billy Cobham	294060	9714812	0.99	13	2	1
127	Stratus	Billy Cobham	582086	19115680	0.99	13	2	1
128	The pleasant pheasant	Billy Cobham	318066	10630578	0.99	13	2	1
129	Solo-Panhandler	Billy Cobham	246151	8230661	0.99	13	2	1
130	Do what cha wanna	George Duke	274155	9018565	0.99	13	2	1
131	Intro/ Low Down		323683	10642901	0.99	14	3	1
132	13 Years Of Grief		246987	8137421	0.99	14	3	1
133	Stronger Than Death		300747	9869647	0.99	14	3	1
134	All For You		235833	7726948	0.99	14	3	1
135	Super Terrorizer		319373	10513905	0.99	14	3	1
136	Phoney Smile Fake Hellos		273606	9011701	0.99	14	3	1
137	Lost My Better Half		284081	9355309	0.99	14	3	1
138	Bored To Tears		247327	8130090	0.99	14	3	1
139	A.N.D.R.O.T.A.Z.		266266	8574746	0.99	14	3	1
140	Born To Booze		282122	9257358	0.99	14	3	1
141	World Of Trouble		359157	11820932	0.99	14	3	1
142	No More Tears		555075	18041629	0.99	14	3	1
143	The Begining... At Last		365662	11965109	0.99	14	3	1
144	Heart Of Gold		194873	6417460	0.99	15	3	1
145	Snowblind		420022	13842549	0.99	15	3	1
146	Like A Bird		276532	9115657	0.99	15	3	1
147	Blood In The Wall		284368	9359475	0.99	15	3	1
148	The Beginning...At Last		271960	8975814	0.99	15	3	1
149	Black Sabbath		382066	12440200	0.99	16	3	1
150	The Wizard		264829	8646737	0.99	16	3	1
151	Behind The Wall Of Sleep		217573	7169049	0.99	16	3	1
152	N.I.B.		368770	12029390	0.99	16	3	1
153	Evil Woman		204930	6655170	0.99	16	3	1
154	Sleeping Village		644571	21128525	0.99	16	3	1
155	Warning		212062	6893363	0.99	16	3	1
156	Wheels Of Confusion / The Straightener	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	494524	16065830	0.99	17	3	1
157	Tomorrow's Dream	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	192496	6252071	0.99	17	3	1
158	Changes	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	286275	9175517	0.99	17	3	1
159	FX	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	103157	3331776	0.99	17	3	1
160	Supernaut	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	285779	9245971	0.99	17	3	1
412	Die Die My Darling	Danzig	149315	4867667	0.99	35	3	1
161	Snowblind	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	331676	10813386	0.99	17	3	1
162	Cornucopia	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	234814	7653880	0.99	17	3	1
163	Laguna Sunrise	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	173087	5671374	0.99	17	3	1
164	St. Vitus Dance	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	149655	4884969	0.99	17	3	1
165	Under The Sun/Every Day Comes and Goes	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	350458	11360486	0.99	17	3	1
166	Smoked Pork		47333	1549074	0.99	18	4	1
167	Body Count's In The House		204251	6715413	0.99	18	4	1
168	Now Sports		4884	161266	0.99	18	4	1
169	Body Count		317936	10489139	0.99	18	4	1
170	A Statistic		6373	211997	0.99	18	4	1
171	Bowels Of The Devil		223216	7324125	0.99	18	4	1
172	The Real Problem		11650	387360	0.99	18	4	1
173	KKK Bitch		173008	5709631	0.99	18	4	1
174	D Note		95738	3067064	0.99	18	4	1
175	Voodoo		300721	9875962	0.99	18	4	1
176	The Winner Loses		392254	12843821	0.99	18	4	1
177	There Goes The Neighborhood		350171	11443471	0.99	18	4	1
178	Oprah		6635	224313	0.99	18	4	1
179	Evil Dick		239020	7828873	0.99	18	4	1
180	Body Count Anthem		166426	5463690	0.99	18	4	1
181	Momma's Gotta Die Tonight		371539	12122946	0.99	18	4	1
182	Freedom Of Speech		281234	9337917	0.99	18	4	1
183	King In Crimson	Roy Z	283167	9218499	0.99	19	3	1
184	Chemical Wedding	Roy Z	246177	8022764	0.99	19	3	1
185	The Tower	Roy Z	285257	9435693	0.99	19	3	1
186	Killing Floor	Adrian Smith	269557	8854240	0.99	19	3	1
187	Book Of Thel	Eddie Casillas/Roy Z	494393	16034404	0.99	19	3	1
188	Gates Of Urizen	Roy Z	265351	8627004	0.99	19	3	1
189	Jerusalem	Roy Z	402390	13194463	0.99	19	3	1
190	Trupets Of Jericho	Roy Z	359131	11820908	0.99	19	3	1
191	Machine Men	Adrian Smith	341655	11138147	0.99	19	3	1
192	The Alchemist	Roy Z	509413	16545657	0.99	19	3	1
193	Realword	Roy Z	237531	7802095	0.99	19	3	1
194	First Time I Met The Blues	Eurreal Montgomery	140434	4604995	0.99	20	6	1
195	Let Me Love You Baby	Willie Dixon	175386	5716994	0.99	20	6	1
196	Stone Crazy	Buddy Guy	433397	14184984	0.99	20	6	1
197	Pretty Baby	Willie Dixon	237662	7848282	0.99	20	6	1
198	When My Left Eye Jumps	Al Perkins/Willie Dixon	235311	7685363	0.99	20	6	1
199	Leave My Girl Alone	Buddy Guy	204721	6859518	0.99	20	6	1
200	She Suits Me To A Tee	Buddy Guy	136803	4456321	0.99	20	6	1
201	Keep It To Myself (Aka Keep It To Yourself)	Sonny Boy Williamson [I]	166060	5487056	0.99	20	6	1
202	My Time After Awhile	Robert Geddins/Ron Badger/Sheldon Feinberg	182491	6022698	0.99	20	6	1
203	Too Many Ways (Alternate)	Willie Dixon	135053	4459946	0.99	20	6	1
204	Talkin' 'Bout Women Obviously	Amos Blakemore/Buddy Guy	589531	19161377	0.99	20	6	1
205	Jorge Da Capadócia	Jorge Ben	177397	5842196	0.99	21	7	1
206	Prenda Minha	Tradicional	99369	3225364	0.99	21	7	1
207	Meditação	Tom Jobim - Newton Mendoça	148793	4865597	0.99	21	7	1
208	Terra	Caetano Veloso	482429	15889054	0.99	21	7	1
209	Eclipse Oculto	Caetano Veloso	221936	7382703	0.99	21	7	1
210	Texto "Verdade Tropical"	Caetano Veloso	84088	2752161	0.99	21	7	1
211	Bem Devagar	Gilberto Gil	133172	4333651	0.99	21	7	1
212	Drão	Gilberto Gil	156264	5065932	0.99	21	7	1
213	Saudosismo	Caetano Veloso	144326	4726981	0.99	21	7	1
214	Carolina	Chico Buarque	181812	5924159	0.99	21	7	1
215	Sozinho	Peninha	190589	6253200	0.99	21	7	1
216	Esse Cara	Caetano Veloso	223111	7217126	0.99	21	7	1
217	Mel	Caetano Veloso - Waly Salomão	294765	9854062	0.99	21	7	1
218	Linha Do Equador	Caetano Veloso - Djavan	299337	10003747	0.99	21	7	1
219	Odara	Caetano Veloso	141270	4704104	0.99	21	7	1
220	A Luz De Tieta	Caetano Veloso	251742	8507446	0.99	21	7	1
221	Atrás Da Verd-E-Rosa Só Não Vai Quem Já Morreu	David Corrêa - Paulinho Carvalho - Carlos Sena - Bira do Ponto	307252	10364247	0.99	21	7	1
222	Vida Boa	Fausto Nilo - Armandinho	281730	9411272	0.99	21	7	1
223	Sozinho (Hitmakers Classic Mix)		436636	14462072	0.99	22	7	1
224	Sozinho (Hitmakers Classic Radio Edit)		195004	6455134	0.99	22	7	1
225	Sozinho (Caêdrum 'n' Bass)		328071	10975007	0.99	22	7	1
226	Carolina		163056	5375395	0.99	23	7	1
227	Essa Moça Ta Diferente		167235	5568574	0.99	23	7	1
228	Vai Passar		369763	12359161	0.99	23	7	1
229	Samba De Orly		162429	5431854	0.99	23	7	1
230	Bye, Bye Brasil		283402	9499590	0.99	23	7	1
231	Atras Da Porta		189675	6132843	0.99	23	7	1
232	Tatuagem		172120	5645703	0.99	23	7	1
233	O Que Será (À Flor Da Terra)		167288	5574848	0.99	23	7	1
234	Morena De Angola		186801	6373932	0.99	23	7	1
235	Apesar De Você		234501	7886937	0.99	23	7	1
236	A Banda		132493	4349539	0.99	23	7	1
237	Minha Historia		182256	6029673	0.99	23	7	1
238	Com Açúcar E Com Afeto		175386	5846442	0.99	23	7	1
239	Brejo Da Cruz		214099	7270749	0.99	23	7	1
240	Meu Caro Amigo		260257	8778172	0.99	23	7	1
241	Geni E O Zepelim		317570	10342226	0.99	23	7	1
242	Trocando Em Miúdos		169717	5461468	0.99	23	7	1
243	Vai Trabalhar Vagabundo		139154	4693941	0.99	23	7	1
244	Gota D'água		153208	5074189	0.99	23	7	1
245	Construção / Deus Lhe Pague		383059	12675305	0.99	23	7	1
246	Mateus Enter	Chico Science	33149	1103013	0.99	24	7	1
247	O Cidadão Do Mundo	Chico Science	200933	6724966	0.99	24	7	1
248	Etnia	Chico Science	152555	5061413	0.99	24	7	1
413	Loverman	Cave	472764	15446975	0.99	35	3	1
249	Quilombo Groove [Instrumental]	Chico Science	151823	5042447	0.99	24	7	1
250	Macô	Chico Science	249600	8253934	0.99	24	7	1
251	Um Passeio No Mundo Livre	Chico Science	240091	7984291	0.99	24	7	1
252	Samba Do Lado	Chico Science	227317	7541688	0.99	24	7	1
253	Maracatu Atômico	Chico Science	284264	9670057	0.99	24	7	1
254	O Encontro De Isaac Asimov Com Santos Dumont No Céu	Chico Science	99108	3240816	0.99	24	7	1
255	Corpo De Lama	Chico Science	232672	7714954	0.99	24	7	1
256	Sobremesa	Chico Science	240091	7960868	0.99	24	7	1
257	Manguetown	Chico Science	194560	6475159	0.99	24	7	1
258	Um Satélite Na Cabeça	Chico Science	126615	4272821	0.99	24	7	1
259	Baião Ambiental [Instrumental]	Chico Science	152659	5198539	0.99	24	7	1
260	Sangue De Bairro	Chico Science	132231	4415557	0.99	24	7	1
261	Enquanto O Mundo Explode	Chico Science	88764	2968650	0.99	24	7	1
262	Interlude Zumbi	Chico Science	71627	2408550	0.99	24	7	1
263	Criança De Domingo	Chico Science	208222	6984813	0.99	24	7	1
264	Amor De Muito	Chico Science	175333	5881293	0.99	24	7	1
265	Samidarish [Instrumental]	Chico Science	272431	8911641	0.99	24	7	1
266	Maracatu Atômico [Atomic Version]	Chico Science	273084	9019677	0.99	24	7	1
267	Maracatu Atômico [Ragga Mix]	Chico Science	210155	6986421	0.99	24	7	1
268	Maracatu Atômico [Trip Hop]	Chico Science	221492	7380787	0.99	24	7	1
269	Banditismo Por Uma Questa		307095	10251097	0.99	25	7	1
270	Banditismo Por Uma Questa		243644	8147224	0.99	25	7	1
271	Rios Pontes & Overdrives		286720	9659152	0.99	25	7	1
272	Cidade		216346	7241817	0.99	25	7	1
273	Praiera		183640	6172781	0.99	25	7	1
274	Samba Makossa		271856	9095410	0.99	25	7	1
275	Da Lama Ao Caos		251559	8378065	0.99	25	7	1
276	Maracatu De Tiro Certeiro		88868	2901397	0.99	25	7	1
277	Salustiano Song		215405	7183969	0.99	25	7	1
278	Antene Se		248372	8253618	0.99	25	7	1
279	Risoflora		105586	3536938	0.99	25	7	1
280	Lixo Do Mangue		193253	6534200	0.99	25	7	1
281	Computadores Fazem Arte		404323	13702771	0.99	25	7	1
282	Girassol	Bino Farias/Da Gama/Lazão/Pedro Luis/Toni Garrido	249808	8327676	0.99	26	8	1
283	A Sombra Da Maldade	Da Gama/Toni Garrido	230922	7697230	0.99	26	8	1
284	Johnny B. Goode	Chuck Berry	254615	8505985	0.99	26	8	1
285	Soldado Da Paz	Herbert Vianna	194220	6455080	0.99	26	8	1
286	Firmamento	Bino Farias/Da Gama/Henry Lawes/Lazão/Toni Garrido/Winston Foser-Vers	222145	7402658	0.99	26	8	1
287	Extra	Gilberto Gil	304352	10078050	0.99	26	8	1
288	O Erê	Bernardo Vilhena/Bino Farias/Da Gama/Lazão/Toni Garrido	236382	7866924	0.99	26	8	1
289	Podes Crer	Bino Farias/Da Gama/Lazão/Toni Garrido	232280	7747747	0.99	26	8	1
290	A Estrada	Bino Farias/Da Gama/Lazão/Toni Garrido	248842	8275673	0.99	26	8	1
291	Berlim	Da Gama/Toni Garrido	207542	6920424	0.99	26	8	1
292	Já Foi	Bino Farias/Da Gama/Lazão/Toni Garrido	221544	7388466	0.99	26	8	1
293	Onde Você Mora?	Marisa Monte/Nando Reis	256026	8502588	0.99	26	8	1
294	Pensamento	Bino Farias/Da Gamma/Lazão/Rás Bernard	173008	5748424	0.99	26	8	1
295	Conciliação	Da Gama/Lazão/Rás Bernardo	257619	8552474	0.99	26	8	1
296	Realidade Virtual	Bino Farias/Da Gama/Lazão/Toni Garrido	195239	6503533	0.99	26	8	1
297	Mensagem	Bino Farias/Da Gama/Lazão/Rás Bernardo	225332	7488852	0.99	26	8	1
298	A Cor Do Sol	Bernardo Vilhena/Da Gama/Lazão	231392	7663348	0.99	26	8	1
299	Onde Você Mora?	Marisa Monte/Nando Reis	298396	10056970	0.99	27	8	1
300	O Erê	Bernardo Vilhena/Bino/Da Gama/Lazao/Toni Garrido	206942	6950332	0.99	27	8	1
301	A Sombra Da Maldade	Da Gama/Toni Garrido	285231	9544383	0.99	27	8	1
302	A Estrada	Da Gama/Lazao/Toni Garrido	282174	9344477	0.99	27	8	1
303	Falar A Verdade	Bino/Da Gama/Ras Bernardo	244950	8189093	0.99	27	8	1
304	Firmamento	Harry Lawes/Winston Foster-Vers	225488	7507866	0.99	27	8	1
305	Pensamento	Bino/Da Gama/Ras Bernardo	192391	6399761	0.99	27	8	1
306	Realidade Virtual	Bino/Da Gamma/Lazao/Toni Garrido	240300	8069934	0.99	27	8	1
307	Doutor	Bino/Da Gama/Toni Garrido	178155	5950952	0.99	27	8	1
308	Na Frente Da TV	Bino/Da Gama/Lazao/Ras Bernardo	289750	9633659	0.99	27	8	1
309	Downtown	Cidade Negra	239725	8024386	0.99	27	8	1
310	Sábado A Noite	Lulu Santos	267363	8895073	0.99	27	8	1
311	A Cor Do Sol	Bernardo Vilhena/Da Gama/Lazao	273031	9142937	0.99	27	8	1
312	Eu Também Quero Beijar	Fausto Nilo/Moraes Moreira/Pepeu Gomes	211147	7029400	0.99	27	8	1
313	Noite Do Prazer		311353	10309980	0.99	28	7	1
314	À Francesa		244532	8150846	0.99	28	7	1
315	Cada Um Cada Um (A Namoradeira)		253492	8441034	0.99	28	7	1
316	Linha Do Equador		244715	8123466	0.99	28	7	1
317	Amor Demais		254040	8420093	0.99	28	7	1
318	Férias		264202	8731945	0.99	28	7	1
319	Gostava Tanto De Você		230452	7685326	0.99	28	7	1
320	Flor Do Futuro		275748	9205941	0.99	28	7	1
321	Felicidade Urgente		266605	8873358	0.99	28	7	1
322	Livre Pra Viver		214595	7111596	0.99	28	7	1
323	Dig-Dig, Lambe-Lambe (Ao Vivo)	Cassiano Costa/Cintia Maviane/J.F./Lucas Costa	205479	6892516	0.99	29	9	1
324	Pererê	Augusto Conceição/Chiclete Com Banana	198661	6643207	0.99	29	9	1
325	TriboTchan	Cal Adan/Paulo Levi	194194	6507950	0.99	29	9	1
326	Tapa Aqui, Descobre Ali	Paulo Levi/W. Rangel	188630	6327391	0.99	29	9	1
327	Daniela	Jorge Cardoso/Pierre Onasis	230791	7748006	0.99	29	9	1
328	Bate Lata	Fábio Nolasco/Gal Sales/Ivan Brasil	206733	7034985	0.99	29	9	1
329	Garotas do Brasil	Garay, Ricardo Engels/Luca Predabom/Ludwig, Carlos Henrique/Maurício Vieira	210155	6973625	0.99	29	9	1
414	Mercyful Fate	Diamond/Shermann	671712	21942829	0.99	35	3	1
330	Levada do Amor (Ailoviu)	Luiz Wanderley/Paulo Levi	190093	6457752	0.99	29	9	1
331	Lavadeira	Do Vale, Valverde/Gal Oliveira/Luciano Pinto	214256	7254147	0.99	29	9	1
332	Reboladeira	Cal Adan/Ferrugem/Julinho Carioca/Tríona Ní Dhomhnaill	210599	7027525	0.99	29	9	1
333	É que Nessa Encarnação Eu Nasci Manga	Lucina/Luli	196519	6568081	0.99	29	9	1
334	Reggae Tchan	Cal Adan/Del Rey, Tension/Edu Casanova	206654	6931328	0.99	29	9	1
335	My Love	Jauperi/Zeu Góes	203493	6772813	0.99	29	9	1
336	Latinha de Cerveja	Adriano Bernandes/Edmar Neves	166687	5532564	0.99	29	9	1
337	You Shook Me	J B Lenoir/Willie Dixon	315951	10249958	0.99	30	1	1
338	I Can't Quit You Baby	Willie Dixon	263836	8581414	0.99	30	1	1
339	Communication Breakdown	Jimmy Page/John Bonham/John Paul Jones	192653	6287257	0.99	30	1	1
340	Dazed and Confused	Jimmy Page	401920	13035765	0.99	30	1	1
341	The Girl I Love She Got Long Black Wavy Hair	Jimmy Page/John Bonham/John Estes/John Paul Jones/Robert Plant	183327	5995686	0.99	30	1	1
342	What is and Should Never Be	Jimmy Page/Robert Plant	260675	8497116	0.99	30	1	1
343	Communication Breakdown(2)	Jimmy Page/John Bonham/John Paul Jones	161149	5261022	0.99	30	1	1
344	Travelling Riverside Blues	Jimmy Page/Robert Johnson/Robert Plant	312032	10232581	0.99	30	1	1
345	Whole Lotta Love	Jimmy Page/John Bonham/John Paul Jones/Robert Plant/Willie Dixon	373394	12258175	0.99	30	1	1
346	Somethin' Else	Bob Cochran/Sharon Sheeley	127869	4165650	0.99	30	1	1
347	Communication Breakdown(3)	Jimmy Page/John Bonham/John Paul Jones	185260	6041133	0.99	30	1	1
348	I Can't Quit You Baby(2)	Willie Dixon	380551	12377615	0.99	30	1	1
349	You Shook Me(2)	J B Lenoir/Willie Dixon	619467	20138673	0.99	30	1	1
350	How Many More Times	Chester Burnett/Jimmy Page/John Bonham/John Paul Jones/Robert Plant	711836	23092953	0.99	30	1	1
351	Debra Kadabra	Frank Zappa	234553	7649679	0.99	31	1	1
352	Carolina Hard-Core Ecstasy	Frank Zappa	359680	11731061	0.99	31	1	1
353	Sam With The Showing Scalp Flat Top	Don Van Vliet	171284	5572993	0.99	31	1	1
354	Poofter's Froth Wyoming Plans Ahead	Frank Zappa	183902	6007019	0.99	31	1	1
355	200 Years Old	Frank Zappa	272561	8912465	0.99	31	1	1
356	Cucamonga	Frank Zappa	144483	4728586	0.99	31	1	1
357	Advance Romance	Frank Zappa	677694	22080051	0.99	31	1	1
358	Man With The Woman Head	Don Van Vliet	88894	2922044	0.99	31	1	1
359	Muffin Man	Frank Zappa	332878	10891682	0.99	31	1	1
360	Vai-Vai 2001		276349	9402241	0.99	32	10	1
361	X-9 2001		273920	9310370	0.99	32	10	1
362	Gavioes 2001		282723	9616640	0.99	32	10	1
363	Nene 2001		284969	9694508	0.99	32	10	1
364	Rosas De Ouro 2001		284342	9721084	0.99	32	10	1
365	Mocidade Alegre 2001		282488	9599937	0.99	32	10	1
366	Camisa Verde 2001		283454	9633755	0.99	32	10	1
367	Leandro De Itaquera 2001		274808	9451845	0.99	32	10	1
368	Tucuruvi 2001		287921	9883335	0.99	32	10	1
369	Aguia De Ouro 2001		284160	9698729	0.99	32	10	1
370	Ipiranga 2001		248293	8522591	0.99	32	10	1
371	Morro Da Casa Verde 2001		284708	9718778	0.99	32	10	1
372	Perola Negra 2001		281626	9619196	0.99	32	10	1
373	Sao Lucas 2001		296254	10020122	0.99	32	10	1
374	Guanabara	Marcos Valle	247614	8499591	0.99	33	7	1
375	Mas Que Nada	Jorge Ben	248398	8255254	0.99	33	7	1
376	Vôo Sobre o Horizonte	J.r.Bertami/Parana	225097	7528825	0.99	33	7	1
377	A Paz	Donato/Gilberto Gil	263183	8619173	0.99	33	7	1
378	Wave (Vou te Contar)	Antonio Carlos Jobim	271647	9057557	0.99	33	7	1
379	Água de Beber	Antonio Carlos Jobim/Vinicius de Moraes	146677	4866476	0.99	33	7	1
380	Samba da Bençaco	Baden Powell/Vinicius de Moraes	282200	9440676	0.99	33	7	1
381	Pode Parar	Jorge Vercilo/Jota Maranhao	179408	6046678	0.99	33	7	1
382	Menino do Rio	Caetano Veloso	262713	8737489	0.99	33	7	1
383	Ando Meio Desligado	Caetano Veloso	195813	6547648	0.99	33	7	1
384	Mistério da Raça	Luiz Melodia/Ricardo Augusto	184320	6191752	0.99	33	7	1
385	All Star	Nando Reis	176326	5891697	0.99	33	7	1
386	Menina Bonita	Alexandre Brazil/Pedro Luis/Rodrigo Cabelo	237087	7938246	0.99	33	7	1
387	Pescador de Ilusões	Macelo Yuka/O Rappa	245524	8267067	0.99	33	7	1
388	À Vontade (Live Mix)	Bombom/Ed Motta	180636	5972430	0.99	33	7	1
389	Maria Fumaça	Luiz Carlos/Oberdan	141008	4743149	0.99	33	7	1
390	Sambassim (dj patife remix)	Alba Carvalho/Fernando Porto	213655	7243166	0.99	33	7	1
391	Garota De Ipanema	Vários	279536	9141343	0.99	34	7	1
392	Tim Tim Por Tim Tim	Vários	213237	7143328	0.99	34	7	1
393	Tarde Em Itapoã	Vários	313704	10344491	0.99	34	7	1
394	Tanto Tempo	Vários	170292	5572240	0.99	34	7	1
395	Eu Vim Da Bahia - Live	Vários	157988	5115428	0.99	34	7	1
396	Alô Alô Marciano	Vários	238106	8013065	0.99	34	7	1
397	Linha Do Horizonte	Vários	279484	9275929	0.99	34	7	1
398	Only A Dream In Rio	Vários	371356	12192989	0.99	34	7	1
399	Abrir A Porta	Vários	271960	8991141	0.99	34	7	1
400	Alice	Vários	165982	5594341	0.99	34	7	1
401	Momentos Que Marcam	Vários	280137	9313740	0.99	34	7	1
402	Um Jantar Pra Dois	Vários	237714	7819755	0.99	34	7	1
403	Bumbo Da Mangueira	Vários	270158	9073350	0.99	34	7	1
404	Mr Funk Samba	Vários	213890	7102545	0.99	34	7	1
405	Santo Antonio	Vários	162716	5492069	0.99	34	7	1
406	Por Você	Vários	205557	6792493	0.99	34	7	1
407	Só Tinha De Ser Com Você	Vários	389642	13085596	0.99	34	7	1
408	Free Speech For The Dumb	Molaney/Morris/Roberts/Wainwright	155428	5076048	0.99	35	3	1
409	It's Electric	Harris/Tatler	213995	6978601	0.99	35	3	1
410	Sabbra Cadabra	Black Sabbath	380342	12418147	0.99	35	3	1
411	Turn The Page	Seger	366524	11946327	0.99	35	3	1
415	Astronomy	A.Bouchard/J.Bouchard/S.Pearlman	397531	13065612	0.99	35	3	1
416	Whiskey In The Jar	Traditional	305005	9943129	0.99	35	3	1
417	Tuesday's Gone	Collins/Van Zandt	545750	17900787	0.99	35	3	1
418	The More I See	Molaney/Morris/Roberts/Wainwright	287973	9378873	0.99	35	3	1
419	A Kind Of Magic	Roger Taylor	262608	8689618	0.99	36	1	1
420	Under Pressure	Queen & David Bowie	236617	7739042	0.99	36	1	1
421	Radio GA GA	Roger Taylor	343745	11358573	0.99	36	1	1
422	I Want It All	Queen	241684	7876564	0.99	36	1	1
423	I Want To Break Free	John Deacon	259108	8552861	0.99	36	1	1
424	Innuendo	Queen	387761	12664591	0.99	36	1	1
425	It's A Hard Life	Freddie Mercury	249417	8112242	0.99	36	1	1
426	Breakthru	Queen	249234	8150479	0.99	36	1	1
427	Who Wants To Live Forever	Brian May	297691	9577577	0.99	36	1	1
428	Headlong	Queen	273057	8921404	0.99	36	1	1
429	The Miracle	Queen	294974	9671923	0.99	36	1	1
430	I'm Going Slightly Mad	Queen	248032	8192339	0.99	36	1	1
431	The Invisible Man	Queen	238994	7920353	0.99	36	1	1
432	Hammer To Fall	Brian May	220316	7255404	0.99	36	1	1
433	Friends Will Be Friends	Freddie Mercury & John Deacon	248920	8114582	0.99	36	1	1
434	The Show Must Go On	Queen	263784	8526760	0.99	36	1	1
435	One Vision	Queen	242599	7936928	0.99	36	1	1
436	Detroit Rock City	Paul Stanley, B. Ezrin	218880	7146372	0.99	37	1	1
437	Black Diamond	Paul Stanley	314148	10266007	0.99	37	1	1
438	Hard Luck Woman	Paul Stanley	216032	7109267	0.99	37	1	1
439	Sure Know Something	Paul Stanley, Vincent Poncia	242468	7939886	0.99	37	1	1
440	Love Gun	Paul Stanley	196257	6424915	0.99	37	1	1
441	Deuce	Gene Simmons	185077	6097210	0.99	37	1	1
442	Goin' Blind	Gene Simmons, S. Coronel	216215	7045314	0.99	37	1	1
443	Shock Me	Ace Frehley	227291	7529336	0.99	37	1	1
444	Do You Love Me	Paul Stanley, B. Ezrin, K. Fowley	214987	6976194	0.99	37	1	1
445	She	Gene Simmons, S. Coronel	248346	8229734	0.99	37	1	1
446	I Was Made For Loving You	Paul Stanley, Vincent Poncia, Desmond Child	271360	9018078	0.99	37	1	1
447	Shout It Out Loud	Paul Stanley, Gene Simmons, B. Ezrin	219742	7194424	0.99	37	1	1
448	God Of Thunder	Paul Stanley	255791	8309077	0.99	37	1	1
449	Calling Dr. Love	Gene Simmons	225332	7395034	0.99	37	1	1
450	Beth	S. Penridge, Bob Ezrin, Peter Criss	166974	5360574	0.99	37	1	1
451	Strutter	Paul Stanley, Gene Simmons	192496	6317021	0.99	37	1	1
452	Rock And Roll All Nite	Paul Stanley, Gene Simmons	173609	5735902	0.99	37	1	1
453	Cold Gin	Ace Frehley	262243	8609783	0.99	37	1	1
454	Plaster Caster	Gene Simmons	207333	6801116	0.99	37	1	1
455	God Gave Rock 'n' Roll To You	Paul Stanley, Gene Simmons, Rus Ballard, Bob Ezrin	320444	10441590	0.99	37	1	1
456	Heart of the Night		273737	9098263	0.99	38	2	1
457	De La Luz		315219	10518284	0.99	38	2	1
458	Westwood Moon		295627	9765802	0.99	38	2	1
459	Midnight		266866	8851060	0.99	38	2	1
460	Playtime		273580	9070880	0.99	38	2	1
461	Surrender		287634	9422926	0.99	38	2	1
462	Valentino's		296124	9848545	0.99	38	2	1
463	Believe		310778	10317185	0.99	38	2	1
464	As We Sleep		316865	10429398	0.99	38	2	1
465	When Evening Falls		298135	9863942	0.99	38	2	1
466	J Squared		288757	9480777	0.99	38	2	1
467	Best Thing		274259	9069394	0.99	38	2	1
468	Maria	Billie Joe Armstrong -Words Green Day -Music	167262	5484747	0.99	39	4	1
469	Poprocks And Coke	Billie Joe Armstrong -Words Green Day -Music	158354	5243078	0.99	39	4	1
470	Longview	Billie Joe Armstrong -Words Green Day -Music	234083	7714939	0.99	39	4	1
471	Welcome To Paradise	Billie Joe Armstrong -Words Green Day -Music	224208	7406008	0.99	39	4	1
472	Basket Case	Billie Joe Armstrong -Words Green Day -Music	181629	5951736	0.99	39	4	1
473	When I Come Around	Billie Joe Armstrong -Words Green Day -Music	178364	5839426	0.99	39	4	1
474	She	Billie Joe Armstrong -Words Green Day -Music	134164	4425128	0.99	39	4	1
475	J.A.R. (Jason Andrew Relva)	Mike Dirnt -Words Green Day -Music	170997	5645755	0.99	39	4	1
476	Geek Stink Breath	Billie Joe Armstrong -Words Green Day -Music	135888	4408983	0.99	39	4	1
477	Brain Stew	Billie Joe Armstrong -Words Green Day -Music	193149	6305550	0.99	39	4	1
478	Jaded	Billie Joe Armstrong -Words Green Day -Music	90331	2950224	0.99	39	4	1
479	Walking Contradiction	Billie Joe Armstrong -Words Green Day -Music	151170	4932366	0.99	39	4	1
480	Stuck With Me	Billie Joe Armstrong -Words Green Day -Music	135523	4431357	0.99	39	4	1
481	Hitchin' A Ride	Billie Joe Armstrong -Words Green Day -Music	171546	5616891	0.99	39	4	1
482	Good Riddance (Time Of Your Life)	Billie Joe Armstrong -Words Green Day -Music	153600	5075241	0.99	39	4	1
483	Redundant	Billie Joe Armstrong -Words Green Day -Music	198164	6481753	0.99	39	4	1
484	Nice Guys Finish Last	Billie Joe Armstrong -Words Green Day -Music	170187	5604618	0.99	39	4	1
485	Minority	Billie Joe Armstrong -Words Green Day -Music	168803	5535061	0.99	39	4	1
486	Warning	Billie Joe Armstrong -Words Green Day -Music	221910	7343176	0.99	39	4	1
487	Waiting	Billie Joe Armstrong -Words Green Day -Music	192757	6316430	0.99	39	4	1
488	Macy's Day Parade	Billie Joe Armstrong -Words Green Day -Music	213420	7075573	0.99	39	4	1
489	Into The Light	David Coverdale	76303	2452653	0.99	40	1	1
490	River Song	David Coverdale	439510	14359478	0.99	40	1	1
491	She Give Me ...	David Coverdale	252551	8385478	0.99	40	1	1
492	Don't You Cry	David Coverdale	347036	11269612	0.99	40	1	1
493	Love Is Blind	David Coverdale/Earl Slick	344999	11409720	0.99	40	1	1
494	Slave	David Coverdale/Earl Slick	291892	9425200	0.99	40	1	1
495	Cry For Love	Bossi/David Coverdale/Earl Slick	293015	9567075	0.99	40	1	1
496	Living On Love	Bossi/David Coverdale/Earl Slick	391549	12785876	0.99	40	1	1
497	Midnight Blue	David Coverdale/Earl Slick	298631	9750990	0.99	40	1	1
498	Too Many Tears	Adrian Vanderberg/David Coverdale	359497	11810238	0.99	40	1	1
499	Don't Lie To Me	David Coverdale/Earl Slick	283585	9288007	0.99	40	1	1
500	Wherever You May Go	David Coverdale	239699	7803074	0.99	40	1	1
501	Grito De Alerta	Gonzaga Jr.	202213	6539422	0.99	41	7	1
502	Não Dá Mais Pra Segurar (Explode Coração)		219768	7083012	0.99	41	7	1
503	Começaria Tudo Outra Vez		196545	6473395	0.99	41	7	1
504	O Que É O Que É ?		259291	8650647	0.99	41	7	1
505	Sangrando	Gonzaga Jr/Gonzaguinha	169717	5494406	0.99	41	7	1
506	Diga Lá, Coração		255921	8280636	0.99	41	7	1
507	Lindo Lago Do Amor	Gonzaga Jr.	249678	8353191	0.99	41	7	1
508	Eu Apenas Queria Que Voçê Soubesse		155637	5130056	0.99	41	7	1
509	Com A Perna No Mundo	Gonzaga Jr.	227448	7747108	0.99	41	7	1
510	E Vamos À Luta		222406	7585112	0.99	41	7	1
511	Um Homem Também Chora (Guerreiro Menino)		207229	6854219	0.99	41	7	1
512	Comportamento Geral	Gonzaga Jr	181577	5997444	0.99	41	7	1
513	Ponto De Interrogação		180950	5946265	0.99	41	7	1
514	Espere Por Mim, Morena	Gonzaguinha	207072	6796523	0.99	41	7	1
515	Meia-Lua Inteira		222093	7466288	0.99	23	7	1
516	Voce e Linda		242938	8050268	0.99	23	7	1
517	Um Indio		195944	6453213	0.99	23	7	1
518	Podres Poderes		259761	8622495	0.99	23	7	1
519	Voce Nao Entende Nada - Cotidiano		421982	13885612	0.99	23	7	1
520	O Estrangeiro		374700	12472890	0.99	23	7	1
521	Menino Do Rio		147670	4862277	0.99	23	7	1
522	Qualquer Coisa		193410	6372433	0.99	23	7	1
523	Sampa		185051	6151831	0.99	23	7	1
524	Queixa		299676	9953962	0.99	23	7	1
525	O Leaozinho		184398	6098150	0.99	23	7	1
526	Fora Da Ordem		354011	11746781	0.99	23	7	1
527	Terra		401319	13224055	0.99	23	7	1
528	Alegria, Alegria		169221	5497025	0.99	23	7	1
529	Balada Do Louco	Arnaldo Baptista - Rita Lee	241057	7852328	0.99	42	4	1
530	Ando Meio Desligado	Arnaldo Baptista - Rita Lee -  Sérgio Dias	287817	9484504	0.99	42	4	1
531	Top Top	Os Mutantes - Arnolpho Lima Filho	146938	4875374	0.99	42	4	1
532	Baby	Caetano Veloso	177188	5798202	0.99	42	4	1
533	A E O Z	Mutantes	518556	16873005	0.99	42	4	1
534	Panis Et Circenses	Caetano Veloso - Gilberto Gil	125152	4069688	0.99	42	4	1
535	Chão De Estrelas	Orestes Barbosa-Sílvio Caldas	284813	9433620	0.99	42	4	1
536	Vida De Cachorro	Rita Lee - Arnaldo Baptista - Sérgio Baptista	195186	6411149	0.99	42	4	1
537	Bat Macumba	Gilberto Gil - Caetano Veloso	187794	6295223	0.99	42	4	1
538	Desculpe Babe	Arnaldo Baptista - Rita Lee	170422	5637959	0.99	42	4	1
539	Rita Lee	Arnaldo Baptista/Rita Lee/Sérgio Dias	189257	6270503	0.99	42	4	1
540	Posso Perder Minha Mulher, Minha Mãe, Desde Que Eu Tenha O Rock And Roll	Arnaldo Baptista - Rita Lee - Arnolpho Lima Filho	222955	7346254	0.99	42	4	1
541	Banho De Lua	B. de Filippi - F. Migliaci - Versão: Fred Jorge	221831	7232123	0.99	42	4	1
542	Meu Refrigerador Não Funciona	Arnaldo Baptista - Rita Lee - Sérgio Dias	382981	12495906	0.99	42	4	1
543	Burn	Coverdale/Lord/Paice	453955	14775708	0.99	43	1	1
544	Stormbringer	Coverdale	277133	9050022	0.99	43	1	1
545	Gypsy	Coverdale/Hughes/Lord/Paice	339173	11046952	0.99	43	1	1
546	Lady Double Dealer	Coverdale	233586	7608759	0.99	43	1	1
547	Mistreated	Coverdale	758648	24596235	0.99	43	1	1
548	Smoke On The Water	Gillan/Glover/Lord/Paice	618031	20103125	0.99	43	1	1
549	You Fool No One	Coverdale/Lord/Paice	804101	26369966	0.99	43	1	1
550	Custard Pie	Jimmy Page/Robert Plant	253962	8348257	0.99	44	1	1
551	The Rover	Jimmy Page/Robert Plant	337084	11011286	0.99	44	1	1
552	In My Time Of Dying	John Bonham/John Paul Jones	666017	21676727	0.99	44	1	1
553	Houses Of The Holy	Jimmy Page/Robert Plant	242494	7972503	0.99	44	1	1
554	Trampled Under Foot	John Paul Jones	336692	11154468	0.99	44	1	1
555	Kashmir	John Bonham	508604	16686580	0.99	44	1	1
556	Imperatriz	Guga/Marquinho Lessa/Tuninho Professor	339173	11348710	0.99	45	7	1
557	Beija-Flor	Caruso/Cleber/Deo/Osmar	327000	10991159	0.99	45	7	1
558	Viradouro	Dadinho/Gilbreto Gomes/Gustavo/P.C. Portugal/R. Mocoto	344320	11484362	0.99	45	7	1
559	Mocidade	Domenil/J. Brito/Joaozinho/Rap, Marcelo Do	261720	8817757	0.99	45	7	1
560	Unidos Da Tijuca	Douglas/Neves, Vicente Das/Silva, Gilmar L./Toninho Gentil/Wantuir	338834	11440689	0.99	45	7	1
561	Salgueiro	Augusto/Craig Negoescu/Rocco Filho/Saara, Ze Carlos Da	305920	10294741	0.99	45	7	1
562	Mangueira	Bizuca/Clóvis Pê/Gilson Bernini/Marelo D'Aguia	298318	9999506	0.99	45	7	1
563	União Da Ilha	Dito/Djalma Falcao/Ilha, Almir Da/Márcio André	330945	11100945	0.99	45	7	1
564	Grande Rio	Carlos Santos/Ciro/Claudio Russo/Zé Luiz	307252	10251428	0.99	45	7	1
565	Portela	Flavio Bororo/Paulo Apparicio/Wagner Alves/Zeca Sereno	319608	10712216	0.99	45	7	1
566	Caprichosos	Gule/Jorge 101/Lequinho/Luiz Piao	351320	11870956	0.99	45	7	1
567	Tradição	Adalto Magalha/Lourenco	269165	9114880	0.99	45	7	1
568	Império Serrano	Arlindo Cruz/Carlos Sena/Elmo Caetano/Mauricao	334942	11161196	0.99	45	7	1
569	Tuiuti	Claudio Martins/David Lima/Kleber Rodrigues/Livre, Cesare Som	259657	8749492	0.99	45	7	1
570	(Da Le) Yaleo	Santana	353488	11769507	0.99	46	1	1
571	Love Of My Life	Carlos Santana & Dave Matthews	347820	11634337	0.99	46	1	1
572	Put Your Lights On	E. Shrody	285178	9394769	0.99	46	1	1
573	Africa Bamba	I. Toure, S. Tidiane Toure, Carlos Santana & K. Perazzo	282827	9492487	0.99	46	1	1
574	Smooth	M. Itaal Shur & Rob Thomas	298161	9867455	0.99	46	1	1
575	Do You Like The Way	L. Hill	354899	11741062	0.99	46	1	1
576	Maria Maria	W. Jean, J. Duplessis, Carlos Santana, K. Perazzo & R. Rekow	262635	8664601	0.99	46	1	1
577	Migra	R. Taha, Carlos Santana & T. Lindsay	329064	10963305	0.99	46	1	1
578	Corazon Espinado	F. Olivera	276114	9206802	0.99	46	1	1
579	Wishing It Was	Eale-Eye Cherry, M. Simpson, J. King & M. Nishita	292832	9771348	0.99	46	1	1
580	El Farol	Carlos Santana & KC Porter	291160	9599353	0.99	46	1	1
581	Primavera	KC Porter & JB Eckl	378618	12504234	0.99	46	1	1
582	The Calling	Carlos Santana & C. Thompson	747755	24703884	0.99	46	1	1
583	Solução		247431	8100449	0.99	47	7	1
584	Manuel		230269	7677671	0.99	47	7	1
585	Entre E Ouça		286302	9391004	0.99	47	7	1
586	Um Contrato Com Deus		202501	6636465	0.99	47	7	1
587	Um Jantar Pra Dois		244009	8021589	0.99	47	7	1
588	Vamos Dançar		226194	7617432	0.99	47	7	1
589	Um Love		181603	6095524	0.99	47	7	1
590	Seis Da Tarde		238445	7935898	0.99	47	7	1
591	Baixo Rio		198008	6521676	0.99	47	7	1
592	Sombras Do Meu Destino		280685	9161539	0.99	47	7	1
593	Do You Have Other Loves?		295235	9604273	0.99	47	7	1
594	Agora Que O Dia Acordou		323213	10572752	0.99	47	7	1
595	Já!!!		217782	7103608	0.99	47	7	1
596	A Rua		238027	7930264	0.99	47	7	1
597	Now's The Time	Miles Davis	197459	6358868	0.99	48	2	1
598	Jeru	Miles Davis	193410	6222536	0.99	48	2	1
599	Compulsion	Miles Davis	345025	11254474	0.99	48	2	1
600	Tempus Fugit	Miles Davis	231784	7548434	0.99	48	2	1
601	Walkin'	Miles Davis	807392	26411634	0.99	48	2	1
602	'Round Midnight	Miles Davis	357459	11590284	0.99	48	2	1
603	Bye Bye Blackbird	Miles Davis	476003	15549224	0.99	48	2	1
604	New Rhumba	Miles Davis	277968	9018024	0.99	48	2	1
605	Generique	Miles Davis	168777	5437017	0.99	48	2	1
606	Summertime	Miles Davis	200437	6461370	0.99	48	2	1
607	So What	Miles Davis	564009	18360449	0.99	48	2	1
608	The Pan Piper	Miles Davis	233769	7593713	0.99	48	2	1
609	Someday My Prince Will Come	Miles Davis	544078	17890773	0.99	48	2	1
610	My Funny Valentine (Live)	Miles Davis	907520	29416781	0.99	49	2	1
611	E.S.P.	Miles Davis	330684	11079866	0.99	49	2	1
612	Nefertiti	Miles Davis	473495	15478450	0.99	49	2	1
613	Petits Machins (Little Stuff)	Miles Davis	487392	16131272	0.99	49	2	1
614	Miles Runs The Voodoo Down	Miles Davis	843964	27967919	0.99	49	2	1
615	Little Church (Live)	Miles Davis	196101	6273225	0.99	49	2	1
616	Black Satin	Miles Davis	316682	10529483	0.99	49	2	1
617	Jean Pierre (Live)	Miles Davis	243461	7955114	0.99	49	2	1
618	Time After Time	Miles Davis	220734	7292197	0.99	49	2	1
619	Portia	Miles Davis	378775	12520126	0.99	49	2	1
620	Space Truckin'	Blackmore/Gillan/Glover/Lord/Paice	1196094	39267613	0.99	50	1	1
621	Going Down / Highway Star	Gillan/Glover/Lord/Nix - Blackmore/Paice	913658	29846063	0.99	50	1	1
622	Mistreated (Alternate Version)	Blackmore/Coverdale	854700	27775442	0.99	50	1	1
623	You Fool No One (Alternate Version)	Blackmore/Coverdale/Lord/Paice	763924	24887209	0.99	50	1	1
624	Jeepers Creepers		185965	5991903	0.99	51	2	1
625	Blue Rythm Fantasy		348212	11204006	0.99	51	2	1
626	Drum Boogie		191555	6185636	0.99	51	2	1
627	Let Me Off Uptown		187637	6034685	0.99	51	2	1
628	Leave Us Leap		182726	5898810	0.99	51	2	1
629	Opus No.1		179800	5846041	0.99	51	2	1
630	Boogie Blues		204199	6603153	0.99	51	2	1
631	How High The Moon		201430	6529487	0.99	51	2	1
632	Disc Jockey Jump		193149	6260820	0.99	51	2	1
633	Up An' Atom		179565	5822645	0.99	51	2	1
634	Bop Boogie		189596	6093124	0.99	51	2	1
635	Lemon Drop		194089	6287531	0.99	51	2	1
636	Coronation Drop		176222	5899898	0.99	51	2	1
637	Overtime		163030	5432236	0.99	51	2	1
638	Imagination		289306	9444385	0.99	51	2	1
639	Don't Take Your Love From Me		282331	9244238	0.99	51	2	1
640	Midget		217025	7257663	0.99	51	2	1
641	I'm Coming Virginia		280163	9209827	0.99	51	2	1
642	Payin' Them Dues Blues		198556	6536918	0.99	51	2	1
643	Jungle Drums		199627	6546063	0.99	51	2	1
644	Showcase		201560	6697510	0.99	51	2	1
645	Swedish Schnapps		191268	6359750	0.99	51	2	1
646	Samba Da Bênção		409965	13490008	0.99	52	11	1
647	Pot-Pourri N.º 4		392437	13125975	0.99	52	11	1
648	Onde Anda Você		168437	5550356	0.99	52	11	1
649	Samba Da Volta		170631	5676090	0.99	52	11	1
650	Canto De Ossanha		204956	6771624	0.99	52	11	1
651	Pot-Pourri N.º 5		219898	7117769	0.99	52	11	1
652	Formosa		137482	4560873	0.99	52	11	1
653	Como É Duro Trabalhar		226168	7541177	0.99	52	11	1
654	Minha Namorada		244297	7927967	0.99	52	11	1
655	Por Que Será		162142	5371483	0.99	52	11	1
656	Berimbau		190667	6335548	0.99	52	11	1
657	Deixa		179826	5932799	0.99	52	11	1
658	Pot-Pourri N.º 2		211748	6878359	0.99	52	11	1
659	Samba Em Prelúdio		212636	6923473	0.99	52	11	1
660	Carta Ao Tom 74		162560	5382354	0.99	52	11	1
661	Linha de Passe (João Bosco)		230948	7902328	0.99	53	7	1
662	Pela Luz dos Olhos Teus (Miúcha e Tom Jobim)		163970	5399626	0.99	53	7	1
663	Chão de Giz (Elba Ramalho)		274834	9016916	0.99	53	7	1
664	Marina (Dorival Caymmi)		172643	5523628	0.99	53	7	1
665	Aquarela (Toquinho)		259944	8480140	0.99	53	7	1
666	Coração do Agreste (Fafá de Belém)		258194	8380320	0.99	53	7	1
667	Dona (Roupa Nova)		243356	7991295	0.99	53	7	1
668	Começaria Tudo Outra Vez (Maria Creuza)		206994	6851151	0.99	53	7	1
669	Caçador de Mim (Sá & Guarabyra)		238341	7751360	0.99	53	7	1
670	Romaria (Renato Teixeira)		244793	8033885	0.99	53	7	1
671	As Rosas Não Falam (Beth Carvalho)		116767	3836641	0.99	53	7	1
672	Wave (Os Cariocas)		130063	4298006	0.99	53	7	1
673	Garota de Ipanema (Dick Farney)		174367	5767474	0.99	53	7	1
674	Preciso Apender a Viver Só (Maysa)		143464	4642359	0.99	53	7	1
675	Susie Q	Hawkins-Lewis-Broadwater	275565	9043825	0.99	54	1	1
676	I Put A Spell On You	Jay Hawkins	272091	8943000	0.99	54	1	1
677	Proud Mary	J. C. Fogerty	189022	6229590	0.99	54	1	1
678	Bad Moon Rising	J. C. Fogerty	140146	4609835	0.99	54	1	1
679	Lodi	J. C. Fogerty	191451	6260214	0.99	54	1	1
680	Green River	J. C. Fogerty	154279	5105874	0.99	54	1	1
681	Commotion	J. C. Fogerty	162899	5354252	0.99	54	1	1
682	Down On The Corner	J. C. Fogerty	164858	5521804	0.99	54	1	1
683	Fortunate Son	J. C. Fogerty	140329	4617559	0.99	54	1	1
684	Travelin' Band	J. C. Fogerty	129358	4270414	0.99	54	1	1
685	Who'll Stop The Rain	J. C. Fogerty	149394	4899579	0.99	54	1	1
686	Up Around The Bend	J. C. Fogerty	162429	5368701	0.99	54	1	1
687	Run Through The Jungle	J. C. Fogerty	186044	6156567	0.99	54	1	1
688	Lookin' Out My Back Door	J. C. Fogerty	152946	5034670	0.99	54	1	1
689	Long As I Can See The Light	J. C. Fogerty	213237	6924024	0.99	54	1	1
690	I Heard It Through The Grapevine	Whitfield-Strong	664894	21947845	0.99	54	1	1
691	Have You Ever Seen The Rain?	J. C. Fogerty	160052	5263675	0.99	54	1	1
692	Hey Tonight	J. C. Fogerty	162847	5343807	0.99	54	1	1
693	Sweet Hitch-Hiker	J. C. Fogerty	175490	5716603	0.99	54	1	1
694	Someday Never Comes	J. C. Fogerty	239360	7945235	0.99	54	1	1
695	Walking On The Water	J.C. Fogerty	281286	9302129	0.99	55	1	1
696	Suzie-Q, Pt. 2	J.C. Fogerty	244114	7986637	0.99	55	1	1
697	Born On The Bayou	J.C. Fogerty	316630	10361866	0.99	55	1	1
698	Good Golly Miss Molly	J.C. Fogerty	163604	5348175	0.99	55	1	1
699	Tombstone Shadow	J.C. Fogerty	218880	7209080	0.99	55	1	1
700	Wrote A Song For Everyone	J.C. Fogerty	296385	9675875	0.99	55	1	1
701	Night Time Is The Right Time	J.C. Fogerty	190119	6211173	0.99	55	1	1
702	Cotton Fields	J.C. Fogerty	178181	5919224	0.99	55	1	1
703	It Came Out Of The Sky	J.C. Fogerty	176718	5807474	0.99	55	1	1
704	Don't Look Now	J.C. Fogerty	131918	4366455	0.99	55	1	1
705	The Midnight Special	J.C. Fogerty	253596	8297482	0.99	55	1	1
706	Before You Accuse Me	J.C. Fogerty	207804	6815126	0.99	55	1	1
707	My Baby Left Me	J.C. Fogerty	140460	4633440	0.99	55	1	1
708	Pagan Baby	J.C. Fogerty	385619	12713813	0.99	55	1	1
709	(Wish I Could) Hideaway	J.C. Fogerty	228466	7432978	0.99	55	1	1
710	It's Just A Thought	J.C. Fogerty	237374	7778319	0.99	55	1	1
711	Molina	J.C. Fogerty	163239	5390811	0.99	55	1	1
712	Born To Move	J.C. Fogerty	342804	11260814	0.99	55	1	1
713	Lookin' For A Reason	J.C. Fogerty	209789	6933135	0.99	55	1	1
714	Hello Mary Lou	J.C. Fogerty	132832	4476563	0.99	55	1	1
715	Gatas Extraordinárias		212506	7095702	0.99	56	7	1
716	Brasil		243696	7911683	0.99	56	7	1
717	Eu Sou Neguinha (Ao Vivo)		251768	8376000	0.99	56	7	1
718	Geração Coca-Cola (Ao Vivo)		228153	7573301	0.99	56	7	1
719	Lanterna Dos Afogados		204538	6714582	0.99	56	7	1
720	Coroné Antonio Bento		200437	6713066	0.99	56	7	1
721	Você Passa, Eu Acho Graça (Ao Vivo)		206733	6943576	0.99	56	7	1
722	Meu Mundo Fica Completo (Com Você)		247771	8322240	0.99	56	7	1
723	1° De Julho		270262	9017535	0.99	56	7	1
724	Música Urbana 2		194899	6383472	0.99	56	7	1
725	Vida Bandida (Ao Vivo)		192626	6360785	0.99	56	7	1
726	Palavras Ao Vento		212453	7048676	0.99	56	7	1
727	Não Sei O Que Eu Quero Da Vida		151849	5024963	0.99	56	7	1
728	Woman Is The Nigger Of The World (Ao Vivo)		298919	9724145	0.99	56	7	1
729	Juventude Transviada (Ao Vivo)		278622	9183808	0.99	56	7	1
730	Malandragem		247588	8165048	0.99	57	7	1
731	O Segundo Sol		252133	8335629	0.99	57	7	1
732	Smells Like Teen Spirit (Ao Vivo)		316865	10384506	0.99	57	7	1
733	E.C.T.		227500	7571834	0.99	57	7	1
734	Todo Amor Que Houver Nesta Vida		227160	7420347	0.99	57	7	1
735	Metrô. Linha 743		174654	5837495	0.99	57	7	1
736	Nós (Ao Vivo)		193828	6498661	0.99	57	7	1
737	Na Cadência Do Samba		196075	6483952	0.99	57	7	1
738	Admirável Gado Novo		274390	9144031	0.99	57	7	1
739	Eleanor Rigby		189466	6303205	0.99	57	7	1
740	Socorro		258586	8549393	0.99	57	7	1
741	Blues Da Piedade		257123	8472964	0.99	57	7	1
742	Rubens		211853	7026317	0.99	57	7	1
743	Não Deixe O Samba Morrer - Cassia Eller e Alcione		268173	8936345	0.99	57	7	1
744	Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)		188473	6195854	0.99	57	7	1
745	Comin' Home	Bolin/Coverdale/Paice	235781	7644604	0.99	58	1	1
746	Lady Luck	Cook/Coverdale	168202	5501379	0.99	58	1	1
747	Gettin' Tighter	Bolin/Hughes	218044	7176909	0.99	58	1	1
748	Dealer	Bolin/Coverdale	230922	7591066	0.99	58	1	1
749	I Need Love	Bolin/Coverdale	263836	8701064	0.99	58	1	1
750	Drifter	Bolin/Coverdale	242834	8001505	0.99	58	1	1
751	Love Child	Bolin/Coverdale	188160	6173806	0.99	58	1	1
752	This Time Around / Owed to 'G' [Instrumental]	Bolin/Hughes/Lord	370102	11995679	0.99	58	1	1
753	You Keep On Moving	Coverdale/Hughes	319111	10447868	0.99	58	1	1
754	Speed King	Blackmore, Gillan, Glover, Lord, Paice	264385	8587578	0.99	59	1	1
755	Bloodsucker	Blackmore, Gillan, Glover, Lord, Paice	256261	8344405	0.99	59	1	1
756	Child In Time	Blackmore, Gillan, Glover, Lord, Paice	620460	20230089	0.99	59	1	1
757	Flight Of The Rat	Blackmore, Gillan, Glover, Lord, Paice	478302	15563967	0.99	59	1	1
758	Into The Fire	Blackmore, Gillan, Glover, Lord, Paice	210259	6849310	0.99	59	1	1
759	Living Wreck	Blackmore, Gillan, Glover, Lord, Paice	274886	8993056	0.99	59	1	1
760	Hard Lovin' Man	Blackmore, Gillan, Glover, Lord, Paice	431203	13931179	0.99	59	1	1
761	Fireball	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	204721	6714807	0.99	60	1	1
762	No No No	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	414902	13646606	0.99	60	1	1
763	Strange Kind Of Woman	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	247092	8072036	0.99	60	1	1
764	Anyone's Daughter	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	284682	9354480	0.99	60	1	1
765	The Mule	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	322063	10638390	0.99	60	1	1
766	Fools	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	500427	16279366	0.99	60	1	1
767	No One Came	Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice	385880	12643813	0.99	60	1	1
768	Knocking At Your Back Door	Richie Blackmore, Ian Gillian, Roger Glover	424829	13779332	0.99	61	1	1
769	Bad Attitude	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord	307905	10035180	0.99	61	1	1
770	Child In Time (Son Of Aleric - Instrumental)	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	602880	19712753	0.99	61	1	1
771	Nobody's Home	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	243017	7929493	0.99	61	1	1
772	Black Night	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	368770	12058906	0.99	61	1	1
773	Perfect Strangers	Richie Blackmore, Ian Gillian, Roger Glover	321149	10445353	0.99	61	1	1
774	The Unwritten Law	Richie Blackmore, Ian Gillian, Roger Glover, Ian Paice	295053	9740361	0.99	61	1	1
775	Call Of The Wild	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord	293851	9575295	0.99	61	1	1
776	Hush	South	213054	6944928	0.99	61	1	1
777	Smoke On The Water	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	464378	15180849	0.99	61	1	1
778	Space Trucking	Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice	341185	11122183	0.99	61	1	1
779	Highway Star	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	368770	12012452	0.99	62	1	1
780	Maybe I'm A Leo	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	290455	9502646	0.99	62	1	1
781	Pictures Of Home	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	303777	9903835	0.99	62	1	1
782	Never Before	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	239830	7832790	0.99	62	1	1
783	Smoke On The Water	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	340871	11246496	0.99	62	1	1
784	Lazy	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	442096	14397671	0.99	62	1	1
785	Space Truckin'	Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover	272796	8981030	0.99	62	1	1
786	Vavoom : Ted The Mechanic	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	257384	8510755	0.99	63	1	1
787	Loosen My Strings	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	359680	11702232	0.99	63	1	1
788	Soon Forgotten	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	287791	9401383	0.99	63	1	1
789	Sometimes I Feel Like Screaming	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	451840	14789410	0.99	63	1	1
790	Cascades : I'm Not Your Lover	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	283689	9209693	0.99	63	1	1
791	The Aviator	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	320992	10532053	0.99	63	1	1
792	Rosa's Cantina	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	312372	10323804	0.99	63	1	1
793	A Castle Full Of Rascals	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	311693	10159566	0.99	63	1	1
794	A Touch Away	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	276323	9098561	0.99	63	1	1
795	Hey Cisco	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	354089	11600029	0.99	63	1	1
796	Somebody Stole My Guitar	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	249443	8180421	0.99	63	1	1
797	The Purpendicular Waltz	Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice	283924	9299131	0.99	63	1	1
798	King Of Dreams	Blackmore, Glover, Turner	328385	10733847	0.99	64	1	1
799	The Cut Runs Deep	Blackmore, Glover, Turner, Lord, Paice	342752	11191650	0.99	64	1	1
800	Fire In The Basement	Blackmore, Glover, Turner, Lord, Paice	283977	9267550	0.99	64	1	1
801	Truth Hurts	Blackmore, Glover, Turner	314827	10224612	0.99	64	1	1
802	Breakfast In Bed	Blackmore, Glover, Turner	317126	10323804	0.99	64	1	1
803	Love Conquers All	Blackmore, Glover, Turner	227186	7328516	0.99	64	1	1
804	Fortuneteller	Blackmore, Glover, Turner, Lord, Paice	349335	11369671	0.99	64	1	1
805	Too Much Is Not Enough	Turner, Held, Greenwood	257724	8382800	0.99	64	1	1
806	Wicked Ways	Blackmore, Glover, Turner, Lord, Paice	393691	12826582	0.99	64	1	1
807	Stormbringer	D.Coverdale/R.Blackmore/Ritchie Blackmore	246413	8044864	0.99	65	1	1
808	Love Don't Mean a Thing	D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore	263862	8675026	0.99	65	1	1
809	Holy Man	D.Coverdale/G.Hughes/Glenn Hughes/J.Lord/John Lord	270236	8818093	0.99	65	1	1
810	Hold On	D.Coverdal/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord	306860	10022428	0.99	65	1	1
811	Lady Double Dealer	D.Coverdale/R.Blackmore/Ritchie Blackmore	201482	6554330	0.99	65	1	1
812	You Can't Do it Right (With the One You Love)	D.Coverdale/G.Hughes/Glenn Hughes/R.Blackmore/Ritchie Blackmore	203755	6709579	0.99	65	1	1
813	High Ball Shooter	D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore	267833	8772471	0.99	65	1	1
814	The Gypsy	D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore	242886	7946614	0.99	65	1	1
815	Soldier Of Fortune	D.Coverdale/R.Blackmore/Ritchie Blackmore	193750	6315321	0.99	65	1	1
816	The Battle Rages On	ian paice/jon lord	356963	11626228	0.99	66	1	1
817	Lick It Up	roger glover	240274	7792604	0.99	66	1	1
818	Anya	jon lord/roger glover	392437	12754921	0.99	66	1	1
819	Talk About Love	roger glover	247823	8072171	0.99	66	1	1
820	Time To Kill	roger glover	351033	11354742	0.99	66	1	1
821	Ramshackle Man	roger glover	334445	10874679	0.99	66	1	1
822	A Twist In The Tail	roger glover	257462	8413103	0.99	66	1	1
823	Nasty Piece Of Work	jon lord/roger glover	276662	9076997	0.99	66	1	1
824	Solitaire	roger glover	282226	9157021	0.99	66	1	1
825	One Man's Meat	roger glover	278804	9068960	0.99	66	1	1
826	Pour Some Sugar On Me		292519	9518842	0.99	67	1	1
827	Photograph		248633	8108507	0.99	67	1	1
828	Love Bites		346853	11305791	0.99	67	1	1
829	Let's Get Rocked		296019	9724150	0.99	67	1	1
830	Two Steps Behind [Acoustic Version]		259787	8523388	0.99	67	1	1
831	Animal		244741	7985133	0.99	67	1	1
832	Heaven Is		214021	6988128	0.99	67	1	1
833	Rocket		247248	8092463	0.99	67	1	1
834	When Love & Hate Collide		257280	8364633	0.99	67	1	1
835	Action		220604	7130830	0.99	67	1	1
836	Make Love Like A Man		255660	8309725	0.99	67	1	1
837	Armageddon It		322455	10522352	0.99	67	1	1
838	Have You Ever Needed Someone So Bad		319320	10400020	0.99	67	1	1
839	Rock Of Ages		248424	8150318	0.99	67	1	1
840	Hysteria		355056	11622738	0.99	67	1	1
841	Bringin' On The Heartbreak		272457	8853324	0.99	67	1	1
842	Roll Call	Jim Beard	321358	10653494	0.99	68	2	1
843	Otay	John Scofield, Robert Aries, Milton Chambers and Gary Grainger	423653	14176083	0.99	68	2	1
844	Groovus Interruptus	Jim Beard	319373	10602166	0.99	68	2	1
845	Paris On Mine	Jon Herington	368875	12059507	0.99	68	2	1
846	In Time	Sylvester Stewart	368953	12287103	0.99	68	2	1
847	Plan B	Dean Brown, Dennis Chambers & Jim Beard	272039	9032315	0.99	68	2	1
848	Outbreak	Jim Beard & Jon Herington	659226	21685807	0.99	68	2	1
849	Baltimore, DC	John Scofield	346932	11394473	0.99	68	2	1
850	Talkin Loud and Saying Nothin	James Brown & Bobby Byrd	360411	11994859	0.99	68	2	1
851	Pétala		270080	8856165	0.99	69	7	1
852	Meu Bem-Querer		255608	8330047	0.99	69	7	1
853	Cigano		304692	10037362	0.99	69	7	1
854	Boa Noite		338755	11283582	0.99	69	7	1
855	Fato Consumado		211565	7018586	0.99	69	7	1
856	Faltando Um Pedaço		267728	8788760	0.99	69	7	1
857	Álibi		213237	6928434	0.99	69	7	1
858	Esquinas		280999	9096726	0.99	69	7	1
859	Se...		286432	9413777	0.99	69	7	1
860	Eu Te Devoro		311614	10312775	0.99	69	7	1
861	Lilás		274181	9049542	0.99	69	7	1
862	Acelerou		284081	9396942	0.99	69	7	1
863	Um Amor Puro		327784	10687311	0.99	69	7	1
864	Samurai	Djavan	330997	10872787	0.99	70	7	1
865	Nem Um Dia	Djavan	337423	11181446	0.99	70	7	1
866	Oceano	Djavan	217338	7026441	0.99	70	7	1
867	Açai	Djavan	270968	8893682	0.99	70	7	1
868	Serrado	Djavan	295314	9842240	0.99	70	7	1
869	Flor De Lis	Djavan	236355	7801108	0.99	70	7	1
870	Amar É Tudo	Djavan	211617	7073899	0.99	70	7	1
871	Azul	Djavan	253962	8381029	0.99	70	7	1
872	Seduzir	Djavan	277524	9163253	0.99	70	7	1
873	A Carta	Djavan - Gabriel, O Pensador	347297	11493463	0.99	70	7	1
874	Sina	Djavan	268173	8906539	0.99	70	7	1
875	Acelerou	Djavan	284133	9391439	0.99	70	7	1
876	Um Amor Puro	Djavan	327105	10664698	0.99	70	7	1
877	O Bêbado e a Equilibrista		223059	7306143	0.99	71	7	1
878	O Mestre-Sala dos Mares		186226	6180414	0.99	71	7	1
879	Atrás da Porta		166608	5432518	0.99	71	7	1
880	Dois Pra Lá, Dois Pra Cá		263026	8684639	0.99	71	7	1
881	Casa no Campo		170788	5531841	0.99	71	7	1
882	Romaria		242834	7968525	0.99	71	7	1
883	Alô, Alô, Marciano		241397	8137254	0.99	71	7	1
884	Me Deixas Louca		214831	6888030	0.99	71	7	1
885	Fascinação		180793	5793959	0.99	71	7	1
886	Saudosa Maloca		278125	9059416	0.99	71	7	1
887	As Aparências Enganam		247379	8014346	0.99	71	7	1
888	Madalena		157387	5243721	0.99	71	7	1
889	Maria Rosa		232803	7592504	0.99	71	7	1
890	Aprendendo A Jogar		290664	9391041	0.99	71	7	1
891	Layla	Clapton/Gordon	430733	14115792	0.99	72	6	1
892	Badge	Clapton/Harrison	163552	5322942	0.99	72	6	1
893	I Feel Free	Bruce/Clapton	174576	5725684	0.99	72	6	1
894	Sunshine Of Your Love	Bruce/Clapton	252891	8225889	0.99	72	6	1
895	Crossroads	Clapton/Robert Johnson Arr: Eric Clapton	253335	8273540	0.99	72	6	1
896	Strange Brew	Clapton/Collins/Pappalardi	167810	5489787	0.99	72	6	1
897	White Room	Bruce/Clapton	301583	9872606	0.99	72	6	1
898	Bell Bottom Blues	Clapton	304744	9946681	0.99	72	6	1
899	Cocaine	Cale/Clapton	215928	7138399	0.99	72	6	1
900	I Shot The Sheriff	Marley	263862	8738973	0.99	72	6	1
901	After Midnight	Clapton/J. J. Cale	191320	6460941	0.99	72	6	1
902	Swing Low Sweet Chariot	Clapton/Trad. Arr. Clapton	208143	6896288	0.99	72	6	1
903	Lay Down Sally	Clapton/Levy	231732	7774207	0.99	72	6	1
904	Knockin On Heavens Door	Clapton/Dylan	264411	8758819	0.99	72	6	1
905	Wonderful Tonight	Clapton	221387	7326923	0.99	72	6	1
906	Let It Grow	Clapton	297064	9742568	0.99	72	6	1
907	Promises	Clapton/F.eldman/Linn	180401	6006154	0.99	72	6	1
908	I Can't Stand It	Clapton	249730	8271980	0.99	72	6	1
909	Signe	Eric Clapton	193515	6475042	0.99	73	6	1
910	Before You Accuse Me	Eugene McDaniel	224339	7456807	0.99	73	6	1
911	Hey Hey	Big Bill Broonzy	196466	6543487	0.99	73	6	1
912	Tears In Heaven	Eric Clapton, Will Jennings	274729	9032835	0.99	73	6	1
913	Lonely Stranger	Eric Clapton	328724	10894406	0.99	73	6	1
914	Nobody Knows You When You're Down & Out	Jimmy Cox	231836	7669922	0.99	73	6	1
915	Layla	Eric Clapton, Jim Gordon	285387	9490542	0.99	73	6	1
916	Running On Faith	Jerry Lynn Williams	378984	12536275	0.99	73	6	1
917	Walkin' Blues	Robert Johnson	226429	7435192	0.99	73	6	1
918	Alberta	Traditional	222406	7412975	0.99	73	6	1
919	San Francisco Bay Blues	Jesse Fuller	203363	6724021	0.99	73	6	1
920	Malted Milk	Robert Johnson	216528	7096781	0.99	73	6	1
921	Old Love	Eric Clapton, Robert Cray	472920	15780747	0.99	73	6	1
922	Rollin' And Tumblin'	McKinley Morgenfield (Muddy Waters)	251768	8407355	0.99	73	6	1
923	Collision	Jon Hudson/Mike Patton	204303	6656596	0.99	74	4	1
924	Stripsearch	Jon Hudson/Mike Bordin/Mike Patton	270106	8861119	0.99	74	4	1
925	Last Cup Of Sorrow	Bill Gould/Mike Patton	251663	8221247	0.99	74	4	1
926	Naked In Front Of The Computer	Mike Patton	128757	4225077	0.99	74	4	1
927	Helpless	Bill Gould/Mike Bordin/Mike Patton	326217	10753135	0.99	74	4	1
928	Mouth To Mouth	Bill Gould/Jon Hudson/Mike Bordin/Mike Patton	228493	7505887	0.99	74	4	1
929	Ashes To Ashes	Bill Gould/Jon Hudson/Mike Bordin/Mike Patton/Roddy Bottum	217391	7093746	0.99	74	4	1
930	She Loves Me Not	Bill Gould/Mike Bordin/Mike Patton	209867	6887544	0.99	74	4	1
931	Got That Feeling	Mike Patton	140852	4643227	0.99	74	4	1
932	Paths Of Glory	Bill Gould/Jon Hudson/Mike Bordin/Mike Patton/Roddy Bottum	257253	8436300	0.99	74	4	1
933	Home Sick Home	Mike Patton	119040	3898976	0.99	74	4	1
934	Pristina	Bill Gould/Mike Patton	232698	7497361	0.99	74	4	1
935	Land Of Sunshine		223921	7353567	0.99	75	4	1
936	Caffeine		267937	8747367	0.99	75	4	1
937	Midlife Crisis		263235	8628841	0.99	75	4	1
938	RV		223242	7288162	0.99	75	4	1
939	Smaller And Smaller		310831	10180103	0.99	75	4	1
940	Everything's Ruined		273658	9010917	0.99	75	4	1
941	Malpractice		241371	7900683	0.99	75	4	1
942	Kindergarten		270680	8853647	0.99	75	4	1
943	Be Aggressive		222432	7298027	0.99	75	4	1
944	A Small Victory		297168	9733572	0.99	75	4	1
945	Crack Hitler		279144	9162435	0.99	75	4	1
946	Jizzlobber		398341	12926140	0.99	75	4	1
947	Midnight Cowboy		251924	8242626	0.99	75	4	1
948	Easy		185835	6073008	0.99	75	4	1
949	Get Out	Mike Bordin, Billy Gould, Mike Patton	137482	4524972	0.99	76	1	1
950	Ricochet	Mike Bordin, Billy Gould, Mike Patton	269400	8808812	0.99	76	1	1
951	Evidence	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	293590	9626136	0.99	76	1	1
952	The Gentle Art Of Making Enemies	Mike Bordin, Billy Gould, Mike Patton	209319	6908609	0.99	76	1	1
953	Star A.D.	Mike Bordin, Billy Gould, Mike Patton	203807	6747658	0.99	76	1	1
954	Cuckoo For Caca	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	222902	7388369	0.99	76	1	1
955	Caralho Voador	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	242102	8029054	0.99	76	1	1
956	Ugly In The Morning	Mike Bordin, Billy Gould, Mike Patton	186435	6224997	0.99	76	1	1
957	Digging The Grave	Mike Bordin, Billy Gould, Mike Patton	185129	6109259	0.99	76	1	1
958	Take This Bottle	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	298997	9779971	0.99	76	1	1
959	King For A Day	Mike Bordin, Billy Gould, Mike Patton, Trey Spruance	395859	13163733	0.99	76	1	1
960	What A Day	Mike Bordin, Billy Gould, Mike Patton	158275	5203430	0.99	76	1	1
961	The Last To Know	Mike Bordin, Billy Gould, Mike Patton	267833	8736776	0.99	76	1	1
962	Just A Man	Mike Bordin, Billy Gould, Mike Patton	336666	11031254	0.99	76	1	1
963	Absolute Zero	Mike Bordin, Billy Gould, Mike Patton	181995	5929427	0.99	76	1	1
964	From Out Of Nowhere	Faith No More	202527	6587802	0.99	77	4	1
965	Epic	Faith No More	294008	9631296	0.99	77	4	1
966	Falling To Pieces	Faith No More	316055	10333123	0.99	77	4	1
967	Surprise! You're Dead!	Faith No More	147226	4823036	0.99	77	4	1
968	Zombie Eaters	Faith No More	360881	11835367	0.99	77	4	1
969	The Real Thing	Faith No More	493635	16233080	0.99	77	4	1
970	Underwater Love	Faith No More	231993	7634387	0.99	77	4	1
971	The Morning After	Faith No More	223764	7355898	0.99	77	4	1
972	Woodpecker From Mars	Faith No More	340532	11174250	0.99	77	4	1
973	War Pigs	Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne	464770	15267802	0.99	77	4	1
974	Edge Of The World	Faith No More	250357	8235607	0.99	77	4	1
975	Deixa Entrar		33619	1095012	0.99	78	7	1
976	Falamansa Song		237165	7921313	0.99	78	7	1
977	Xote Dos Milagres		269557	8897778	0.99	78	7	1
978	Rindo À Toa		222066	7365321	0.99	78	7	1
979	Confidência		222197	7460829	0.99	78	7	1
980	Forró De Tóquio		169273	5588756	0.99	78	7	1
981	Zeca Violeiro		143673	4781949	0.99	78	7	1
982	Avisa		355030	11844320	0.99	78	7	1
983	Principiando/Decolagem		116767	3923789	0.99	78	7	1
984	Asas		231915	7711669	0.99	78	7	1
985	Medo De Escuro		213760	7056323	0.99	78	7	1
986	Oração		271072	9003882	0.99	78	7	1
987	Minha Gata		181838	6039502	0.99	78	7	1
988	Desaforo		174524	5853561	0.99	78	7	1
989	In Your Honor	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	230191	7468463	0.99	79	1	1
990	No Way Back	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	196675	6421400	0.99	79	1	1
991	Best Of You	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	255712	8363467	0.99	79	1	1
992	DOA	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	252186	8232342	0.99	79	1	1
993	Hell	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	117080	3819255	0.99	79	1	1
994	The Last Song	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	199523	6496742	0.99	79	1	1
995	Free Me	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	278700	9109340	0.99	79	1	1
996	Resolve	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	288731	9416186	0.99	79	1	1
997	The Deepest Blues Are Black	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	238419	7735473	0.99	79	1	1
998	End Over End	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett	352078	11395296	0.99	79	1	1
999	Still	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	313182	10323157	0.99	80	1	1
1000	What If I Do?	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	302994	9929799	0.99	80	1	1
1001	Miracle	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	209684	6877994	0.99	80	1	1
1002	Another Round	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	265848	8752670	0.99	80	1	1
1003	Friend Of A Friend	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	193280	6355088	0.99	80	1	1
1004	Over And Out	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	316264	10428382	0.99	80	1	1
1005	On The Mend	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	271908	9071997	0.99	80	1	1
1006	Virginia Moon	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	229198	7494639	0.99	80	1	1
1007	Cold Day In The Sun	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	200724	6596617	0.99	80	1	1
1008	Razor	Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS	293276	9721373	0.99	80	1	1
1009	All My Life	Foo Fighters	263653	8665545	0.99	81	4	1
1010	Low	Foo Fighters	268120	8847196	0.99	81	4	1
1011	Have It All	Foo Fighters	298057	9729292	0.99	81	4	1
1012	Times Like These	Foo Fighters	266370	8624691	0.99	81	4	1
1013	Disenchanted Lullaby	Foo Fighters	273528	8919111	0.99	81	4	1
1014	Tired Of You	Foo Fighters	311353	10094743	0.99	81	4	1
1015	Halo	Foo Fighters	306442	10026371	0.99	81	4	1
1016	Lonely As You	Foo Fighters	277185	9022628	0.99	81	4	1
1017	Overdrive	Foo Fighters	270550	8793187	0.99	81	4	1
1018	Burn Away	Foo Fighters	298396	9678073	0.99	81	4	1
1019	Come Back	Foo Fighters	469968	15371980	0.99	81	4	1
1020	Doll	Dave, Taylor, Nate, Chris	83487	2702572	0.99	82	1	1
1021	Monkey Wrench	Dave, Taylor, Nate, Chris	231523	7527531	0.99	82	1	1
1022	Hey, Johnny Park!	Dave, Taylor, Nate, Chris	248528	8079480	0.99	82	1	1
1023	My Poor Brain	Dave, Taylor, Nate, Chris	213446	6973746	0.99	82	1	1
1024	Wind Up	Dave, Taylor, Nate, Chris	152163	4950667	0.99	82	1	1
1025	Up In Arms	Dave, Taylor, Nate, Chris	135732	4406227	0.99	82	1	1
1026	My Hero	Dave, Taylor, Nate, Chris	260101	8472365	0.99	82	1	1
1027	See You	Dave, Taylor, Nate, Chris	146782	4888173	0.99	82	1	1
1028	Enough Space	Dave Grohl	157387	5169280	0.99	82	1	1
1029	February Stars	Dave, Taylor, Nate, Chris	289306	9344875	0.99	82	1	1
1030	Everlong	Dave Grohl	250749	8270816	0.99	82	1	1
1031	Walking After You	Dave Grohl	303856	9898992	0.99	82	1	1
1032	New Way Home	Dave, Taylor, Nate, Chris	342230	11205664	0.99	82	1	1
1033	My Way	claude françois/gilles thibault/jacques revaux/paul anka	275879	8928684	0.99	83	12	1
1034	Strangers In The Night	berthold kaempfert/charles singleton/eddie snyder	155794	5055295	0.99	83	12	1
1035	New York, New York	fred ebb/john kander	206001	6707993	0.99	83	12	1
1036	I Get A Kick Out Of You	cole porter	194429	6332441	0.99	83	12	1
1037	Something Stupid	carson c. parks	158615	5210643	0.99	83	12	1
1038	Moon River	henry mancini/johnny mercer	198922	6395808	0.99	83	12	1
1039	What Now My Love	carl sigman/gilbert becaud/pierre leroyer	149995	4913383	0.99	83	12	1
1040	Summer Love	hans bradtke/heinz meier/johnny mercer	174994	5693242	0.99	83	12	1
1041	For Once In My Life	orlando murden/ronald miller	171154	5557537	0.99	83	12	1
1042	Love And Marriage	jimmy van heusen/sammy cahn	89730	2930596	0.99	83	12	1
1043	They Can't Take That Away From Me	george gershwin/ira gershwin	161227	5240043	0.99	83	12	1
1044	My Kind Of Town	jimmy van heusen/sammy cahn	188499	6119915	0.99	83	12	1
1045	Fly Me To The Moon	bart howard	149263	4856954	0.99	83	12	1
1046	I've Got You Under My Skin	cole porter	210808	6883787	0.99	83	12	1
1047	The Best Is Yet To Come	carolyn leigh/cy coleman	173583	5633730	0.99	83	12	1
1048	It Was A Very Good Year	ervin drake	266605	8554066	0.99	83	12	1
1049	Come Fly With Me	jimmy van heusen/sammy cahn	190458	6231029	0.99	83	12	1
1050	That's Life	dean kay thompson/kelly gordon	187010	6095727	0.99	83	12	1
1051	The Girl From Ipanema	antonio carlos jobim/norman gimbel/vinicius de moraes	193750	6410674	0.99	83	12	1
1052	The Lady Is A Tramp	lorenz hart/richard rodgers	184111	5987372	0.99	83	12	1
1053	Bad, Bad Leroy Brown	jim croce	169900	5548581	0.99	83	12	1
1054	Mack The Knife	bert brecht/kurt weill/marc blitzstein	292075	9541052	0.99	83	12	1
1055	Loves Been Good To Me	rod mckuen	203964	6645365	0.99	83	12	1
1056	L.A. Is My Lady	alan bergman/marilyn bergman/peggy lipton jones/quincy jones	193175	6378511	0.99	83	12	1
1057	Entrando Na Sua (Intro)		179252	5840027	0.99	84	7	1
1058	Nervosa		229537	7680421	0.99	84	7	1
1059	Funk De Bamba (Com Fernanda Abreu)		237191	7866165	0.99	84	7	1
1060	Call Me At Cleo´s		236617	7920510	0.99	84	7	1
1061	Olhos Coloridos (Com Sandra De Sá)		321332	10567404	0.99	84	7	1
1062	Zambação		301113	10030604	0.99	84	7	1
1063	Funk Hum		244453	8084475	0.99	84	7	1
1064	Forty Days (Com DJ Hum)		221727	7347172	0.99	84	7	1
1065	Balada Da Paula	Emerson Villani	322821	10603717	0.99	84	7	1
1066	Dujji		324597	10833935	0.99	84	7	1
1067	Meu Guarda-Chuva		248528	8216625	0.99	84	7	1
1068	Motéis		213498	7041077	0.99	84	7	1
1069	Whistle Stop		526132	17533664	0.99	84	7	1
1070	16 Toneladas		191634	6390885	0.99	84	7	1
1071	Divirta-Se (Saindo Da Sua)		74919	2439206	0.99	84	7	1
1072	Forty Days Instrumental		292493	9584317	0.99	84	7	1
1073	Óia Eu Aqui De Novo		219454	7469735	0.99	85	10	1
1074	Baião Da Penha		247928	8393047	0.99	85	10	1
1075	Esperando Na Janela	Manuca/Raimundinho DoAcordion/Targino Godim	261041	8660617	0.99	85	10	1
1076	Juazeiro	Humberto Teixeira/Luiz Gonzaga	222275	7349779	0.99	85	10	1
1077	Último Pau-De-Arara	Corumbá/José Gumarães/Venancio	200437	6638563	0.99	85	10	1
1078	Asa Branca	Humberto Teixeira/Luiz Gonzaga	217051	7387183	0.99	85	10	1
1079	Qui Nem Jiló	Humberto Teixeira/Luiz Gonzaga	204695	6937472	0.99	85	10	1
1080	Assum Preto	Humberto Teixeira/Luiz Gonzaga	199653	6625000	0.99	85	10	1
1081	Pau-De-Arara	Guio De Morais E Seus Parentes/Luiz Gonzaga	191660	6340649	0.99	85	10	1
1082	A Volta Da Asa Branca	Luiz Gonzaga/Zé Dantas	271020	9098093	0.99	85	10	1
1083	O Amor Daqui De Casa	Gilberto Gil	148636	4888292	0.99	85	10	1
1084	As Pegadas Do Amor	Gilberto Gil	209136	6899062	0.99	85	10	1
1085	Lamento Sertanejo	Dominguinhos/Gilberto Gil	260963	8518290	0.99	85	10	1
1086	Casinha Feliz	Gilberto Gil	32287	1039615	0.99	85	10	1
1087	Introdução (Live)		154096	5227579	0.99	86	7	1
1088	Palco (Live)		238315	8026622	0.99	86	7	1
1089	Is This Love (Live)		295262	9819759	0.99	86	7	1
1090	Stir It Up (Live)		282409	9594738	0.99	86	7	1
1091	Refavela (Live)		236695	7985305	0.99	86	7	1
1092	Vendedor De Caranguejo (Live)		248842	8358128	0.99	86	7	1
1093	Quanta (Live)		357485	11774865	0.99	86	7	1
1094	Estrela (Live)		285309	9436411	0.99	86	7	1
1095	Pela Internet (Live)		263471	8804401	0.99	86	7	1
1096	Cérebro Eletrônico (Live)		231627	7805352	0.99	86	7	1
1097	Opachorô (Live)		259526	8596384	0.99	86	7	1
1098	Copacabana (Live)		289671	9673672	0.99	86	7	1
1099	A Novidade (Live)		316969	10508000	0.99	86	7	1
1100	Ghandi (Live)		222458	7481950	0.99	86	7	1
1101	De Ouro E Marfim (Live)		234971	7838453	0.99	86	7	1
1102	Doce De Carnaval (Candy All)		356101	11998470	0.99	87	2	1
1103	Lamento De Carnaval		294530	9819276	0.99	87	2	1
1104	Pretinha		265273	8914579	0.99	87	2	1
1105	A Novidade	Gilberto Gil	324780	10765600	0.99	73	7	1
1106	Tenho Sede	Gilberto Gil	261616	8708114	0.99	73	7	1
1107	Refazenda	Gilberto Gil	218305	7237784	0.99	73	7	1
1108	Realce	Gilberto Gil	264489	8847612	0.99	73	7	1
1109	Esotérico	Gilberto Gil	317779	10530533	0.99	73	7	1
1110	Drão	Gilberto Gil	301453	9931950	0.99	73	7	1
1111	A Paz	Gilberto Gil	293093	9593064	0.99	73	7	1
1112	Beira Mar	Gilberto Gil	295444	9597994	0.99	73	7	1
1113	Sampa	Gilberto Gil	225697	7469905	0.99	73	7	1
1114	Parabolicamará	Gilberto Gil	284943	9543435	0.99	73	7	1
1115	Tempo Rei	Gilberto Gil	302733	10019269	0.99	73	7	1
1116	Expresso 2222	Gilberto Gil	284760	9690577	0.99	73	7	1
1117	Aquele Abraço	Gilberto Gil	263993	8805003	0.99	73	7	1
1118	Palco	Gilberto Gil	270550	9049901	0.99	73	7	1
1119	Toda Menina Baiana	Gilberto Gil	278177	9351000	0.99	73	7	1
1120	Sítio Do Pica-Pau Amarelo	Gilberto Gil	218070	7217955	0.99	73	7	1
1121	Straight Out Of Line	Sully Erna	259213	8511877	0.99	88	3	1
1122	Faceless	Sully Erna	216006	6992417	0.99	88	3	1
1123	Changes	Sully Erna; Tony Rombola	260022	8455835	0.99	88	3	1
1124	Make Me Believe	Sully Erna	248607	8075050	0.99	88	3	1
1125	I Stand Alone	Sully Erna	246125	8017041	0.99	88	3	1
1126	Re-Align	Sully Erna	260884	8513891	0.99	88	3	1
1127	I Fucking Hate You	Sully Erna	247170	8059642	0.99	88	3	1
1128	Releasing The Demons	Sully Erna	252760	8276372	0.99	88	3	1
1129	Dead And Broken	Sully Erna	251454	8206611	0.99	88	3	1
1130	I Am	Sully Erna	239516	7803270	0.99	88	3	1
1131	The Awakening	Sully Erna	89547	3035251	0.99	88	3	1
1132	Serenity	Sully Erna; Tony Rombola	274834	9172976	0.99	88	3	1
1133	American Idiot	Billie Joe Armstrong, Mike Dirnt, Tré Cool	174419	5705793	0.99	89	4	1
1134	Jesus Of Suburbia / City Of The Damned / I Don't Care / Dearly Beloved / Tales Of Another Broken Home	Billie Joe Armstrong/Green Day	548336	17875209	0.99	89	4	1
1135	Holiday	Billie Joe Armstrong, Mike Dirnt, Tré Cool	232724	7599602	0.99	89	4	1
1136	Boulevard Of Broken Dreams	Mike Dint, Billie Joe, Tré Cool	260858	8485122	0.99	89	4	1
1137	Are We The Waiting	Green Day	163004	5328329	0.99	89	4	1
1138	St. Jimmy	Green Day	175307	5716589	0.99	89	4	1
1139	Give Me Novacaine	Green Day	205871	6752485	0.99	89	4	1
1140	She's A Rebel	Green Day	120528	3901226	0.99	89	4	1
1141	Extraordinary Girl	Green Day	214021	6975177	0.99	89	4	1
1142	Letterbomb	Green Day	246151	7980902	0.99	89	4	1
1143	Wake Me Up When September Ends	Mike Dint, Billie Joe, Tré Cool	285753	9325597	0.99	89	4	1
1144	Homecoming / The Death Of St. Jimmy / East 12th St. / Nobody Likes You / Rock And Roll Girlfriend / We're Coming Home Again	Mike Dirnt/Tré Cool	558602	18139840	0.99	89	4	1
1145	Whatsername	Green Day	252316	8244843	0.99	89	4	1
1146	Welcome to the Jungle		273552	4538451	0.99	90	1	2
1147	It's So Easy		202824	3394019	0.99	90	1	2
1148	Nightrain		268537	4457283	0.99	90	1	2
1149	Out Ta Get Me		263893	4382147	0.99	90	1	2
1150	Mr. Brownstone		228924	3816323	0.99	90	1	2
1151	Paradise City		406347	6687123	0.99	90	1	2
1152	My Michelle		219961	3671299	0.99	90	1	2
1153	Think About You		231640	3860275	0.99	90	1	2
1154	Sweet Child O' Mine		356424	5879347	0.99	90	1	2
1155	You're Crazy		197135	3301971	0.99	90	1	2
1156	Anything Goes		206400	3451891	0.99	90	1	2
1157	Rocket Queen		375349	6185539	0.99	90	1	2
1158	Right Next Door to Hell		182321	3175950	0.99	91	1	2
1159	Dust N' Bones		298374	5053742	0.99	91	1	2
1160	Live and Let Die		184016	3203390	0.99	91	1	2
1161	Don't Cry (Original)		284744	4833259	0.99	91	1	2
1162	Perfect Crime		143637	2550030	0.99	91	1	2
1163	You Ain't the First		156268	2754414	0.99	91	1	2
1164	Bad Obsession		328282	5537678	0.99	91	1	2
1165	Back off Bitch		303436	5135662	0.99	91	1	2
1166	Double Talkin' Jive		203637	3520862	0.99	91	1	2
1167	November Rain		537540	8923566	0.99	91	1	2
1168	The Garden		322175	5438862	0.99	91	1	2
1169	Garden of Eden		161539	2839694	0.99	91	1	2
1170	Don't Damn Me		318901	5385886	0.99	91	1	2
1171	Bad Apples		268351	4567966	0.99	91	1	2
1172	Dead Horse		257600	4394014	0.99	91	1	2
1173	Coma		616511	10201342	0.99	91	1	2
1174	Civil War	Duff McKagan/Slash/W. Axl Rose	461165	15046579	0.99	92	3	1
1175	14 Years	Izzy Stradlin'/W. Axl Rose	261355	8543664	0.99	92	3	1
1176	Yesterdays	Billy/Del James/W. Axl Rose/West Arkeen	196205	6398489	0.99	92	3	1
1177	Knockin' On Heaven's Door	Bob Dylan	336457	10986716	0.99	92	3	1
1178	Get In The Ring	Duff McKagan/Slash/W. Axl Rose	341054	11134105	0.99	92	3	1
1179	Shotgun Blues	W. Axl Rose	203206	6623916	0.99	92	3	1
1180	Breakdown	W. Axl Rose	424960	13978284	0.99	92	3	1
1181	Pretty Tied Up	Izzy Stradlin'	287477	9408754	0.99	92	3	1
1182	Locomotive	Slash/W. Axl Rose	522396	17236842	0.99	92	3	1
1183	So Fine	Duff McKagan	246491	8039484	0.99	92	3	1
1184	Estranged	W. Axl Rose	563800	18343787	0.99	92	3	1
1185	You Could Be Mine	Izzy Stradlin'/W. Axl Rose	343875	11207355	0.99	92	3	1
1186	Don't Cry	Izzy Stradlin'/W. Axl Rose	284238	9222458	0.99	92	3	1
1187	My World	W. Axl Rose	84532	2764045	0.99	92	3	1
1188	Colibri	Richard Bull	361012	12055329	0.99	93	2	1
1189	Love Is The Colour	R. Carless	251585	8419165	0.99	93	2	1
1190	Magnetic Ocean	Patrick Claher/Richard Bull	321123	10720741	0.99	93	2	1
1191	Deep Waters	Richard Bull	396460	13075359	0.99	93	2	1
1192	L'Arc En Ciel De Miles	Kevin Robinson/Richard Bull	242390	8053997	0.99	93	2	1
1193	Gypsy	Kevin Robinson	330997	11083374	0.99	93	2	1
1194	Journey Into Sunlight	Jean Paul Maunick	249756	8241177	0.99	93	2	1
1195	Sunchild	Graham Harvey	259970	8593143	0.99	93	2	1
1196	Millenium	Maxton Gig Beesley Jnr.	379167	12511939	0.99	93	2	1
1197	Thinking 'Bout Tomorrow	Fayyaz Virgi/Richard Bull	355395	11865384	0.99	93	2	1
1198	Jacob's Ladder	Julian Crampton	367647	12201595	0.99	93	2	1
1199	She Wears Black	G Harvey/R Hope-Taylor	528666	17617944	0.99	93	2	1
1200	Dark Side Of The Cog	Jean Paul Maunick	377155	12491122	0.99	93	2	1
1201	Different World		258692	4383764	0.99	94	1	2
1202	These Colours Don't Run		412152	6883500	0.99	94	1	2
1203	Brighter Than a Thousand Suns		526255	8721490	0.99	94	1	2
1204	The Pilgrim		307593	5172144	0.99	94	1	2
1205	The Longest Day		467810	7785748	0.99	94	1	2
1206	Out of the Shadows		336896	5647303	0.99	94	1	2
1207	The Reincarnation of Benjamin Breeg		442106	7367736	0.99	94	1	2
1208	For the Greater Good of God		564893	9367328	0.99	94	1	2
1209	Lord of Light		444614	7393698	0.99	94	1	2
1210	The Legacy		562966	9314287	0.99	94	1	2
1211	Hallowed Be Thy Name (Live) [Non Album Bonus Track]		431262	7205816	0.99	94	1	2
1212	The Number Of The Beast	Steve Harris	294635	4718897	0.99	95	3	1
1213	The Trooper	Steve Harris	235311	3766272	0.99	95	3	1
1214	Prowler	Steve Harris	255634	4091904	0.99	95	3	1
1215	Transylvania	Steve Harris	265874	4255744	0.99	95	3	1
1216	Remember Tomorrow	Paul Di'Anno/Steve Harris	352731	5648438	0.99	95	3	1
1217	Where Eagles Dare	Steve Harris	289358	4630528	0.99	95	3	1
1218	Sanctuary	David Murray/Paul Di'Anno/Steve Harris	293250	4694016	0.99	95	3	1
1219	Running Free	Paul Di'Anno/Steve Harris	228937	3663872	0.99	95	3	1
1220	Run To The Hilss	Steve Harris	237557	3803136	0.99	95	3	1
1221	2 Minutes To Midnight	Adrian Smith/Bruce Dickinson	337423	5400576	0.99	95	3	1
1222	Iron Maiden	Steve Harris	324623	5195776	0.99	95	3	1
1223	Hallowed Be Thy Name	Steve Harris	471849	7550976	0.99	95	3	1
1224	Be Quick Or Be Dead	Bruce Dickinson/Janick Gers	196911	3151872	0.99	96	3	1
1225	From Here To Eternity	Steve Harris	259866	4159488	0.99	96	3	1
1226	Can I Play With Madness	Adrian Smith/Bruce Dickinson/Steve Harris	282488	4521984	0.99	96	3	1
1227	Wasting Love	Bruce Dickinson/Janick Gers	347846	5566464	0.99	96	3	1
1228	Tailgunner	Bruce Dickinson/Steve Harris	249469	3993600	0.99	96	3	1
1229	The Evil That Men Do	Adrian Smith/Bruce Dickinson/Steve Harris	325929	5216256	0.99	96	3	1
1230	Afraid To Shoot Strangers	Steve Harris	407980	6529024	0.99	96	3	1
1231	Bring Your Daughter... To The Slaughter	Bruce Dickinson	317727	5085184	0.99	96	3	1
1232	Heaven Can Wait	Steve Harris	448574	7178240	0.99	96	3	1
1233	The Clairvoyant	Steve Harris	269871	4319232	0.99	96	3	1
1234	Fear Of The Dark	Steve Harris	431333	6906078	0.99	96	3	1
1235	The Wicker Man	Adrian Smith/Bruce Dickinson/Steve Harris	275539	11022464	0.99	97	1	1
1236	Ghost Of The Navigator	Bruce Dickinson/Janick Gers/Steve Harris	410070	16404608	0.99	97	1	1
1237	Brave New World	Bruce Dickinson/David Murray/Steve Harris	378984	15161472	0.99	97	1	1
1238	Blood Brothers	Steve Harris	434442	17379456	0.99	97	1	1
1239	The Mercenary	Janick Gers/Steve Harris	282488	11300992	0.99	97	1	1
1240	Dream Of Mirrors	Janick Gers/Steve Harris	561162	22448256	0.99	97	1	1
1241	The Fallen Angel	Adrian Smith/Steve Harris	240718	9629824	0.99	97	1	1
1242	The Nomad	David Murray/Steve Harris	546115	21846144	0.99	97	1	1
1243	Out Of The Silent Planet	Bruce Dickinson/Janick Gers/Steve Harris	385541	15423616	0.99	97	1	1
1244	The Thin Line Between Love & Hate	David Murray/Steve Harris	506801	20273280	0.99	97	1	1
1245	Wildest Dreams	Adrian Smith/Steve Harris	232777	9312384	0.99	98	13	1
1246	Rainmaker	Bruce Dickinson/David Murray/Steve Harris	228623	9146496	0.99	98	13	1
1247	No More Lies	Steve Harris	441782	17672320	0.99	98	13	1
1248	Montsegur	Bruce Dickinson/Janick Gers/Steve Harris	350484	14020736	0.99	98	13	1
1249	Dance Of Death	Janick Gers/Steve Harris	516649	20670727	0.99	98	13	1
1250	Gates Of Tomorrow	Bruce Dickinson/Janick Gers/Steve Harris	312032	12482688	0.99	98	13	1
1251	New Frontier	Adrian Smith/Bruce Dickinson/Nicko McBrain	304509	12181632	0.99	98	13	1
1252	Paschendale	Adrian Smith/Steve Harris	508107	20326528	0.99	98	13	1
1253	Face In The Sand	Adrian Smith/Bruce Dickinson/Steve Harris	391105	15648948	0.99	98	13	1
1254	Age Of Innocence	David Murray/Steve Harris	370468	14823478	0.99	98	13	1
1255	Journeyman	Bruce Dickinson/David Murray/Steve Harris	427023	17082496	0.99	98	13	1
1256	Be Quick Or Be Dead	Bruce Dickinson/Janick Gers	204512	8181888	0.99	99	1	1
1257	From Here To Eternity	Steve Harris	218357	8739038	0.99	99	1	1
1258	Afraid To Shoot Strangers	Steve Harris	416496	16664589	0.99	99	1	1
1259	Fear Is The Key	Bruce Dickinson/Janick Gers	335307	13414528	0.99	99	1	1
1260	Childhood's End	Steve Harris	280607	11225216	0.99	99	1	1
1261	Wasting Love	Bruce Dickinson/Janick Gers	350981	14041216	0.99	99	1	1
1262	The Fugitive	Steve Harris	294112	11765888	0.99	99	1	1
1263	Chains Of Misery	Bruce Dickinson/David Murray	217443	8700032	0.99	99	1	1
1264	The Apparition	Janick Gers/Steve Harris	234605	9386112	0.99	99	1	1
1265	Judas Be My Guide	Bruce Dickinson/David Murray	188786	7553152	0.99	99	1	1
1266	Weekend Warrior	Janick Gers/Steve Harris	339748	13594678	0.99	99	1	1
1267	Fear Of The Dark	Steve Harris	436976	17483789	0.99	99	1	1
1268	01 - Prowler	Steve Harris	236173	5668992	0.99	100	6	1
1269	02 - Sanctuary	David Murray/Paul Di'Anno/Steve Harris	196284	4712576	0.99	100	6	1
1270	03 - Remember Tomorrow	Harris/Paul Di´Anno	328620	7889024	0.99	100	6	1
1271	04 - Running Free	Harris/Paul Di´Anno	197276	4739122	0.99	100	6	1
1272	05 - Phantom of the Opera	Steve Harris	428016	10276872	0.99	100	6	1
1273	06 - Transylvania	Steve Harris	259343	6226048	0.99	100	6	1
1274	07 - Strange World	Steve Harris	332460	7981184	0.99	100	6	1
1275	08 - Charlotte the Harlot	Murray  Dave	252708	6066304	0.99	100	6	1
1276	09 - Iron Maiden	Steve Harris	216058	5189891	0.99	100	6	1
1277	The Ides Of March	Steve Harris	105926	2543744	0.99	101	13	1
1278	Wrathchild	Steve Harris	174471	4188288	0.99	101	13	1
1279	Murders In The Rue Morgue	Steve Harris	258377	6205786	0.99	101	13	1
1280	Another Life	Steve Harris	203049	4874368	0.99	101	13	1
1281	Genghis Khan	Steve Harris	187141	4493440	0.99	101	13	1
1282	Innocent Exile	Di´Anno/Harris	232515	5584861	0.99	101	13	1
1283	Killers	Steve Harris	300956	7227440	0.99	101	13	1
1284	Prodigal Son	Steve Harris	372349	8937600	0.99	101	13	1
1285	Purgatory	Steve Harris	200150	4804736	0.99	101	13	1
1286	Drifter	Steve Harris	288757	6934660	0.99	101	13	1
1287	Intro- Churchill S Speech		48013	1154488	0.99	102	13	1
1288	Aces High		276375	6635187	0.99	102	13	1
1289	2 Minutes To Midnight	Smith/Dickinson	366550	8799380	0.99	102	3	1
1290	The Trooper	Harris	268878	6455255	0.99	102	3	1
1291	Revelations	Dickinson	371826	8926021	0.99	102	3	1
1292	Flight Of Icarus	Smith/Dickinson	229982	5521744	0.99	102	3	1
1293	Rime Of The Ancient Mariner		789472	18949518	0.99	102	3	1
1294	Powerslave		454974	10921567	0.99	102	3	1
1295	The Number Of The Beast	Harris	275121	6605094	0.99	102	3	1
1296	Hallowed Be Thy Name	Harris	451422	10836304	0.99	102	3	1
1297	Iron Maiden	Harris	261955	6289117	0.99	102	3	1
1298	Run To The Hills	Harris	231627	5561241	0.99	102	3	1
1299	Running Free	Harris/Di Anno	204617	4912986	0.99	102	3	1
1300	Wrathchild	Steve Harris	183666	4410181	0.99	102	13	1
1301	Acacia Avenue		379872	9119118	0.99	102	13	1
1302	Children Of The Damned	Steve Harris	278177	6678446	0.99	102	13	1
1303	Die With Your Boots On	Adrian Smith/Bruce Dickinson/Steve Harris	314174	7542367	0.99	102	13	1
1304	Phantom Of The Opera	Steve Harris	441155	10589917	0.99	102	13	1
1305	Be Quick Or Be Dead		233142	5599853	0.99	103	1	1
1306	The Number Of The Beast		294008	7060625	0.99	103	1	1
1307	Wrathchild		174106	4182963	0.99	103	1	1
1308	From Here To Eternity		284447	6831163	0.99	103	1	1
1309	Can I Play With Madness		213106	5118995	0.99	103	1	1
1310	Wasting Love		336953	8091301	0.99	103	1	1
1311	Tailgunner		247640	5947795	0.99	103	1	1
1312	The Evil That Men Do		478145	11479913	0.99	103	1	1
1313	Afraid To Shoot Strangers		412525	9905048	0.99	103	1	1
1314	Fear Of The Dark		431542	10361452	0.99	103	1	1
1315	Bring Your Daughter... To The Slaughter...		376711	9045532	0.99	104	1	1
1316	The Clairvoyant		262426	6302648	0.99	104	1	1
1317	Heaven Can Wait		440555	10577743	0.99	104	1	1
1318	Run To The Hills		235859	5665052	0.99	104	1	1
1319	2 Minutes To Midnight	Adrian Smith/Bruce Dickinson	338233	8122030	0.99	104	1	1
1320	Iron Maiden		494602	11874875	0.99	104	1	1
1321	Hallowed Be Thy Name		447791	10751410	0.99	104	1	1
1322	The Trooper		232672	5588560	0.99	104	1	1
1323	Sanctuary		318511	7648679	0.99	104	1	1
1324	Running Free		474017	11380851	0.99	104	1	1
1325	Tailgunner	Bruce Dickinson/Steve Harris	255582	4089856	0.99	105	3	1
1326	Holy Smoke	Bruce Dickinson/Steve Harris	229459	3672064	0.99	105	3	1
1327	No Prayer For The Dying	Steve Harris	263941	4225024	0.99	105	3	1
1328	Public Enema Number One	Bruce Dickinson/David Murray	254197	4071587	0.99	105	3	1
1329	Fates Warning	David Murray/Steve Harris	250853	4018088	0.99	105	3	1
1330	The Assassin	Steve Harris	258768	4141056	0.99	105	3	1
1331	Run Silent Run Deep	Bruce Dickinson/Steve Harris	275408	4407296	0.99	105	3	1
1332	Hooks In You	Adrian Smith/Bruce Dickinson	247510	3960832	0.99	105	3	1
1333	Bring Your Daughter... ...To The Slaughter	Bruce Dickinson	284238	4548608	0.99	105	3	1
1334	Mother Russia	Steve Harris	332617	5322752	0.99	105	3	1
1335	Where Eagles Dare	Steve Harris	369554	5914624	0.99	106	3	1
1336	Revelations	Bruce Dickinson	408607	6539264	0.99	106	3	1
1337	Flight Of The Icarus	Adrian Smith/Bruce Dickinson	230269	3686400	0.99	106	3	1
1338	Die With Your Boots On	Adrian Smith/Bruce Dickinson/Steve Harris	325694	5212160	0.99	106	3	1
1339	The Trooper	Steve Harris	251454	4024320	0.99	106	3	1
1340	Still Life	David Murray/Steve Harris	294347	4710400	0.99	106	3	1
1341	Quest For Fire	Steve Harris	221309	3543040	0.99	106	3	1
1342	Sun And Steel	Adrian Smith/Bruce Dickinson	206367	3306324	0.99	106	3	1
1343	To Tame A Land	Steve Harris	445283	7129264	0.99	106	3	1
1344	Aces High	Harris	269531	6472088	0.99	107	3	1
1345	2 Minutes To Midnight	Smith/Dickinson	359810	8638809	0.99	107	3	1
1346	Losfer Words	Steve Harris	252891	6074756	0.99	107	3	1
1347	Flash of The Blade	Dickinson	242729	5828861	0.99	107	3	1
1348	Duelists	Steve Harris	366471	8800686	0.99	107	3	1
1349	Back in the Village	Dickinson/Smith	320548	7696518	0.99	107	3	1
1350	Powerslave	Dickinson	407823	9791106	0.99	107	3	1
1351	Rime of the Ancient Mariner	Harris	816509	19599577	0.99	107	3	1
1352	Intro		115931	4638848	0.99	108	3	1
1353	The Wicker Man	Adrian Smith/Bruce Dickinson/Steve Harris	281782	11272320	0.99	108	3	1
1354	Ghost Of The Navigator	Bruce Dickinson/Janick Gers/Steve Harris	408607	16345216	0.99	108	3	1
1355	Brave New World	Bruce Dickinson/David Murray/Steve Harris	366785	14676148	0.99	108	3	1
1356	Wrathchild	Steve Harris	185808	7434368	0.99	108	3	1
1357	2 Minutes To Midnight	Adrian Smith/Bruce Dickinson	386821	15474816	0.99	108	3	1
1358	Blood Brothers	Steve Harris	435513	17422464	0.99	108	3	1
1359	Sign Of The Cross	Steve Harris	649116	25966720	0.99	108	3	1
1360	The Mercenary	Janick Gers/Steve Harris	282697	11309184	0.99	108	3	1
1361	The Trooper	Steve Harris	273528	10942592	0.99	108	3	1
1362	Dream Of Mirrors	Janick Gers/Steve Harris	578324	23134336	0.99	109	1	1
1363	The Clansman	Steve Harris	559203	22370432	0.99	109	1	1
1364	The Evil That Men Do	Adrian Smith/Bruce Dickinson/Steve Harris	280737	11231360	0.99	109	3	1
1365	Fear Of The Dark	Steve Harris	460695	18430080	0.99	109	1	1
1366	Iron Maiden	Steve Harris	351869	14076032	0.99	109	1	1
1367	The Number Of The Beast	Steve Harris	300434	12022107	0.99	109	1	1
1368	Hallowed Be Thy Name	Steve Harris	443977	17760384	0.99	109	1	1
1369	Sanctuary	David Murray/Paul Di'Anno/Steve Harris	317335	12695680	0.99	109	1	1
1370	Run To The Hills	Steve Harris	292179	11688064	0.99	109	1	1
1371	Moonchild	Adrian Smith; Bruce Dickinson	340767	8179151	0.99	110	3	1
1372	Infinite Dreams	Steve Harris	369005	8858669	0.99	110	3	1
1373	Can I Play With Madness	Adrian Smith; Bruce Dickinson; Steve Harris	211043	5067867	0.99	110	3	1
1374	The Evil That Men Do	Adrian Smith; Bruce Dickinson; Steve Harris	273998	6578930	0.99	110	3	1
1375	Seventh Son of a Seventh Son	Steve Harris	593580	14249000	0.99	110	3	1
1376	The Prophecy	Dave Murray; Steve Harris	305475	7334450	0.99	110	3	1
1377	The Clairvoyant	Adrian Smith; Bruce Dickinson; Steve Harris	267023	6411510	0.99	110	3	1
1378	Only the Good Die Young	Bruce Dickinson; Harris	280894	6744431	0.99	110	3	1
1379	Caught Somewhere in Time	Steve Harris	445779	10701149	0.99	111	3	1
1380	Wasted Years	Adrian Smith	307565	7384358	0.99	111	3	1
1381	Sea of Madness	Adrian Smith	341995	8210695	0.99	111	3	1
1382	Heaven Can Wait	Steve Harris	441417	10596431	0.99	111	3	1
1383	Stranger in a Strange Land	Adrian Smith	344502	8270899	0.99	111	3	1
1384	Alexander the Great	Steve Harris	515631	12377742	0.99	111	3	1
1385	De Ja Vu	David Murray/Steve Harris	296176	7113035	0.99	111	3	1
1386	The Loneliness of the Long Dis	Steve Harris	391314	9393598	0.99	111	3	1
1387	22 Acacia Avenue	Adrian Smith/Steve Harris	395572	5542516	0.99	112	3	1
1388	Children of the Damned	Steve Harris	274364	3845631	0.99	112	3	1
1389	Gangland	Adrian Smith/Clive Burr/Steve Harris	228440	3202866	0.99	112	3	1
1390	Hallowed Be Thy Name	Steve Harris	428669	6006107	0.99	112	3	1
1391	Invaders	Steve Harris	203180	2849181	0.99	112	3	1
1392	Run to the Hills	Steve Harris	228884	3209124	0.99	112	3	1
1393	The Number Of The Beast	Steve Harris	293407	11737216	0.99	112	1	1
1394	The Prisoner	Adrian Smith/Steve Harris	361299	5062906	0.99	112	3	1
1395	Sign Of The Cross	Steve Harris	678008	27121792	0.99	113	1	1
1396	Lord Of The Flies	Janick Gers/Steve Harris	303699	12148864	0.99	113	1	1
1397	Man On The Edge	Blaze Bayley/Janick Gers	253413	10137728	0.99	113	1	1
1398	Fortunes Of War	Steve Harris	443977	17760384	0.99	113	1	1
1399	Look For The Truth	Blaze Bayley/Janick Gers/Steve Harris	310230	12411008	0.99	113	1	1
1400	The Aftermath	Blaze Bayley/Janick Gers/Steve Harris	380786	15233152	0.99	113	1	1
1401	Judgement Of Heaven	Steve Harris	312476	12501120	0.99	113	1	1
1402	Blood On The World's Hands	Steve Harris	357799	14313600	0.99	113	1	1
1403	The Edge Of Darkness	Blaze Bayley/Janick Gers/Steve Harris	399333	15974528	0.99	113	1	1
1404	2 A.M.	Blaze Bayley/Janick Gers/Steve Harris	337658	13511087	0.99	113	1	1
1405	The Unbeliever	Janick Gers/Steve Harris	490422	19617920	0.99	113	1	1
1406	Futureal	Blaze Bayley/Steve Harris	175777	7032960	0.99	114	1	1
1407	The Angel And The Gambler	Steve Harris	592744	23711872	0.99	114	1	1
1408	Lightning Strikes Twice	David Murray/Steve Harris	290377	11616384	0.99	114	1	1
1409	The Clansman	Steve Harris	539689	21592327	0.99	114	1	1
1410	When Two Worlds Collide	Blaze Bayley/David Murray/Steve Harris	377312	15093888	0.99	114	1	1
1411	The Educated Fool	Steve Harris	404767	16191616	0.99	114	1	1
1412	Don't Look To The Eyes Of A Stranger	Steve Harris	483657	19347584	0.99	114	1	1
1413	Como Estais Amigos	Blaze Bayley/Janick Gers	330292	13213824	0.99	114	1	1
1414	Please Please Please	James Brown/Johnny Terry	165067	5394585	0.99	115	14	1
1415	Think	Lowman Pauling	166739	5513208	0.99	115	14	1
1416	Night Train	Jimmy Forrest/Lewis C. Simpkins/Oscar Washington	212401	7027377	0.99	115	14	1
1417	Out Of Sight	Ted Wright	143725	4711323	0.99	115	14	1
1418	Papa's Got A Brand New Bag Pt.1	James Brown	127399	4174420	0.99	115	14	1
1419	I Got You (I Feel Good)	James Brown	167392	5468472	0.99	115	14	1
1420	It's A Man's Man's Man's World	Betty Newsome/James Brown	168228	5541611	0.99	115	14	1
1421	Cold Sweat	Alfred Ellis/James Brown	172408	5643213	0.99	115	14	1
1422	Say It Loud, I'm Black And I'm Proud Pt.1	Alfred Ellis/James Brown	167392	5478117	0.99	115	14	1
1423	Get Up (I Feel Like Being A) Sex Machine	Bobby Byrd/James Brown/Ron Lenhoff	316551	10498031	0.99	115	14	1
1424	Hey America	Addie William Jones/Nat Jones	218226	7187857	0.99	115	14	1
1425	Make It Funky Pt.1	Charles Bobbitt/James Brown	196231	6507782	0.99	115	14	1
1426	I'm A Greedy Man Pt.1	Charles Bobbitt/James Brown	217730	7251211	0.99	115	14	1
1427	Get On The Good Foot	Fred Wesley/James Brown/Joseph Mims	215902	7182736	0.99	115	14	1
1428	Get Up Offa That Thing	Deanna Brown/Deidra Jenkins/Yamma Brown	250723	8355989	0.99	115	14	1
1429	It's Too Funky In Here	Brad Shapiro/George Jackson/Robert Miller/Walter Shaw	239072	7973979	0.99	115	14	1
1430	Living In America	Charlie Midnight/Dan Hartman	282880	9432346	0.99	115	14	1
1431	I'm Real	Full Force/James Brown	334236	11183457	0.99	115	14	1
1432	Hot Pants Pt.1	Fred Wesley/James Brown	188212	6295110	0.99	115	14	1
1433	Soul Power (Live)	James Brown	260728	8593206	0.99	115	14	1
1434	When You Gonna Learn (Digeridoo)	Jay Kay/Kay, Jay	230635	7655482	0.99	116	1	1
1435	Too Young To Die	Smith, Toby	365818	12391660	0.99	116	1	1
1436	Hooked Up	Smith, Toby	275879	9301687	0.99	116	1	1
1437	If I Like It, I Do It	Gelder, Nick van	293093	9848207	0.99	116	1	1
1438	Music Of The Wind	Smith, Toby	383033	12870239	0.99	116	1	1
1439	Emergency On Planet Earth	Smith, Toby	245263	8117218	0.99	116	1	1
1440	Whatever It Is, I Just Can't Stop	Jay Kay/Kay, Jay	247222	8249453	0.99	116	1	1
1441	Blow Your Mind	Smith, Toby	512339	17089176	0.99	116	1	1
1442	Revolution 1993	Smith, Toby	616829	20816872	0.99	116	1	1
1443	Didgin' Out	Buchanan, Wallis	157100	5263555	0.99	116	1	1
1444	Canned Heat	Jay Kay	331964	11042037	0.99	117	14	1
1445	Planet Home	Jay Kay/Toby Smith	284447	9566237	0.99	117	14	1
1446	Black Capricorn Day	Jay Kay	341629	11477231	0.99	117	14	1
1447	Soul Education	Jay Kay/Toby Smith	255477	8575435	0.99	117	14	1
1448	Failling	Jay Kay/Toby Smith	225227	7503999	0.99	117	14	1
1449	Destitute Illusions	Derrick McKenzie/Jay Kay/Toby Smith	340218	11452651	0.99	117	14	1
1450	Supersonic	Jay Kay	315872	10699265	0.99	117	14	1
1451	Butterfly	Jay Kay/Toby Smith	268852	8947356	0.99	117	14	1
1452	Were Do We Go From Here	Jay Kay	313626	10504158	0.99	117	14	1
1453	King For A Day	Jay Kay/Toby Smith	221544	7335693	0.99	117	14	1
1454	Deeper Underground	Toby Smith	281808	9351277	0.99	117	14	1
1455	Just Another Story	Toby Smith	529684	17582818	0.99	118	15	1
1456	Stillness In Time	Toby Smith	257097	8644290	0.99	118	15	1
1457	Half The Man	Toby Smith	289854	9577679	0.99	118	15	1
1458	Light Years	Toby Smith	354560	11796244	0.99	118	15	1
1459	Manifest Destiny	Toby Smith	382197	12676962	0.99	118	15	1
1460	The Kids	Toby Smith	309995	10334529	0.99	118	15	1
1461	Mr. Moon	Stuard Zender/Toby Smith	329534	11043559	0.99	118	15	1
1462	Scam	Stuart Zender	422321	14019705	0.99	118	15	1
1463	Journey To Arnhemland	Toby Smith/Wallis Buchanan	322455	10843832	0.99	118	15	1
1464	Morning Glory	J. Kay/Jay Kay	384130	12777210	0.99	118	15	1
1465	Space Cowboy	J. Kay/Jay Kay	385697	12906520	0.99	118	15	1
1466	Last Chance	C. Cester/C. Muncey	112352	3683130	0.99	119	4	1
1467	Are You Gonna Be My Girl	C. Muncey/N. Cester	213890	6992324	0.99	119	4	1
1468	Rollover D.J.	C. Cester/N. Cester	196702	6406517	0.99	119	4	1
1469	Look What You've Done	N. Cester	230974	7517083	0.99	119	4	1
1470	Get What You Need	C. Cester/C. Muncey/N. Cester	247719	8043765	0.99	119	4	1
1471	Move On	C. Cester/N. Cester	260623	8519353	0.99	119	4	1
1472	Radio Song	C. Cester/C. Muncey/N. Cester	272117	8871509	0.99	119	4	1
1473	Get Me Outta Here	C. Cester/N. Cester	176274	5729098	0.99	119	4	1
1474	Cold Hard Bitch	C. Cester/C. Muncey/N. Cester	243278	7929610	0.99	119	4	1
1475	Come Around Again	C. Muncey/N. Cester	270497	8872405	0.99	119	4	1
1476	Take It Or Leave It	C. Muncey/N. Cester	142889	4643370	0.99	119	4	1
1477	Lazy Gun	C. Cester/N. Cester	282174	9186285	0.99	119	4	1
1478	Timothy	C. Cester	270341	8856507	0.99	119	4	1
1479	Foxy Lady	Jimi Hendrix	199340	6480896	0.99	120	1	1
1480	Manic Depression	Jimi Hendrix	222302	7289272	0.99	120	1	1
1481	Red House	Jimi Hendrix	224130	7285851	0.99	120	1	1
1482	Can You See Me	Jimi Hendrix	153077	4987068	0.99	120	1	1
1483	Love Or Confusion	Jimi Hendrix	193123	6329408	0.99	120	1	1
1484	I Don't Live Today	Jimi Hendrix	235311	7661214	0.99	120	1	1
1485	May This Be Love	Jimi Hendrix	191216	6240028	0.99	120	1	1
1486	Fire	Jimi Hendrix	164989	5383075	0.99	120	1	1
1487	Third Stone From The Sun	Jimi Hendrix	404453	13186975	0.99	120	1	1
1488	Remember	Jimi Hendrix	168150	5509613	0.99	120	1	1
1489	Are You Experienced?	Jimi Hendrix	254537	8292497	0.99	120	1	1
1490	Hey Joe	Billy Roberts	210259	6870054	0.99	120	1	1
1491	Stone Free	Jimi Hendrix	216293	7002331	0.99	120	1	1
1492	Purple Haze	Jimi Hendrix	171572	5597056	0.99	120	1	1
1493	51st Anniversary	Jimi Hendrix	196388	6398044	0.99	120	1	1
1494	The Wind Cries Mary	Jimi Hendrix	200463	6540638	0.99	120	1	1
1495	Highway Chile	Jimi Hendrix	212453	6887949	0.99	120	1	1
1496	Surfing with the Alien		263707	4418504	0.99	121	1	2
1497	Ice 9		239721	4036215	0.99	121	1	2
1498	Crushing Day		314768	5232158	0.99	121	1	2
1499	Always With Me, Always With You		202035	3435777	0.99	121	1	2
1500	Satch Boogie		193560	3300654	0.99	121	1	2
1501	Hill of the Skull	J. Satriani	108435	1944738	0.99	121	1	2
1502	Circles		209071	3548553	0.99	121	1	2
1503	Lords of Karma	J. Satriani	288227	4809279	0.99	121	1	2
1504	Midnight	J. Satriani	102630	1851753	0.99	121	1	2
1505	Echo	J. Satriani	337570	5595557	0.99	121	1	2
1506	Engenho De Dentro		310073	10211473	0.99	122	7	1
1507	Alcohol		355239	12010478	0.99	122	7	1
1508	Mama Africa		283062	9488316	0.99	122	7	1
1509	Salve Simpatia		343484	11314756	0.99	122	7	1
1510	W/Brasil (Chama O Síndico)		317100	10599953	0.99	122	7	1
1511	País Tropical		452519	14946972	0.99	122	7	1
1512	Os Alquimistas Estão Chegando		367281	12304520	0.99	122	7	1
1513	Charles Anjo 45		389276	13022833	0.99	122	7	1
1514	Selassiê		326321	10724982	0.99	122	7	1
1515	Menina Sarará		191477	6393818	0.99	122	7	1
1516	Que Maravilha		338076	10996656	0.99	122	7	1
1517	Santa Clara Clareou		380081	12524725	0.99	122	7	1
1518	Filho Maravilha		227526	7498259	0.99	122	7	1
1519	Taj Mahal		289750	9502898	0.99	122	7	1
1520	Rapidamente		252238	8470107	0.99	123	7	1
1521	As Dores do Mundo	Hyldon	255477	8537092	0.99	123	7	1
1522	Vou Pra Ai		300878	10053718	0.99	123	7	1
1523	My Brother		253231	8431821	0.99	123	7	1
1524	Há Quanto Tempo		270027	9004470	0.99	123	7	1
1525	Vício		269897	8887216	0.99	123	7	1
1526	Encontrar Alguém	Marco Tulio Lara/Rogerio Flausino	224078	7437935	0.99	123	7	1
1527	Dance Enquanto é Tempo		229093	7583799	0.99	123	7	1
1528	A Tarde		266919	8836127	0.99	123	7	1
1529	Always Be All Right		128078	4299676	0.99	123	7	1
1530	Sem Sentido		250462	8292108	0.99	123	7	1
1531	Onibusfobia		315977	10474904	0.99	123	7	1
1532	Pura Elegancia	João Suplicy	284107	9632269	0.99	124	16	1
1533	Choramingando	João Suplicy	190484	6400532	0.99	124	16	1
1534	Por Merecer	João Suplicy	230582	7764601	0.99	124	16	1
1535	No Futuro	João Suplicy	182308	6056200	0.99	124	16	1
1536	Voce Inteira	João Suplicy	241084	8077282	0.99	124	16	1
1537	Cuando A Noite Vai Chegando	João Suplicy	270628	9081874	0.99	124	16	1
1538	Naquele Dia	João Suplicy	251768	8452654	0.99	124	16	1
1539	Equinocio	João Suplicy	269008	8871455	0.99	124	16	1
1540	Papelão	João Suplicy	213263	7257390	0.99	124	16	1
1541	Cuando Eu For Pro Ceu	João Suplicy	118804	3948371	0.99	124	16	1
1542	Do Nosso Amor	João Suplicy	203415	6774566	0.99	124	16	1
1543	Borogodo	João Suplicy	208457	7104588	0.99	124	16	1
1544	Cafezinho	João Suplicy	180924	6031174	0.99	124	16	1
1545	Enquanto O Dia Não Vem	João Suplicy	220891	7248336	0.99	124	16	1
1546	The Green Manalishi		205792	6720789	0.99	125	3	1
1547	Living After Midnight		213289	7056785	0.99	125	3	1
1548	Breaking The Law (Live)		144195	4728246	0.99	125	3	1
1549	Hot Rockin'		197328	6509179	0.99	125	3	1
1550	Heading Out To The Highway (Live)		276427	9006022	0.99	125	3	1
1551	The Hellion		41900	1351993	0.99	125	3	1
1552	Electric Eye		222197	7231368	0.99	125	3	1
1553	You've Got Another Thing Comin'		305162	9962558	0.99	125	3	1
1554	Turbo Lover		335542	11068866	0.99	125	3	1
1555	Freewheel Burning		265952	8713599	0.99	125	3	1
1556	Some Heads Are Gonna Roll		249939	8198617	0.99	125	3	1
1557	Metal Meltdown		290664	9390646	0.99	125	3	1
1558	Ram It Down		292179	9554023	0.99	125	3	1
1559	Diamonds And Rust (Live)		219350	7163147	0.99	125	3	1
1560	Victim Of Change (Live)		430942	14067512	0.99	125	3	1
1561	Tyrant (Live)		282253	9190536	0.99	125	3	1
1562	Comin' Home	Paul Stanley, Ace Frehley	172068	5661120	0.99	126	1	1
1563	Plaster Caster	Gene Simmons	198060	6528719	0.99	126	1	1
1564	Goin' Blind	Gene Simmons, Stephen Coronel	217652	7167523	0.99	126	1	1
1565	Do You Love Me	Paul Stanley, Bob Ezrin, Kim Fowley	193619	6343111	0.99	126	1	1
1566	Domino	Gene Simmons	226377	7488191	0.99	126	1	1
1567	Sure Know Something	Paul Stanley, Vincent Poncia	254354	8375190	0.99	126	1	1
1568	A World Without Heroes	Paul Stanley, Gene Simmons, Bob Ezrin, Lewis Reed	177815	5832524	0.99	126	1	1
1569	Rock Bottom	Paul Stanley, Ace Frehley	200594	6560818	0.99	126	1	1
1570	See You Tonight	Gene Simmons	146494	4817521	0.99	126	1	1
1571	I Still Love You	Paul Stanley	369815	12086145	0.99	126	1	1
1572	Every Time I Look At You	Paul Stanley, Vincent Cusano	283898	9290948	0.99	126	1	1
1573	2,000 Man	Mick Jagger, Keith Richard	312450	10292829	0.99	126	1	1
1574	Beth	Peter Criss, Stan Penridge, Bob Ezrin	170187	5577807	0.99	126	1	1
1575	Nothin' To Lose	Gene Simmons	222354	7351460	0.99	126	1	1
1576	Rock And Roll All Nite	Paul Stanley, Gene Simmons	259631	8549296	0.99	126	1	1
1577	Immigrant Song	Robert Plant	201247	6457766	0.99	127	1	1
1578	Heartbreaker	John Bonham/John Paul Jones/Robert Plant	316081	10179657	0.99	127	1	1
1579	Since I've Been Loving You	John Paul Jones/Robert Plant	416365	13471959	0.99	127	1	1
1580	Black Dog	John Paul Jones/Robert Plant	317622	10267572	0.99	127	1	1
1581	Dazed And Confused	Jimmy Page/Led Zeppelin	1116734	36052247	0.99	127	1	1
1582	Stairway To Heaven	Robert Plant	529658	17050485	0.99	127	1	1
1583	Going To California	Robert Plant	234605	7646749	0.99	127	1	1
1584	That's The Way	Robert Plant	343431	11248455	0.99	127	1	1
1585	Whole Lotta Love (Medley)	Arthur Crudup/Bernard Besman/Bukka White/Doc Pomus/John Bonham/John Lee Hooker/John Paul Jones/Mort Shuman/Robert Plant/Willie Dixon	825103	26742545	0.99	127	1	1
1586	Thank You	Robert Plant	398262	12831826	0.99	127	1	1
1587	We're Gonna Groove	Ben E.King/James Bethea	157570	5180975	0.99	128	1	1
1588	Poor Tom	Jimmy Page/Robert Plant	182491	6016220	0.99	128	1	1
1589	I Can't Quit You Baby	Willie Dixon	258168	8437098	0.99	128	1	1
1590	Walter's Walk	Jimmy Page, Robert Plant	270785	8712499	0.99	128	1	1
1591	Ozone Baby	Jimmy Page, Robert Plant	215954	7079588	0.99	128	1	1
1592	Darlene	Jimmy Page, Robert Plant, John Bonham, John Paul Jones	307226	10078197	0.99	128	1	1
1593	Bonzo's Montreux	John Bonham	258925	8557447	0.99	128	1	1
1594	Wearing And Tearing	Jimmy Page, Robert Plant	330004	10701590	0.99	128	1	1
1595	The Song Remains The Same	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	330004	10708950	0.99	129	1	1
1596	The Rain Song	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	459180	15029875	0.99	129	1	1
1597	Over The Hills And Far Away	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	290089	9552829	0.99	129	1	1
1598	The Crunge	John Bonham/John Paul Jones	197407	6460212	0.99	129	1	1
1599	Dancing Days	Jimmy Page/Jimmy Page & Robert Plant/Robert Plant	223216	7250104	0.99	129	1	1
1600	D'Yer Mak'er	John Bonham/John Paul Jones	262948	8645935	0.99	129	1	1
1601	No Quarter	John Paul Jones	420493	13656517	0.99	129	1	1
1602	The Ocean	John Bonham/John Paul Jones	271098	8846469	0.99	129	1	1
1603	In The Evening	Jimmy Page, Robert Plant & John Paul Jones	410566	13399734	0.99	130	1	1
1604	South Bound Saurez	John Paul Jones & Robert Plant	254406	8420427	0.99	130	1	1
1605	Fool In The Rain	Jimmy Page, Robert Plant & John Paul Jones	372950	12371433	0.99	130	1	1
1606	Hot Dog	Jimmy Page & Robert Plant	197198	6536167	0.99	130	1	1
1607	Carouselambra	John Paul Jones, Jimmy Page & Robert Plant	634435	20858315	0.99	130	1	1
1608	All My Love	Robert Plant & John Paul Jones	356284	11684862	0.99	130	1	1
1609	I'm Gonna Crawl	Jimmy Page, Robert Plant & John Paul Jones	329639	10737665	0.99	130	1	1
1610	Black Dog	Jimmy Page, Robert Plant, John Paul Jones	296672	9660588	0.99	131	1	1
1611	Rock & Roll	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	220917	7142127	0.99	131	1	1
1612	The Battle Of Evermore	Jimmy Page, Robert Plant	351555	11525689	0.99	131	1	1
1613	Stairway To Heaven	Jimmy Page, Robert Plant	481619	15706767	0.99	131	1	1
1614	Misty Mountain Hop	Jimmy Page, Robert Plant, John Paul Jones	278857	9092799	0.99	131	1	1
1615	Four Sticks	Jimmy Page, Robert Plant	284447	9481301	0.99	131	1	1
1616	Going To California	Jimmy Page, Robert Plant	215693	7068737	0.99	131	1	1
1617	When The Levee Breaks	Jimmy Page, Robert Plant, John Paul Jones, John Bonham, Memphis Minnie	427702	13912107	0.99	131	1	1
1618	Good Times Bad Times	Jimmy Page/John Bonham/John Paul Jones	166164	5464077	0.99	132	1	1
1619	Babe I'm Gonna Leave You	Jimmy Page/Robert Plant	401475	13189312	0.99	132	1	1
1620	You Shook Me	J. B. Lenoir/Willie Dixon	388179	12643067	0.99	132	1	1
1621	Dazed and Confused	Jimmy Page	386063	12610326	0.99	132	1	1
1622	Your Time Is Gonna Come	Jimmy Page/John Paul Jones	274860	9011653	0.99	132	1	1
1623	Black Mountain Side	Jimmy Page	132702	4440602	0.99	132	1	1
1624	Communication Breakdown	Jimmy Page/John Bonham/John Paul Jones	150230	4899554	0.99	132	1	1
1625	I Can't Quit You Baby	Willie Dixon	282671	9252733	0.99	132	1	1
1626	How Many More Times	Jimmy Page/John Bonham/John Paul Jones	508055	16541364	0.99	132	1	1
1627	Whole Lotta Love	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	334471	11026243	0.99	133	1	1
1628	What Is And What Should Never Be	Jimmy Page, Robert Plant	287973	9369385	0.99	133	1	1
1629	The Lemon Song	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	379141	12463496	0.99	133	1	1
1630	Thank You	Jimmy Page, Robert Plant	287791	9337392	0.99	133	1	1
1631	Heartbreaker	Jimmy Page, Robert Plant, John Paul Jones, John Bonham	253988	8387560	0.99	133	1	1
1632	Living Loving Maid (She's Just A Woman)	Jimmy Page, Robert Plant	159216	5219819	0.99	133	1	1
1633	Ramble On	Jimmy Page, Robert Plant	275591	9199710	0.99	133	1	1
1634	Moby Dick	John Bonham, John Paul Jones, Jimmy Page	260728	8664210	0.99	133	1	1
1635	Bring It On Home	Jimmy Page, Robert Plant	259970	8494731	0.99	133	1	1
1636	Immigrant Song	Jimmy Page, Robert Plant	144875	4786461	0.99	134	1	1
1637	Friends	Jimmy Page, Robert Plant	233560	7694220	0.99	134	1	1
1638	Celebration Day	Jimmy Page, Robert Plant, John Paul Jones	209528	6871078	0.99	134	1	1
1639	Since I've Been Loving You	Jimmy Page, Robert Plant, John Paul Jones	444055	14482460	0.99	134	1	1
1640	Out On The Tiles	Jimmy Page, Robert Plant, John Bonham	246047	8060350	0.99	134	1	1
1641	Gallows Pole	Traditional	296228	9757151	0.99	134	1	1
1642	Tangerine	Jimmy Page	189675	6200893	0.99	134	1	1
1643	That's The Way	Jimmy Page, Robert Plant	337345	11202499	0.99	134	1	1
1644	Bron-Y-Aur Stomp	Jimmy Page, Robert Plant, John Paul Jones	259500	8674508	0.99	134	1	1
1645	Hats Off To (Roy) Harper	Traditional	219376	7236640	0.99	134	1	1
1646	In The Light	John Paul Jones/Robert Plant	526785	17033046	0.99	135	1	1
1647	Bron-Yr-Aur	Jimmy Page	126641	4150746	0.99	135	1	1
1648	Down By The Seaside	Robert Plant	316186	10371282	0.99	135	1	1
1649	Ten Years Gone	Robert Plant	393116	12756366	0.99	135	1	1
1650	Night Flight	John Paul Jones/Robert Plant	217547	7160647	0.99	135	1	1
1651	The Wanton Song	Robert Plant	249887	8180988	0.99	135	1	1
1652	Boogie With Stu	Ian Stewart/John Bonham/John Paul Jones/Mrs. Valens/Robert Plant	233273	7657086	0.99	135	1	1
1653	Black Country Woman	Robert Plant	273084	8951732	0.99	135	1	1
1654	Sick Again	Robert Plant	283036	9279263	0.99	135	1	1
1655	Achilles Last Stand	Jimmy Page/Robert Plant	625502	20593955	0.99	136	1	1
1656	For Your Life	Jimmy Page/Robert Plant	384391	12633382	0.99	136	1	1
1657	Royal Orleans	John Bonham/John Paul Jones	179591	5930027	0.99	136	1	1
1658	Nobody's Fault But Mine	Jimmy Page/Robert Plant	376215	12237859	0.99	136	1	1
1659	Candy Store Rock	Jimmy Page/Robert Plant	252055	8397423	0.99	136	1	1
1660	Hots On For Nowhere	Jimmy Page/Robert Plant	284107	9342342	0.99	136	1	1
1661	Tea For One	Jimmy Page/Robert Plant	566752	18475264	0.99	136	1	1
1662	Rock & Roll	John Bonham/John Paul Jones/Robert Plant	242442	7897065	0.99	137	1	1
1663	Celebration Day	John Paul Jones/Robert Plant	230034	7478487	0.99	137	1	1
1664	The Song Remains The Same	Robert Plant	353358	11465033	0.99	137	1	1
1665	Rain Song	Robert Plant	505808	16273705	0.99	137	1	1
1666	Dazed And Confused	Jimmy Page	1612329	52490554	0.99	137	1	1
1667	No Quarter	John Paul Jones/Robert Plant	749897	24399285	0.99	138	1	1
1668	Stairway To Heaven	Robert Plant	657293	21354766	0.99	138	1	1
1669	Moby Dick	John Bonham/John Paul Jones	766354	25345841	0.99	138	1	1
1670	Whole Lotta Love	John Bonham/John Paul Jones/Robert Plant/Willie Dixon	863895	28191437	0.99	138	1	1
1671	Natália	Renato Russo	235728	7640230	0.99	139	7	1
1672	L'Avventura	Renato Russo	278256	9165769	0.99	139	7	1
1673	Música De Trabalho	Renato Russo	260231	8590671	0.99	139	7	1
1674	Longe Do Meu Lado	Renato Russo - Marcelo Bonfá	266161	8655249	0.99	139	7	1
1675	A Via Láctea	Renato Russo	280084	9234879	0.99	139	7	1
1676	Música Ambiente	Renato Russo	247614	8234388	0.99	139	7	1
1677	Aloha	Renato Russo	325955	10793301	0.99	139	7	1
1678	Soul Parsifal	Renato Russo - Marisa Monte	295053	9853589	0.99	139	7	1
1679	Dezesseis	Renato Russo	323918	10573515	0.99	139	7	1
1680	Mil Pedaços	Renato Russo	203337	6643291	0.99	139	7	1
1681	Leila	Renato Russo	323056	10608239	0.99	139	7	1
1682	1º De Julho	Renato Russo	290298	9619257	0.99	139	7	1
1683	Esperando Por Mim	Renato Russo	261668	8844133	0.99	139	7	1
1684	Quando Você Voltar	Renato Russo	173897	5781046	0.99	139	7	1
1685	O Livro Dos Dias	Renato Russo	257253	8570929	0.99	139	7	1
1686	Será	Dado Villa-Lobos/Marcelo Bonfá	148401	4826528	0.99	140	7	1
1687	Ainda É Cedo	Dado Villa-Lobos/Ico Ouro-Preto/Marcelo Bonfá	236826	7796400	0.99	140	7	1
1688	Geração Coca-Cola	Renato Russo	141453	4625731	0.99	140	7	1
1689	Eduardo E Mônica	Renato Russo	271229	9026691	0.99	140	7	1
1690	Tempo Perdido	Renato Russo	302158	9963914	0.99	140	7	1
1691	Indios	Renato Russo	258168	8610226	0.99	140	7	1
1692	Que País É Este	Renato Russo	177606	5822124	0.99	140	7	1
1693	Faroeste Caboclo	Renato Russo	543007	18092739	0.99	140	7	1
1694	Há Tempos	Dado Villa-Lobos/Marcelo Bonfá	197146	6432922	0.99	140	7	1
1695	Pais E Filhos	Dado Villa-Lobos/Marcelo Bonfá	308401	10130685	0.99	140	7	1
1696	Meninos E Meninas	Dado Villa-Lobos/Marcelo Bonfá	203781	6667802	0.99	140	7	1
1697	Vento No Litoral	Dado Villa-Lobos/Marcelo Bonfá	366445	12063806	0.99	140	7	1
1698	Perfeição	Dado Villa-Lobos/Marcelo Bonfá	276558	9258489	0.99	140	7	1
1699	Giz	Dado Villa-Lobos/Marcelo Bonfá	202213	6677671	0.99	140	7	1
1700	Dezesseis	Dado Villa-Lobos/Marcelo Bonfá	321724	10501773	0.99	140	7	1
1701	Antes Das Seis	Dado Villa-Lobos	189231	6296531	0.99	140	7	1
1702	Are You Gonna Go My Way	Craig Ross/Lenny Kravitz	211591	6905135	0.99	141	1	1
1703	Fly Away	Lenny Kravitz	221962	7322085	0.99	141	1	1
1704	Rock And Roll Is Dead	Lenny Kravitz	204199	6680312	0.99	141	1	1
1705	Again	Lenny Kravitz	228989	7490476	0.99	141	1	1
1706	It Ain't Over 'Til It's Over	Lenny Kravitz	242703	8078936	0.99	141	1	1
1707	Can't Get You Off My Mind	Lenny Kravitz	273815	8937150	0.99	141	1	1
1708	Mr. Cab Driver	Lenny Kravitz	230321	7668084	0.99	141	1	1
1709	American Woman	B. Cummings/G. Peterson/M.J. Kale/R. Bachman	261773	8538023	0.99	141	1	1
1710	Stand By My Woman	Henry Kirssch/Lenny Kravitz/S. Pasch A. Krizan	259683	8447611	0.99	141	1	1
1711	Always On The Run	Lenny Kravitz/Slash	232515	7593397	0.99	141	1	1
1712	Heaven Help	Gerry DeVeaux/Terry Britten	190354	6222092	0.99	141	1	1
1713	I Belong To You	Lenny Kravitz	257123	8477980	0.99	141	1	1
1714	Believe	Henry Hirsch/Lenny Kravitz	295131	9661978	0.99	141	1	1
1715	Let Love Rule	Lenny Kravitz	342648	11298085	0.99	141	1	1
1716	Black Velveteen	Lenny Kravitz	290899	9531301	0.99	141	1	1
1717	Assim Caminha A Humanidade		210755	6993763	0.99	142	7	1
1718	Honolulu		261433	8558481	0.99	143	7	1
1719	Dancin´Days		237400	7875347	0.99	143	7	1
1720	Um Pro Outro		236382	7825215	0.99	142	7	1
1721	Aviso Aos Navegantes		242808	8058651	0.99	143	7	1
1722	Casa		307591	10107269	0.99	142	7	1
1723	Condição		263549	8778465	0.99	142	7	1
1724	Hyperconectividade		180636	5948039	0.99	143	7	1
1725	O Descobridor Dos Sete Mares		225854	7475780	0.99	143	7	1
1726	Satisfação		208065	6901681	0.99	142	7	1
1727	Brumário		216241	7243499	0.99	142	7	1
1728	Um Certo Alguém		194063	6430939	0.99	143	7	1
1729	Fullgás		346070	11505484	0.99	143	7	1
1730	Sábado À Noite		193854	6435114	0.99	142	7	1
1731	A Cura		280920	9260588	0.99	142	7	1
1732	Aquilo		246073	8167819	0.99	143	7	1
1733	Atrás Do Trio Elétrico		149080	4917615	0.99	142	7	1
1734	Senta A Pua		217547	7205844	0.99	143	7	1
1735	Ro-Que-Se-Da-Ne		146703	4805897	0.99	143	7	1
1736	Tudo Bem		196101	6419139	0.99	142	7	1
1737	Toda Forma De Amor		227813	7496584	0.99	142	7	1
1738	Tudo Igual		276035	9201645	0.99	143	7	1
1739	Fogo De Palha		246804	8133732	0.99	143	7	1
1740	Sereia		278047	9121087	0.99	142	7	1
1741	Assaltaram A Gramática		261041	8698959	0.99	143	7	1
1742	Se Você Pensa		195996	6552490	0.99	142	7	1
1743	Lá Vem O Sol (Here Comes The Sun)		189492	6229645	0.99	142	7	1
1744	O Último Romântico (Ao Vivo)		231993	7692697	0.99	143	7	1
1745	Pseudo Silk Kimono	Kelly, Mosley, Rothery, Trewaves	134739	4334038	0.99	144	1	1
1746	Kayleigh	Kelly, Mosley, Rothery, Trewaves	234605	7716005	0.99	144	1	1
1747	Lavender	Kelly, Mosley, Rothery, Trewaves	153417	4999814	0.99	144	1	1
1748	Bitter Suite: Brief Encounter / Lost Weekend / Blue Angel	Kelly, Mosley, Rothery, Trewaves	356493	11791068	0.99	144	1	1
1749	Heart Of Lothian: Wide Boy / Curtain Call	Kelly, Mosley, Rothery, Trewaves	366053	11893723	0.99	144	1	1
1750	Waterhole (Expresso Bongo)	Kelly, Mosley, Rothery, Trewaves	133093	4378835	0.99	144	1	1
1751	Lords Of The Backstage	Kelly, Mosley, Rothery, Trewaves	112875	3741319	0.99	144	1	1
1752	Blind Curve: Vocal Under A Bloodlight / Passing Strangers / Mylo / Perimeter Walk / Threshold	Kelly, Mosley, Rothery, Trewaves	569704	18578995	0.99	144	1	1
1753	Childhoods End?	Kelly, Mosley, Rothery, Trewaves	272796	9015366	0.99	144	1	1
1754	White Feather	Kelly, Mosley, Rothery, Trewaves	143595	4711776	0.99	144	1	1
1755	Arrepio	Carlinhos Brown	136254	4511390	0.99	145	7	1
1756	Magamalabares	Carlinhos Brown	215875	7183757	0.99	145	7	1
1757	Chuva No Brejo	Morais	145606	4857761	0.99	145	7	1
1758	Cérebro Eletrônico	Gilberto Gil	172800	5760864	0.99	145	7	1
1759	Tempos Modernos	Lulu Santos	183066	6066234	0.99	145	7	1
1760	Maraçá	Carlinhos Brown	230008	7621482	0.99	145	7	1
1761	Blanco	Marisa Monte/poema de Octavio Paz/versão: Haroldo de Campos	45191	1454532	0.99	145	7	1
1762	Panis Et Circenses	Caetano Veloso e Gilberto Gil	192339	6318373	0.99	145	7	1
1763	De Noite Na Cama	Caetano Veloso e Gilberto Gil	209005	7012658	0.99	145	7	1
1764	Beija Eu	Caetano Veloso e Gilberto Gil	197276	6512544	0.99	145	7	1
1765	Give Me Love	Caetano Veloso e Gilberto Gil	249808	8196331	0.99	145	7	1
1766	Ainda Lembro	Caetano Veloso e Gilberto Gil	218801	7211247	0.99	145	7	1
1767	A Menina Dança	Caetano Veloso e Gilberto Gil	129410	4326918	0.99	145	7	1
1768	Dança Da Solidão	Caetano Veloso e Gilberto Gil	203520	6699368	0.99	145	7	1
1769	Ao Meu Redor	Caetano Veloso e Gilberto Gil	275591	9158834	0.99	145	7	1
1770	Bem Leve	Caetano Veloso e Gilberto Gil	159190	5246835	0.99	145	7	1
1771	Segue O Seco	Caetano Veloso e Gilberto Gil	178207	5922018	0.99	145	7	1
1772	O Xote Das Meninas	Caetano Veloso e Gilberto Gil	291866	9553228	0.99	145	7	1
1773	Wherever I Lay My Hat		136986	4477321	0.99	146	14	1
1774	Get My Hands On Some Lovin'		149054	4860380	0.99	146	14	1
1775	No Good Without You	William Mickey Stevenson	161410	5259218	0.99	146	14	1
1776	You've Been A Long Time Coming	Brian Holland/Eddie Holland/Lamont Dozier	137221	4437949	0.99	146	14	1
1777	When I Had Your Love	Robert Rogers/Warren Pete Moore/William Mickey Stevenson	152424	4972815	0.99	146	14	1
1778	You're What's Happening (In The World Today)	Allen Story/George Gordy/Robert Gordy	142027	4631104	0.99	146	14	1
1779	Loving You Is Sweeter Than Ever	Ivy Hunter/Stevie Wonder	166295	5377546	0.99	146	14	1
1780	It's A Bitter Pill To Swallow	Smokey Robinson/Warren Pete Moore	194821	6477882	0.99	146	14	1
1781	Seek And You Shall Find	Ivy Hunter/William Mickey Stevenson	223451	7306719	0.99	146	14	1
1782	Gonna Keep On Tryin' Till I Win Your Love	Barrett Strong/Norman Whitfield	176404	5789945	0.99	146	14	1
1783	Gonna Give Her All The Love I've Got	Barrett Strong/Norman Whitfield	210886	6893603	0.99	146	14	1
1784	I Wish It Would Rain	Barrett Strong/Norman Whitfield/Roger Penzabene	172486	5647327	0.99	146	14	1
1785	Abraham, Martin And John	Dick Holler	273057	8888206	0.99	146	14	1
1786	Save The Children	Al Cleveland/Marvin Gaye/Renaldo Benson	194821	6342021	0.99	146	14	1
1787	You Sure Love To Ball	Marvin Gaye	218540	7217872	0.99	146	14	1
1788	Ego Tripping Out	Marvin Gaye	314514	10383887	0.99	146	14	1
1789	Praise	Marvin Gaye	235833	7839179	0.99	146	14	1
1790	Heavy Love Affair	Marvin Gaye	227892	7522232	0.99	146	14	1
1791	Down Under		222171	7366142	0.99	147	1	1
1792	Overkill		225410	7408652	0.99	147	1	1
1793	Be Good Johnny		216320	7139814	0.99	147	1	1
1794	Everything I Need		216476	7107625	0.99	147	1	1
1795	Down by the Sea		408163	13314900	0.99	147	1	1
1796	Who Can It Be Now?		202396	6682850	0.99	147	1	1
1797	It's a Mistake		273371	8979965	0.99	147	1	1
1798	Dr. Heckyll & Mr. Jive		278465	9110403	0.99	147	1	1
1799	Shakes and Ladders		198008	6560753	0.99	147	1	1
1800	No Sign of Yesterday		362004	11829011	0.99	147	1	1
1801	Enter Sandman	James Hetfield, Lars Ulrich and Kirk Hammett	332251	10852002	0.99	148	3	1
1802	Sad But True	Ulrich	324754	10541258	0.99	148	3	1
1803	Holier Than Thou	Ulrich	227892	7462011	0.99	148	3	1
1804	The Unforgiven	James Hetfield, Lars Ulrich and Kirk Hammett	387082	12646886	0.99	148	3	1
1805	Wherever I May Roam	Ulrich	404323	13161169	0.99	148	3	1
1806	Don't Tread On Me	Ulrich	240483	7827907	0.99	148	3	1
1807	Through The Never	James Hetfield, Lars Ulrich and Kirk Hammett	244375	8024047	0.99	148	3	1
1808	Nothing Else Matters	Ulrich	388832	12606241	0.99	148	3	1
1809	Of Wolf And Man	James Hetfield, Lars Ulrich and Kirk Hammett	256835	8339785	0.99	148	3	1
1810	The God That Failed	Ulrich	308610	10055959	0.99	148	3	1
1811	My Friend Of Misery	James Hetfield, Lars Ulrich and Jason Newsted	409547	13293515	0.99	148	3	1
1812	The Struggle Within	Ulrich	234240	7654052	0.99	148	3	1
1813	Helpless	Harris/Tatler	398315	12977902	0.99	149	3	1
1814	The Small Hours	Holocaust	403435	13215133	0.99	149	3	1
1815	The Wait	Killing Joke	295418	9688418	0.99	149	3	1
1816	Crash Course In Brain Surgery	Bourge/Phillips/Shelley	190406	6233729	0.99	149	3	1
1817	Last Caress/Green Hell	Danzig	209972	6854313	0.99	149	3	1
1818	Am I Evil?	Harris/Tatler	470256	15387219	0.99	149	3	1
1819	Blitzkrieg	Jones/Sirotto/Smith	216685	7090018	0.99	149	3	1
1820	Breadfan	Bourge/Phillips/Shelley	341551	11100130	0.99	149	3	1
1821	The Prince	Harris/Tatler	265769	8624492	0.99	149	3	1
1822	Stone Cold Crazy	Deacon/May/Mercury/Taylor	137717	4514830	0.99	149	3	1
1823	So What	Culmer/Exalt	189152	6162894	0.99	149	3	1
1824	Killing Time	Sweet Savage	183693	6021197	0.99	149	3	1
1825	Overkill	Clarke/Kilmister/Tayler	245133	7971330	0.99	149	3	1
1826	Damage Case	Clarke/Farren/Kilmister/Tayler	220212	7212997	0.99	149	3	1
1827	Stone Dead Forever	Clarke/Kilmister/Tayler	292127	9556060	0.99	149	3	1
1828	Too Late Too Late	Clarke/Kilmister/Tayler	192052	6276291	0.99	149	3	1
1829	Hit The Lights	James Hetfield, Lars Ulrich	257541	8357088	0.99	150	3	1
1830	The Four Horsemen	James Hetfield, Lars Ulrich, Dave Mustaine	433188	14178138	0.99	150	3	1
1831	Motorbreath	James Hetfield	188395	6153933	0.99	150	3	1
1832	Jump In The Fire	James Hetfield, Lars Ulrich, Dave Mustaine	281573	9135755	0.99	150	3	1
1833	(Anesthesia) Pulling Teeth	Cliff Burton	254955	8234710	0.99	150	3	1
1834	Whiplash	James Hetfield, Lars Ulrich	249208	8102839	0.99	150	3	1
1835	Phantom Lord	James Hetfield, Lars Ulrich, Dave Mustaine	302053	9817143	0.99	150	3	1
1836	No Remorse	James Hetfield, Lars Ulrich	386795	12672166	0.99	150	3	1
1837	Seek & Destroy	James Hetfield, Lars Ulrich	415817	13452301	0.99	150	3	1
1838	Metal Militia	James Hetfield, Lars Ulrich, Dave Mustaine	311327	10141785	0.99	150	3	1
1839	Ain't My Bitch	James Hetfield, Lars Ulrich	304457	9931015	0.99	151	3	1
1840	2 X 4	James Hetfield, Lars Ulrich, Kirk Hammett	328254	10732251	0.99	151	3	1
1841	The House Jack Built	James Hetfield, Lars Ulrich, Kirk Hammett	398942	13005152	0.99	151	3	1
1842	Until It Sleeps	James Hetfield, Lars Ulrich	269740	8837394	0.99	151	3	1
1843	King Nothing	James Hetfield, Lars Ulrich, Kirk Hammett	328097	10681477	0.99	151	3	1
1844	Hero Of The Day	James Hetfield, Lars Ulrich, Kirk Hammett	261982	8540298	0.99	151	3	1
1845	Bleeding Me	James Hetfield, Lars Ulrich, Kirk Hammett	497998	16249420	0.99	151	3	1
1846	Cure	James Hetfield, Lars Ulrich	294347	9648615	0.99	151	3	1
1847	Poor Twisted Me	James Hetfield, Lars Ulrich	240065	7854349	0.99	151	3	1
1848	Wasted My Hate	James Hetfield, Lars Ulrich, Kirk Hammett	237296	7762300	0.99	151	3	1
1849	Mama Said	James Hetfield, Lars Ulrich	319764	10508310	0.99	151	3	1
1850	Thorn Within	James Hetfield, Lars Ulrich, Kirk Hammett	351738	11486686	0.99	151	3	1
1851	Ronnie	James Hetfield, Lars Ulrich	317204	10390947	0.99	151	3	1
1852	The Outlaw Torn	James Hetfield, Lars Ulrich	588721	19286261	0.99	151	3	1
1853	Battery	J.Hetfield/L.Ulrich	312424	10229577	0.99	152	3	1
1854	Master Of Puppets	K.Hammett	515239	16893720	0.99	152	3	1
1855	The Thing That Should Not Be	K.Hammett	396199	12952368	0.99	152	3	1
1856	Welcome Home (Sanitarium)	K.Hammett	387186	12679965	0.99	152	3	1
1857	Disposable Heroes	J.Hetfield/L.Ulrich	496718	16135560	0.99	152	3	1
1858	Leper Messiah	C.Burton	347428	11310434	0.99	152	3	1
1859	Orion	K.Hammett	500062	16378477	0.99	152	3	1
1860	Damage Inc.	K.Hammett	330919	10725029	0.99	152	3	1
1861	Fuel	Hetfield, Ulrich, Hammett	269557	8876811	0.99	153	3	1
1862	The Memory Remains	Hetfield, Ulrich	279353	9110730	0.99	153	3	1
1863	Devil's Dance	Hetfield, Ulrich	318955	10414832	0.99	153	3	1
1864	The Unforgiven II	Hetfield, Ulrich, Hammett	395520	12886474	0.99	153	3	1
1865	Better Than You	Hetfield, Ulrich	322899	10549070	0.99	153	3	1
1866	Slither	Hetfield, Ulrich, Hammett	313103	10199789	0.99	153	3	1
1867	Carpe Diem Baby	Hetfield, Ulrich, Hammett	372480	12170693	0.99	153	3	1
1868	Bad Seed	Hetfield, Ulrich, Hammett	245394	8019586	0.99	153	3	1
1869	Where The Wild Things Are	Hetfield, Ulrich, Newsted	414380	13571280	0.99	153	3	1
1870	Prince Charming	Hetfield, Ulrich	365061	12009412	0.99	153	3	1
1871	Low Man's Lyric	Hetfield, Ulrich	457639	14855583	0.99	153	3	1
1872	Attitude	Hetfield, Ulrich	315898	10335734	0.99	153	3	1
1873	Fixxxer	Hetfield, Ulrich, Hammett	496065	16190041	0.99	153	3	1
1874	Fight Fire With Fire	Metallica	285753	9420856	0.99	154	3	1
1875	Ride The Lightning	Metallica	397740	13055884	0.99	154	3	1
1876	For Whom The Bell Tolls	Metallica	311719	10159725	0.99	154	3	1
1877	Fade To Black	Metallica	414824	13531954	0.99	154	3	1
1878	Trapped Under Ice	Metallica	244532	7975942	0.99	154	3	1
1879	Escape	Metallica	264359	8652332	0.99	154	3	1
1880	Creeping Death	Metallica	396878	12955593	0.99	154	3	1
1881	The Call Of Ktulu	Metallica	534883	17486240	0.99	154	3	1
1882	Frantic	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	350458	11510849	0.99	155	3	1
1883	St. Anger	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	441234	14363779	0.99	155	3	1
1884	Some Kind Of Monster	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	505626	16557497	0.99	155	3	1
1885	Dirty Window	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	324989	10670604	0.99	155	3	1
1886	Invisible Kid	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	510197	16591800	0.99	155	3	1
1887	My World	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	345626	11253756	0.99	155	3	1
1888	Shoot Me Again	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	430210	14093551	0.99	155	3	1
1889	Sweet Amber	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	327235	10616595	0.99	155	3	1
1890	The Unnamed Feeling	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	429479	14014582	0.99	155	3	1
1891	Purify	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	314017	10232537	0.99	155	3	1
1892	All Within My Hands	Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich	527986	17162741	0.99	155	3	1
1893	Blackened	James Hetfield, Lars Ulrich & Jason Newsted	403382	13254874	0.99	156	3	1
1894	...And Justice For All	James Hetfield, Lars Ulrich & Kirk Hammett	585769	19262088	0.99	156	3	1
1895	Eye Of The Beholder	James Hetfield, Lars Ulrich & Kirk Hammett	385828	12747894	0.99	156	3	1
1896	One	James Hetfield & Lars Ulrich	446484	14695721	0.99	156	3	1
1897	The Shortest Straw	James Hetfield and Lars Ulrich	395389	13013990	0.99	156	3	1
1898	Harvester Of Sorrow	James Hetfield and Lars Ulrich	345547	11377339	0.99	156	3	1
1899	The Frayed Ends Of Sanity	James Hetfield, Lars Ulrich and Kirk Hammett	464039	15198986	0.99	156	3	1
1900	To Live Is To Die	James Hetfield, Lars Ulrich and Cliff Burton	588564	19243795	0.99	156	3	1
1901	Dyers Eve	James Hetfield, Lars Ulrich and Kirk Hammett	313991	10302828	0.99	156	3	1
1902	Springsville	J. Carisi	207725	6776219	0.99	157	2	1
1903	The Maids Of Cadiz	L. Delibes	233534	7505275	0.99	157	2	1
1904	The Duke	Dave Brubeck	214961	6977626	0.99	157	2	1
1905	My Ship	Ira Gershwin, Kurt Weill	268016	8581144	0.99	157	2	1
1906	Miles Ahead	Miles Davis, Gil Evans	209893	6807707	0.99	157	2	1
1907	Blues For Pablo	Gil Evans	318328	10218398	0.99	157	2	1
1908	New Rhumba	A. Jamal	276871	8980400	0.99	157	2	1
1909	The Meaning Of The Blues	R. Troup, L. Worth	168594	5395412	0.99	157	2	1
1910	Lament	J.J. Johnson	134191	4293394	0.99	157	2	1
1911	I Don't Wanna Be Kissed (By Anyone But You)	H. Spina, J. Elliott	191320	6219487	0.99	157	2	1
1912	Springsville (Alternate Take)	J. Carisi	196388	6382079	0.99	157	2	1
1913	Blues For Pablo (Alternate Take)	Gil Evans	212558	6900619	0.99	157	2	1
1914	The Meaning Of The Blues/Lament (Alternate Take)	J.J. Johnson/R. Troup, L. Worth	309786	9912387	0.99	157	2	1
1915	I Don't Wanna Be Kissed (By Anyone But You) (Alternate Take)	H. Spina, J. Elliott	192078	6254796	0.99	157	2	1
1916	Coração De Estudante	Wagner Tiso, Milton Nascimento	238550	7797308	0.99	158	7	1
1917	A Noite Do Meu Bem	Dolores Duran	220081	7125225	0.99	158	7	1
1918	Paisagem Na Janela	Lô Borges, Fernando Brant	197694	6523547	0.99	158	7	1
1919	Cuitelinho	Folclore	209397	6803970	0.99	158	7	1
1920	Caxangá	Milton Nascimento, Fernando Brant	245551	8144179	0.99	158	7	1
1921	Nos Bailes Da Vida	Milton Nascimento, Fernando Brant	275748	9126170	0.99	158	7	1
1922	Menestrel Das Alagoas	Milton Nascimento, Fernando Brant	199758	6542289	0.99	158	7	1
1923	Brasil	Milton Nascimento, Fernando Brant	155428	5252560	0.99	158	7	1
1924	Canção Do Novo Mundo	Beto Guedes, Ronaldo Bastos	215353	7032626	0.99	158	7	1
1925	Um Gosto De Sol	Milton Nascimento, Ronaldo Bastos	307200	9893875	0.99	158	7	1
1926	Solar	Milton Nascimento, Fernando Brant	156212	5098288	0.99	158	7	1
1927	Para Lennon E McCartney	Lô Borges, Márcio Borges, Fernando Brant	321828	10626920	0.99	158	7	1
1928	Maria, Maria	Milton Nascimento, Fernando Brant	72463	2371543	0.99	158	7	1
1929	Minas	Milton Nascimento, Caetano Veloso	152293	4921056	0.99	159	7	1
1930	Fé Cega, Faca Amolada	Milton Nascimento, Ronaldo Bastos	278099	9258649	0.99	159	7	1
1931	Beijo Partido	Toninho Horta	229564	7506969	0.99	159	7	1
1932	Saudade Dos Aviões Da Panair (Conversando No Bar)	Milton Nascimento, Fernando Brant	268721	8805088	0.99	159	7	1
1933	Gran Circo	Milton Nascimento, Márcio Borges	251297	8237026	0.99	159	7	1
1934	Ponta de Areia	Milton Nascimento, Fernando Brant	272796	8874285	0.99	159	7	1
1935	Trastevere	Milton Nascimento, Ronaldo Bastos	265665	8708399	0.99	159	7	1
1936	Idolatrada	Milton Nascimento, Fernando Brant	286249	9426153	0.99	159	7	1
1937	Leila (Venha Ser Feliz)	Milton Nascimento	209737	6898507	0.99	159	7	1
1938	Paula E Bebeto	Milton Nascimento, Caetano Veloso	135732	4583956	0.99	159	7	1
1939	Simples	Nelson Angelo	133093	4326333	0.99	159	7	1
1940	Norwegian Wood	John Lennon, Paul McCartney	413910	13520382	0.99	159	7	1
1941	Caso Você Queira Saber	Beto Guedes, Márcio Borges	205688	6787901	0.99	159	7	1
1942	Ace Of Spades	Clarke/Kilmister/Taylor	169926	5523552	0.99	160	3	1
1943	Love Me Like A Reptile	Clarke/Kilmister/Taylor	203546	6616389	0.99	160	3	1
1944	Shoot You In The Back	Clarke/Kilmister/Taylor	160026	5175327	0.99	160	3	1
1945	Live To Win	Clarke/Kilmister/Taylor	217626	7102182	0.99	160	3	1
1946	Fast And Loose	Clarke/Kilmister/Taylor	203337	6643350	0.99	160	3	1
1947	(We Are) The Road Crew	Clarke/Kilmister/Taylor	192600	6283035	0.99	160	3	1
1948	Fire Fire	Clarke/Kilmister/Taylor	164675	5416114	0.99	160	3	1
1949	Jailbait	Clarke/Kilmister/Taylor	213916	6983609	0.99	160	3	1
1950	Dance	Clarke/Kilmister/Taylor	158432	5155099	0.99	160	3	1
1951	Bite The Bullet	Clarke/Kilmister/Taylor	98115	3195536	0.99	160	3	1
1952	The Chase Is Better Than The Catch	Clarke/Kilmister/Taylor	258403	8393310	0.99	160	3	1
1953	The Hammer	Clarke/Kilmister/Taylor	168071	5543267	0.99	160	3	1
1954	Dirty Love	Clarke/Kilmister/Taylor	176457	5805241	0.99	160	3	1
1955	Please Don't Touch	Heath/Robinson	169926	5557002	0.99	160	3	1
1956	Emergency	Dufort/Johnson/McAuliffe/Williams	180427	5828728	0.99	160	3	1
1957	Kir Royal	Mônica Marianno	234788	7706552	0.99	161	16	1
1958	O Que Vai Em Meu Coração	Mônica Marianno	255373	8366846	0.99	161	16	1
1959	Aos Leões	Mônica Marianno	234684	7790574	0.99	161	16	1
1960	Dois Índios	Mônica Marianno	219271	7213072	0.99	161	16	1
1961	Noite Negra	Mônica Marianno	206811	6819584	0.99	161	16	1
1962	Beijo do Olhar	Mônica Marianno	252682	8369029	0.99	161	16	1
1963	É Fogo	Mônica Marianno	194873	6501520	0.99	161	16	1
1964	Já Foi	Mônica Marianno	245681	8094872	0.99	161	16	1
1965	Só Se For Pelo Cabelo	Mônica Marianno	238288	8006345	0.99	161	16	1
1966	No Clima	Mônica Marianno	249495	8362040	0.99	161	16	1
1967	A Moça e a Chuva	Mônica Marianno	274625	8929357	0.99	161	16	1
1968	Demorou!	Mônica Marianno	39131	1287083	0.99	161	16	1
1969	Bitter Pill	Mick Mars/Nikki Sixx/Tommy Lee/Vince Neil	266814	8666786	0.99	162	3	1
1970	Enslaved	Mick Mars/Nikki Sixx/Tommy Lee	269844	8789966	0.99	162	3	1
1971	Girls, Girls, Girls	Mick Mars/Nikki Sixx/Tommy Lee	270288	8874814	0.99	162	3	1
1972	Kickstart My Heart	Nikki Sixx	283559	9237736	0.99	162	3	1
1973	Wild Side	Nikki Sixx/Tommy Lee/Vince Neil	276767	9116997	0.99	162	3	1
1974	Glitter	Bryan Adams/Nikki Sixx/Scott Humphrey	340114	11184094	0.99	162	3	1
1975	Dr. Feelgood	Mick Mars/Nikki Sixx	282618	9281875	0.99	162	3	1
1976	Same Ol' Situation	Mick Mars/Nikki Sixx/Tommy Lee/Vince Neil	254511	8283958	0.99	162	3	1
1977	Home Sweet Home	Nikki Sixx/Tommy Lee/Vince Neil	236904	7697538	0.99	162	3	1
1978	Afraid	Nikki Sixx	248006	8077464	0.99	162	3	1
1979	Don't Go Away Mad (Just Go Away)	Mick Mars/Nikki Sixx	279980	9188156	0.99	162	3	1
1980	Without You	Mick Mars/Nikki Sixx	268956	8738371	0.99	162	3	1
1981	Smokin' in The Boys Room	Cub Coda/Michael Lutz	206837	6735408	0.99	162	3	1
1982	Primal Scream	Mick Mars/Nikki Sixx/Tommy Lee/Vince Neil	286197	9421164	0.99	162	3	1
1983	Too Fast For Love	Nikki Sixx	200829	6580542	0.99	162	3	1
1984	Looks That Kill	Nikki Sixx	240979	7831122	0.99	162	3	1
1985	Shout At The Devil	Nikki Sixx	221962	7281974	0.99	162	3	1
1986	Intro	Kurt Cobain	52218	1688527	0.99	163	1	1
1987	School	Kurt Cobain	160235	5234885	0.99	163	1	1
1988	Drain You	Kurt Cobain	215196	7013175	0.99	163	1	1
1989	Aneurysm	Nirvana	271516	8862545	0.99	163	1	1
1990	Smells Like Teen Spirit	Nirvana	287190	9425215	0.99	163	1	1
1991	Been A Son	Kurt Cobain	127555	4170369	0.99	163	1	1
1992	Lithium	Kurt Cobain	250017	8148800	0.99	163	1	1
1993	Sliver	Kurt Cobain	116218	3784567	0.99	163	1	1
1994	Spank Thru	Kurt Cobain	190354	6186487	0.99	163	1	1
1995	Scentless Apprentice	Nirvana	211200	6898177	0.99	163	1	1
1996	Heart-Shaped Box	Kurt Cobain	281887	9210982	0.99	163	1	1
1997	Milk It	Kurt Cobain	225724	7406945	0.99	163	1	1
1998	Negative Creep	Kurt Cobain	163761	5354854	0.99	163	1	1
1999	Polly	Kurt Cobain	149995	4885331	0.99	163	1	1
2000	Breed	Kurt Cobain	208378	6759080	0.99	163	1	1
2001	Tourette's	Kurt Cobain	115591	3753246	0.99	163	1	1
2002	Blew	Kurt Cobain	216346	7096936	0.99	163	1	1
2003	Smells Like Teen Spirit	Kurt Cobain	301296	9823847	0.99	164	1	1
2004	In Bloom	Kurt Cobain	254928	8327077	0.99	164	1	1
2005	Come As You Are	Kurt Cobain	219219	7123357	0.99	164	1	1
2006	Breed	Kurt Cobain	183928	5984812	0.99	164	1	1
2007	Lithium	Kurt Cobain	256992	8404745	0.99	164	1	1
2008	Polly	Kurt Cobain	177031	5788407	0.99	164	1	1
2009	Territorial Pissings	Kurt Cobain	143281	4613880	0.99	164	1	1
2010	Drain You	Kurt Cobain	223973	7273440	0.99	164	1	1
2011	Lounge Act	Kurt Cobain	156786	5093635	0.99	164	1	1
2012	Stay Away	Kurt Cobain	212636	6956404	0.99	164	1	1
2013	On A Plain	Kurt Cobain	196440	6390635	0.99	164	1	1
2014	Something In The Way	Kurt Cobain	230556	7472168	0.99	164	1	1
2015	Time		96888	3124455	0.99	165	1	1
2016	P.S.Apareça		209188	6842244	0.99	165	1	1
2017	Sangue Latino		223033	7354184	0.99	165	1	1
2018	Folhas Secas		161253	5284522	0.99	165	1	1
2019	Poeira		267075	8784141	0.99	165	1	1
2020	Mágica		233743	7627348	0.99	165	1	1
2021	Quem Mata A Mulher Mata O Melhor		262791	8640121	0.99	165	1	1
2022	Mundaréu		217521	7158975	0.99	165	1	1
2023	O Braço Da Minha Guitarra		258351	8469531	0.99	165	1	1
2024	Deus		284160	9188110	0.99	165	1	1
2025	Mãe Terra		306625	9949269	0.99	165	1	1
2026	Às Vezes		330292	10706614	0.99	165	1	1
2027	Menino De Rua		329795	10784595	0.99	165	1	1
2028	Prazer E Fé		214831	7031383	0.99	165	1	1
2029	Elza		199105	6517629	0.99	165	1	1
2030	Requebra		240744	8010811	0.99	166	7	1
2031	Nossa Gente (Avisa Là)		188212	6233201	0.99	166	7	1
2032	Olodum - Alegria Geral		233404	7754245	0.99	166	7	1
2033	Madagáscar Olodum		252264	8270584	0.99	166	7	1
2034	Faraó Divindade Do Egito		228571	7523278	0.99	166	7	1
2035	Todo Amor (Asas Da Liberdade)		245133	8121434	0.99	166	7	1
2036	Denúncia		159555	5327433	0.99	166	7	1
2037	Olodum, A Banda Do Pelô		146599	4900121	0.99	166	7	1
2038	Cartao Postal		211565	7082301	0.99	166	7	1
2039	Jeito Faceiro		217286	7233608	0.99	166	7	1
2040	Revolta Olodum		230191	7557065	0.99	166	7	1
2041	Reggae Odoyá		224470	7499807	0.99	166	7	1
2042	Protesto Do Olodum (Ao Vivo)		206001	6766104	0.99	166	7	1
2043	Olodum - Smile (Instrumental)		235833	7871409	0.99	166	7	1
2044	Vulcão Dub - Fui Eu	Bi Ribeira/Herbert Vianna/João Barone	287059	9495202	0.99	167	7	1
2045	O Trem Da Juventude	Herbert Vianna	225880	7507655	0.99	167	7	1
2046	Manguetown	Chico Science/Dengue/Lúcio Maia	162925	5382018	0.99	167	7	1
2047	Um Amor, Um Lugar	Herbert Vianna	184555	6090334	0.99	167	7	1
2048	Bora-Bora	Herbert Vianna	182987	6036046	0.99	167	7	1
2049	Vai Valer	Herbert Vianna	206524	6899778	0.99	167	7	1
2050	I Feel Good (I Got You) - Sossego	James Brown/Tim Maia	244976	8091302	0.99	167	7	1
2051	Uns Dias	Herbert Vianna	240796	7931552	0.99	167	7	1
2052	Sincero Breu	C. A./C.A./Celso Alvim/Herbert Vianna/Mário Moura/Pedro Luís/Sidon Silva	208013	6921669	0.99	167	7	1
2053	Meu Erro	Herbert Vianna	188577	6192791	0.99	167	7	1
2054	Selvagem	Bi Ribeiro/Herbert Vianna/João Barone	148558	4942831	0.99	167	7	1
2055	Brasília 5:31	Herbert Vianna	178337	5857116	0.99	167	7	1
2056	Tendo A Lua	Herbert Vianna/Tet Tillett	198922	6568180	0.99	167	7	1
2057	Que País É Este	Renato Russo	216685	7137865	0.99	167	7	1
2058	Navegar Impreciso	Herbert Vianna	262870	8761283	0.99	167	7	1
2059	Feira Moderna	Beto Guedes/Fernando Brant/L Borges	182517	6001793	0.99	167	7	1
2060	Tequila - Lourinha Bombril (Parate Y Mira)	Bahiano/Chuck Rio/Diego Blanco/Herbert Vianna	255738	8514961	0.99	167	7	1
2061	Vamo Batê Lata	Herbert Vianna	228754	7585707	0.99	167	7	1
2062	Life During Wartime	Chris Frantz/David Byrne/Jerry Harrison/Tina Weymouth	259186	8543439	0.99	167	7	1
2063	Nebulosa Do Amor	Herbert Vianna	203415	6732496	0.99	167	7	1
2064	Caleidoscópio	Herbert Vianna	256522	8484597	0.99	167	7	1
2065	Trac Trac	Fito Paez/Herbert Vianna	231653	7638256	0.99	168	7	1
2066	Tendo A Lua	Herbert Vianna/Tetê Tillet	219585	7342776	0.99	168	7	1
2067	Mensagen De Amor (2000)	Herbert Vianna	183588	6061324	0.99	168	7	1
2068	Lourinha Bombril	Bahiano/Diego Blanco/Herbert Vianna	159895	5301882	0.99	168	7	1
2069	La Bella Luna	Herbert Vianna	192653	6428598	0.99	168	7	1
2070	Busca Vida	Herbert Vianna	176431	5798663	0.99	168	7	1
2071	Uma Brasileira	Carlinhos Brown/Herbert Vianna	217573	7280574	0.99	168	7	1
2072	Luis Inacio (300 Picaretas)	Herbert Vianna	198191	6576790	0.99	168	7	1
2073	Saber Amar	Herbert Vianna	202788	6723733	0.99	168	7	1
2074	Ela Disse Adeus	Herbert Vianna	226298	7608999	0.99	168	7	1
2075	O Amor Nao Sabe Esperar	Herbert Vianna	241084	8042534	0.99	168	7	1
2076	Aonde Quer Que Eu Va	Herbert Vianna/Paulo Sérgio Valle	258089	8470121	0.99	168	7	1
2077	Caleidoscópio		211330	7000017	0.99	169	7	1
2078	Óculos		219271	7262419	0.99	169	7	1
2079	Cinema Mudo		227918	7612168	0.99	169	7	1
2080	Alagados		302393	10255463	0.99	169	7	1
2081	Lanterna Dos Afogados		190197	6264318	0.99	169	7	1
2082	Melô Do Marinheiro		208352	6905668	0.99	169	7	1
2083	Vital E Sua Moto		210207	6902878	0.99	169	7	1
2084	O Beco		189178	6293184	0.99	169	7	1
2085	Meu Erro		208431	6893533	0.99	169	7	1
2086	Perplexo		161175	5355013	0.99	169	7	1
2087	Me Liga		229590	7565912	0.99	169	7	1
2088	Quase Um Segundo		275644	8971355	0.99	169	7	1
2089	Selvagem		245890	8141084	0.99	169	7	1
2090	Romance Ideal		250070	8260477	0.99	169	7	1
2091	Será Que Vai Chover?		337057	11133830	0.99	169	7	1
2092	SKA		148871	4943540	0.99	169	7	1
2093	Bark at the Moon	O. Osbourne	257252	4601224	0.99	170	1	2
2094	I Don't Know	B. Daisley, O. Osbourne & R. Rhoads	312980	5525339	0.99	171	1	2
2095	Crazy Train	B. Daisley, O. Osbourne & R. Rhoads	295960	5255083	0.99	171	1	2
2096	Flying High Again	L. Kerslake, O. Osbourne, R. Daisley & R. Rhoads	290851	5179599	0.99	172	1	2
2097	Mama, I'm Coming Home	L. Kilmister, O. Osbourne & Z. Wylde	251586	4302390	0.99	173	1	2
2098	No More Tears	J. Purdell, M. Inez, O. Osbourne, R. Castillo & Z. Wylde	444358	7362964	0.99	173	1	2
2099	I Don't Know	O. Osbourne, R. Daisley, R. Rhoads	283088	9207869	0.99	174	3	1
2100	Crazy Train	O. Osbourne, R. Daisley, R. Rhoads	322716	10517408	0.99	174	3	1
2101	Believer	O. Osbourne, R. Daisley, R. Rhoads	308897	10003794	0.99	174	3	1
2102	Mr. Crowley	O. Osbourne, R. Daisley, R. Rhoads	344241	11184130	0.99	174	3	1
2103	Flying High Again	O. Osbourne, R. Daisley, R. Rhoads, L. Kerslake	261224	8481822	0.99	174	3	1
2104	Relvelation (Mother Earth)	O. Osbourne, R. Daisley, R. Rhoads	349440	11367866	0.99	174	3	1
2105	Steal Away (The Night)	O. Osbourne, R. Daisley, R. Rhoads	485720	15945806	0.99	174	3	1
2106	Suicide Solution (With Guitar Solo)	O. Osbourne, R. Daisley, R. Rhoads	467069	15119938	0.99	174	3	1
2107	Iron Man	A. F. Iommi, W. Ward, T. Butler, J. Osbourne	172120	5609799	0.99	174	3	1
2108	Children Of The Grave	A. F. Iommi, W. Ward, T. Butler, J. Osbourne	357067	11626740	0.99	174	3	1
2109	Paranoid	A. F. Iommi, W. Ward, T. Butler, J. Osbourne	176352	5729813	0.99	174	3	1
2110	Goodbye To Romance	O. Osbourne, R. Daisley, R. Rhoads	334393	10841337	0.99	174	3	1
2111	No Bone Movies	O. Osbourne, R. Daisley, R. Rhoads	249208	8095199	0.99	174	3	1
2112	Dee	R. Rhoads	261302	8555963	0.99	174	3	1
2113	Shining In The Light	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	240796	7951688	0.99	175	1	1
2114	When The World Was Young	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	373394	12198930	0.99	175	1	1
2115	Upon A Golden Horse	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	232359	7594829	0.99	175	1	1
2116	Blue Train	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	405028	13170391	0.99	175	1	1
2117	Please Read The Letter	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	262112	8603372	0.99	175	1	1
2118	Most High	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	336535	10999203	0.99	175	1	1
2119	Heart In Your Hand	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	230896	7598019	0.99	175	1	1
2120	Walking Into Clarksdale	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	318511	10396315	0.99	175	1	1
2121	Burning Up	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	321619	10525136	0.99	175	1	1
2122	When I Was A Child	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	345626	11249456	0.99	175	1	1
2123	House Of Love	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	335699	10990880	0.99	175	1	1
2124	Sons Of Freedom	Jimmy Page, Robert Plant, Charlie Jones, Michael Lee	246465	8087944	0.99	175	1	1
2125	United Colours	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	330266	10939131	0.99	176	10	1
2126	Slug	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	281469	9295950	0.99	176	10	1
2127	Your Blue Room	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	328228	10867860	0.99	176	10	1
2128	Always Forever Now	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	383764	12727928	0.99	176	10	1
2129	A Different Kind Of Blue	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	120816	3884133	0.99	176	10	1
2130	Beach Sequence	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	212297	6928259	0.99	176	10	1
2131	Miss Sarajevo	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	340767	11064884	0.99	176	10	1
2132	Ito Okashi	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	205087	6572813	0.99	176	10	1
2133	One Minute Warning	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	279693	9335453	0.99	176	10	1
2134	Corpse (These Chains Are Way Too Long)	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	214909	6920451	0.99	176	10	1
2135	Elvis Ate America	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	180166	5851053	0.99	176	10	1
2136	Plot 180	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	221596	7253729	0.99	176	10	1
2137	Theme From The Swan	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	203911	6638076	0.99	176	10	1
2138	Theme From Let's Go Native	Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.	186723	6179777	0.99	176	10	1
2139	Wrathchild	Steve Harris	170396	5499390	0.99	177	1	1
2140	Killers	Paul Di'Anno/Steve Harris	309995	10009697	0.99	177	1	1
2141	Prowler	Steve Harris	240274	7782963	0.99	177	1	1
2142	Murders In The Rue Morgue	Steve Harris	258638	8360999	0.99	177	1	1
2143	Women In Uniform	Greg Macainsh	189936	6139651	0.99	177	1	1
2144	Remember Tomorrow	Paul Di'Anno/Steve Harris	326426	10577976	0.99	177	1	1
2145	Sanctuary	David Murray/Paul Di'Anno/Steve Harris	198844	6423543	0.99	177	1	1
2146	Running Free	Paul Di'Anno/Steve Harris	199706	6483496	0.99	177	1	1
2147	Phantom Of The Opera	Steve Harris	418168	13585530	0.99	177	1	1
2148	Iron Maiden	Steve Harris	235232	7600077	0.99	177	1	1
2149	Corduroy	Pearl Jam & Eddie Vedder	305293	9991106	0.99	178	1	1
2150	Given To Fly	Eddie Vedder & Mike McCready	233613	7678347	0.99	178	1	1
2151	Hail, Hail	Stone Gossard & Eddie Vedder & Jeff Ament & Mike McCready	223764	7364206	0.99	178	1	1
2152	Daughter	Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder	407484	13420697	0.99	178	1	1
2153	Elderly Woman Behind The Counter In A Small Town	Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder	229328	7509304	0.99	178	1	1
2154	Untitled	Pearl Jam	122801	3957141	0.99	178	1	1
2155	MFC	Eddie Vedder	148192	4817665	0.99	178	1	1
2156	Go	Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder	161541	5290810	0.99	178	1	1
2157	Red Mosquito	Jeff Ament & Stone Gossard & Jack Irons & Mike McCready & Eddie Vedder	242991	7944923	0.99	178	1	1
2158	Even Flow	Stone Gossard & Eddie Vedder	317100	10394239	0.99	178	1	1
2159	Off He Goes	Eddie Vedder	343222	11245109	0.99	178	1	1
2160	Nothingman	Jeff Ament & Eddie Vedder	278595	9107017	0.99	178	1	1
2161	Do The Evolution	Eddie Vedder & Stone Gossard	225462	7377286	0.99	178	1	1
2162	Better Man	Eddie Vedder	246204	8019563	0.99	178	1	1
2163	Black	Stone Gossard & Eddie Vedder	415712	13580009	0.99	178	1	1
2164	F*Ckin' Up	Neil Young	377652	12360893	0.99	178	1	1
2165	Life Wasted	Stone Gossard	234344	7610169	0.99	179	4	1
2166	World Wide Suicide	Eddie Vedder	209188	6885908	0.99	179	4	1
2167	Comatose	Mike McCready & Stone Gossard	139990	4574516	0.99	179	4	1
2168	Severed Hand	Eddie Vedder	270341	8817438	0.99	179	4	1
2169	Marker In The Sand	Mike McCready	263235	8656578	0.99	179	4	1
2170	Parachutes	Stone Gossard	216555	7074973	0.99	179	4	1
2171	Unemployable	Matt Cameron & Mike McCready	184398	6066542	0.99	179	4	1
2172	Big Wave	Jeff Ament	178573	5858788	0.99	179	4	1
2173	Gone	Eddie Vedder	249547	8158204	0.99	179	4	1
2174	Wasted Reprise	Stone Gossard	53733	1731020	0.99	179	4	1
2175	Army Reserve	Jeff Ament	225567	7393771	0.99	179	4	1
2176	Come Back	Eddie Vedder & Mike McCready	329743	10768701	0.99	179	4	1
2177	Inside Job	Eddie Vedder & Mike McCready	428643	14006924	0.99	179	4	1
2178	Can't Keep	Eddie Vedder	219428	7215713	0.99	180	1	1
2179	Save You	Eddie Vedder/Jeff Ament/Matt Cameron/Mike McCready/Stone Gossard	230112	7609110	0.99	180	1	1
2180	Love Boat Captain	Eddie Vedder	276453	9016789	0.99	180	1	1
2181	Cropduster	Matt Cameron	231888	7588928	0.99	180	1	1
2182	Ghost	Jeff Ament	195108	6383772	0.99	180	1	1
2183	I Am Mine	Eddie Vedder	215719	7086901	0.99	180	1	1
2184	Thumbing My Way	Eddie Vedder	250226	8201437	0.99	180	1	1
2185	You Are	Matt Cameron	270863	8938409	0.99	180	1	1
2186	Get Right	Matt Cameron	158589	5223345	0.99	180	1	1
2187	Green Disease	Eddie Vedder	161253	5375818	0.99	180	1	1
2188	Help Help	Jeff Ament	215092	7033002	0.99	180	1	1
2189	Bushleager	Stone Gossard	237479	7849757	0.99	180	1	1
2190	1/2 Full	Jeff Ament	251010	8197219	0.99	180	1	1
2191	Arc	Pearl Jam	65593	2099421	0.99	180	1	1
2192	All or None	Stone Gossard	277655	9104728	0.99	180	1	1
2193	Once	Stone Gossard	231758	7561555	0.99	181	1	1
2194	Evenflow	Stone Gossard	293720	9622017	0.99	181	1	1
2195	Alive	Stone Gossard	341080	11176623	0.99	181	1	1
2196	Why Go	Jeff Ament	200254	6539287	0.99	181	1	1
2197	Black	Dave Krusen/Stone Gossard	343823	11213314	0.99	181	1	1
2198	Jeremy	Jeff Ament	318981	10447222	0.99	181	1	1
2199	Oceans	Jeff Ament/Stone Gossard	162194	5282368	0.99	181	1	1
2200	Porch	Eddie Vedder	210520	6877475	0.99	181	1	1
2201	Garden	Jeff Ament/Stone Gossard	299154	9740738	0.99	181	1	1
2202	Deep	Jeff Ament/Stone Gossard	258324	8432497	0.99	181	1	1
2203	Release	Jeff Ament/Mike McCready/Stone Gossard	546063	17802673	0.99	181	1	1
2204	Go	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	193123	6351920	0.99	182	1	1
2205	Animal	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	169325	5503459	0.99	182	1	1
2206	Daughter	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	235598	7824586	0.99	182	1	1
2207	Glorified G	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	206968	6772116	0.99	182	1	1
2208	Dissident	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	215510	7034500	0.99	182	1	1
2209	W.M.A.	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	359262	12037261	0.99	182	1	1
2210	Blood	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	170631	5551478	0.99	182	1	1
2211	Rearviewmirror	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	284186	9321053	0.99	182	1	1
2212	Rats	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	255425	8341934	0.99	182	1	1
2213	Elderly Woman Behind The Counter In A Small Town	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	196336	6499398	0.99	182	1	1
2214	Leash	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	189257	6191560	0.99	182	1	1
2215	Indifference	Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard	302053	9756133	0.99	182	1	1
2216	Johnny B. Goode		243200	8092024	0.99	141	8	1
2217	Don't Look Back		221100	7344023	0.99	141	8	1
2218	Jah Seh No		276871	9134476	0.99	141	8	1
2219	I'm The Toughest		230191	7657594	0.99	141	8	1
2220	Nothing But Love		221570	7335228	0.99	141	8	1
2221	Buk-In-Hamm Palace		265665	8964369	0.99	141	8	1
2222	Bush Doctor		239751	7942299	0.99	141	8	1
2223	Wanted Dread And Alive		260310	8670933	0.99	141	8	1
2224	Mystic Man		353671	11812170	0.99	141	8	1
2225	Coming In Hot		213054	7109414	0.99	141	8	1
2226	Pick Myself Up		234684	7788255	0.99	141	8	1
2227	Crystal Ball		309733	10319296	0.99	141	8	1
2228	Equal Rights Downpresser Man		366733	12086524	0.99	141	8	1
2229	Speak To Me/Breathe	Mason/Waters, Gilmour, Wright	234213	7631305	0.99	183	1	1
2230	On The Run	Gilmour, Waters	214595	7206300	0.99	183	1	1
2231	Time	Mason, Waters, Wright, Gilmour	425195	13955426	0.99	183	1	1
2232	The Great Gig In The Sky	Wright, Waters	284055	9147563	0.99	183	1	1
2233	Money	Waters	391888	12930070	0.99	183	1	1
2234	Us And Them	Waters, Wright	461035	15000299	0.99	183	1	1
2235	Any Colour You Like	Gilmour, Mason, Wright, Waters	205740	6707989	0.99	183	1	1
2236	Brain Damage	Waters	230556	7497655	0.99	183	1	1
2237	Eclipse	Waters	125361	4065299	0.99	183	1	1
2238	ZeroVinteUm		315637	10426550	0.99	184	17	1
2239	Queimando Tudo		172591	5723677	0.99	184	17	1
2240	Hip Hop Rio		151536	4991935	0.99	184	17	1
2241	Bossa		29048	967098	0.99	184	17	1
2242	100% HardCore		165146	5407744	0.99	184	17	1
2243	Biruta		213263	7108200	0.99	184	17	1
2244	Mão Na Cabeça		202631	6642753	0.99	184	17	1
2245	O Bicho Tá Pregando		171964	5683369	0.99	184	17	1
2246	Adoled (Ocean)		185103	6009946	0.99	184	17	1
2247	Seus Amigos		100858	3304738	0.99	184	17	1
2248	Paga Pau		197485	6529041	0.99	184	17	1
2249	Rappers Reais		202004	6684160	0.99	184	17	1
2250	Nega Do Cabelo Duro		121808	4116536	0.99	184	17	1
2251	Hemp Family		205923	6806900	0.99	184	17	1
2252	Quem Me Cobrou?		121704	3947664	0.99	184	17	1
2253	Se Liga		410409	13559173	0.99	184	17	1
2254	Bohemian Rhapsody	Mercury, Freddie	358948	11619868	0.99	185	1	1
2255	Another One Bites The Dust	Deacon, John	216946	7172355	0.99	185	1	1
2256	Killer Queen	Mercury, Freddie	182099	5967749	0.99	185	1	1
2257	Fat Bottomed Girls	May, Brian	204695	6630041	0.99	185	1	1
2258	Bicycle Race	Mercury, Freddie	183823	6012409	0.99	185	1	1
2259	You're My Best Friend	Deacon, John	172225	5602173	0.99	185	1	1
2260	Don't Stop Me Now	Mercury, Freddie	211826	6896666	0.99	185	1	1
2261	Save Me	May, Brian	228832	7444624	0.99	185	1	1
2262	Crazy Little Thing Called Love	Mercury, Freddie	164231	5435501	0.99	185	1	1
2263	Somebody To Love	Mercury, Freddie	297351	9650520	0.99	185	1	1
2264	Now I'm Here	May, Brian	255346	8328312	0.99	185	1	1
2265	Good Old-Fashioned Lover Boy	Mercury, Freddie	175960	5747506	0.99	185	1	1
2266	Play The Game	Mercury, Freddie	213368	6915832	0.99	185	1	1
2267	Flash	May, Brian	168489	5464986	0.99	185	1	1
2268	Seven Seas Of Rhye	Mercury, Freddie	170553	5539957	0.99	185	1	1
2269	We Will Rock You	Deacon, John/May, Brian	122880	4026955	0.99	185	1	1
2270	We Are The Champions	Mercury, Freddie	180950	5880231	0.99	185	1	1
2271	We Will Rock You	May	122671	4026815	0.99	186	1	1
2272	We Are The Champions	Mercury	182883	5939794	0.99	186	1	1
2273	Sheer Heart Attack	Taylor	207386	6642685	0.99	186	1	1
2274	All Dead, All Dead	May	190119	6144878	0.99	186	1	1
2275	Spread Your Wings	Deacon	275356	8936992	0.99	186	1	1
2276	Fight From The Inside	Taylor	184737	6078001	0.99	186	1	1
2277	Get Down, Make Love	Mercury	231235	7509333	0.99	186	1	1
2278	Sleep On The Sidewalk	May	187428	6099840	0.99	186	1	1
2279	Who Needs You	Deacon	186958	6292969	0.99	186	1	1
2280	It's Late	May	386194	12519388	0.99	186	1	1
2281	My Melancholy Blues	Mercury	206471	6691838	0.99	186	1	1
2282	Shiny Happy People	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	226298	7475323	0.99	187	4	1
2283	Me In Honey	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	246674	8194751	0.99	187	4	1
2284	Radio Song	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	255477	8421172	0.99	187	4	1
2285	Pop Song 89	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	185730	6132218	0.99	188	4	1
2286	Get Up	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	160235	5264376	0.99	188	4	1
2287	You Are The Everything	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	226298	7373181	0.99	188	4	1
2288	Stand	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	192862	6349090	0.99	188	4	1
2289	World Leader Pretend	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	259761	8537282	0.99	188	4	1
2290	The Wrong Child	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	216633	7065060	0.99	188	4	1
2291	Orange Crush	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	231706	7742894	0.99	188	4	1
2292	Turn You Inside-Out	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	257358	8395671	0.99	188	4	1
2293	Hairshirt	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	235911	7753807	0.99	188	4	1
2294	I Remember California	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	304013	9950311	0.99	188	4	1
2295	Untitled	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	191503	6332426	0.99	188	4	1
2296	How The West Was Won And Where It Got Us	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	271151	8994291	0.99	189	1	1
2297	The Wake-Up Bomb	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	308532	10077337	0.99	189	1	1
2298	New Test Leper	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	326791	10866447	0.99	189	1	1
2299	Undertow	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	309498	10131005	0.99	189	1	1
2300	E-Bow The Letter	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	324963	10714576	0.99	189	1	1
2301	Leave	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	437968	14433365	0.99	189	1	1
2302	Departure	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	209423	6818425	0.99	189	1	1
2303	Bittersweet Me	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	245812	8114718	0.99	189	1	1
2304	Be Mine	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	333087	10790541	0.99	189	1	1
2305	Binky The Doormat	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	301688	9950320	0.99	189	1	1
2306	Zither	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	154148	5032962	0.99	189	1	1
2307	So Fast, So Numb	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	252682	8341223	0.99	189	1	1
2308	Low Desert	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	212062	6989288	0.99	189	1	1
2309	Electrolite	Bill Berry-Peter Buck-Mike Mills-Michael Stipe	245315	8051199	0.99	189	1	1
2310	Losing My Religion	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	269035	8885672	0.99	187	4	1
2311	Low	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	296777	9633860	0.99	187	4	1
2312	Near Wild Heaven	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	199862	6610009	0.99	187	4	1
2313	Endgame	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	230687	7664479	0.99	187	4	1
2314	Belong	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	247013	8219375	0.99	187	4	1
2315	Half A World Away	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	208431	6837283	0.99	187	4	1
2316	Texarkana	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	220081	7260681	0.99	187	4	1
2317	Country Feedback	Bill Berry/Michael Stipe/Mike Mills/Peter Buck	249782	8178943	0.99	187	4	1
2318	Carnival Of Sorts	R.E.M.	233482	7669658	0.99	190	4	1
2319	Radio Free Aurope	R.E.M.	245315	8163490	0.99	190	4	1
2320	Perfect Circle	R.E.M.	208509	6898067	0.99	190	4	1
2321	Talk About The Passion	R.E.M.	203206	6725435	0.99	190	4	1
2322	So Central Rain	R.E.M.	194768	6414550	0.99	190	4	1
2323	Don't Go Back To Rockville	R.E.M.	272352	9010715	0.99	190	4	1
2324	Pretty Persuasion	R.E.M.	229929	7577754	0.99	190	4	1
2325	Green Grow The Rushes	R.E.M.	225671	7422425	0.99	190	4	1
2326	Can't Get There From Here	R.E.M.	220630	7285936	0.99	190	4	1
2327	Driver 8	R.E.M.	204747	6779076	0.99	190	4	1
2328	Fall On Me	R.E.M.	172016	5676811	0.99	190	4	1
2329	I Believe	R.E.M.	227709	7542929	0.99	190	4	1
2330	Cuyahoga	R.E.M.	260623	8591057	0.99	190	4	1
2331	The One I Love	R.E.M.	197355	6495125	0.99	190	4	1
2332	The Finest Worksong	R.E.M.	229276	7574856	0.99	190	4	1
2333	It's The End Of The World As We Know It (And I Feel Fine)	R.E.M.	244819	7998987	0.99	190	4	1
2334	Infeliz Natal	Rodolfo	138266	4503299	0.99	191	4	1
2335	A Sua	Rodolfo	142132	4622064	0.99	191	4	1
2336	Papeau Nuky Doe	Rodolfo	121652	3995022	0.99	191	4	1
2337	Merry Christmas	Rodolfo	126040	4166652	0.99	191	4	1
2338	Bodies	Rodolfo	180035	5873778	0.99	191	4	1
2339	Puteiro Em João Pessoa	Rodolfo	195578	6395490	0.99	191	4	1
2340	Esporrei Na Manivela	Rodolfo	293276	9618499	0.99	191	4	1
2341	Bê-a-Bá	Rodolfo	249051	8130636	0.99	191	4	1
2342	Cajueiro	Rodolfo	158589	5164837	0.99	191	4	1
2343	Palhas Do Coqueiro	Rodolfo	133851	4396466	0.99	191	4	1
2344	Maluco Beleza		203206	6628067	0.99	192	1	1
2345	O Dia Em Que A Terra Parou		261720	8586678	0.99	192	1	1
2346	No Fundo Do Quintal Da Escola		177606	5836953	0.99	192	1	1
2347	O Segredo Do Universo		192679	6315187	0.99	192	1	1
2348	As Profecias		232515	7657732	0.99	192	1	1
2349	Mata Virgem		142602	4690029	0.99	192	1	1
2350	Sapato 36		196702	6507301	0.99	192	1	1
2351	Todo Mundo Explica		134896	4449772	0.99	192	1	1
2352	Que Luz É Essa		165067	5620058	0.99	192	1	1
2353	Diamante De Mendigo		206053	6775101	0.99	192	1	1
2354	Negócio É		175464	5826775	0.99	192	1	1
2355	Muita Estrela, Pouca Constelação		268068	8781021	0.99	192	1	1
2356	Século XXI		244897	8040563	0.99	192	1	1
2357	Rock Das Aranhas (Ao Vivo) (Live)		231836	7591945	0.99	192	1	1
2358	The Power Of Equality	Anthony Kiedis/Chad Smith/Flea/John Frusciante	243591	8148266	0.99	193	4	1
2359	If You Have To Ask	Anthony Kiedis/Chad Smith/Flea/John Frusciante	216790	7199175	0.99	193	4	1
2360	Breaking The Girl	Anthony Kiedis/Chad Smith/Flea/John Frusciante	295497	9805526	0.99	193	4	1
2361	Funky Monks	Anthony Kiedis/Chad Smith/Flea/John Frusciante	323395	10708168	0.99	193	4	1
2362	Suck My Kiss	Anthony Kiedis/Chad Smith/Flea/John Frusciante	217234	7129137	0.99	193	4	1
2363	I Could Have Lied	Anthony Kiedis/Chad Smith/Flea/John Frusciante	244506	8088244	0.99	193	4	1
2364	Mellowship Slinky In B Major	Anthony Kiedis/Chad Smith/Flea/John Frusciante	240091	7971384	0.99	193	4	1
2365	The Righteous & The Wicked	Anthony Kiedis/Chad Smith/Flea/John Frusciante	248084	8134096	0.99	193	4	1
2366	Give It Away	Anthony Kiedis/Chad Smith/Flea/John Frusciante	283010	9308997	0.99	193	4	1
2367	Blood Sugar Sex Magik	Anthony Kiedis/Chad Smith/Flea/John Frusciante	271229	8940573	0.99	193	4	1
2368	Under The Bridge	Anthony Kiedis/Chad Smith/Flea/John Frusciante	264359	8682716	0.99	193	4	1
2369	Naked In The Rain	Anthony Kiedis/Chad Smith/Flea/John Frusciante	265717	8724674	0.99	193	4	1
2370	Apache Rose Peacock	Anthony Kiedis/Chad Smith/Flea/John Frusciante	282226	9312588	0.99	193	4	1
2371	The Greeting Song	Anthony Kiedis/Chad Smith/Flea/John Frusciante	193593	6346507	0.99	193	4	1
2372	My Lovely Man	Anthony Kiedis/Chad Smith/Flea/John Frusciante	279118	9220114	0.99	193	4	1
2373	Sir Psycho Sexy	Anthony Kiedis/Chad Smith/Flea/John Frusciante	496692	16354362	0.99	193	4	1
2374	They're Red Hot	Robert Johnson	71941	2382220	0.99	193	4	1
2375	By The Way	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	218017	7197430	0.99	194	1	1
2376	Universally Speaking	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	259213	8501904	0.99	194	1	1
2377	This Is The Place	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	257906	8469765	0.99	194	1	1
2378	Dosed	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	312058	10235611	0.99	194	1	1
2379	Don't Forget Me	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	277995	9107071	0.99	194	1	1
2380	The Zephyr Song	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	232960	7690312	0.99	194	1	1
2381	Can't Stop	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	269400	8872479	0.99	194	1	1
2382	I Could Die For You	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	193906	6333311	0.99	194	1	1
2383	Midnight	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	295810	9702450	0.99	194	1	1
2384	Throw Away Your Television	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	224574	7483526	0.99	194	1	1
2385	Cabron	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	218592	7458864	0.99	194	1	1
2386	Tear	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	317413	10395500	0.99	194	1	1
2387	On Mercury	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	208509	6834762	0.99	194	1	1
2388	Minor Thing	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	217835	7148115	0.99	194	1	1
2389	Warm Tape	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	256653	8358200	0.99	194	1	1
2390	Venice Queen	Anthony Kiedis, Flea, John Frusciante, and Chad Smith	369110	12280381	0.99	194	1	1
2391	Around The World	Anthony Kiedis/Chad Smith/Flea/John Frusciante	238837	7859167	0.99	195	1	1
2392	Parallel Universe	Red Hot Chili Peppers	270654	8958519	0.99	195	1	1
2393	Scar Tissue	Red Hot Chili Peppers	217469	7153744	0.99	195	1	1
2394	Otherside	Red Hot Chili Peppers	255973	8357989	0.99	195	1	1
2395	Get On Top	Red Hot Chili Peppers	198164	6587883	0.99	195	1	1
2396	Californication	Red Hot Chili Peppers	321671	10568999	0.99	195	1	1
2397	Easily	Red Hot Chili Peppers	231418	7504534	0.99	195	1	1
2398	Porcelain	Anthony Kiedis/Chad Smith/Flea/John Frusciante	163787	5278793	0.99	195	1	1
2399	Emit Remmus	Red Hot Chili Peppers	240300	7901717	0.99	195	1	1
2400	I Like Dirt	Red Hot Chili Peppers	157727	5225917	0.99	195	1	1
2401	This Velvet Glove	Red Hot Chili Peppers	225280	7480537	0.99	195	1	1
2402	Savior	Anthony Kiedis/Chad Smith/Flea/John Frusciante	292493	9551885	0.99	195	1	1
2403	Purple Stain	Red Hot Chili Peppers	253440	8359971	0.99	195	1	1
2404	Right On Time	Red Hot Chili Peppers	112613	3722219	0.99	195	1	1
2405	Road Trippin'	Red Hot Chili Peppers	205635	6685831	0.99	195	1	1
2406	The Spirit Of Radio	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	299154	9862012	0.99	196	1	1
2407	The Trees	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	285126	9345473	0.99	196	1	1
2408	Something For Nothing	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	240770	7898395	0.99	196	1	1
2409	Freewill	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	324362	10694110	0.99	196	1	1
2410	Xanadu	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	667428	21753168	0.99	196	1	1
2411	Bastille Day	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	280528	9264769	0.99	196	1	1
2412	By-Tor And The Snow Dog	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	519888	17076397	0.99	196	1	1
2413	Anthem	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	264515	8693343	0.99	196	1	1
2414	Closer To The Heart	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	175412	5767005	0.99	196	1	1
2415	2112 Overture	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	272718	8898066	0.99	196	1	1
2416	The Temples Of Syrinx	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	133459	4360163	0.99	196	1	1
2417	La Villa Strangiato	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	577488	19137855	0.99	196	1	1
2418	Fly By Night	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	202318	6683061	0.99	196	1	1
2419	Finding My Way	Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush	305528	9985701	0.99	196	1	1
2420	Jingo	M.Babatunde Olantunji	592953	19736495	0.99	197	1	1
2421	El Corazon Manda	E.Weiss	713534	23519583	0.99	197	1	1
2422	La Puesta Del Sol	E.Weiss	628062	20614621	0.99	197	1	1
2423	Persuasion	Carlos Santana	318432	10354751	0.99	197	1	1
2424	As The Years Go by	Albert King	233064	7566829	0.99	197	1	1
2425	Soul Sacrifice	Carlos Santana	296437	9801120	0.99	197	1	1
2426	Fried Neckbones And Home Fries	W.Correa	638563	20939646	0.99	197	1	1
2427	Santana Jam	Carlos Santana	882834	29207100	0.99	197	1	1
2428	Evil Ways		475402	15289235	0.99	198	1	1
2429	We've Got To Get Together/Jingo		1070027	34618222	0.99	198	1	1
2430	Rock Me		94720	3037596	0.99	198	1	1
2431	Just Ain't Good Enough		850259	27489067	0.99	198	1	1
2432	Funky Piano		934791	30200730	0.99	198	1	1
2433	The Way You Do To Mer		618344	20028702	0.99	198	1	1
2434	Holding Back The Years	Mick Hucknall and Neil Moss	270053	8833220	0.99	141	1	1
2435	Money's Too Tight To Mention	John and William Valentine	268408	8861921	0.99	141	1	1
2436	The Right Thing	Mick Hucknall	262687	8624063	0.99	141	1	1
2437	It's Only Love	Jimmy and Vella Cameron	232594	7659017	0.99	141	1	1
2438	A New Flame	Mick Hucknall	237662	7822875	0.99	141	1	1
2439	You've Got It	Mick Hucknall and Lamont Dozier	235232	7712845	0.99	141	1	1
2440	If You Don't Know Me By Now	Kenny Gamble and Leon Huff	206524	6712634	0.99	141	1	1
2441	Stars	Mick Hucknall	248137	8194906	0.99	141	1	1
2442	Something Got Me Started	Mick Hucknall and Fritz McIntyre	239595	7997139	0.99	141	1	1
2443	Thrill Me	Mick Hucknall and Fritz McIntyre	303934	10034711	0.99	141	1	1
2444	Your Mirror	Mick Hucknall	240666	7893821	0.99	141	1	1
2445	For Your Babies	Mick Hucknall	256992	8408803	0.99	141	1	1
2446	So Beautiful	Mick Hucknall	298083	9837832	0.99	141	1	1
2447	Angel	Carolyn Franklin and Sonny Saunders	240561	7880256	0.99	141	1	1
2448	Fairground	Mick Hucknall	263888	8793094	0.99	141	1	1
2449	Água E Fogo	Chico Amaral/Edgard Scandurra/Samuel Rosa	278987	9272272	0.99	199	1	1
2450	Três Lados	Chico Amaral/Samuel Rosa	233665	7699609	0.99	199	1	1
2451	Ela Desapareceu	Chico Amaral/Samuel Rosa	250122	8289200	0.99	199	1	1
2452	Balada Do Amor Inabalável	Fausto Fawcett/Samuel Rosa	240613	8025816	0.99	199	1	1
2453	Canção Noturna	Chico Amaral/Lelo Zanettik	238628	7874774	0.99	199	1	1
2454	Muçulmano	Leão, Rodrigo F./Samuel Rosa	249600	8270613	0.99	199	1	1
2455	Maquinarama	Chico Amaral/Samuel Rosa	245629	8213710	0.99	199	1	1
2456	Rebelião	Chico Amaral/Samuel Rosa	298527	9817847	0.99	199	1	1
2457	A Última Guerra	Leão, Rodrigo F./Lô Borges/Samuel Rosa	314723	10480391	0.99	199	1	1
2458	Fica	Chico Amaral/Samuel Rosa	272169	8980972	0.99	199	1	1
2459	Ali	Nando Reis/Samuel Rosa	306390	10110351	0.99	199	1	1
2460	Preto Damião	Chico Amaral/Samuel Rosa	264568	8697658	0.99	199	1	1
2461	É Uma Partida De Futebol	Samuel Rosa	1071	38747	0.99	200	1	1
2462	Eu Disse A Ela	Samuel Rosa	254223	8479463	0.99	200	1	1
2463	Zé Trindade	Samuel Rosa	247954	8331310	0.99	200	1	1
2464	Garota Nacional	Samuel Rosa	317492	10511239	0.99	200	1	1
2465	Tão Seu	Samuel Rosa	243748	8133126	0.99	200	1	1
2466	Sem Terra	Samuel Rosa	279353	9196411	0.99	200	1	1
2467	Os Exilados	Samuel Rosa	245551	8222095	0.99	200	1	1
2468	Um Dia Qualquer	Samuel Rosa	292414	9805570	0.99	200	1	1
2469	Los Pretos	Samuel Rosa	239229	8025667	0.99	200	1	1
2470	Sul Da América	Samuel Rosa	254928	8484871	0.99	200	1	1
2471	Poconé	Samuel Rosa	318406	10771610	0.99	200	1	1
2472	Lucky 13	Billy Corgan	189387	6200617	0.99	201	4	1
2473	Aeroplane Flies High	Billy Corgan	473391	15408329	0.99	201	4	1
2474	Because You Are	Billy Corgan	226403	7405137	0.99	201	4	1
2475	Slow Dawn	Billy Corgan	192339	6269057	0.99	201	4	1
2476	Believe	James Iha	192940	6320652	0.99	201	4	1
2477	My Mistake	Billy Corgan	240901	7843477	0.99	201	4	1
2478	Marquis In Spades	Billy Corgan	192731	6304789	0.99	201	4	1
2479	Here's To The Atom Bomb	Billy Corgan	266893	8763140	0.99	201	4	1
2480	Sparrow	Billy Corgan	176822	5696989	0.99	201	4	1
2481	Waiting	Billy Corgan	228336	7627641	0.99	201	4	1
2482	Saturnine	Billy Corgan	229877	7523502	0.99	201	4	1
2483	Rock On	David Cook	366471	12133825	0.99	201	4	1
2484	Set The Ray To Jerry	Billy Corgan	249364	8215184	0.99	201	4	1
2485	Winterlong	Billy Corgan	299389	9670616	0.99	201	4	1
2486	Soot & Stars	Billy Corgan	399986	12866557	0.99	201	4	1
2487	Blissed & Gone	Billy Corgan	286302	9305998	0.99	201	4	1
2488	Siva	Billy Corgan	261172	8576622	0.99	202	4	1
2489	Rhinocerous	Billy Corgan	353462	11526684	0.99	202	4	1
2490	Drown	Billy Corgan	270497	8883496	0.99	202	4	1
2491	Cherub Rock	Billy Corgan	299389	9786739	0.99	202	4	1
2492	Today	Billy Corgan	202213	6596933	0.99	202	4	1
2493	Disarm	Billy Corgan	198556	6508249	0.99	202	4	1
2494	Landslide	Stevie Nicks	190275	6187754	0.99	202	4	1
2495	Bullet With Butterfly Wings	Billy Corgan	257306	8431747	0.99	202	4	1
2496	1979	Billy Corgan	263653	8728470	0.99	202	4	1
2497	Zero	Billy Corgan	161123	5267176	0.99	202	4	1
2498	Tonight, Tonight	Billy Corgan	255686	8351543	0.99	202	4	1
2499	Eye	Billy Corgan	294530	9784201	0.99	202	4	1
2500	Ava Adore	Billy Corgan	261433	8590412	0.99	202	4	1
2501	Perfect	Billy Corgan	203023	6734636	0.99	202	4	1
2502	The Everlasting Gaze	Billy Corgan	242155	7844404	0.99	202	4	1
2503	Stand Inside Your Love	Billy Corgan	253753	8270113	0.99	202	4	1
2504	Real Love	Billy Corgan	250697	8025896	0.99	202	4	1
2505	[Untitled]	Billy Corgan	231784	7689713	0.99	202	4	1
2506	Nothing To Say	Chris Cornell/Kim Thayil	238027	7744833	0.99	203	1	1
2507	Flower	Chris Cornell/Kim Thayil	208822	6830732	0.99	203	1	1
2508	Loud Love	Chris Cornell	297456	9660953	0.99	203	1	1
2509	Hands All Over	Chris Cornell/Kim Thayil	362475	11893108	0.99	203	1	1
2510	Get On The Snake	Chris Cornell/Kim Thayil	225123	7313744	0.99	203	1	1
2511	Jesus Christ Pose	Ben Shepherd/Chris Cornell/Kim Thayil/Matt Cameron	352966	11739886	0.99	203	1	1
2512	Outshined	Chris Cornell	312476	10274629	0.99	203	1	1
2513	Rusty Cage	Chris Cornell	267728	8779485	0.99	203	1	1
2514	Spoonman	Chris Cornell	248476	8289906	0.99	203	1	1
2515	The Day I Tried To Live	Chris Cornell	321175	10507137	0.99	203	1	1
2516	Black Hole Sun	Soundgarden	320365	10425229	0.99	203	1	1
2517	Fell On Black Days	Chris Cornell	282331	9256082	0.99	203	1	1
2518	Pretty Noose	Chris Cornell	253570	8317931	0.99	203	1	1
2519	Burden In My Hand	Chris Cornell	292153	9659911	0.99	203	1	1
2520	Blow Up The Outside World	Chris Cornell	347898	11379527	0.99	203	1	1
2521	Ty Cobb	Ben Shepherd/Chris Cornell	188786	6233136	0.99	203	1	1
2522	Bleed Together	Chris Cornell	232202	7597074	0.99	203	1	1
2523	Morning Dance	Jay Beckenstein	238759	8101979	0.99	204	2	1
2524	Jubilee	Jeremy Wall	275147	9151846	0.99	204	2	1
2525	Rasul	Jeremy Wall	238315	7854737	0.99	204	2	1
2526	Song For Lorraine	Jay Beckenstein	240091	8101723	0.99	204	2	1
2527	Starburst	Jeremy Wall	291500	9768399	0.99	204	2	1
2528	Heliopolis	Jay Beckenstein	338729	11365655	0.99	204	2	1
2529	It Doesn't Matter	Chet Catallo	270027	9034177	0.99	204	2	1
2530	Little Linda	Jeremy Wall	264019	8958743	0.99	204	2	1
2531	End Of Romanticism	Rick Strauss	320078	10553155	0.99	204	2	1
2532	The House Is Rockin'	Doyle Bramhall/Stevie Ray Vaughan	144352	4706253	0.99	205	6	1
2533	Crossfire	B. Carter/C. Layton/R. Ellsworth/R. Wynans/T. Shannon	251219	8238033	0.99	205	6	1
2534	Tightrope	Doyle Bramhall/Stevie Ray Vaughan	281155	9254906	0.99	205	6	1
2535	Let Me Love You Baby	Willie Dixon	164127	5378455	0.99	205	6	1
2536	Leave My Girl Alone	B. Guy	256365	8438021	0.99	205	6	1
2537	Travis Walk	Stevie Ray Vaughan	140826	4650979	0.99	205	6	1
2538	Wall Of Denial	Doyle Bramhall/Stevie Ray Vaughan	336927	11085915	0.99	205	6	1
2539	Scratch-N-Sniff	Doyle Bramhall/Stevie Ray Vaughan	163422	5353627	0.99	205	6	1
2540	Love Me Darlin'	C. Burnett	201586	6650869	0.99	205	6	1
2541	Riviera Paradise	Stevie Ray Vaughan	528692	17232776	0.99	205	6	1
2542	Dead And Bloated	R. DeLeo/Weiland	310386	10170433	0.99	206	1	1
2543	Sex Type Thing	D. DeLeo/Kretz/Weiland	218723	7102064	0.99	206	1	1
2544	Wicked Garden	D. DeLeo/R. DeLeo/Weiland	245368	7989505	0.99	206	1	1
2545	No Memory	Dean Deleo	80613	2660859	0.99	206	1	1
2546	Sin	R. DeLeo/Weiland	364800	12018823	0.99	206	1	1
2547	Naked Sunday	D. DeLeo/Kretz/R. DeLeo/Weiland	229720	7444201	0.99	206	1	1
2548	Creep	R. DeLeo/Weiland	333191	10894988	0.99	206	1	1
2549	Piece Of Pie	R. DeLeo/Weiland	324623	10605231	0.99	206	1	1
2550	Plush	R. DeLeo/Weiland	314017	10229848	0.99	206	1	1
2551	Wet My Bed	R. DeLeo/Weiland	96914	3198627	0.99	206	1	1
2552	Crackerman	Kretz/R. DeLeo/Weiland	194403	6317361	0.99	206	1	1
2553	Where The River Goes	D. DeLeo/Kretz/Weiland	505991	16468904	0.99	206	1	1
2554	Soldier Side - Intro	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	63764	2056079	0.99	207	3	1
2555	B.Y.O.B.	Tankian, Serj	255555	8407935	0.99	207	3	1
2556	Revenga	Tankian, Serj	228127	7503805	0.99	207	3	1
2557	Cigaro	Tankian, Serj	131787	4321705	0.99	207	3	1
2558	Radio/Video	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	249312	8224917	0.99	207	3	1
2559	This Cocaine Makes Me Feel Like I'm On This Song	Tankian, Serj	128339	4185193	0.99	207	3	1
2560	Violent Pornography	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	211435	6985960	0.99	207	3	1
2561	Question!	Tankian, Serj	200698	6616398	0.99	207	3	1
2562	Sad Statue	Tankian, Serj	205897	6733449	0.99	207	3	1
2563	Old School Hollywood	Dolmayan, John/Malakian, Daron/Odadjian, Shavo	176953	5830258	0.99	207	3	1
2564	Lost in Hollywood	Tankian, Serj	320783	10535158	0.99	207	3	1
2565	The Sun Road	Terry Bozzio, Steve Stevens, Tony Levin	880640	29008407	0.99	208	1	1
2566	Dark Corners	Terry Bozzio, Steve Stevens, Tony Levin	513541	16839223	0.99	208	1	1
2567	Duende	Terry Bozzio, Steve Stevens, Tony Levin	447582	14956771	0.99	208	1	1
2568	Black Light Syndrome	Terry Bozzio, Steve Stevens, Tony Levin	526471	17300835	0.99	208	1	1
2569	Falling in Circles	Terry Bozzio, Steve Stevens, Tony Levin	549093	18263248	0.99	208	1	1
2570	Book of Hours	Terry Bozzio, Steve Stevens, Tony Levin	583366	19464726	0.99	208	1	1
2571	Chaos-Control	Terry Bozzio, Steve Stevens, Tony Levin	529841	17455568	0.99	208	1	1
2572	Midnight From The Inside Out	Chris Robinson/Rich Robinson	286981	9442157	0.99	209	6	1
2573	Sting Me	Chris Robinson/Rich Robinson	268094	8813561	0.99	209	6	1
2574	Thick & Thin	Chris Robinson/Rich Robinson	222720	7284377	0.99	209	6	1
2575	Greasy Grass River	Chris Robinson/Rich Robinson	218749	7157045	0.99	209	6	1
2576	Sometimes Salvation	Chris Robinson/Rich Robinson	389146	12749424	0.99	209	6	1
2577	Cursed Diamonds	Chris Robinson/Rich Robinson	368300	12047978	0.99	209	6	1
2578	Miracle To Me	Chris Robinson/Rich Robinson	372636	12222116	0.99	209	6	1
2579	Wiser Time	Chris Robinson/Rich Robinson	459990	15161907	0.99	209	6	1
2580	Girl From A Pawnshop	Chris Robinson/Rich Robinson	404688	13250848	0.99	209	6	1
2581	Cosmic Fiend	Chris Robinson/Rich Robinson	308401	10115556	0.99	209	6	1
2582	Black Moon Creeping	Chris Robinson/Rich Robinson	359314	11740886	0.99	210	6	1
2583	High Head Blues	Chris Robinson/Rich Robinson	371879	12227998	0.99	210	6	1
2584	Title Song	Chris Robinson/Rich Robinson	505521	16501316	0.99	210	6	1
2585	She Talks To Angels	Chris Robinson/Rich Robinson	361978	11837342	0.99	210	6	1
2586	Twice As Hard	Chris Robinson/Rich Robinson	275565	9008067	0.99	210	6	1
2587	Lickin'	Chris Robinson/Rich Robinson	314409	10331216	0.99	210	6	1
2588	Soul Singing	Chris Robinson/Rich Robinson	233639	7672489	0.99	210	6	1
2589	Hard To Handle	A.Isbell/A.Jones/O.Redding	206994	6786304	0.99	210	6	1
2590	Remedy	Chris Robinson/Rich Robinson	337084	11049098	0.99	210	6	1
2591	White Riot	Joe Strummer/Mick Jones	118726	3922819	0.99	211	4	1
2592	Remote Control	Joe Strummer/Mick Jones	180297	5949647	0.99	211	4	1
2593	Complete Control	Joe Strummer/Mick Jones	192653	6272081	0.99	211	4	1
2594	Clash City Rockers	Joe Strummer/Mick Jones	227500	7555054	0.99	211	4	1
2595	(White Man) In Hammersmith Palais	Joe Strummer/Mick Jones	240640	7883532	0.99	211	4	1
2596	Tommy Gun	Joe Strummer/Mick Jones	195526	6399872	0.99	211	4	1
2597	English Civil War	Mick Jones/Traditional arr. Joe Strummer	156708	5111226	0.99	211	4	1
2598	I Fought The Law	Sonny Curtis	159764	5245258	0.99	211	4	1
2599	London Calling	Joe Strummer/Mick Jones	199706	6569007	0.99	211	4	1
2600	Train In Vain	Joe Strummer/Mick Jones	189675	6329877	0.99	211	4	1
2601	Bankrobber	Joe Strummer/Mick Jones	272431	9067323	0.99	211	4	1
2602	The Call Up	The Clash	324336	10746937	0.99	211	4	1
2603	Hitsville UK	The Clash	261433	8606887	0.99	211	4	1
2604	The Magnificent Seven	The Clash	268486	8889821	0.99	211	4	1
2605	This Is Radio Clash	The Clash	249756	8366573	0.99	211	4	1
2606	Know Your Rights	The Clash	217678	7195726	0.99	211	4	1
2607	Rock The Casbah	The Clash	222145	7361500	0.99	211	4	1
2608	Should I Stay Or Should I Go	The Clash	187219	6188688	0.99	211	4	1
2609	War (The Process)	Billy Duffy/Ian Astbury	252630	8254842	0.99	212	1	1
2610	The Saint	Billy Duffy/Ian Astbury	216215	7061584	0.99	212	1	1
2611	Rise	Billy Duffy/Ian Astbury	219088	7106195	0.99	212	1	1
2612	Take The Power	Billy Duffy/Ian Astbury	235755	7650012	0.99	212	1	1
2613	Breathe	Billy Duffy/Ian Astbury/Marti Frederiksen/Mick Jones	299781	9742361	0.99	212	1	1
2614	Nico	Billy Duffy/Ian Astbury	289488	9412323	0.99	212	1	1
2615	American Gothic	Billy Duffy/Ian Astbury	236878	7739840	0.99	212	1	1
2616	Ashes And Ghosts	Billy Duffy/Bob Rock/Ian Astbury	300591	9787692	0.99	212	1	1
2617	Shape The Sky	Billy Duffy/Ian Astbury	209789	6885647	0.99	212	1	1
2618	Speed Of Light	Billy Duffy/Bob Rock/Ian Astbury	262817	8563352	0.99	212	1	1
2619	True Believers	Billy Duffy/Ian Astbury	308009	9981359	0.99	212	1	1
2620	My Bridges Burn	Billy Duffy/Ian Astbury	231862	7571370	0.99	212	1	1
2621	She Sells Sanctuary		253727	8368634	0.99	213	1	1
2622	Fire Woman		312790	10196995	0.99	213	1	1
2623	Lil' Evil		165825	5419655	0.99	213	1	1
2624	Spirit Walker		230060	7555897	0.99	213	1	1
2625	The Witch		258768	8725403	0.99	213	1	1
2626	Revolution		256026	8371254	0.99	213	1	1
2627	Wild Hearted Son		266893	8670550	0.99	213	1	1
2628	Love Removal Machine		257619	8412167	0.99	213	1	1
2629	Rain		236669	7788461	0.99	213	1	1
2630	Edie (Ciao Baby)		241632	7846177	0.99	213	1	1
2631	Heart Of Soul		274207	8967257	0.99	213	1	1
2632	Love		326739	10729824	0.99	213	1	1
2633	Wild Flower		215536	7084321	0.99	213	1	1
2634	Go West		238158	7777749	0.99	213	1	1
2635	Resurrection Joe		255451	8532840	0.99	213	1	1
2636	Sun King		368431	12010865	0.99	213	1	1
2637	Sweet Soul Sister		212009	6889883	0.99	213	1	1
2638	Earth Mofo		282200	9204581	0.99	213	1	1
2639	Break on Through	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	149342	4943144	0.99	214	1	1
2640	Soul Kitchen	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	215066	7040865	0.99	214	1	1
2641	The Crystal Ship	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	154853	5052658	0.99	214	1	1
2642	Twentienth Century Fox	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	153913	5069211	0.99	214	1	1
2643	Alabama Song	Weill-Brecht	200097	6563411	0.99	214	1	1
2644	Light My Fire	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	428329	13963351	0.99	214	1	1
2645	Back Door Man	Willie Dixon, C. Burnett	214360	7035636	0.99	214	1	1
2646	I Looked At You	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	142080	4663988	0.99	214	1	1
2647	End Of The Night	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	172695	5589732	0.99	214	1	1
2648	Take It As It Comes	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	137168	4512656	0.99	214	1	1
2649	The End	Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison	701831	22927336	0.99	214	1	1
2650	Roxanne	G M Sumner	192992	6330159	0.99	215	1	1
2651	Can't Stand Losing You	G M Sumner	181159	5971983	0.99	215	1	1
2652	Message in a Bottle	G M Sumner	291474	9647829	0.99	215	1	1
2653	Walking on the Moon	G M Sumner	302080	10019861	0.99	215	1	1
2654	Don't Stand so Close to Me	G M Sumner	241031	7956658	0.99	215	1	1
2655	De Do Do Do, De Da Da Da	G M Sumner	247196	8227075	0.99	215	1	1
2656	Every Little Thing She Does is Magic	G M Sumner	261120	8646853	0.99	215	1	1
2657	Invisible Sun	G M Sumner	225593	7304320	0.99	215	1	1
2658	Spirit's in the Material World	G M Sumner	181133	5986622	0.99	215	1	1
2659	Every Breath You Take	G M Sumner	254615	8364520	0.99	215	1	1
2660	King Of Pain	G M Sumner	300512	9880303	0.99	215	1	1
2661	Wrapped Around Your Finger	G M Sumner	315454	10361490	0.99	215	1	1
2662	Don't Stand So Close to Me '86	G M Sumner	293590	9636683	0.99	215	1	1
2663	Message in a Bottle (new classic rock mix)	G M Sumner	290951	9640349	0.99	215	1	1
2664	Time Is On My Side	Jerry Ragavoy	179983	5855836	0.99	216	1	1
2665	Heart Of Stone	Jagger/Richards	164493	5329538	0.99	216	1	1
2666	Play With Fire	Nanker Phelge	132022	4265297	0.99	216	1	1
2667	Satisfaction	Jagger/Richards	226612	7398766	0.99	216	1	1
2668	As Tears Go By	Jagger/Richards/Oldham	164284	5357350	0.99	216	1	1
2669	Get Off Of My Cloud	Jagger/Richards	176013	5719514	0.99	216	1	1
2670	Mother's Little Helper	Jagger/Richards	167549	5422434	0.99	216	1	1
2671	19th Nervous Breakdown	Jagger/Richards	237923	7742984	0.99	216	1	1
2672	Paint It Black	Jagger/Richards	226063	7442888	0.99	216	1	1
2673	Under My Thumb	Jagger/Richards	221387	7371799	0.99	216	1	1
2674	Ruby Tuesday	Jagger/Richards	197459	6433467	0.99	216	1	1
2675	Let's Spend The Night Together	Jagger/Richards	217495	7137048	0.99	216	1	1
2676	Intro	Jagger/Richards	49737	1618591	0.99	217	1	1
2677	You Got Me Rocking	Jagger/Richards	205766	6734385	0.99	217	1	1
2678	Gimmie Shelters	Jagger/Richards	382119	12528764	0.99	217	1	1
2679	Flip The Switch	Jagger/Richards	252421	8336591	0.99	217	1	1
2680	Memory Motel	Jagger/Richards	365844	11982431	0.99	217	1	1
2681	Corinna	Jesse Ed Davis III/Taj Mahal	257488	8449471	0.99	217	1	1
2682	Saint Of Me	Jagger/Richards	325694	10725160	0.99	217	1	1
2683	Wainting On A Friend	Jagger/Richards	302497	9978046	0.99	217	1	1
2684	Sister Morphine	Faithfull/Jagger/Richards	376215	12345289	0.99	217	1	1
2685	Live With Me	Jagger/Richards	234893	7709006	0.99	217	1	1
2686	Respectable	Jagger/Richards	215693	7099669	0.99	217	1	1
2687	Thief In The Night	De Beauport/Jagger/Richards	337266	10952756	0.99	217	1	1
2688	The Last Time	Jagger/Richards	287294	9498758	0.99	217	1	1
2689	Out Of Control	Jagger/Richards	479242	15749289	0.99	217	1	1
2690	Love Is Strong	Jagger/Richards	230896	7639774	0.99	218	1	1
2691	You Got Me Rocking	Jagger/Richards	215928	7162159	0.99	218	1	1
2692	Sparks Will Fly	Jagger/Richards	196466	6492847	0.99	218	1	1
2693	The Worst	Jagger/Richards	144613	4750094	0.99	218	1	1
2694	New Faces	Jagger/Richards	172146	5689122	0.99	218	1	1
2695	Moon Is Up	Jagger/Richards	222119	7366316	0.99	218	1	1
2696	Out Of Tears	Jagger/Richards	327418	10677236	0.99	218	1	1
2697	I Go Wild	Jagger/Richards	264019	8630833	0.99	218	1	1
2698	Brand New Car	Jagger/Richards	256052	8459344	0.99	218	1	1
2699	Sweethearts Together	Jagger/Richards	285492	9550459	0.99	218	1	1
2700	Suck On The Jugular	Jagger/Richards	268225	8920566	0.99	218	1	1
2701	Blinded By Rainbows	Jagger/Richards	273946	8971343	0.99	218	1	1
2702	Baby Break It Down	Jagger/Richards	249417	8197309	0.99	218	1	1
2703	Thru And Thru	Jagger/Richards	375092	12175406	0.99	218	1	1
2704	Mean Disposition	Jagger/Richards	249155	8273602	0.99	218	1	1
2705	Walking Wounded	The Tea Party	277968	9184345	0.99	219	4	1
2706	Temptation	The Tea Party	205087	6711943	0.99	219	4	1
2707	The Messenger	Daniel Lanois	212062	6975437	0.99	219	4	1
2708	Psychopomp	The Tea Party	315559	10295199	0.99	219	4	1
2709	Sister Awake	The Tea Party	343875	11299407	0.99	219	4	1
2710	The Bazaar	The Tea Party	222458	7245691	0.99	219	4	1
2711	Save Me (Remix)	The Tea Party	396303	13053839	0.99	219	4	1
2712	Fire In The Head	The Tea Party	306337	10005675	0.99	219	4	1
2713	Release	The Tea Party	244114	8014606	0.99	219	4	1
2714	Heaven Coming Down	The Tea Party	241867	7846459	0.99	219	4	1
2715	The River (Remix)	The Tea Party	343170	11193268	0.99	219	4	1
2716	Babylon	The Tea Party	169795	5568808	0.99	219	4	1
2717	Waiting On A Sign	The Tea Party	261903	8558590	0.99	219	4	1
2718	Life Line	The Tea Party	277786	9082773	0.99	219	4	1
2719	Paint It Black	Keith Richards/Mick Jagger	214752	7101572	0.99	219	4	1
2720	Temptation	The Tea Party	205244	6719465	0.99	220	4	1
2721	Army Ants	The Tea Party	215405	7075838	0.99	220	4	1
2722	Psychopomp	The Tea Party	317231	10351778	0.99	220	4	1
2723	Gyroscope	The Tea Party	177711	5810323	0.99	220	4	1
2724	Alarum	The Tea Party	298187	9712545	0.99	220	4	1
2725	Release	The Tea Party	266292	8725824	0.99	220	4	1
2726	Transmission	The Tea Party	317257	10351152	0.99	220	4	1
2727	Babylon	The Tea Party	292466	9601786	0.99	220	4	1
2728	Pulse	The Tea Party	250253	8183872	0.99	220	4	1
2729	Emerald	The Tea Party	289750	9543789	0.99	220	4	1
2730	Aftermath	The Tea Party	343745	11085607	0.99	220	4	1
2731	I Can't Explain	Pete Townshend	125152	4082896	0.99	221	1	1
2732	Anyway, Anyhow, Anywhere	Pete Townshend, Roger Daltrey	161253	5234173	0.99	221	1	1
2733	My Generation	John Entwistle/Pete Townshend	197825	6446634	0.99	221	1	1
2734	Substitute	Pete Townshend	228022	7409995	0.99	221	1	1
2735	I'm A Boy	Pete Townshend	157126	5120605	0.99	221	1	1
2736	Boris The Spider	John Entwistle	149472	4835202	0.99	221	1	1
2737	Happy Jack	Pete Townshend	132310	4353063	0.99	221	1	1
2738	Pictures Of Lily	Pete Townshend	164414	5329751	0.99	221	1	1
2739	I Can See For Miles	Pete Townshend	262791	8604989	0.99	221	1	1
2740	Magic Bus	Pete Townshend	197224	6452700	0.99	221	1	1
2741	Pinball Wizard	John Entwistle/Pete Townshend	181890	6055580	0.99	221	1	1
2742	The Seeker	Pete Townshend	204643	6736866	0.99	221	1	1
2743	Baba O'Riley	John Entwistle/Pete Townshend	309472	10141660	0.99	221	1	1
2744	Won't Get Fooled Again (Full Length Version)	John Entwistle/Pete Townshend	513750	16855521	0.99	221	1	1
2745	Let's See Action	Pete Townshend	243513	8078418	0.99	221	1	1
2746	5.15	Pete Townshend	289619	9458549	0.99	221	1	1
2747	Join Together	Pete Townshend	262556	8602485	0.99	221	1	1
2748	Squeeze Box	Pete Townshend	161280	5256508	0.99	221	1	1
2749	Who Are You (Single Edit Version)	John Entwistle/Pete Townshend	299232	9900469	0.99	221	1	1
2750	You Better You Bet	Pete Townshend	338520	11160877	0.99	221	1	1
2751	Primavera	Genival Cassiano/Silvio Rochael	126615	4152604	0.99	222	7	1
2752	Chocolate	Tim Maia	194690	6411587	0.99	222	7	1
2753	Azul Da Cor Do Mar	Tim Maia	197955	6475007	0.99	222	7	1
2754	O Descobridor Dos Sete Mares	Gilson Mendonça/Michel	262974	8749583	0.99	222	7	1
2755	Até Que Enfim Encontrei Você	Tim Maia	105064	3477751	0.99	222	7	1
2756	Coroné Antonio Bento	Do Vale, João/Luiz Wanderley	131317	4340326	0.99	222	7	1
2757	New Love	Tim Maia	237897	7786824	0.99	222	7	1
2758	Não Vou Ficar	Tim Maia	172068	5642919	0.99	222	7	1
2759	Música No Ar	Tim Maia	158511	5184891	0.99	222	7	1
2760	Salve Nossa Senhora	Carlos Imperial/Edardo Araújo	115461	3827629	0.99	222	7	1
2761	Você Fugiu	Genival Cassiano	238367	7971147	0.99	222	7	1
2762	Cristina Nº 2	Carlos Imperial/Tim Maia	90148	2978589	0.99	222	7	1
2763	Compadre	Tim Maia	171389	5631446	0.99	222	7	1
2764	Over Again	Tim Maia	200489	6612634	0.99	222	7	1
2765	Réu Confesso	Tim Maia	217391	7189874	0.99	222	7	1
2766	O Que Me Importa		153155	4977852	0.99	223	7	1
2767	Gostava Tanto De Você		253805	8380077	0.99	223	7	1
2768	Você		242599	7911702	0.99	223	7	1
2769	Não Quero Dinheiro		152607	5031797	0.99	223	7	1
2770	Eu Amo Você		242782	7914628	0.99	223	7	1
2771	A Festa Do Santo Reis		159791	5204995	0.99	223	7	1
2772	I Don't Know What To Do With Myself		221387	7251478	0.99	223	7	1
2773	Padre Cícero		139598	4581685	0.99	223	7	1
2774	Nosso Adeus		206471	6793270	0.99	223	7	1
2775	Canário Do Reino		139337	4552858	0.99	223	7	1
2776	Preciso Ser Amado		174001	5618895	0.99	223	7	1
2777	Balanço		209737	6890327	0.99	223	7	1
2778	Preciso Aprender A Ser Só		162220	5213894	0.99	223	7	1
2779	Esta É A Canção		184450	6069933	0.99	223	7	1
2780	Formigueiro		252943	8455132	0.99	223	7	1
2781	Comida	Titãs	322612	10786578	0.99	224	4	1
2782	Go Back	Titãs	230504	7668899	0.99	224	4	1
2783	Prá Dizer Adeus	Titãs	222484	7382048	0.99	224	4	1
2784	Família	Titãs	218331	7267458	0.99	224	4	1
2785	Os Cegos Do Castelo	Titãs	296829	9868187	0.99	224	4	1
2786	O Pulso	Titãs	199131	6566998	0.99	224	4	1
2787	Marvin	Titãs	264359	8741444	0.99	224	4	1
2788	Nem 5 Minutos Guardados	Titãs	245995	8143797	0.99	224	4	1
2789	Flores	Titãs	215510	7148017	0.99	224	4	1
2790	Palavras	Titãs	158458	5285715	0.99	224	4	1
2791	Hereditário	Titãs	151693	5020547	0.99	224	4	1
2792	A Melhor Forma	Titãs	191503	6349938	0.99	224	4	1
2793	Cabeça Dinossauro	Titãs	37120	1220930	0.99	224	4	1
2794	32 Dentes	Titãs	184946	6157904	0.99	224	4	1
2795	Bichos Escrotos (Vinheta)	Titãs	104986	3503755	0.99	224	4	1
2796	Não Vou Lutar	Titãs	189988	6308613	0.99	224	4	1
2797	Homem Primata (Vinheta)	Titãs	34168	1124909	0.99	224	4	1
2798	Homem Primata	Titãs	195500	6486470	0.99	224	4	1
2799	Polícia (Vinheta)	Titãs	56111	1824213	0.99	224	4	1
2800	Querem Meu Sangue	Titãs	212401	7069773	0.99	224	4	1
2801	Diversão	Titãs	285936	9531268	0.99	224	4	1
2802	Televisão	Titãs	293668	9776548	0.99	224	4	1
2803	Sonifera Ilha	Branco Mello/Carlos Barmack/Ciro Pessoa/Marcelo Fromer/Toni Belloto	170684	5678290	0.99	225	4	1
2804	Lugar Nenhum	Arnaldo Antunes/Charles Gavin/Marcelo Fromer/Sérgio Britto/Toni Bellotto	195840	6472780	0.99	225	4	1
2805	Sua Impossivel Chance	Nando Reis	246622	8073248	0.99	225	4	1
2806	Desordem	Charles Gavin/Marcelo Fromer/Sérgio Britto	213289	7067340	0.99	225	4	1
2807	Não Vou Me Adaptar	Arnaldo Antunes	221831	7304656	0.99	225	4	1
2808	Domingo	Sérgio Britto/Toni Bellotto	208613	6883180	0.99	225	4	1
2809	Amanhã Não Se Sabe	Sérgio Britto	189440	6243967	0.99	225	4	1
2810	Caras Como Eu	Toni Bellotto	183092	5999048	0.99	225	4	1
2811	Senhora E Senhor	Arnaldo Anutnes/Marcelo Fromer/Paulo Miklos	203702	6733733	0.99	225	4	1
2812	Era Uma Vez	Arnaldo Anutnes/Branco Mello/Marcelo Fromer/Sergio Brotto/Toni Bellotto	224261	7453156	0.99	225	4	1
2813	Miséria	Arnaldo Antunes/Britto, SergioMiklos, Paulo	262191	8727645	0.99	225	4	1
2814	Insensível	Sérgio Britto	207830	6893664	0.99	225	4	1
2815	Eu E Ela	Nando Reis	276035	9138846	0.99	225	4	1
2816	Toda Cor	Ciro Pressoa/Marcelo Fromer	209084	6939176	0.99	225	4	1
2817	É Preciso Saber Viver	Erasmo Carlos/Roberto Carlos	251115	8271418	0.99	225	4	1
2818	Senhor Delegado/Eu Não Aguento	Antonio Lopes	156656	5277983	0.99	225	4	1
2819	Battlestar Galactica: The Story So Far		2622250	490750393	1.99	226	18	3
2820	Occupation / Precipice		5286953	1054423946	1.99	227	19	3
2821	Exodus, Pt. 1		2621708	475079441	1.99	227	19	3
2822	Exodus, Pt. 2		2618000	466820021	1.99	227	19	3
2823	Collaborators		2626626	483484911	1.99	227	19	3
2824	Torn		2631291	495262585	1.99	227	19	3
2825	A Measure of Salvation		2563938	489715554	1.99	227	18	3
2826	Hero		2713755	506896959	1.99	227	18	3
2827	Unfinished Business		2622038	528499160	1.99	227	18	3
2828	The Passage		2623875	490375760	1.99	227	18	3
2829	The Eye of Jupiter		2618750	517909587	1.99	227	18	3
2830	Rapture		2624541	508406153	1.99	227	18	3
2831	Taking a Break from All Your Worries		2624207	492700163	1.99	227	18	3
2832	The Woman King		2626376	552893447	1.99	227	18	3
2833	A Day In the Life		2620245	462818231	1.99	227	18	3
2834	Dirty Hands		2627961	537648614	1.99	227	18	3
2835	Maelstrom		2622372	514154275	1.99	227	18	3
2836	The Son Also Rises		2621830	499258498	1.99	227	18	3
2837	Crossroads, Pt. 1		2622622	486233524	1.99	227	20	3
2838	Crossroads, Pt. 2		2869953	497335706	1.99	227	20	3
2839	Genesis		2611986	515671080	1.99	228	19	3
2840	Don't Look Back		2571154	493628775	1.99	228	21	3
2841	One Giant Leap		2607649	521616246	1.99	228	21	3
2842	Collision		2605480	526182322	1.99	228	21	3
2843	Hiros		2533575	488835454	1.99	228	21	3
2844	Better Halves		2573031	549353481	1.99	228	21	3
2845	Nothing to Hide		2605647	510058181	1.99	228	19	3
2846	Seven Minutes to Midnight		2613988	515590682	1.99	228	21	3
2847	Homecoming		2601351	516015339	1.99	228	21	3
2848	Six Months Ago		2602852	505133869	1.99	228	19	3
2849	Fallout		2594761	501145440	1.99	228	21	3
2850	The Fix		2600266	507026323	1.99	228	21	3
2851	Distractions		2590382	537111289	1.99	228	21	3
2852	Run!		2602602	542936677	1.99	228	21	3
2853	Unexpected		2598139	511777758	1.99	228	21	3
2854	Company Man		2601226	493168135	1.99	228	21	3
2855	Company Man		2601101	503786316	1.99	228	21	3
2856	Parasite		2602727	487461520	1.99	228	21	3
2857	A Tale of Two Cities		2636970	513691652	1.99	229	19	3
2858	Lost (Pilot, Part 1) [Premiere]		2548875	217124866	1.99	230	19	3
2859	Man of Science, Man of Faith (Premiere)		2612250	543342028	1.99	231	19	3
2860	Adrift		2564958	502663995	1.99	231	19	3
2861	Lost (Pilot, Part 2)		2436583	204995876	1.99	230	19	3
2862	The Glass Ballerina		2637458	535729216	1.99	229	21	3
2863	Further Instructions		2563980	502041019	1.99	229	19	3
2864	Orientation		2609083	500600434	1.99	231	19	3
2865	Tabula Rasa		2627105	210526410	1.99	230	19	3
2866	Every Man for Himself		2637387	513803546	1.99	229	21	3
2867	Everybody Hates Hugo		2609192	498163145	1.99	231	19	3
2868	Walkabout		2587370	207748198	1.99	230	19	3
2869	...And Found		2563833	500330548	1.99	231	19	3
2870	The Cost of Living		2637500	505647192	1.99	229	19	3
2871	White Rabbit		2571965	201654606	1.99	230	19	3
2872	Abandoned		2587041	537348711	1.99	231	19	3
2873	House of the Rising Sun		2590032	210379525	1.99	230	19	3
2874	I Do		2627791	504676825	1.99	229	19	3
2875	Not In Portland		2637303	499061234	1.99	229	21	3
2876	Not In Portland		2637345	510546847	1.99	229	21	3
2877	The Moth		2631327	228896396	1.99	230	19	3
2878	The Other 48 Days		2610625	535256753	1.99	231	19	3
2879	Collision		2564916	475656544	1.99	231	19	3
2880	Confidence Man		2615244	223756475	1.99	230	19	3
2881	Flashes Before Your Eyes		2636636	537760755	1.99	229	21	3
2882	Lost Survival Guide		2632590	486675063	1.99	229	21	3
2883	Solitary		2612894	207045178	1.99	230	19	3
2884	What Kate Did		2610250	484583988	1.99	231	19	3
2885	Raised By Another		2590459	223623810	1.99	230	19	3
2886	Stranger In a Strange Land		2636428	505056021	1.99	229	21	3
2887	The 23rd Psalm		2610416	487401604	1.99	231	19	3
2888	All the Best Cowboys Have Daddy Issues		2555492	211743651	1.99	230	19	3
2889	The Hunting Party		2611333	520350364	1.99	231	21	3
2890	Tricia Tanaka Is Dead		2635010	548197162	1.99	229	21	3
2891	Enter 77		2629796	517521422	1.99	229	21	3
2892	Fire + Water		2600333	488458695	1.99	231	21	3
2893	Whatever the Case May Be		2616410	183867185	1.99	230	19	3
2894	Hearts and Minds		2619462	207607466	1.99	230	19	3
2895	Par Avion		2629879	517079642	1.99	229	21	3
2896	The Long Con		2679583	518376636	1.99	231	19	3
2897	One of Them		2698791	542332389	1.99	231	21	3
2898	Special		2618530	219961967	1.99	230	19	3
2899	The Man from Tallahassee		2637637	550893556	1.99	229	21	3
2900	Exposé		2593760	511338017	1.99	229	21	3
2901	Homecoming		2515882	210675221	1.99	230	19	3
2902	Maternity Leave		2780416	555244214	1.99	231	21	3
2903	Left Behind		2635343	538491964	1.99	229	21	3
2904	Outlaws		2619887	206500939	1.99	230	19	3
2905	The Whole Truth		2610125	495487014	1.99	231	21	3
2906	...In Translation		2604575	215441983	1.99	230	19	3
2907	Lockdown		2610250	543886056	1.99	231	21	3
2908	One of Us		2638096	502387276	1.99	229	21	3
2909	Catch-22		2561394	489773399	1.99	229	21	3
2910	Dave		2825166	574325829	1.99	231	19	3
2911	Numbers		2609772	214709143	1.99	230	19	3
2912	D.O.C.		2616032	518556641	1.99	229	21	3
2913	Deus Ex Machina		2582009	214996732	1.99	230	19	3
2914	S.O.S.		2639541	517979269	1.99	231	19	3
2915	Do No Harm		2618487	212039309	1.99	230	19	3
2916	Two for the Road		2610958	502404558	1.99	231	21	3
2917	The Greater Good		2617784	214130273	1.99	230	19	3
2918	"?"		2782333	528227089	1.99	231	19	3
2919	Born to Run		2618619	213772057	1.99	230	19	3
2920	Three Minutes		2763666	531556853	1.99	231	19	3
2921	Exodus (Part 1)		2620747	213107744	1.99	230	19	3
2922	Live Together, Die Alone, Pt. 1		2478041	457364940	1.99	231	21	3
2923	Exodus (Part 2) [Season Finale]		2605557	208667059	1.99	230	19	3
2924	Live Together, Die Alone, Pt. 2		2656531	503619265	1.99	231	19	3
2925	Exodus (Part 3) [Season Finale]		2619869	197937785	1.99	230	19	3
2926	Zoo Station	U2	276349	9056902	0.99	232	1	1
2927	Even Better Than The Real Thing	U2	221361	7279392	0.99	232	1	1
2928	One	U2	276192	9158892	0.99	232	1	1
2929	Until The End Of The World	U2	278700	9132485	0.99	232	1	1
2930	Who's Gonna Ride Your Wild Horses	U2	316551	10304369	0.99	232	1	1
2931	So Cruel	U2	349492	11527614	0.99	232	1	1
2932	The Fly	U2	268982	8825399	0.99	232	1	1
2933	Mysterious Ways	U2	243826	8062057	0.99	232	1	1
2934	Tryin' To Throw Your Arms Around The World	U2	232463	7612124	0.99	232	1	1
2935	Ultraviolet (Light My Way)	U2	330788	10754631	0.99	232	1	1
2936	Acrobat	U2	270288	8824723	0.99	232	1	1
2937	Love Is Blindness	U2	263497	8531766	0.99	232	1	1
2938	Beautiful Day	Adam Clayton, Bono, Larry Mullen, The Edge	248163	8056723	0.99	233	1	1
2939	Stuck In A Moment You Can't Get Out Of	Adam Clayton, Bono, Larry Mullen, The Edge	272378	8997366	0.99	233	1	1
2940	Elevation	Adam Clayton, Bono, Larry Mullen, The Edge	227552	7479414	0.99	233	1	1
2941	Walk On	Adam Clayton, Bono, Larry Mullen, The Edge	296280	9800861	0.99	233	1	1
2942	Kite	Adam Clayton, Bono, Larry Mullen, The Edge	266893	8765761	0.99	233	1	1
2943	In A Little While	Adam Clayton, Bono, Larry Mullen, The Edge	219271	7189647	0.99	233	1	1
2944	Wild Honey	Adam Clayton, Bono, Larry Mullen, The Edge	226768	7466069	0.99	233	1	1
2945	Peace On Earth	Adam Clayton, Bono, Larry Mullen, The Edge	288496	9476171	0.99	233	1	1
2946	When I Look At The World	Adam Clayton, Bono, Larry Mullen, The Edge	257776	8500491	0.99	233	1	1
2947	New York	Adam Clayton, Bono, Larry Mullen, The Edge	330370	10862323	0.99	233	1	1
2948	Grace	Adam Clayton, Bono, Larry Mullen, The Edge	330657	10877148	0.99	233	1	1
2949	The Three Sunrises	U2	234788	7717990	0.99	234	1	1
2950	Spanish Eyes	U2	196702	6392710	0.99	234	1	1
2951	Sweetest Thing	U2	185103	6154896	0.99	234	1	1
2952	Love Comes Tumbling	U2	282671	9328802	0.99	234	1	1
2953	Bass Trap	U2	213289	6834107	0.99	234	1	1
2954	Dancing Barefoot	Ivan Kral/Patti Smith	287895	9488294	0.99	234	1	1
2955	Everlasting Love	Buzz Cason/Mac Gayden	202631	6708932	0.99	234	1	1
2956	Unchained Melody	Alex North/Hy Zaret	294164	9597568	0.99	234	1	1
2957	Walk To The Water	U2	289253	9523336	0.99	234	1	1
2958	Luminous Times (Hold On To Love)	Brian Eno/U2	277760	9015513	0.99	234	1	1
2959	Hallelujah Here She Comes	U2	242364	8027028	0.99	234	1	1
2960	Silver And Gold	Bono	279875	9199746	0.99	234	1	1
2961	Endless Deep	U2	179879	5899070	0.99	234	1	1
2962	A Room At The Heartbreak Hotel	U2	274546	9015416	0.99	234	1	1
2963	Trash, Trampoline And The Party Girl	U2	153965	5083523	0.99	234	1	1
2964	Vertigo	Adam Clayton, Bono, Larry Mullen & The Edge	194612	6329502	0.99	235	1	1
2965	Miracle Drug	Adam Clayton, Bono, Larry Mullen & The Edge	239124	7760916	0.99	235	1	1
2966	Sometimes You Can't Make It On Your Own	Adam Clayton, Bono, Larry Mullen & The Edge	308976	10112863	0.99	235	1	1
2967	Love And Peace Or Else	Adam Clayton, Bono, Larry Mullen & The Edge	290690	9476723	0.99	235	1	1
2968	City Of Blinding Lights	Adam Clayton, Bono, Larry Mullen & The Edge	347951	11432026	0.99	235	1	1
2969	All Because Of You	Adam Clayton, Bono, Larry Mullen & The Edge	219141	7198014	0.99	235	1	1
2970	A Man And A Woman	Adam Clayton, Bono, Larry Mullen & The Edge	270132	8938285	0.99	235	1	1
2971	Crumbs From Your Table	Adam Clayton, Bono, Larry Mullen & The Edge	303568	9892349	0.99	235	1	1
2972	One Step Closer	Adam Clayton, Bono, Larry Mullen & The Edge	231680	7512912	0.99	235	1	1
2973	Original Of The Species	Adam Clayton, Bono, Larry Mullen & The Edge	281443	9230041	0.99	235	1	1
2974	Yahweh	Adam Clayton, Bono, Larry Mullen & The Edge	262034	8636998	0.99	235	1	1
2975	Discotheque	Bono, The Edge, Adam Clayton, and Larry Mullen	319582	10442206	0.99	236	1	1
2976	Do You Feel Loved	Bono, The Edge, Adam Clayton, and Larry Mullen	307539	10122694	0.99	236	1	1
2977	Mofo	Bono, The Edge, Adam Clayton, and Larry Mullen	349178	11583042	0.99	236	1	1
2978	If God Will Send His Angels	Bono, The Edge, Adam Clayton, and Larry Mullen	322533	10563329	0.99	236	1	1
2979	Staring At The Sun	Bono, The Edge, Adam Clayton, and Larry Mullen	276924	9082838	0.99	236	1	1
2980	Last Night On Earth	Bono, The Edge, Adam Clayton, and Larry Mullen	285753	9401017	0.99	236	1	1
2981	Gone	Bono, The Edge, Adam Clayton, and Larry Mullen	266866	8746301	0.99	236	1	1
2982	Miami	Bono, The Edge, Adam Clayton, and Larry Mullen	293041	9741603	0.99	236	1	1
2983	The Playboy Mansion	Bono, The Edge, Adam Clayton, and Larry Mullen	280555	9274144	0.99	236	1	1
2984	If You Wear That Velvet Dress	Bono, The Edge, Adam Clayton, and Larry Mullen	315167	10227333	0.99	236	1	1
2985	Please	Bono, The Edge, Adam Clayton, and Larry Mullen	302602	9909484	0.99	236	1	1
2986	Wake Up Dead Man	Bono, The Edge, Adam Clayton, and Larry Mullen	292832	9515903	0.99	236	1	1
2987	Helter Skelter	Lennon, John/McCartney, Paul	187350	6097636	0.99	237	1	1
2988	Van Diemen's Land	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	186044	5990280	0.99	237	1	1
2989	Desire	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	179226	5874535	0.99	237	1	1
2990	Hawkmoon 269	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	382458	12494987	0.99	237	1	1
2991	All Along The Watchtower	Dylan, Bob	264568	8623572	0.99	237	1	1
2992	I Still Haven't Found What I'm Looking for	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	353567	11542247	0.99	237	1	1
2993	Freedom For My People	Mabins, Macie/Magee, Sterling/Robinson, Bobby	38164	1249764	0.99	237	1	1
2994	Silver And Gold	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	349831	11450194	0.99	237	1	1
2995	Pride (In The Name Of Love)	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	267807	8806361	0.99	237	1	1
2996	Angel Of Harlem	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	229276	7498022	0.99	237	1	1
2997	Love Rescue Me	Bono/Clayton, Adam/Dylan, Bob/Mullen Jr., Larry/The Edge	384522	12508716	0.99	237	1	1
2998	When Love Comes To Town	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	255869	8340954	0.99	237	1	1
2999	Heartland	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	303360	9867748	0.99	237	1	1
3000	God Part II	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	195604	6497570	0.99	237	1	1
3001	The Star Spangled Banner	Hendrix, Jimi	43232	1385810	0.99	237	1	1
3002	Bullet The Blue Sky	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	337005	10993607	0.99	237	1	1
3003	All I Want Is You	Bono/Clayton, Adam/Mullen Jr., Larry/The Edge	390243	12729820	0.99	237	1	1
3004	Pride (In The Name Of Love)	U2	230243	7549085	0.99	238	1	1
3005	New Year's Day	U2	258925	8491818	0.99	238	1	1
3006	With Or Without You	U2	299023	9765188	0.99	238	1	1
3007	I Still Haven't Found What I'm Looking For	U2	280764	9306737	0.99	238	1	1
3008	Sunday Bloody Sunday	U2	282174	9269668	0.99	238	1	1
3009	Bad	U2	351817	11628058	0.99	238	1	1
3010	Where The Streets Have No Name	U2	276218	9042305	0.99	238	1	1
3011	I Will Follow	U2	218253	7184825	0.99	238	1	1
3012	The Unforgettable Fire	U2	295183	9684664	0.99	238	1	1
3013	Sweetest Thing	U2 & Daragh O'Toole	183066	6071385	0.99	238	1	1
3014	Desire	U2	179853	5893206	0.99	238	1	1
3015	When Love Comes To Town	U2	258194	8479525	0.99	238	1	1
3016	Angel Of Harlem	U2	230217	7527339	0.99	238	1	1
3017	All I Want Is You	U2 & Van Dyke Parks	591986	19202252	0.99	238	1	1
3018	Sunday Bloody Sunday	U2	278204	9140849	0.99	239	1	1
3019	Seconds	U2	191582	6352121	0.99	239	1	1
3020	New Year's Day	U2	336274	11054732	0.99	239	1	1
3021	Like A Song...	U2	287294	9365379	0.99	239	1	1
3022	Drowning Man	U2	254458	8457066	0.99	239	1	1
3023	The Refugee	U2	221283	7374043	0.99	239	1	1
3024	Two Hearts Beat As One	U2	243487	7998323	0.99	239	1	1
3025	Red Light	U2	225854	7453704	0.99	239	1	1
3026	Surrender	U2	333505	11221406	0.99	239	1	1
3027	40	U2	157962	5251767	0.99	239	1	1
3028	Zooropa	U2; Bono	392359	12807979	0.99	240	1	1
3029	Babyface	U2; Bono	241998	7942573	0.99	240	1	1
3030	Numb	U2; Edge, The	260284	8577861	0.99	240	1	1
3031	Lemon	U2; Bono	418324	13988878	0.99	240	1	1
3032	Stay (Faraway, So Close!)	U2; Bono	298475	9785480	0.99	240	1	1
3033	Daddy's Gonna Pay For Your Crashed Car	U2; Bono	320287	10609581	0.99	240	1	1
3034	Some Days Are Better Than Others	U2; Bono	257436	8417690	0.99	240	1	1
3035	The First Time	U2; Bono	225697	7247651	0.99	240	1	1
3036	Dirty Day	U2; Bono & Edge, The	324440	10652877	0.99	240	1	1
3037	The Wanderer	U2; Bono	283951	9258717	0.99	240	1	1
3038	Breakfast In Bed		196179	6513325	0.99	241	8	1
3039	Where Did I Go Wrong		226742	7485054	0.99	241	8	1
3040	I Would Do For You		334524	11193602	0.99	241	8	1
3041	Homely Girl		203833	6790788	0.99	241	8	1
3042	Here I Am (Come And Take Me)		242102	8106249	0.99	241	8	1
3043	Kingston Town		226951	7638236	0.99	241	8	1
3044	Wear You To The Ball		213342	7159527	0.99	241	8	1
3045	(I Can't Help) Falling In Love With You		207568	6905623	0.99	241	8	1
3046	Higher Ground		260179	8665244	0.99	241	8	1
3047	Bring Me Your Cup		341498	11346114	0.99	241	8	1
3048	C'est La Vie		270053	9031661	0.99	241	8	1
3049	Reggae Music		245106	8203931	0.99	241	8	1
3050	Superstition		319582	10728099	0.99	241	8	1
3051	Until My Dying Day		235807	7886195	0.99	241	8	1
3052	Where Have All The Good Times Gone?	Ray Davies	186723	6063937	0.99	242	1	1
3053	Hang 'Em High	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	210259	6872314	0.99	242	1	1
3054	Cathedral	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	82860	2650998	0.99	242	1	1
3055	Secrets	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	206968	6803255	0.99	242	1	1
3056	Intruder	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	100153	3282142	0.99	242	1	1
3057	(Oh) Pretty Woman	Bill Dees/Roy Orbison	174680	5665828	0.99	242	1	1
3058	Dancing In The Street	Ivy Jo Hunter/Marvin Gaye/William Stevenson	225985	7461499	0.99	242	1	1
3059	Little Guitars (Intro)	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	42240	1439530	0.99	242	1	1
3060	Little Guitars	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	228806	7453043	0.99	242	1	1
3061	Big Bad Bill (Is Sweet William Now)	Jack Yellen/Milton Ager	165146	5489609	0.99	242	1	1
3062	The Full Bug	Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony	201116	6551013	0.99	242	1	1
3063	Happy Trails	Dale Evans	65488	2111141	0.99	242	1	1
3064	Eruption	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	102164	3272891	0.99	243	1	1
3065	Ain't Talkin' 'bout Love	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	228336	7569506	0.99	243	1	1
3066	Runnin' With The Devil	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	215902	7061901	0.99	243	1	1
3067	Dance the Night Away	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	185965	6087433	0.99	243	1	1
3068	And the Cradle Will Rock...	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	213968	7011402	0.99	243	1	1
3069	Unchained	Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony	208953	6777078	0.99	243	1	1
3070	Jump	Edward Van Halen, Alex Van Halen, David Lee Roth	241711	7911090	0.99	243	1	1
3071	Panama	Edward Van Halen, Alex Van Halen, David Lee Roth	211853	6921784	0.99	243	1	1
3072	Why Can't This Be Love	Van Halen	227761	7457655	0.99	243	1	1
3073	Dreams	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	291813	9504119	0.99	243	1	1
3074	When It's Love	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	338991	11049966	0.99	243	1	1
3075	Poundcake	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	321854	10366978	0.99	243	1	1
3076	Right Now	Van Halen	321828	10503352	0.99	243	1	1
3077	Can't Stop Loving You	Van Halen	248502	8107896	0.99	243	1	1
3078	Humans Being	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar	308950	10014683	0.99	243	1	1
3079	Can't Get This Stuff No More	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth	315376	10355753	0.99	243	1	1
3080	Me Wise Magic	Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth	366053	12013467	0.99	243	1	1
3081	Runnin' With The Devil	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	216032	7056863	0.99	244	1	1
3082	Eruption	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	102556	3286026	0.99	244	1	1
3083	You Really Got Me	Ray Davies	158589	5194092	0.99	244	1	1
3084	Ain't Talkin' 'Bout Love	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	230060	7617284	0.99	244	1	1
3085	I'm The One	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	226507	7373922	0.99	244	1	1
3086	Jamie's Cryin'	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	210546	6946086	0.99	244	1	1
3087	Atomic Punk	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	182073	5908861	0.99	244	1	1
3088	Feel Your Love Tonight	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	222850	7293608	0.99	244	1	1
3089	Little Dreamer	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	203258	6648122	0.99	244	1	1
3090	Ice Cream Man	John Brim	200306	6573145	0.99	244	1	1
3091	On Fire	Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth	180636	5879235	0.99	244	1	1
3092	Neworld	Van Halen	105639	3495897	0.99	245	1	1
3093	Without You	Van Halen	390295	12619558	0.99	245	1	1
3094	One I Want	Van Halen	330788	10743970	0.99	245	1	1
3095	From Afar	Van Halen	324414	10524554	0.99	245	1	1
3096	Dirty Water Dog	Van Halen	327392	10709202	0.99	245	1	1
3097	Once	Van Halen	462837	15378082	0.99	245	1	1
3098	Fire in the Hole	Van Halen	331728	10846768	0.99	245	1	1
3099	Josephina	Van Halen	342491	11161521	0.99	245	1	1
3100	Year to the Day	Van Halen	514612	16621333	0.99	245	1	1
3101	Primary	Van Halen	86987	2812555	0.99	245	1	1
3102	Ballot or the Bullet	Van Halen	342282	11212955	0.99	245	1	1
3103	How Many Say I	Van Halen	363937	11716855	0.99	245	1	1
3104	Sucker Train Blues	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	267859	8738780	0.99	246	1	1
3105	Do It For The Kids	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	235911	7693331	0.99	246	1	1
3106	Big Machine	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	265613	8673442	0.99	246	1	1
3107	Illegal I Song	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	257750	8483347	0.99	246	1	1
3108	Spectacle	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	221701	7252876	0.99	246	1	1
3109	Fall To Pieces	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	270889	8823096	0.99	246	1	1
3110	Headspace	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	223033	7237986	0.99	246	1	1
3111	Superhuman	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	255921	8365328	0.99	246	1	1
3112	Set Me Free	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	247954	8053388	0.99	246	1	1
3113	You Got No Right	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	335412	10991094	0.99	246	1	1
3114	Slither	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	248398	8118785	0.99	246	1	1
3115	Dirty Little Thing	Dave Kushner, Duff, Keith Nelson, Matt Sorum, Scott Weiland & Slash	237844	7732982	0.99	246	1	1
3116	Loving The Alien	Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash	348786	11412762	0.99	246	1	1
3117	Pela Luz Dos Olhos Teus		119196	3905715	0.99	247	7	1
3118	A Bencao E Outros		421093	14234427	0.99	247	7	1
3119	Tudo Na Mais Santa Paz		222406	7426757	0.99	247	7	1
3120	O Velho E Aflor		275121	9126828	0.99	247	7	1
3121	Cotidiano N 2		55902	1805797	0.99	247	7	1
3122	Adeus		221884	7259351	0.99	247	7	1
3123	Samba Pra Endrigo		259265	8823551	0.99	247	7	1
3124	So Por Amor		236591	7745764	0.99	247	7	1
3125	Meu Pranto Rolou		181760	6003345	0.99	247	7	1
3126	Mulher Carioca		191686	6395048	0.99	247	7	1
3127	Um Homem Chamado Alfredo		151640	4976227	0.99	247	7	1
3128	Samba Do Jato		220813	7357840	0.99	247	7	1
3129	Oi, La		167053	5562700	0.99	247	7	1
3130	Vinicius, Poeta Do Encontro		336431	10858776	0.99	247	7	1
3131	Soneto Da Separacao		193880	6277511	0.99	247	7	1
3132	Still Of The Night	Sykes	398210	13043817	0.99	141	3	1
3133	Here I Go Again	Marsden	233874	7652473	0.99	141	3	1
3134	Is This Love	Sykes	283924	9262360	0.99	141	3	1
3135	Love Ain't No Stranger	Galley	259395	8490428	0.99	141	3	1
3136	Looking For Love	Sykes	391941	12769847	0.99	141	3	1
3137	Now You're Gone	Vandenberg	251141	8162193	0.99	141	3	1
3138	Slide It In	Coverdale	202475	6615152	0.99	141	3	1
3139	Slow An' Easy	Moody	367255	11961332	0.99	141	3	1
3140	Judgement Day	Vandenberg	317074	10326997	0.99	141	3	1
3141	You're Gonna Break My Hart Again	Sykes	250853	8176847	0.99	141	3	1
3142	The Deeper The Love	Vandenberg	262791	8606504	0.99	141	3	1
3143	Crying In The Rain	Coverdale	337005	10931921	0.99	141	3	1
3144	Fool For Your Loving	Marsden/Moody	250801	8129820	0.99	141	3	1
3145	Sweet Lady Luck	Vandenberg	273737	8919163	0.99	141	3	1
3146	Faixa Amarela	Beto Gogo/Jessé Pai/Luiz Carlos/Zeca Pagodinho	240692	8082036	0.99	248	7	1
3147	Posso Até Me Apaixonar	Dudu Nobre	200698	6735526	0.99	248	7	1
3148	Não Sou Mais Disso	Jorge Aragão/Zeca Pagodinho	225985	7613817	0.99	248	7	1
3149	Vivo Isolado Do Mundo	Alcides Dias Lopes	180035	6073995	0.99	248	7	1
3150	Coração Em Desalinho	Mauro Diniz/Ratino Sigem	185208	6225948	0.99	248	7	1
3151	Seu Balancê	Paulinho Rezende/Toninho Geraes	219454	7311219	0.99	248	7	1
3152	Vai Adiar	Alcino Corrêa/Monarco	270393	9134882	0.99	248	7	1
3153	Rugas	Augusto Garcez/Nelson Cavaquinho	140930	4703182	0.99	248	7	1
3154	Feirinha da Pavuna/Luz do Repente/Bagaço da Laranja	Arlindo Cruz/Franco/Marquinhos PQD/Negro, Jovelina Pérolo/Zeca Pagodinho	107206	3593684	0.99	248	7	1
3155	Sem Essa de Malandro Agulha	Aldir Blanc/Jayme Vignoli	158484	5332668	0.99	248	7	1
3156	Chico Não Vai na Corimba	Dudu Nobre/Zeca Pagodinho	269374	9122188	0.99	248	7	1
3157	Papel Principal	Almir Guineto/Dedé Paraiso/Luverci Ernesto	217495	7325302	0.99	248	7	1
3158	Saudade Louca	Acyr Marques/Arlindo Cruz/Franco	243591	8136475	0.99	248	7	1
3159	Camarão que Dorme e Onda Leva	Acyi Marques/Arlindo Bruz/Braço, Beto Sem/Zeca Pagodinho	299102	10012231	0.99	248	7	1
3160	Sapopemba e Maxambomba	Nei Lopes/Wilson Moreira	245394	8268712	0.99	248	7	1
3161	Minha Fé	Murilão	206994	6981474	0.99	248	7	1
3162	Lua de Ogum	Ratinho/Zeca Pagodinho	168463	5719129	0.99	248	7	1
3163	Samba pras moças	Grazielle/Roque Ferreira	152816	5121366	0.99	248	7	1
3164	Verdade	Carlinhos Santana/Nelson Rufino	332826	11120708	0.99	248	7	1
3165	The Brig		2617325	488919543	1.99	229	21	3
3166	.07%		2585794	541715199	1.99	228	21	3
3167	Five Years Gone		2587712	530551890	1.99	228	21	3
3168	The Hard Part		2601017	475996611	1.99	228	21	3
3169	The Man Behind the Curtain		2615990	493951081	1.99	229	21	3
3170	Greatest Hits		2617117	522102916	1.99	229	21	3
3171	Landslide		2600725	518677861	1.99	228	21	3
3172	The Office: An American Workplace (Pilot)		1380833	290482361	1.99	249	19	3
3173	Diversity Day		1306416	257879716	1.99	249	19	3
3174	Health Care		1321791	260493577	1.99	249	19	3
3175	The Alliance		1317125	266203162	1.99	249	19	3
3176	Basketball		1323541	267464180	1.99	249	19	3
3177	Hot Girl		1325458	267836576	1.99	249	19	3
3178	The Dundies		1253541	246845576	1.99	250	19	3
3179	Sexual Harassment		1294541	273069146	1.99	250	19	3
3180	Office Olympics		1290458	256247623	1.99	250	19	3
3181	The Fire		1288166	266856017	1.99	250	19	3
3182	Halloween		1315333	249205209	1.99	250	19	3
3183	The Fight		1320028	277149457	1.99	250	19	3
3184	The Client		1299341	253836788	1.99	250	19	3
3185	Performance Review		1292458	256143822	1.99	250	19	3
3186	Email Surveillance		1328870	265101113	1.99	250	19	3
3187	Christmas Party		1282115	260891300	1.99	250	19	3
3188	Booze Cruise		1267958	252518021	1.99	250	19	3
3189	The Injury		1275275	253912762	1.99	250	19	3
3190	The Secret		1264875	253143200	1.99	250	19	3
3191	The Carpet		1264375	256477011	1.99	250	19	3
3192	Boys and Girls		1278333	255245729	1.99	250	19	3
3193	Valentine's Day		1270375	253552710	1.99	250	19	3
3194	Dwight's Speech		1278041	255001728	1.99	250	19	3
3195	Take Your Daughter to Work Day		1268333	253451012	1.99	250	19	3
3196	Michael's Birthday		1237791	247238398	1.99	250	19	3
3197	Drug Testing		1278625	244626927	1.99	250	19	3
3198	Conflict Resolution		1274583	253808658	1.99	250	19	3
3199	Casino Night - Season Finale		1712791	327642458	1.99	250	19	3
3200	Gay Witch Hunt		1326534	276942637	1.99	251	19	3
3201	The Convention		1297213	255117055	1.99	251	19	3
3202	The Coup		1276526	267205501	1.99	251	19	3
3203	Grief Counseling		1282615	256912833	1.99	251	19	3
3204	The Initiation		1280113	251728257	1.99	251	19	3
3205	Diwali		1279904	252726644	1.99	251	19	3
3206	Branch Closing		1822781	358761786	1.99	251	19	3
3207	The Merger		1801926	345960631	1.99	251	19	3
3208	The Convict		1273064	248863427	1.99	251	22	3
3209	A Benihana Christmas, Pts. 1 & 2		2519436	515301752	1.99	251	22	3
3210	Back from Vacation		1271688	245378749	1.99	251	22	3
3211	Traveling Salesmen		1289039	250822697	1.99	251	22	3
3212	Producer's Cut: The Return		1700241	337219980	1.99	251	22	3
3213	Ben Franklin		1271938	264168080	1.99	251	22	3
3214	Phyllis's Wedding		1271521	258561054	1.99	251	22	3
3215	Business School		1302093	254402605	1.99	251	22	3
3216	Cocktails		1272522	259011909	1.99	251	22	3
3217	The Negotiation		1767851	371663719	1.99	251	22	3
3218	Safety Training		1271229	253054534	1.99	251	22	3
3219	Product Recall		1268268	251208610	1.99	251	22	3
3220	Women's Appreciation		1732649	338778844	1.99	251	22	3
3221	Beach Games		1676134	333671149	1.99	251	22	3
3222	The Job		2541875	501060138	1.99	251	22	3
3223	How to Stop an Exploding Man		2687103	487881159	1.99	228	21	3
3224	Through a Looking Glass		5088838	1059546140	1.99	229	21	3
3225	Your Time Is Gonna Come	Page, Jones	310774	5126563	0.99	252	1	2
3226	Battlestar Galactica, Pt. 1		2952702	541359437	1.99	253	20	3
3227	Battlestar Galactica, Pt. 2		2956081	521387924	1.99	253	20	3
3228	Battlestar Galactica, Pt. 3		2927802	554509033	1.99	253	20	3
3229	Lost Planet of the Gods, Pt. 1		2922547	537812711	1.99	253	20	3
3230	Lost Planet of the Gods, Pt. 2		2914664	534343985	1.99	253	20	3
3231	The Lost Warrior		2920045	558872190	1.99	253	20	3
3232	The Long Patrol		2925008	513122217	1.99	253	20	3
3233	The Gun On Ice Planet Zero, Pt. 1		2907615	540980196	1.99	253	20	3
3234	The Gun On Ice Planet Zero, Pt. 2		2924341	546542281	1.99	253	20	3
3235	The Magnificent Warriors		2924716	570152232	1.99	253	20	3
3236	The Young Lords		2863571	587051735	1.99	253	20	3
3237	The Living Legend, Pt. 1		2924507	503641007	1.99	253	20	3
3238	The Living Legend, Pt. 2		2923298	515632754	1.99	253	20	3
3239	Fire In Space		2926593	536784757	1.99	253	20	3
3240	War of the Gods, Pt. 1		2922630	505761343	1.99	253	20	3
3241	War of the Gods, Pt. 2		2923381	487899692	1.99	253	20	3
3242	The Man With Nine Lives		2956998	577829804	1.99	253	20	3
3243	Murder On the Rising Star		2935894	551759986	1.99	253	20	3
3244	Greetings from Earth, Pt. 1		2960293	536824558	1.99	253	20	3
3245	Greetings from Earth, Pt. 2		2903778	527842860	1.99	253	20	3
3246	Baltar's Escape		2922088	525564224	1.99	253	20	3
3247	Experiment In Terra		2923548	547982556	1.99	253	20	3
3248	Take the Celestra		2927677	512381289	1.99	253	20	3
3249	The Hand of God		2924007	536583079	1.99	253	20	3
3250	Pilot		2484567	492670102	1.99	254	19	3
3251	Through the Looking Glass, Pt. 2		2617117	550943353	1.99	229	21	3
3252	Through the Looking Glass, Pt. 1		2610860	493211809	1.99	229	21	3
3253	Instant Karma		193188	3150090	0.99	255	9	2
3254	#9 Dream		278312	4506425	0.99	255	9	2
3255	Mother		287740	4656660	0.99	255	9	2
3256	Give Peace a Chance		274644	4448025	0.99	255	9	2
3257	Cold Turkey		281424	4556003	0.99	255	9	2
3258	Whatever Gets You Thru the Night		215084	3499018	0.99	255	9	2
3259	I'm Losing You		240719	3907467	0.99	255	9	2
3260	Gimme Some Truth		232778	3780807	0.99	255	9	2
3261	Oh, My Love		159473	2612788	0.99	255	9	2
3262	Imagine		192329	3136271	0.99	255	9	2
3263	Nobody Told Me		210348	3423395	0.99	255	9	2
3264	Jealous Guy		239094	3881620	0.99	255	9	2
3265	Working Class Hero		265449	4301430	0.99	255	9	2
3266	Power to the People		213018	3466029	0.99	255	9	2
3267	Imagine		219078	3562542	0.99	255	9	2
3268	Beautiful Boy		227995	3704642	0.99	255	9	2
3269	Isolation		156059	2558399	0.99	255	9	2
3270	Watching the Wheels		198645	3237063	0.99	255	9	2
3271	Grow Old With Me		149093	2447453	0.99	255	9	2
3272	Gimme Some Truth		187546	3060083	0.99	255	9	2
3273	[Just Like] Starting Over		215549	3506308	0.99	255	9	2
3274	God		260410	4221135	0.99	255	9	2
3275	Real Love		236911	3846658	0.99	255	9	2
3276	Sympton of the Universe		340890	5489313	0.99	256	1	2
3277	Snowblind		295960	4773171	0.99	256	1	2
3278	Black Sabbath		364180	5860455	0.99	256	1	2
3279	Fairies Wear Boots		392764	6315916	0.99	256	1	2
3280	War Pigs		515435	8270194	0.99	256	1	2
3281	The Wizard		282678	4561796	0.99	256	1	2
3282	N.I.B.		335248	5399456	0.99	256	1	2
3283	Sweet Leaf		354706	5709700	0.99	256	1	2
3284	Never Say Die		258343	4173799	0.99	256	1	2
3285	Sabbath, Bloody Sabbath		333622	5373633	0.99	256	1	2
3286	Iron Man/Children of the Grave		552308	8858616	0.99	256	1	2
3287	Paranoid		189171	3071042	0.99	256	1	2
3288	Rock You Like a Hurricane		255766	4300973	0.99	257	1	2
3289	No One Like You		240325	4050259	0.99	257	1	2
3290	The Zoo		332740	5550779	0.99	257	1	2
3291	Loving You Sunday Morning		339125	5654493	0.99	257	1	2
3292	Still Loving You		390674	6491444	0.99	257	1	2
3293	Big City Nights		251865	4237651	0.99	257	1	2
3294	Believe in Love		325774	5437651	0.99	257	1	2
3295	Rhythm of Love		231246	3902834	0.99	257	1	2
3296	I Can't Explain		205332	3482099	0.99	257	1	2
3297	Tease Me Please Me		287229	4811894	0.99	257	1	2
3298	Wind of Change		315325	5268002	0.99	257	1	2
3299	Send Me an Angel		273041	4581492	0.99	257	1	2
3300	Jump Around	E. Schrody/L. Muggerud	217835	8715653	0.99	258	17	1
3301	Salutations	E. Schrody/L. Dimant	69120	2767047	0.99	258	17	1
3302	Put Your Head Out	E. Schrody/L. Freese/L. Muggerud	182230	7291473	0.99	258	17	1
3303	Top O' The Morning To Ya	E. Schrody/L. Dimant	216633	8667599	0.99	258	17	1
3304	Commercial 1	L. Muggerud	7941	319888	0.99	258	17	1
3305	House And The Rising Sun	E. Schrody/J. Vasquez/L. Dimant	219402	8778369	0.99	258	17	1
3306	Shamrocks And Shenanigans	E. Schrody/L. Dimant	218331	8735518	0.99	258	17	1
3307	House Of Pain Anthem	E. Schrody/L. Dimant	155611	6226713	0.99	258	17	1
3308	Danny Boy, Danny Boy	E. Schrody/L. Muggerud	114520	4583091	0.99	258	17	1
3309	Guess Who's Back	E. Schrody/L. Muggerud	238393	9537994	0.99	258	17	1
3310	Commercial 2	L. Muggerud	21211	850698	0.99	258	17	1
3311	Put On Your Shit Kickers	E. Schrody/L. Muggerud	190432	7619569	0.99	258	17	1
3312	Come And Get Some Of This	E. Schrody/L. Muggerud/R. Medrano	170475	6821279	0.99	258	17	1
3313	Life Goes On	E. Schrody/R. Medrano	163030	6523458	0.99	258	17	1
3314	One For The Road	E. Schrody/L. Dimant/L. Muggerud	170213	6810820	0.99	258	17	1
3315	Feel It	E. Schrody/R. Medrano	239908	9598588	0.99	258	17	1
3316	All My Love	E. Schrody/L. Dimant	200620	8027065	0.99	258	17	1
3317	Jump Around (Pete Rock Remix)	E. Schrody/L. Muggerud	236120	9447101	0.99	258	17	1
3318	Shamrocks And Shenanigans (Boom Shalock Lock Boom/Butch Vig Mix)	E. Schrody/L. Dimant	237035	9483705	0.99	258	17	1
3319	Instinto Colectivo		300564	12024875	0.99	259	15	1
3320	Chapa o Coco		143830	5755478	0.99	259	15	1
3321	Prostituta		359000	14362307	0.99	259	15	1
3322	Eu So Queria Sumir		269740	10791921	0.99	259	15	1
3323	Tres Reis		304143	12168015	0.99	259	15	1
3324	Um Lugar ao Sol		212323	8495217	0.99	259	15	1
3325	Batalha Naval		285727	11431382	0.99	259	15	1
3326	Todo o Carnaval tem seu Fim		237426	9499371	0.99	259	15	1
3327	O Misterio do Samba		226142	9047970	0.99	259	15	1
3328	Armadura		232881	9317533	0.99	259	15	1
3329	Na Ladeira		221570	8865099	0.99	259	15	1
3330	Carimbo		328751	13152314	0.99	259	15	1
3331	Catimbo		254484	10181692	0.99	259	15	1
3332	Funk de Bamba		237322	9495184	0.99	259	15	1
3333	Chega no Suingue		221805	8874509	0.99	259	15	1
3334	Mun-Ra		274651	10988338	0.99	259	15	1
3335	Freestyle Love		318484	12741680	0.99	259	15	1
3336	War Pigs		234013	8052374	0.99	260	23	4
3337	Past, Present, and Future		2492867	490796184	1.99	261	21	3
3338	The Beginning of the End		2611903	526865050	1.99	261	21	3
3339	LOST Season 4 Trailer		112712	20831818	1.99	261	21	3
3340	LOST In 8:15		497163	98460675	1.99	261	21	3
3341	Confirmed Dead		2611986	512168460	1.99	261	21	3
3342	The Economist		2609025	516934914	1.99	261	21	3
3343	Eggtown		2608817	501061240	1.99	261	19	3
3344	The Constant		2611569	520209363	1.99	261	21	3
3345	The Other Woman		2605021	513246663	1.99	261	21	3
3346	Ji Yeon		2588797	506458858	1.99	261	19	3
3347	Meet Kevin Johnson		2612028	504132981	1.99	261	19	3
3348	The Shape of Things to Come		2591299	502284266	1.99	261	21	3
3349	Amanda	Luca Gusella	246503	4011615	0.99	262	2	5
3350	Despertar	Andrea Dulbecco	307385	4821485	0.99	262	2	5
3351	Din Din Wo (Little Child)	Habib Koité	285837	4615841	0.99	263	16	5
3352	Distance	Karsh Kale/Vishal Vaid	327122	5327463	0.99	264	15	5
3353	I Guess You're Right	Darius "Take One" Minwalla/Jon Auer/Ken Stringfellow/Matt Harris	212044	3453849	0.99	265	1	5
3354	I Ka Barra (Your Work)	Habib Koité	300605	4855457	0.99	263	16	5
3355	Love Comes	Darius "Take One" Minwalla/Jon Auer/Ken Stringfellow/Matt Harris	199923	3240609	0.99	265	1	5
3356	Muita Bobeira	Luciana Souza	172710	2775071	0.99	266	7	5
3357	OAM's Blues	Aaron Goldberg	266936	4292028	0.99	267	2	5
3358	One Step Beyond	Karsh Kale	366085	6034098	0.99	264	15	5
3359	Symphony No. 3 in E-flat major, Op. 55, Eroica - Scherzo: Allegro Vivace	Ludwig van Beethoven	356426	5817216	0.99	268	24	5
3360	Something Nice Back Home		2612779	484711353	1.99	261	21	3
3361	Cabin Fever		2612028	477733942	1.99	261	21	3
3362	There's No Place Like Home, Pt. 1		2609526	522919189	1.99	261	21	3
3363	There's No Place Like Home, Pt. 2		2497956	523748920	1.99	261	21	3
3364	There's No Place Like Home, Pt. 3		2582957	486161766	1.99	261	21	3
3365	Say Hello 2 Heaven		384497	6477217	0.99	269	23	2
3366	Reach Down		672773	11157785	0.99	269	23	2
3367	Hunger Strike		246292	4233212	0.99	269	23	2
3368	Pushin Forward Back		225278	3892066	0.99	269	23	2
3369	Call Me a Dog		304458	5177612	0.99	269	23	2
3370	Times of Trouble		342539	5795951	0.99	269	23	2
3371	Wooden Jesus		250565	4302603	0.99	269	23	2
3372	Your Savior		244226	4199626	0.99	269	23	2
3373	Four Walled World		414474	6964048	0.99	269	23	2
3374	All Night Thing		231803	3997982	0.99	269	23	2
3375	No Such Thing	Chris Cornell	224837	3691272	0.99	270	23	2
3376	Poison Eye	Chris Cornell	237120	3890037	0.99	270	23	2
3377	Arms Around Your Love	Chris Cornell	214016	3516224	0.99	270	23	2
3378	Safe and Sound	Chris Cornell	256764	4207769	0.99	270	23	2
3379	She'll Never Be Your Man	Chris Cornell	204078	3355715	0.99	270	23	2
3380	Ghosts	Chris Cornell	231547	3799745	0.99	270	23	2
3381	Killing Birds	Chris Cornell	218498	3588776	0.99	270	23	2
3382	Billie Jean	Michael Jackson	281401	4606408	0.99	270	23	2
3383	Scar On the Sky	Chris Cornell	220193	3616618	0.99	270	23	2
3384	Your Soul Today	Chris Cornell	205959	3385722	0.99	270	23	2
3385	Finally Forever	Chris Cornell	217035	3565098	0.99	270	23	2
3386	Silence the Voices	Chris Cornell	267376	4379597	0.99	270	23	2
3387	Disappearing Act	Chris Cornell	273320	4476203	0.99	270	23	2
3388	You Know My Name	Chris Cornell	240255	3940651	0.99	270	23	2
3389	Revelations		252376	4111051	0.99	271	23	2
3390	One and the Same		217732	3559040	0.99	271	23	2
3391	Sound of a Gun		260154	4234990	0.99	271	23	2
3392	Until We Fall		230758	3766605	0.99	271	23	2
3393	Original Fire		218916	3577821	0.99	271	23	2
3394	Broken City		228366	3728955	0.99	271	23	2
3395	Somedays		213831	3497176	0.99	271	23	2
3396	Shape of Things to Come		274597	4465399	0.99	271	23	2
3397	Jewel of the Summertime		233242	3806103	0.99	271	23	2
3398	Wide Awake		266308	4333050	0.99	271	23	2
3399	Nothing Left to Say But Goodbye		213041	3484335	0.99	271	23	2
3400	Moth		298049	4838884	0.99	271	23	2
3401	Show Me How to Live (Live at the Quart Festival)		301974	4901540	0.99	271	23	2
3402	Band Members Discuss Tracks from Revelations		294294	61118891	0.99	271	23	3
3403	Intoitus: Adorate Deum	Anonymous	245317	4123531	0.99	272	24	2
3404	Miserere mei, Deus	Gregorio Allegri	501503	8285941	0.99	273	24	2
3405	Canon and Gigue in D Major: I. Canon	Johann Pachelbel	271788	4438393	0.99	274	24	2
3406	Concerto No. 1 in E Major, RV 269 Spring: I. Allegro	Antonio Vivaldi	199086	3347810	0.99	275	24	2
3407	Concerto for 2 Violins in D Minor, BWV 1043: I. Vivace	Johann Sebastian Bach	193722	3192890	0.99	276	24	2
3408	Aria Mit 30 Veränderungen, BWV 988 "Goldberg Variations": Aria	Johann Sebastian Bach	120463	2081895	0.99	277	24	2
3409	Suite for Solo Cello No. 1 in G Major, BWV 1007: I. Prélude	Johann Sebastian Bach	143288	2315495	0.99	278	24	2
3410	The Messiah: Behold, I Tell You a Mystery... The Trumpet Shall Sound	George Frideric Handel	582029	9553140	0.99	279	24	2
3411	Solomon HWV 67: The Arrival of the Queen of Sheba	George Frideric Handel	197135	3247914	0.99	280	24	2
3412	"Eine Kleine Nachtmusik" Serenade In G, K. 525: I. Allegro	Wolfgang Amadeus Mozart	348971	5760129	0.99	281	24	2
3413	Concerto for Clarinet in A Major, K. 622: II. Adagio	Wolfgang Amadeus Mozart	394482	6474980	0.99	282	24	2
3414	Symphony No. 104 in D Major London: IV. Finale: Spiritoso	Franz Joseph Haydn	306687	10085867	0.99	283	24	4
3415	Symphony No.5 in C Minor: I. Allegro con brio	Ludwig van Beethoven	392462	6419730	0.99	284	24	2
3416	Ave Maria	Franz Schubert	338243	5605648	0.99	285	24	2
3417	Nabucco: Chorus, "Va, Pensiero, Sull'ali Dorate"	Giuseppe Verdi	274504	4498583	0.99	286	24	2
3418	Die Walküre: The Ride of the Valkyries	Richard Wagner	189008	3114209	0.99	287	24	2
3419	Requiem, Op.48: 4. Pie Jesu	Gabriel Fauré	258924	4314850	0.99	288	24	2
3420	The Nutcracker, Op. 71a, Act II: Scene 14: Pas de deux: Dance of the Prince & the Sugar-Plum Fairy	Peter Ilyich Tchaikovsky	304226	5184289	0.99	289	24	2
3421	Nimrod (Adagio) from Variations On an Original Theme, Op. 36 Enigma	Edward Elgar	250031	4124707	0.99	290	24	2
3422	Madama Butterfly: Un Bel Dì Vedremo	Giacomo Puccini	277639	4588197	0.99	291	24	2
3423	Jupiter, the Bringer of Jollity	Gustav Holst	522099	8547876	0.99	292	24	2
3424	Turandot, Act III, Nessun dorma!	Giacomo Puccini	176911	2920890	0.99	293	24	2
3425	Adagio for Strings from the String Quartet, Op. 11	Samuel Barber	596519	9585597	0.99	294	24	2
3426	Carmina Burana: O Fortuna	Carl Orff	156710	2630293	0.99	295	24	2
3427	Fanfare for the Common Man	Aaron Copland	198064	3211245	0.99	296	24	2
3428	Branch Closing		1814855	360331351	1.99	251	22	3
3429	The Return		1705080	343877320	1.99	251	22	3
3430	Toccata and Fugue in D Minor, BWV 565: I. Toccata	Johann Sebastian Bach	153901	2649938	0.99	297	24	2
3431	Symphony No.1 in D Major, Op.25 Classical, Allegro Con Brio	Sergei Prokofiev	254001	4195542	0.99	298	24	2
3432	Scheherazade, Op. 35: I. The Sea and Sindbad's Ship	Nikolai Rimsky-Korsakov	545203	8916313	0.99	299	24	2
3433	Concerto No.2 in F Major, BWV1047, I. Allegro	Johann Sebastian Bach	307244	5064553	0.99	300	24	2
3434	Concerto for Piano No. 2 in F Minor, Op. 21: II. Larghetto	Frédéric Chopin	560342	9160082	0.99	301	24	2
3435	Cavalleria Rusticana \\ Act \\ Intermezzo Sinfonico	Pietro Mascagni	243436	4001276	0.99	302	24	2
3436	Karelia Suite, Op.11: 2. Ballade (Tempo Di Menuetto)	Jean Sibelius	406000	5908455	0.99	303	24	2
3437	Piano Sonata No. 14 in C Sharp Minor, Op. 27, No. 2, Moonlight: I. Adagio sostenuto	Ludwig van Beethoven	391000	6318740	0.99	304	24	2
3438	Fantasia On Greensleeves	Ralph Vaughan Williams	268066	4513190	0.99	280	24	2
3439	Das Lied Von Der Erde, Von Der Jugend	Gustav Mahler	223583	3700206	0.99	305	24	2
3440	Concerto for Cello and Orchestra in E minor, Op. 85: I. Adagio - Moderato	Edward Elgar	483133	7865479	0.99	306	24	2
3441	Two Fanfares for Orchestra: II. Short Ride in a Fast Machine	John Adams	254930	4310896	0.99	307	24	2
3442	Wellington's Victory or the Battle Symphony, Op.91: 2. Symphony of Triumph	Ludwig van Beethoven	412000	6965201	0.99	308	24	2
3443	Missa Papae Marcelli: Kyrie	Giovanni Pierluigi da Palestrina	240666	4244149	0.99	309	24	2
3444	Romeo et Juliette: No. 11 - Danse des Chevaliers		275015	4519239	0.99	310	24	2
3445	On the Beautiful Blue Danube	Johann Strauss II	526696	8610225	0.99	311	24	2
3446	Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat	Hector Berlioz	561967	9173344	0.99	312	24	2
3447	Carmen: Overture	Georges Bizet	132932	2189002	0.99	313	24	2
3448	Lamentations of Jeremiah, First Set \\ Incipit Lamentatio	Thomas Tallis	69194	1208080	0.99	314	24	2
3449	Music for the Royal Fireworks, HWV351 (1749): La Réjouissance	George Frideric Handel	120000	2193734	0.99	315	24	2
3450	Peer Gynt Suite No.1, Op.46: 1. Morning Mood	Edvard Grieg	253422	4298769	0.99	316	24	2
3451	Die Zauberflöte, K.620: "Der Hölle Rache Kocht in Meinem Herze"	Wolfgang Amadeus Mozart	174813	2861468	0.99	317	25	2
3452	SCRIABIN: Prelude in B Major, Op. 11, No. 11		101293	3819535	0.99	318	24	4
3453	Pavan, Lachrimae Antiquae	John Dowland	253281	4211495	0.99	319	24	2
3454	Symphony No. 41 in C Major, K. 551, Jupiter: IV. Molto allegro	Wolfgang Amadeus Mozart	362933	6173269	0.99	320	24	2
3455	Rehab		213240	3416878	0.99	321	14	2
3456	You Know I'm No Good		256946	4133694	0.99	321	14	2
3457	Me & Mr. Jones		151706	2449438	0.99	321	14	2
3458	Just Friends		191933	3098906	0.99	321	14	2
3459	Back to Black	Mark Ronson	240320	3852953	0.99	321	14	2
3460	Love Is a Losing Game		154386	2509409	0.99	321	14	2
3461	Tears Dry On Their Own	Nickolas Ashford & Valerie Simpson	185293	2996598	0.99	321	14	2
3462	Wake Up Alone	Paul O'duffy	221413	3576773	0.99	321	14	2
3463	Some Unholy War		141520	2304465	0.99	321	14	2
3464	He Can Only Hold Her	Richard Poindexter & Robert Poindexter	166680	2666531	0.99	321	14	2
3465	You Know I'm No Good (feat. Ghostface Killah)		202320	3260658	0.99	321	14	2
3466	Rehab (Hot Chip Remix)		418293	6670600	0.99	321	14	2
3467	Intro / Stronger Than Me		234200	3832165	0.99	322	9	2
3468	You Sent Me Flying / Cherry		409906	6657517	0.99	322	9	2
3469	F**k Me Pumps	Salaam Remi	200253	3324343	0.99	322	9	2
3470	I Heard Love Is Blind		129666	2190831	0.99	322	9	2
3471	(There Is) No Greater Love (Teo Licks)	Isham Jones & Marty Symes	167933	2773507	0.99	322	9	2
3472	In My Bed	Salaam Remi	315960	5211774	0.99	322	9	2
3473	Take the Box	Luke Smith	199160	3281526	0.99	322	9	2
3474	October Song	Matt Rowe & Stefan Skarbek	204846	3358125	0.99	322	9	2
3475	What Is It About Men	Delroy Chris Cooper, Donovan Jackson, Earl Chinna Smith, Felix Howard, Gordon Williams, Luke Smith, Paul Watson & Wilburn Squiddley Cole	209573	3426106	0.99	322	9	2
3476	Help Yourself	Freddy James, Jimmy hogarth & Larry Stock	300884	5029266	0.99	322	9	2
3477	Amy Amy Amy (Outro)	Astor Campbell, Delroy Chris Cooper, Donovan Jackson, Dorothy Fields, Earl Chinna Smith, Felix Howard, Gordon Williams, James Moody, Jimmy McHugh, Matt Rowe, Salaam Remi & Stefan Skarbek	663426	10564704	0.99	322	9	2
3478	Slowness		215386	3644793	0.99	323	23	2
3479	Prometheus Overture, Op. 43	Ludwig van Beethoven	339567	10887931	0.99	324	24	4
3480	Sonata for Solo Violin: IV: Presto	Béla Bartók	299350	9785346	0.99	325	24	4
3481	A Midsummer Night's Dream, Op.61 Incidental Music: No.7 Notturno		387826	6497867	0.99	326	24	2
3482	Suite No. 3 in D, BWV 1068: III. Gavotte I & II	Johann Sebastian Bach	225933	3847164	0.99	327	24	2
3483	Concert pour 4 Parties de V**les, H. 545: I. Prelude	Marc-Antoine Charpentier	110266	1973559	0.99	328	24	2
3484	Adios nonino	Astor Piazzolla	289388	4781384	0.99	329	24	2
3485	Symphony No. 3 Op. 36 for Orchestra and Soprano "Symfonia Piesni Zalosnych" \\ Lento E Largo - Tranquillissimo	Henryk Górecki	567494	9273123	0.99	330	24	2
3486	Act IV, Symphony	Henry Purcell	364296	5987695	0.99	331	24	2
3487	3 Gymnopédies: No.1 - Lent Et Grave, No.3 - Lent Et Douloureux	Erik Satie	385506	6458501	0.99	332	24	2
3488	Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord, the Secrets of Our Hearts"	Henry Purcell	142081	2365930	0.99	333	24	2
3489	Symphony No. 2: III. Allegro vivace	Kurt Weill	376510	6129146	0.99	334	24	2
3490	Partita in E Major, BWV 1006A: I. Prelude	Johann Sebastian Bach	285673	4744929	0.99	335	24	2
3491	Le Sacre Du Printemps: I.iv. Spring Rounds	Igor Stravinsky	234746	4072205	0.99	336	24	2
3492	Sing Joyfully	William Byrd	133768	2256484	0.99	314	24	2
3493	Metopes, Op. 29: Calypso	Karol Szymanowski	333669	5548755	0.99	337	24	2
3494	Symphony No. 2, Op. 16 -  "The Four Temperaments": II. Allegro Comodo e Flemmatico	Carl Nielsen	286998	4834785	0.99	338	24	2
3495	24 Caprices, Op. 1, No. 24, for Solo Violin, in A Minor	Niccolò Paganini	265541	4371533	0.99	339	24	2
3496	Étude 1, In C Major - Preludio (Presto) - Liszt		51780	2229617	0.99	340	24	4
3497	Erlkonig, D.328		261849	4307907	0.99	341	24	2
3498	Concerto for Violin, Strings and Continuo in G Major, Op. 3, No. 9: I. Allegro	Pietro Antonio Locatelli	493573	16454937	0.99	342	24	4
3499	Pini Di Roma (Pinien Von Rom) \\ I Pini Della Via Appia		286741	4718950	0.99	343	24	2
3500	String Quartet No. 12 in C Minor, D. 703 Quartettsatz: II. Andante - Allegro assai	Franz Schubert	139200	2283131	0.99	344	24	2
3501	L'orfeo, Act 3, Sinfonia (Orchestra)	Claudio Monteverdi	66639	1189062	0.99	345	24	2
3502	Quintet for Horn, Violin, 2 Violas, and Cello in E Flat Major, K. 407/386c: III. Allegro	Wolfgang Amadeus Mozart	221331	3665114	0.99	346	24	2
3503	Koyaanisqatsi	Philip Glass	206005	3305164	0.99	347	10	2
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.album_album_id_seq', 1, false);


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.artist_artist_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 1, false);


--
-- Name: invoice_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.invoice_invoice_id_seq', 1, false);


--
-- Name: invoice_line_invoice_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.invoice_line_invoice_line_id_seq', 1, false);


--
-- Name: media_type_media_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.media_type_media_type_id_seq', 1, false);


--
-- Name: playlist_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.playlist_playlist_id_seq', 1, false);


--
-- Name: playlist_track_playlist_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.playlist_track_playlist_track_id_seq', 8715, true);


--
-- Name: track_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: superadmin
--

SELECT pg_catalog.setval('public.track_track_id_seq', 1, false);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: invoice_line invoice_line_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice_line
    ADD CONSTRAINT invoice_line_pkey PRIMARY KEY (invoice_line_id);


--
-- Name: invoice invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id);


--
-- Name: media_type media_type_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.media_type
    ADD CONSTRAINT media_type_pkey PRIMARY KEY (media_type_id);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id);


--
-- Name: playlist_track playlist_track_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist_track
    ADD CONSTRAINT playlist_track_pkey PRIMARY KEY (playlist_track_id);


--
-- Name: playlist_track playlist_track_playlist_id_track_id_cde4f9bc_uniq; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist_track
    ADD CONSTRAINT playlist_track_playlist_id_track_id_cde4f9bc_uniq UNIQUE (playlist_id, track_id);


--
-- Name: track track_pkey; Type: CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_pkey PRIMARY KEY (track_id);


--
-- Name: album_artist_id_6f838eaa; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX album_artist_id_6f838eaa ON public.album USING btree (artist_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: customer_support_rep_id_ddf23b9b; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX customer_support_rep_id_ddf23b9b ON public.customer USING btree (support_rep_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: employee_reports_to_id_8632caa8; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX employee_reports_to_id_8632caa8 ON public.employee USING btree (reports_to_id);


--
-- Name: invoice_customer_id_ef711b4d; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX invoice_customer_id_ef711b4d ON public.invoice USING btree (customer_id);


--
-- Name: invoice_line_invoice_id_ce6de6ab; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX invoice_line_invoice_id_ce6de6ab ON public.invoice_line USING btree (invoice_id);


--
-- Name: invoice_line_track_id_aeb17b95; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX invoice_line_track_id_aeb17b95 ON public.invoice_line USING btree (track_id);


--
-- Name: playlist_track_playlist_id_e3aacec9; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX playlist_track_playlist_id_e3aacec9 ON public.playlist_track USING btree (playlist_id);


--
-- Name: playlist_track_track_id_ff1cf9b2; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX playlist_track_track_id_ff1cf9b2 ON public.playlist_track USING btree (track_id);


--
-- Name: track_album_id_66d5353c; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX track_album_id_66d5353c ON public.track USING btree (album_id);


--
-- Name: track_genre_id_5bcfb03f; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX track_genre_id_5bcfb03f ON public.track USING btree (genre_id);


--
-- Name: track_media_type_id_0d32eb00; Type: INDEX; Schema: public; Owner: superadmin
--

CREATE INDEX track_media_type_id_0d32eb00 ON public.track USING btree (media_type_id);


--
-- Name: album album_artist_id_6f838eaa_fk_artist_artist_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_artist_id_6f838eaa_fk_artist_artist_id FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer customer_support_rep_id_ddf23b9b_fk_employee_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_support_rep_id_ddf23b9b_fk_employee_employee_id FOREIGN KEY (support_rep_id) REFERENCES public.employee(employee_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: employee employee_reports_to_id_8632caa8_fk_employee_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_reports_to_id_8632caa8_fk_employee_employee_id FOREIGN KEY (reports_to_id) REFERENCES public.employee(employee_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invoice invoice_customer_id_ef711b4d_fk_customer_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_customer_id_ef711b4d_fk_customer_customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invoice_line invoice_line_invoice_id_ce6de6ab_fk_invoice_invoice_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice_line
    ADD CONSTRAINT invoice_line_invoice_id_ce6de6ab_fk_invoice_invoice_id FOREIGN KEY (invoice_id) REFERENCES public.invoice(invoice_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invoice_line invoice_line_track_id_aeb17b95_fk_track_track_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.invoice_line
    ADD CONSTRAINT invoice_line_track_id_aeb17b95_fk_track_track_id FOREIGN KEY (track_id) REFERENCES public.track(track_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: playlist_track playlist_track_playlist_id_e3aacec9_fk_playlist_playlist_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist_track
    ADD CONSTRAINT playlist_track_playlist_id_e3aacec9_fk_playlist_playlist_id FOREIGN KEY (playlist_id) REFERENCES public.playlist(playlist_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: playlist_track playlist_track_track_id_ff1cf9b2_fk_track_track_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.playlist_track
    ADD CONSTRAINT playlist_track_track_id_ff1cf9b2_fk_track_track_id FOREIGN KEY (track_id) REFERENCES public.track(track_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: track track_album_id_66d5353c_fk_album_album_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_album_id_66d5353c_fk_album_album_id FOREIGN KEY (album_id) REFERENCES public.album(album_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: track track_genre_id_5bcfb03f_fk_genre_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_genre_id_5bcfb03f_fk_genre_genre_id FOREIGN KEY (genre_id) REFERENCES public.genre(genre_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: track track_media_type_id_0d32eb00_fk_media_type_media_type_id; Type: FK CONSTRAINT; Schema: public; Owner: superadmin
--

ALTER TABLE ONLY public.track
    ADD CONSTRAINT track_media_type_id_0d32eb00_fk_media_type_media_type_id FOREIGN KEY (media_type_id) REFERENCES public.media_type(media_type_id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

