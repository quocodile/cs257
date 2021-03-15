--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: animes; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public.animes (
    anime_id text,
    anime_name text,
    num_episodes text,
    genre text,
    mal_rating text
);


ALTER TABLE public.animes OWNER TO quocodile;

--
-- Name: our_ratings; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public.our_ratings (
    rating_id text,
    anime_id text,
    rating_score text
);


ALTER TABLE public.our_ratings OWNER TO quocodile;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public.reviews (
    user_id text,
    anime_id text,
    review_text text
);


ALTER TABLE public.reviews OWNER TO quocodile;

--
-- Name: user; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    username text,
    password text
);


ALTER TABLE public."user" OWNER TO quocodile;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: quocodile
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO quocodile;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quocodile
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user_ratings_link; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public.user_ratings_link (
    user_id text,
    rating_id text
);


ALTER TABLE public.user_ratings_link OWNER TO quocodile;

--
-- Name: user_reviews_link; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public.user_reviews_link (
    user_id text,
    review_id text
);


ALTER TABLE public.user_reviews_link OWNER TO quocodile;

--
-- Name: watchlist; Type: TABLE; Schema: public; Owner: quocodile
--

CREATE TABLE public.watchlist (
    user_id text,
    anime_id text
);


ALTER TABLE public.watchlist OWNER TO quocodile;

--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: quocodile
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: animes; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public.animes (anime_id, anime_name, num_episodes, genre, mal_rating) FROM stdin;
9238	Platonic Chain: Ansatsu Jikkouchuu	1	Sci-Fi Slice of Life	1.67
7328	Tenkuu Danzai Skelter+Heaven	1	Mecha Sci-Fi	2
7327	Utsu Musume Sayuri	1	Comedy Dementia	2.14
7326	Hametsu no Mars	1	Horror Sci-Fi	2.37
9333	Roboteuwang Sseonsyakeu	1	Action Mecha Sci-Fi	2.49
8766	Mechano: Scientific Attack Force	3	Comedy Dementia Fantasy Horror Music Parody	2.55
7557	Cakes	Unknown	Comedy	2.58
7324	Kokuhaku	1	Horror	2.67
7325	Nami	1	Dementia	2.67
9101	Ongaku Sekai Ryokou	Unknown	Kids Music	2.67
8101	Henkei Sakuhin Dai 2-ban	1	Dementia	2.69
9815	Tokyo SOS	1		2.72
9909	Undouki Kenshin Manual Taiou Taisou	1	Kids	2.72
9063	Ohayou! Kokekkou-san	Unknown	Comedy	2.75
7323	Ningen Doubutsuen	1	Dementia	2.78
8943	Neko Konogoro	Unknown	Comedy	2.8
9388	Saru Kani Gassen (Yokoku)	1	Historical	2.84
9037	Nyancos: Hello! Our Brilliant Future Digest	1	Sci-Fi Space	2.91
7322	Shitcom	1	Comedy Romance	2.93
8790	Miira no Yume	1	Dementia	2.97
7432	Ari to Kirigirisu	1	Kids Music	3
7603	Chicken Papa	1	Comedy	3
8582	Kubire 3 Sisters	7	Comedy	3
9248	Ponkotsu Quest: Maou to Haken no Mamono-tachi	Unknown	Comedy Fantasy	3
9631	Sore Ike! Sabuibo Mask	8	Comedy Slice of Life	3
9685	Sushi Azarashi	30	Comedy	3
7996	Hakuchuu Meikyuu	1	Dementia	3.02
7545	Bulsajo Robot Phoenix King	1	Action Mecha Shounen Space	3.11
7963	Gra-P &amp; Rodeo: Band wo P	1	Comedy Music	3.11
8821	Miraesonyeon Kunta Beomyuda 5000 Nyeon	1	Action Adventure Mecha Shounen	3.17
8599	Kuripuri*Kuripura	1	Comedy	3.2
9534	Shuugou no Kangae	1	Dementia Kids	3.21
8932	Narara Wondeogongju	1	Action Adventure Sci-Fi Space Super Power	3.25
9911	Unko-san: Tsuiteru Hito ni Shika Mienai Yousei	13	Comedy Magic	3.25
9308	Rescue YoYo	1	Kids Mecha	3.26
9430	Shashinki	1	Dementia	3.26
7321	Aki no Puzzle	1	Dementia	3.27
9812	Tokyo 2164	1	Sci-Fi	3.27
9684	Survivor	1	Music Supernatural	3.28
9775	The Midnight★Animal	12	Action Seinen Supernatural	3.29
7319	Fetish Doll	1	Dementia	3.32
7320	Soujuu Senshi Psychic Wars	1	Action Demons Seinen Super Power	3.32
7318	Love Bites	1	Horror	3.33
7786	Escalator-jou no Hokou no Kiken-sei	1	Drama	3.33
8102	Henna Ie!	1	Kids Music	3.33
9095	Omusubi Kororin	1	Fantasy Kids	3.33
9174	Paper Film	1	Comedy	3.33
7982	Hadakya no Otonosama	2	Kids Slice of Life	3.34
9421	Sensuikan Cassiopeia	1	Dementia	3.35
7317	Nendo no Tatakai	1	Comedy Fantasy	3.36
8386	Kanashiki Mongoose	1	Kids Music	3.36
8883	Mujeokcheorin Rambot	1	Action Mecha Shounen Space	3.36
9036	Nyancos: Hello! Our Brilliant Future	1	Sci-Fi Space	3.36
7880	Gararin to Gororin	1	Kids Music	3.38
8752	Matsubara-kun: Mackie E no Ouen Message	1	Comedy	3.38
8799	Mimizu Monogatari	1	Dementia	3.39
9271	Prison Bear	1	Comedy	3.39
7758	Drill	1	Dementia	3.4
8521	Kochinpa! Dainiki	24	Comedy	3.4
7316	Good-by Elvis and USA	1	Dementia Music	3.41
8313	Kabushikigaisha Aokishouji	2	Comedy	3.41
9249	Ponkotsuland Saga	1	Comedy Parody	3.41
9431	Shashinki 87	1	Dementia	3.41
9562	Sonyeon 007 Eunhateukgongdae	1	Action Adventure Mecha Sci-Fi Shounen Space	3.42
10047	Yaseruyagi	1		3.42
7669	Cook no Polka	1	Kids Music	3.43
8954	Nekoronde Mite ne.	14	Comedy	3.43
7315	Nendo no Tatakai 2	1	Comedy Fantasy	3.46
8501	Kissaten Soudou	1	Comedy	3.46
9830	Torero Kamomiro	1	Kids Music	3.46
7314	Panzer Dragoon	1	Adventure Fantasy	3.47
7852	Gaia Getter A-kun	2	Comedy Kids Sci-Fi Space	3.48
9315	Riding the Storm	1	Music	3.49
9935	Venus	1	Dementia	3.49
8156	Hokseong Robot Sseondeo A	1	Action Mecha Shounen	3.5
8300	Juu-nin no Chiisa na Indian	1	Kids	3.5
8515	Kkureogi Balmyeongwang	1	Action Mecha Sci-Fi Shounen	3.5
8912	Nani no Yaku ni Mo Tatanai Karappona Hanashi	2	Comedy	3.5
9635	Souiu Megane	1	Dementia	3.5
9756	Tetopettenson	1	Kids Music	3.51
8642	Letchu Getchu Saru Getchu Episode 0	1	Comedy	3.52
8911	Nani ga Dekiru ka na	1	Comedy	3.52
8286	Jitensha-hen	1	Music	3.53
8500	Kirin no Otenki Mama-san	12	Fantasy	3.53
8680	Magical Music Train	1	Music	3.53
9725	Tanoshii Sansuu	1	Kids Music	3.53
9428	Shangri-La (Music)	1	Music	3.54
9723	Tanita Shokudou	1	Slice of Life	3.54
10127	Zombie Ehon	1	Comedy	3.54
7313	Super Kid	1	Action Adventure Sci-Fi	3.56
7950	Gold Pencil And Alien Boy	1	Adventure Kids Space	3.56
8293	Juicy Jungle	1	Music Sci-Fi	3.56
7704	Deniroo&#039;s Circus	1	Comedy	3.57
8621	Kyouryoku Boukuusen	1	Action Historical Military	3.57
9560	Son Gokuu War and the Stars	1	Action Adventure Space	3.57
9709	Takarakuji x Rope	5	Comedy Slice of Life	3.57
7311	Mochibei	1	Dementia	3.58
7720	Dokkaebi Gamtu	1	Action Adventure Demons Fantasy Shounen	3.58
7819	Fujilog (ONA)	2	Comedy Music	3.58
9369	Samurai	1	Drama Romance	3.58
7312	Scrap Diary	1	Dementia	3.59
7342	77Danui Bimil	1	Action Drama	3.59
8290	JU Chuuko Jidousha Hanbaishi x Peeping Life	2	Comedy Slice of Life	3.59
9216	Phantasm	1	Dementia Music	3.59
9231	Pinky Wakuwaku Tabi Stroll	7	Slice of Life	3.59
7310	Ai (ONA)	1	Romance	3.6
7789	Eunhahamdae Jiguho	1	Action Adventure Kids Sci-Fi Space	3.6
9169	Panpaka Pants O-New!	26	Comedy Kids	3.6
7535	Box	1	Dementia	3.61
7309	No Littering	1	Comedy Horror	3.62
7649	Cinterrier-jou no Hanamuko	1	Comedy Fantasy Kids	3.62
8038	Hato no Oyome-san	22	Comedy	3.62
7307	Pop	1	Comedy	3.63
7308	Vampire Holmes	12	Comedy Mystery Supernatural Vampire	3.63
8944	Neko mo Onda-ke	12	Comedy Slice of Life	3.63
9213	Persia no Komoriuta: Watashi no Hana	1	Kids Music	3.63
9371	San-biki no Koguma-san	1	Kids	3.63
9844	Trip Trek	4	Adventure Comedy Fantasy	3.64
7306	Within the Bloody Woods	2	Horror	3.65
8852	Momotarou (Music)	1	Music	3.65
7397	Ame no Bus Stop-hen	1	Music	3.67
7446	au x Rope	3	Comedy Slice of Life	3.67
8366	Kamiusagi Rope 2 Specials	4	Comedy Slice of Life	3.67
8929	Nar Doma Manner Movie	1	Comedy	3.67
9070	Ojarumaru: Wasureta Mori no Hinata	1	Adventure Comedy Fantasy Kids Slice of Life	3.67
9340	Run &amp; Roll	1	Dementia	3.67
9665	Sugar Bunnies Fleur Specials	2	Kids	3.67
9693	Taabou no Ganbaru Sengen	1	Kids	3.67
10078	Yuke! Shouei-kun	6	Comedy	3.67
7304	G-senjou no Higeki	1	Comedy Dementia	3.68
7305	CCW: Crazy Clay Wrestling	1	Sports	3.68
9980	Wingcle Bear Hamkkehaneun Lomentig Hwaiteudei	1	Magic	3.68
9294	Qin Shiming Yue Zhi: Guoqing Tebie Pian	1	Action Comedy Fantasy Historical Martial Arts	3.69
7303	Micro Teukgongdae Diatron 5	1	Action Mecha Sci-Fi Space	3.7
7450	Awate Tokoya	1	Music	3.7
7302	Pinky	1	Comedy Horror	3.71
9188	Peeping Life x IODATA: Quiz!! Input Output	8	Comedy	3.72
9678	Super Majingga 3	1	Action Mecha Sci-Fi Space	3.72
7301	Born by Myself	1	Psychological	3.73
7803	Fly	1	Fantasy	3.73
8123	Hikaru Genji: Taiyou ga Ippai	1	Adventure Music	3.73
7300	Dead Girl Trailer	1	Horror Parody Supernatural Thriller	3.74
8382	Kana Kana Kazoku: Shinnen no Goaisatsu	1	Comedy	3.74
7299	The Wash Bird of the Wash Island	1	Comedy Fantasy	3.75
7807	Form of Stress	1	Mecha	3.75
7848	Fuusen Inu Tinny 2nd Season	Unknown	Adventure Kids	3.75
7964	Graphillion: Kazoeage Oneesan wo Sukue	1	Kids	3.75
10041	YanYan Machiko Specials	Unknown	Comedy Music Slice of Life	3.75
7298	The Embryo Develops into a Fetus	1	Dementia	3.76
9948	Wall	1	Dementia	3.76
8276	Jikan	1	Dementia	3.77
8703	Mako-chan no Koutsuu Anzen	1	Drama Kids	3.77
9553	Sol	1	Dementia Music	3.77
7297	Koumon-teki Juuku Ketsujiru Juke	1	Comedy Dementia Music	3.78
8405	Kareshi wa Hammerhead Shark	Unknown	Comedy Kids Slice of Life	3.78
8847	Momon&#039;s Sand Witch Bangai-hen: Tanu no Kyuujitsu	1	Comedy Kids	3.78
7790	Eunhajeonseol Tera	1	Action Adventure Sci-Fi Shounen Space	3.79
8540	Kojin Toshi	1	Dementia	3.79
8693	Majin Sentai Death Ranger: Ubawareta Pudding!	1	Action Comedy	3.79
9699	Taegeugsonyeon Huin Dogsuli	1	Action Adventure Shounen Super Power	3.79
7296	Crayon Angel	1	Dementia	3.8
8108	Heungnyongwanggwa Bihodongja	1	Action Adventure Martial Arts Shounen	3.8
8569	Koto Nakare Hero Gingerman	12	Comedy	3.8
8889	Muzumuzu Eighteen	Unknown	Slice of Life	3.8
9384	Sarasoujuu no Hana no Iro	1	Drama	3.8
7794	Fafa Movie	2	Slice of Life	3.81
9322	Robo to Shoujo (Kari): Oshirase Gekijou (Kari)	5	Comedy Sci-Fi	3.81
7295	Pupa	12	Fantasy Horror Psychological	3.82
9181	Patty &amp; Jimmy no Kimikoso Superstar	1	Kids Sports	3.82
9839	Toute wa Sono Kotae	1	Music Supernatural	3.82
9843	Treasure Gaust	5	Game	3.82
9875	Uchuu Neko: Mardock no Bouken	4	Adventure Comedy Space	3.82
7293	Aos	1	Dementia Fantasy	3.83
7294	Kanojo no Dokushinshatachi ni Yotte Hadaka ni Sareta Seifuku no Shojo Kenkyuu	1	Dementia Music	3.83
9031	Nude Batter Tetsuo	1	Comedy Sports	3.83
9681	Super Taromu	1	Mecha Shounen	3.83
10100	Yuuto-kun ga Iku	26	Kids Sports	3.83
7292	C.L.A.Y.	1	Horror	3.84
9114	Ooi! Hanimaru	1	Kids Music	3.84
8210	Ikedaya Soudou	1	Drama Historical Samurai	3.85
8898	Nagisa	1	Music	3.85
9310	Revenge of Green Mutant	1	Music	3.85
9986	Wonder	1	Music Space	3.85
7291	Shigeru	1	Comedy Dementia	3.86
9300	Rainbow no Anime Bako	1	Kids	3.86
7290	Uju Heukgisa	1	Action Sci-Fi Space	3.87
7288	Petting a Dog	1	Slice of Life	3.88
7289	Yume 10 Yoru	1	Dementia	3.88
7942	Go-hiki no Kozaru-tachi	1	Demons	3.88
7475	Ball yo Doko e Yuku	1	Comedy	3.89
7503	Blend	1		3.89
7700	Dead World	Unknown	Horror	3.89
8376	Kamotori Gonbee	1	Kids	3.89
9786	The War of Great Monsters	1	Action Shounen Supernatural	3.89
9985	Women	1	Dementia	3.89
7286	Red Colored Bridge	1	Psychological	3.9
7287	Wonder Momo	5	Action Game Martial Arts School	3.9
8034	Haruko no Bouken	1	Dementia	3.9
7285	Mahou Shoujo? Naria☆Girls	12	Magic	3.91
7830	Funny Pets 2nd Season	12	Comedy	3.92
7962	Gra-P &amp; Rodeo 2nd Season	Unknown	Comedy Music	3.92
8309	Kabi Usagi: Hikouki	1	Comedy	3.92
8960	New Tokyo Ondo	1	Dementia	3.92
8622	Kyouryou Pikora	1	Adventure Kids	3.93
8646	Lina Poe Poe	1	Music	3.93
8747	Marude Sekai	1	Music	3.93
9086	Okore!! Nonkuro	1	Kids	3.93
9177	Pata Pata Mama	1	Kids Music	3.93
9788	Thunder	1	Dementia	3.93
9195	Peeping Life: Tezuka Pro - Tatsunoko Pro Wonderland Specials	2	Comedy Parody	3.94
7897	Gene	1	Music	3.95
9126	Osamishi Tani no Wakare Uta	1	Historical Music	3.95
8007	Hana no Zundamaru: Junk	3	Comedy Martial Arts Parody	3.96
8866	Mori no Kuma-san	1	Slice of Life	3.96
8157	Hokuro Kyoudai Full Throttle!!!!	7	Comedy	3.97
7283	Dreams	1	Dementia	3.98
7284	Generation of Chaos	1	Action Adventure Demons Fantasy Magic	3.98
9792	Timbre A to Z	26	Music	3.98
7281	Byston Well Monogatari: Garzey no Tsubasa	3	Fantasy	3.99
7282	Shunga	1	Dementia	3.99
7279	1	1	Comedy	4
7280	Madonna (Movie)	1	Dementia	4
7434	Arigatou Kumanofu	11	Comedy	4
7507	Boku datte Kirei ni Shitainda	1	Kids	4
7585	Cheorin Samchongsa	1	Action Mecha Sci-Fi Shounen Space	4
7701	Deban Desu Yo! Onigirizu	6	Comedy	4
7792	Experiment	1	Dementia	4
7838	Fushigina Ano Ko wa Sutekina Kono Ko	Unknown	Adventure Kids	4
7941	Go-hiki no Kobuta to Charleston	1	Music	4
7956	Gongnyong Baengmannyeon Ttori	1	Action Adventure Shounen	4
8203	Idea ga Tsukamaranai.	1	Dementia	4
8473	Kiki to Lala no Hansel to Gretel	1	Kids	4
8550	Konna Ko Iru kana	Unknown	Kids	4
8885	Mukidashi no Koushi	1	Comedy Music	4
9040	Nyanpuku Nyaruma	Unknown	Comedy	4
9116	Ookami Shounen Ken (Movie)	1	Adventure Kids	4
9148	Otoshidama	1	Kids Music	4
9161	Paboo &amp; Mojies	52	Kids	4
9189	Peeping Life x Kaijuu Sakaba Kaiji: Kaijuu-tachi ga Iru Tokoro	10	Comedy Slice of Life Supernatural	4
9362	Saitama-ken Zaijuu Fujiyama Osamu 33-sai Mushoku (NEET).: Fujilog Nyuumon-hen Specials	4	Comedy	4
9701	Taeng-gu &amp; Ulasyong	26	Action Comedy Mecha	4
9738	Tekusuke Monogatari	1	Historical	4
9799	Tobidashi wa Abunaizo! Mushi Mushi Mura no Koutsuu Anzen	1	Drama Kids	4
9922	Usalullaby	1	Dementia	4
10009	Xiao Yeyou	1	Comedy Fantasy Kids	4
10015	Xiong Chu Mo Zhi Duo Bao Qibing	1	Adventure Comedy	4
10027	Yakyuubu Aruaru	3	Sports	4
10046	Yasashii Ookami	1	Kids	4
10053	Yawaraka Sensha	53	Comedy	4
7278	MILPOM★ Pilot	1	Comedy Shoujo	4.02
9913	Urameshi Denwa	1	Kids	4.02
7277	Tama Gura Abayo: Moki Yumokyu Superdeluxe	1	Dementia Music	4.03
7344	A Smart Experiment	1	Dementia	4.03
7276	Dark Cat	1	Action Demons Horror Super Power Supernatural	4.04
7653	Clock	1	Dementia	4.04
8808	Minamo	1		4.04
8887	Muku no Ki no Hanashi	1	Kids	4.04
7718	Dokidoki Gakuen Kessen!! Youki Daimashiro	1	Action Fantasy Magic	4.05
8775	Meitantei Hangyodon: Kaitou Ruzu Arawaruno-kan	1	Kids Mystery	4.05
7338	3-D Tengoku	1	Music	4.06
8288	Joki Joki Tailor	1	Kids Music	4.06
8910	Nanchatte!	2	Comedy Parody	4.06
9561	Sonna Boku ga Suki	1	Kids Music	4.06
9393	Satto Anshin SAT x Peeping Life	3	Comedy Slice of Life	4.07
9673	Sumiko (TV)	8	Comedy Kids Slice of Life	4.07
10039	Yanesenondo	1	Music	4.07
7275	Good-by Marilyn	1	Dementia Music	4.08
8743	Marin X	1	Action Adventure Mecha Sci-Fi Shounen	4.08
8850	Momotaros no Natsuyasumi	1	Action Comedy Kids Parody Super Power	4.08
9131	Oshizuka ni	1	Kids	4.08
9190	Peeping Life x Kids Station	3	Comedy Slice of Life	4.08
7383	Akuei to Gacchinpo: Tenkomori	12	Comedy Kids	4.09
7441	Ashita Tenki ni Naare Omake	1	Sports	4.09
9747	Tenkousei wa Uchuujin	1	Kids Music	4.09
8798	Mim Mam Mint	Unknown	Comedy	4.1
9024	Nori P-chan	1	Kids Slice of Life	4.1
9692	Syupeo Taegwon V	1	Action Mecha Sci-Fi	4.1
7274	Requiem (ONA)	1	Dementia	4.11
7804	Fly Space Battleship Geobukseon	1	Action Sci-Fi Shounen Space	4.11
7974	Guitar	1		4.11
8228	Inemuri Buu-chan	1	Kids	4.11
8881	Mr. Shape: High Touch Taisou	1	Kids Music	4.11
9837	Toumei Ningen	1	Dementia	4.11
9968	Watashi no Kamifuusen	1	Kids Music	4.11
8385	Kanai	1	Mecha	4.12
9194	Peeping Life: Tezuka Pro - Tatsunoko Pro Wonderland ONA	4	Comedy Parody	4.12
9230	Pinky Monkey x FaFa Collaboration Animation: At Afternoon of Sunny Day	1	Slice of Life	4.12
9400	Seibu Tetsudou Ekiin Tako-chan	12	Comedy Parody Police Slice of Life	4.12
7542	Bucket no Ana	1	Music	4.13
7689	Dallyeola Majing-ga-X	1	Mecha Sci-Fi	4.13
7899	Genei Toshi	1	Dementia	4.13
8159	Home My Home	1	Kids	4.13
8458	Ki Renka	1	Demons Drama	4.13
9652	Stone	1	Dementia	4.13
8383	Kana Kana Kazoku: Stop Rubella	1	Comedy	4.14
8496	Kinyoru Abe Reiji: Heikinteki na Salaryman no Ijou na Nichijou	5	Comedy	4.14
8795	Mikuni no Tame Ni	1	Historical Military	4.14
9263	Pororo Geugjangpan Super Sseolmae Daemoheom	1	Cars Kids	4.14
9645	Spring Stranger	1	Music	4.14
7271	4.Eyes	1	Dementia	4.15
7272	Memory of Red	1	Dementia	4.15
7273	Ninjutsu Hinotama Kozou: Edo no Maki	1	Action	4.15
8941	Neko Funjatta	1	Music	4.15
9366	Sakura Yori Ai wo Nosete	1	Kids	4.15
10031	Yamaguchi Sanchi no Tsutomu-kun	1	Kids Music Romance	4.15
7270	Heya	1	Comedy Dementia	4.16
8503	Kitsune no Home Run Ou	1	Kids Sports	4.16
9120	Orangutan	1	Kids Music	4.16
9150	Ou-sama Ninatta Kitsune	1		4.16
7268	Embah	1	Dementia	4.17
7269	Yasashii Kinyoubi	1	Dementia	4.17
7381	Akuei to Gacchinpo Tenkomori: Maboroshi no Omake Episode	1	Comedy	4.17
8185	Hwang-geum-ui Pal	1	Shounen Sports	4.17
8256	J League wo 100-bai Tanoshiku Miru Houhou!!	1	Comedy Parody Sports	4.17
8308	Kabi Usagi: Game Center	1	Comedy	4.17
8310	Kabi Usagi: Kaichuu	1	Comedy	4.17
8322	Kaette Kite yoo Toyama kara	Unknown	Comedy	4.17
9025	Norimono Atsumare: Hit Song-shuu	6	Music	4.17
9167	Panpaka Pants	Unknown	Comedy Kids	4.17
9937	Video Ranger 007	1	Action Adventure Mecha	4.17
7369	Aikodesho	1	Kids Music	4.18
7965	Grasshopper Monogatari	1	Kids Music	4.18
9419	Sense Honma ni Honma	1	Kids Music School	4.18
7267	Henshin Gattai! 5 tsu no Atsuki Tamashii	1	Music Super Power	4.19
7498	Bip to Bap	4	Adventure Kids	4.2
7840	Futago no Ookami Daibouken	1	Kids Music	4.2
8516	Kkurukkuruwa Chingudeul	13	Adventure Comedy Kids Slice of Life	4.2
8669	Mabeobsaui Adeul Koli	13	Adventure Comedy Fantasy	4.2
9946	Wakuwaku♥Nukegake Daisakusen	1	Cars Music	4.2
7266	Gondora	1	Dementia	4.21
7564	Cello Hiki no Gauche	1	Fantasy Kids Music	4.21
8490	Kinken Chochiku Shiobara Tasuke	1	Historical	4.21
8706	Malay Oki Kaisen	1	Historical Military	4.21
8982	Nineko Gelée: Opening Movie	1	Fantasy Music	4.21
9997	X Maiden: Izakaya Tamaki	7	Comedy	4.21
7265	◯	1	Dementia Music	4.22
7664	Computer Haekjeonham Pokpa Daejakjeon	1	Action Sci-Fi Shounen	4.22
7811	Frame Arms: A Violent Struggle	1	Mecha	4.22
8150	Hitori de Nayamanaide Issho ni Kangaeyou	1	Drama	4.22
8239	Ippou Nippon Mukashibanashi	12	Comedy Fantasy	4.22
8326	Kage	1	Drama Historical	4.22
9682	Super Titans 15	1	Action Mecha Shounen	4.22
9710	Takemoto Denki x Peeping Life	1	Comedy Slice of Life	4.22
9919	Usagi to Kame (Music)	1	Music	4.22
7264	Armageddon	1	Action Adventure Sci-Fi	4.23
9706	Taka no Tsume NEO Announcement Movie	1	Comedy Parody Super Power	4.23
7262	Dog Soldier	1	Action Military Seinen	4.24
7263	Yami no Teio: Kyuuketsuki Dracula	1	Vampire	4.24
8025	Happy Hour	1	Music	4.24
8393	Kankou Taisen Saitama: Sakuya no Tatakai	4		4.24
9053	Ochou Fujin no Gensou	1	Drama Historical	4.24
7260	Gakuentoshi Varanoir Joukan	2	Action Magic	4.25
7261	Yukidoke	1	Dementia Horror	4.25
7672	Countdown	1	Dementia	4.25
7727	Donguri Mori e	1	Fantasy Kids	4.25
7761	Duel Masters: Hamukatsu to Dogiragon no Curry-pan Daibouken	1	Action Adventure Comedy Shounen	4.25
7945	Gohan Kaijuu Pap	Unknown	Action Comedy Kids	4.25
8172	Hoshi Uranai Kirakira	1	Kids Music	4.25
8381	Kana Kana Kazoku: Rika in Wonderland	1	Comedy	4.25
8510	Kitty-chan wo Sagase! Toyama-shi Stamp Rally	1	Comedy	4.25
8554	Kono Mayonnaise wa Yuru Sugiru	1	Dementia	4.25
8947	Neko no Dayan: Fushigi Gekijou	Unknown	Kids	4.25
7258	Bloody Night	1	Horror Psychological Supernatural Thriller	4.26
7259	Maid of the Dead	1	Comedy Horror	4.26
8013	Hanasaka Jiisan	1	Comedy Drama	4.26
9696	Tabi wa Michizure Yo wa Nasake	1	Kids	4.26
9834	Tottori U-turn	1	Sports	4.26
7254	Count Down	1		4.27
7255	Generation of Chaos Next: Chikai no Pendant	1	Action Adventure Fantasy Military Romance	4.27
7256	Hanoka	12	Sci-Fi	4.27
7257	Ohi-sama to Kaeru	1	Comedy	4.27
7583	Cheol-in 007	1	Action Mecha Sci-Fi	4.27
7698	Dasshutsu Gasshapon	10	Historical Sci-Fi	4.27
8839	Mochi Mochi no Ki	1	Kids	4.27
8935	Naze	1	Kids Music	4.27
9753	Teo the Magic Planet Pilot	1	Adventure Fantasy	4.27
9939	Visitor	1	Sci-Fi	4.27
10034	Yamiyo no Jidaigeki	2	Historical Horror	4.27
10107	Zenchuu Maite	1	Dementia	4.27
7253	Dekobou no Jidousha Ryokou	1	Adventure Cars	4.28
7618	Chikasugi Idol Akae-chan	12	Comedy Game Parody	4.28
8223	Inaka Nezumi to Machi Nezumi	1	Kids	4.28
8275	Jijii: Owari no Hajimari	1	Music	4.28
8418	Katsuobushi Dayo Jinsei wa	1	Kids Music	4.28
9995	X Bomber Pilot	1	Action Mecha Sci-Fi Space	4.28
7660	Cofun Gal no Coffy: Juuninin to Ikareru Kofun-tachi	1	Comedy	4.29
8166	Horoscope: Anata no Seiza	1	Music	4.29
9350	Ryuuzou to Shichinin no Kobun-tachi x Frogman	5	Comedy	4.29
9933	Vampiyan Kids Promotion	1	Comedy Fantasy Kids	4.29
9983	Witch Village Story Specials	2	Slice of Life	4.29
7252	Walking Man	1	Dementia	4.3
7379	Akazukin to Kenkou	1	Comedy	4.3
7894	Gegege no Kitarou: Youkai Japan Rally 3D	1	Adventure Cars Fantasy Supernatural	4.3
8042	Hayabusa: Back to the Earth - Kikan	1	Historical	4.3
9368	Samchongsa: Time Machine 001	1	Adventure Sci-Fi	4.3
7250	Ankoku Shinwa	2	Demons Fantasy Horror Mystery Psychological Supernatural	4.31
7251	Watashi no Kao	1	Dementia Horror	4.31
8277	Jikkyou Chuukei	1	Dementia Music	4.31
8497	Kinyoru Abe Reiji: Heikinteki na Salaryman no Ijou na Nichijou (ONA)	2	Cars Comedy	4.31
8763	Mecha Robot Corps 3	1	Action Adventure Mecha Shounen	4.31
9108	Oniku Daisuki! Zeushi-kun: Suteki na Hamburger	1	Comedy	4.31
9247	Pom Pom Purin no Usagi to Kame	1	Fantasy Kids	4.31
7249	Adventures in Beauty Wonderland	1	Dementia	4.32
7971	Grim	1	Dementia	4.32
9917	Usaband	1	Music	4.32
10050	Yatterman x Toshiba	1	Comedy	4.32
7436	Asa da yo! Kaishain	Unknown	Comedy	4.33
7599	Chibinacs 2.0	25	Comedy	4.33
7678	Cyborg 009: Call of Justice 3	1	Action Adventure Mecha Sci-Fi Shounen	4.33
7719	Dokkaebi Bangmang-I	1	Action Demons Shounen	4.33
7765	Echigo no Mukashibanashi: Attaten Ganoo	1	Demons Horror Kids	4.33
7812	From Osaka with Cheer!	4	Slice of Life	4.33
8139	Himitsukessha Taka no Tsume THE PLANETARIUM: Burabura! Black Hole no Nazo	1	Adventure Comedy Parody Space	4.33
8353	Kakinoki Mokkii	1	Fantasy Kids	4.33
8361	Kamigami no Ki	Unknown		4.33
8585	Kujakuou: Sengoku Tensei	1	Action Demons Historical Supernatural	4.33
9674	Sumiko no Egao	1	Kids Music	4.33
9679	Super Samchongsa	1	Action Mecha Shounen Space	4.33
9752	Tensai? Dr. Hamax	12	Comedy	4.33
10035	Yamiyo no Jidaigeki (OVA)	2	Historical Horror	4.33
10125	Zombie Clay Animation: I&#039;m Stuck!!	4	Comedy Horror	4.33
7248	Roots Search: Shokushin Buttai X	1	Horror Sci-Fi	4.34
7247	Taa-chan no Kaitei Ryokou	1	Adventure	4.35
9158	Ozmafia!! Special	1	Historical School Shoujo	4.35
9197	Peeping Life: The Perfect Explosion Specials	3	Comedy Slice of Life	4.35
9444	Shiawase no Tokei	1	Music	4.35
7246	Spectral Force	2	Demons Fantasy	4.36
7919	Gin no Rousokutate	1	Drama Kids	4.36
8155	Hokori Inu no Hanashi	1		4.36
8260	Jangdokdae	1	Drama Historical	4.36
9128	Osaru no Tairyou	1	Slice of Life	4.36
9282	Punpun Polka	1	Kids Music	4.36
9257	Poron Guitar	1	Kids	4.37
9675	Suna Asobi	1	Adventure Kids Music	4.37
7244	Aya Hito Shiki to Iu na no Ishi Hata	1	Dementia	4.38
7245	Nice to See You	1	Dementia	4.38
7558	Calbee Hitokuchi Gekijou	18	Comedy Slice of Life	4.38
8378	Kana Kana Kazoku Shorts: Naru Haya Kakusan Kibou	6	Comedy	4.38
8643	Licca-chan to Mahou no Kuni	7	Fantasy Kids	4.38
8933	Nareuneun Dwaeji - Haejeok Mateo	1	Action Adventure Sci-Fi Shounen	4.38
7242	3D Onara Gorou ga Dance Dance Dance!!	1	Comedy Music	4.39
7243	Osaru no Sankichi: Boukuusen	1	Military	4.39
9402	Seishain Cyborg 003	2	Comedy	4.39
9474	Shin Saru Kani Gassen	1	Drama	4.39
7238	Cafe de Oni	1	Music	4.4
7239	Dankichi-jima no Olympic Taikai	1	Action Sports	4.4
7240	The Bathroom	1	Comedy Dementia	4.4
7241	Why	1	Dementia	4.4
7428	Ari no Seikatsu	1	Fantasy	4.4
7445	Aterui	1	Action Fantasy Historical	4.4
7821	Fujinkoron-senpai	1	Comedy	4.4
8122	Hikaru Genji: Paradise Ginga	1	Music Space	4.4
8877	Mr. Deniroo in Henteko Mushi	1	Comedy Kids Slice of Life	4.4
9144	Otoko to Onna to Inu	1	Comedy Romance	4.4
9229	Pinky Monkey no Umareta Hi	1	Adventure	4.4
9316	Ring Ring Boy	1	Dementia	4.4
9691	Sylvanian Families Mini Gekijou: Omoigakenai Okyakusama	3	Slice of Life	4.4
9847	Tsuiseki	1	Dementia	4.4
10088	Yume Utsutsu	1	Dementia	4.4
9071	Ojiichan ga Kaizoku Datta Koro	1	Comedy	4.41
9915	Uriko-hime to Amanojaku	1	Demons	4.41
7236	Osaru no Kantai	1	Military Music	4.42
7237	Ragnastrike Angels	12	Action	4.42
7572	Chanda Gou	1		4.42
7611	Chiisana Kinomi	1	Kids Music	4.42
8214	Ikiteirutte Subarashii!	1	Kids	4.42
7234	Hanoka Recap	1	Sci-Fi	4.43
7235	Mahou no Hiroba	1	Music	4.43
7581	Chel-in sacheon-wang	1	Action Sci-Fi	4.43
7600	Chibinacs 3	25	Comedy	4.43
8182	Hungry to Win	1	Action Sports	4.43
8411	Kasa Jizou	1	Fantasy Historical	4.43
8675	Made in Japan	1	Comedy	4.43
7233	Oh Yoko!	1	Dementia Music Romance	4.44
9016	Norakuro Ittouhei	1	Kids	4.44
9740	Ten	1	Dementia	4.44
9957	Warenai Tamago	1	Comedy Kids Music	4.44
9965	Wasurerareta Ningyou	1	Kids	4.44
10045	Yasamura Yasashi no Yasashii Sekai	17	Comedy	4.44
7230	Agitated Screams of Maggots	1	Dementia Horror Music	4.45
7231	Kaitei no Boukun	1	Adventure	4.45
7232	Natsu no Gero wa Fuyu no Sakana	1	Dementia Music	4.45
7656	Cofun Gal no Coffy	10	Comedy Historical Parody	4.45
7806	Forestry	1	Comedy	4.45
8379	Kana Kana Kazoku x Himitsukessha Taka no Tsume Collaboration Film	1	Comedy	4.45
9253	Poppen-sensei to Kaerazu no Numa	1	Adventure Fantasy Kids	4.45
7226	Goldfish Fetish	1	Dementia	4.46
7227	Kangaeru Renshuu	1	Kids	4.46
7228	Why Re-Mix 2002	1	Dementia	4.46
7229	Yoru no Okite	1	Dementia	4.46
8398	Kappa no Ude	1		4.46
9969	Watashi wa Tofu Desu	1	Kids Music	4.46
7225	Kemeko no Love	1	Comedy	4.48
7668	Convenience Store Senki Purin-tai	8	Comedy	4.48
10095	Yuu no Mahou	1	Music	4.48
7222	Golden Batman	1	Action Kids	4.49
7223	Pussycat	1	Fantasy Horror	4.49
8324	Kagami	1	Romance	4.49
8408	Karma	1	Dementia	4.49
8542	Kokoro no Chikara	1	Adventure Historical Romance	4.49
7224	Rebirth Moon Divergence	1	Action Fantasy	4.5
7375	Akagaki Genzou: Tokuri no Wakare	1	Comedy	4.5
7483	Beanuts	2	Comedy Kids	4.5
7607	Chii-chan no Kageokuri	1	Drama Historical	4.5
7629	Chobitto Zukan	52	Fantasy Kids	4.5
7676	Cyborg 009: Call of Justice 1	1	Action Adventure Mecha Sci-Fi Shounen	4.5
7699	David and Goliath	1	Adventure Historical Kids	4.5
8105	Heong-geuli Beseuteu 5	1	Sports	4.5
8370	Kamiusagi Rope Specials	2	Comedy Slice of Life	4.5
8514	Kkomaeosa Ttori	1	Action Adventure Drama Fantasy Historical Magic Shounen	4.5
8532	Kochira Tamago Outou Negaimasu	1	Comedy School	4.5
8628	La Vilaine LuLu	13	Comedy	4.5
8925	Nanocore: NG Scenes - Nano&#039;s Daily Life	2	Comedy Sci-Fi	4.5
8926	Nanoha	1	Drama Historical Kids	4.5
8984	Ningen no Uta	1	Drama Kids	4.5
9043	Obaachan no Takaramono	1	Kids Music	4.5
9097	Onaka Hime	3	Fantasy	4.5
9170	Panpaka Pants W-O-New!	Unknown	Comedy Kids	4.5
9275	Pro Golfer Saru: Kouga Hikyou! Kage no Ninpou Golfer Sanjou!	1	Kids Sports	4.5
9277	Pro Yakyuu wo 10-bai Tanoshiku Miru Houhou	1	Comedy Sports	4.5
9344	Rusuban	1	Fantasy Kids	4.5
9424	Setsuzoku Muyou	26	Comedy	4.5
9751	Tensai Eri-chan Kingyo wo Tabeta	1	Comedy Kids Slice of Life	4.5
10052	Yawaraka Atom	7	Comedy Parody	4.5
7746	Doubutsu Olympic Taikai	1	Comedy	4.51
7978	Gunners	1	Action Mecha	4.51
9099	One and Three Four	1	Music	4.51
7220	Akai Kutsu! Onnanoko!	1	Dementia	4.52
7221	Manga	1	Comedy	4.52
7638	Chou Zenmairobo: Patrasche	13	Comedy Historical Mecha Parody Sci-Fi	4.52
7805	Fojiao Donghua: Dashi Zhi Pusa Nianfo Yuantong Zhang	1	Drama	4.52
7809	Four Seasons: Fuuka to Nanami	1	Cars	4.52
8187	Hwanggeum Nalgae 1.2.3.	1	Action Mecha Sci-Fi	4.52
8265	Jataka Monogatari: Kiniro no Shika	1	Kids	4.52
8546	Kokuen	1	Drama Music	4.52
9793	Time for Christmas	1	Music	4.52
7219	Yami no Kioku Yume no Inei	1	Dementia	4.53
7655	CoCO &amp; NiCO	39	Comedy Kids	4.53
8506	Kitsutsuki: The Ten Hole Stories	1	Dementia	4.53
9502	Shiroishi no Yousei Pichi	3	Fantasy Historical Kids	4.53
9700	Taekwon Dongja Maruchi Arachi	1	Action	4.53
9749	Tenrankai de Atta Onnanoko	1	Kids Music	4.53
7216	Ai	1	Dementia Psychological Romance	4.54
7217	Bishoujo Yuugi Unit Crane Game Girls	13	Comedy Game Space	4.54
7218	Shinsatsushitsu	1	Dementia Horror	4.54
7357	Ahare! Meisaku-kun	39	Comedy Kids Parody School	4.54
7376	Akai Jitensha	1	Music	4.54
7975	Guitar Shoujo!	1	Slice of Life	4.54
8266	Jeonja Ingan 337	1	Action Sci-Fi Super Power	4.54
9433	SheepWolf	1	Comedy Kids	4.54
9672	Sumiko	2	Comedy Kids Slice of Life	4.54
10077	Yubikiri	1	Music	4.54
7214	Arakure Junichi no Namida	1	Comedy	4.55
7215	Nantokashite Alguard	1	Comedy	4.55
8412	Kaseifu ga Ita.	1	Comedy Shoujo Slice of Life	4.55
8955	Nekoronde TV.	12	Comedy	4.55
9264	Pororo Hanguk-e Wass-eoyo	1	Adventure Kids	4.55
7211	Direct Animation	1	Dementia	4.56
7212	Hustle!! Tokitama-kun	1	Dementia	4.56
7213	Landmark	1	Dementia	4.56
7601	Chichi Kaeru	1	Drama	4.56
7869	Ganbare! Lulu Lolo 2nd Season	26	Kids Slice of Life	4.56
8502	Kitakaze to Taiyou	1	Kids	4.56
8813	Minna de Bokumetsu Inshu Unten	1	Drama	4.56
9855	Tsuru no Ongaeshi	1	Kids	4.56
9955	Wanwanwan Coin	15	Comedy	4.56
7210	Calligraffiti	1	Music	4.57
7380	Akuei to Gacchinpo	13	Comedy Kids	4.57
8871	Mori no Senshi Bonolon	26	Adventure Fantasy Kids	4.57
9931	Uwabaki Cook	13	Kids	4.57
7207	Baka Baka Baka na Sekai	1	Comedy Dementia Military	4.58
7208	Landscape	1	Dementia	4.58
7209	Urashima Tarou (1931)	1	Action	4.58
7426	Are wa Dare?	1	Kids	4.58
8124	Hikaru no Gen-chan	1	Historical Kids Music	4.58
8618	Kyoufu no Kyou-chan	7	Comedy Parody	4.58
9884	Uju Jeonsa Hong Gildong	1	Action Adventure Kids Sci-Fi Space	4.58
9914	Urashima Tarou (1952)	1	Historical	4.58
9996	X Maiden	8	Comedy School Slice of Life	4.58
7205	6 Angels	6	Action Sci-Fi	4.59
7206	Maabou no Daikyousou	1	Comedy Sports	4.59
7616	Chikara Bashi	1	Kids	4.59
8751	Matsubara-kun	5	Comedy	4.59
9002	Nobara	1	Drama	4.59
7204	Bouken Dankichi: Hyouryuu no Maki	1	Adventure	4.6
7693	Danchi Tomoo: Natsuyasumi no Shukudai wa Owatta no ka yo? Tomoo	1	Comedy Seinen	4.6
7785	Entotsuya Peroo	1	Kids	4.6
7853	Gakken ka Nani ka no Mukashi no Video	1	Kids Music	4.6
8001	Hamuko Mairu!	1	Adventure Comedy	4.6
8340	Kaijuu Sakaba Kanpai! Specials	13	Comedy	4.6
8565	Kosys! Kochira Keihime Tetsudou: Kouhou System-ka	2	Comedy Slice of Life	4.6
8668	Mabeob Chunjamun: Daemawangui Buhwaleul Magala	1		4.6
9932	Uwabaki Cook no Tekitou Uranai!	125	Comedy	4.6
7951	Golden Kids	2	School Sports	4.61
9182	Pâtisserie no Monster	4	Slice of Life	4.61
9482	Shinjuku Shin-chan: Yoiko no Koutsuu Anzen	1	Kids	4.61
7198	Head Spoon	1	Dementia	4.62
7199	Kobe to Watashi	1	Comedy Slice of Life	4.62
7200	MILPOM★	Unknown	Comedy Shoujo	4.62
7201	Osaru no Sankichi: Totsugeki-tai	1	Military	4.62
7202	Under the Dog: Anthea-chan	1	Action Comedy Parody	4.62
7203	Wakie Wakie	1	Music	4.62
7737	Doron Coron	1	Kids Slice of Life	4.62
7976	Gun-dou Musashi Recap	1	Adventure Fantasy Samurai	4.62
8581	Kubbe no Ongakukai	1	Fantasy Music	4.62
7196	Commercial War	1	Dementia	4.63
7197	Haru no Shikumi	1	Dementia	4.63
7378	Akazukin Chanto Manabou! Koutsuu Rule	1	Drama Kids	4.63
8456	Keshikasu-kun	Unknown	Comedy Kids	4.63
9405	Seishun Midnight Runners: Shiosai	1	Music	4.63
9885	Ujusonyeon Kaesi	1	Action Adventure Sci-Fi Shounen	4.63
7195	Nezumi no Rusuban	1	Action	4.64
7343	84 Taekwon V	1	Action Mecha Sci-Fi	4.64
9784	The Snack World	1	Adventure Comedy Fantasy Kids	4.64
7193	Lemon Home Animation Gekijou	2	Comedy	4.65
7194	Tonari no Yarou	1	Comedy	4.65
9017	Norakuro Nitouhei	1	Kids	4.65
7191	Bloody Date	1	Horror	4.66
7192	Doubutsu Sumo Taikai	1	Action	4.67
7403	Animax Taisou	Unknown	Kids Sports	4.67
7478	Bary-san x Gospe Rats: Tonde Bary Bary Monogatari	1	Music	4.67
7481	Bazar dé Gozarre	33	Comedy	4.67
7843	Futari wa 80-sai	1	Kids Music	4.67
8011	Hanakappa no Koutsuu Anzen: Cake wo Momomete Migi Hidari Migi	1	Drama Fantasy Kids	4.67
8281	Jinxiu Shenzhou Zhi Qi You Ji	Unknown	Adventure Fantasy	4.67
8367	Kamiusagi Rope 3	12	Comedy Slice of Life	4.67
8564	Korokoro Animal 2	51	Kids	4.67
8662	Lovely Movie: Itoshi no Muco Specials	3	Slice of Life	4.67
8843	Mofu☆Mofu	11	Kids	4.67
8968	Nihon no Otogibanashi	29	Demons Fantasy Historical Kids Magic Samurai Supernatural	4.67
9093	Omoi Au Christmas 2011	3	Fantasy	4.67
9192	Peeping Life: Gekijou Original-ban	5	Comedy Slice of Life	4.67
9199	Peeping Life: TV Asahi Josei Announcer Collab	1	Comedy Slice of Life	4.67
9327	Robot King	1	Action Mecha	4.67
9663	Sugar Bunnies Chocolate! Specials	2	Kids	4.67
9850	Tsukiyo to Megane	1	Fantasy	4.67
9924	Usawaltz	1	Dementia Music	4.67
7189	Chuunen Punk	1	Music	4.68
7190	Ga no Iru Tokoro	1	Dementia	4.68
8985	Ningyo no Hanashi	1	Fantasy Music	4.68
7185	Issunboushi no Shusse	1	Supernatural	4.69
7186	Kodomo no Kaitei no Koto	1	Psychological	4.69
7187	Play Jazz	1	Dementia	4.69
7188	Twinkle Nora Rock Me!	1	Action Sci-Fi	4.69
7613	Chiisana Kyojin Microman: Daigekisen! Microman vs. Saikyou Senshi Gorgon	1	Action Adventure Mecha Sci-Fi Shounen Super Power	4.69
7826	Fukusuke	1		4.69
8869	Mori no Ongakutai	1	Fantasy Kids	4.69
9448	Shiden Pilot	1	Action Cars	4.69
9754	Teppen	2	Action Comedy	4.69
7179	A.F	1	Action Mecha Sci-Fi	4.7
7180	Fashion no Hajimari	1	Comedy	4.7
7181	Generation of Chaos III: Toki no Fuuin	2	Action Adventure Fantasy Magic	4.7
7182	Kihei Senki Legacies	1	Fantasy Mecha	4.7
7183	Mac the Movie	1	Dementia	4.7
7184	Mou Hitotsu no Nijiiro Toshi	1	Dementia	4.7
7675	Curly	1	Comedy	4.7
7814	Frypan Jiisan	1	Adventure Kids	4.7
7935	Go Go Toraemon	1	Comedy Sports	4.7
8030	Hare Tokidoki Buta	1	Comedy Kids	4.7
9205	Penguin no Mondai Movie	1	Comedy Kids	4.7
9342	Runningman	1	Slice of Life	4.7
9563	Sonyeon 007 Jihajeguk	1	Action Adventure Sci-Fi Shounen	4.7
9650	Steady x Study	1	Romance	4.7
9862	Ttoli Janggun	1	Action Drama Shounen	4.7
7174	Jinkou no Rakuen	1	Dementia	4.71
7175	JK Meshi!	26	Comedy	4.71
7176	Kappo	1		4.71
7177	Master Blaster	1	Dementia Music	4.71
7178	Motion Lumine	1	Dementia	4.71
7578	Channel 5.5 Prologue: Shin Bangumi Start!	1	Comedy	4.71
7934	Go Go Smile Anime	6	Comedy Music	4.71
8880	Mr. Shape	3	Comedy Kids	4.71
9495	Shiritori Oukoku	3	Kids	4.71
9500	Shiroi Zou	1	Action Historical Kids	4.71
9501	Shiroi Zou (1981)	1	Action Historical	4.71
9982	Witch Village Story	24	Slice of Life	4.71
7170	Haru no Uta	1	Music	4.72
7171	Haruwo	1	Action	4.72
7172	Kairaku no Sono	1	Dementia Music	4.72
7173	Umi no Momotarou	1	Samurai	4.72
7167	Jigoku Youchien	12	Demons Kids School	4.73
7168	Mado	1	Comedy	4.73
7169	Samero	1	Dementia	4.73
7526	Boo Boo Boy	26	Cars Kids	4.73
9191	Peeping Life x Sanyo	4	Comedy Slice of Life	4.73
9567	Soratobu Usagi no Yuukai Boushi: Boku Iya Da yo!	1	Kids	4.73
9851	Tsukiyomi	1	Music	4.73
10111	Zenryoku Yobikou 5.5 Seminar Prologue	1	Comedy Parody School	4.73
7165	PistStar	1	Magic	4.74
7166	Shoujouji no Tanuki-bayashi	1	Kids	4.74
7431	Ari to Hato (1959)	1	Kids	4.74
8193	Hyoutan	1	Psychological	4.74
9617	Sore Ike! Anpanman: Tekka no Maki-chan to Kin no Kamameshidon	1	Adventure Kids	4.74
9778	The Night Game: Neko no Sakusen	1	Kids Sports	4.74
10093	Yurugaro	Unknown	Comedy Fantasy	4.74
7163	2005-nen Uchuu no Tabi	1	Dementia Sci-Fi Space	4.75
7164	Kindan no Mokushiroku: Crystal Triangle	1	Adventure Demons Military Mystery	4.75
7844	Futari wa Nakayoshi: Goo to Sue	84	Kids Slice of Life	4.75
7850	Fuusen Shoujo Temple-chan Movie	1	Adventure Comedy Kids Music	4.75
7944	Gogulyeoui Jeolm-eun Musadeul	Unknown	Historical	4.75
7966	Great Hunt	6	Comedy Music	4.75
7998	Hakusai Anime Special	1	Comedy School	4.75
8311	Kabocha no Oji-san	1	Kids Music	4.75
8349	Kaitou Jigoma Ongaku-hen	1	Music	4.75
8429	Ken-chan	1	Kids Music	4.75
8474	Kiki to Lala no Hoshi no Dance Shoes	1	Kids Music	4.75
8520	Kobutori (1957)	1		4.75
8616	Kyojin no Hoshi: Shukumei no Taiketsu	1	Drama Sports	4.75
8717	Manabu no Natsuyasumi	1	Fantasy Kids	4.75
8893	Naccio to Pomm	41	Adventure Kids Sci-Fi	4.75
9021	Norasco	Unknown	Comedy Slice of Life	4.75
9049	Obatalian	1	Comedy	4.75
9166	Paniponi	Unknown	Kids Slice of Life	4.75
9185	Peeban	6	Comedy	4.75
9186	Peeping Life 5.0ch	10	Comedy Slice of Life	4.75
9278	Pro Yakyuu wo 10-bai Tanoshiku Miru Houhou Part 2	1	Comedy Sports	4.75
9387	Saru Kani Gassen	1	Drama	4.75
9418	Sennen no Yakusoku	1	Kids Slice of Life	4.75
9458	Shimajirou to Kujira no Uta	1	Adventure Comedy Fantasy Kids	4.75
9459	Shimajirou to Ookinaki	1	Adventure Kids	4.75
9533	Shutter Chance	1	Drama Kids	4.75
9940	Wa Wa Wa Wappi-chan	26	Kids	4.75
7159	Konnichiwa Onara Gorou	1	Comedy	4.76
7160	Namakura Gatana	1	Comedy Samurai	4.76
7161	Vampire Sensou	1	Super Power Supernatural Vampire	4.76
7162	Wheels	1	Comedy	4.76
7795	Feng Ji Yun Nu	1	Action Martial Arts	4.76
8387	Kanbee-kun ga Yuku	3	Comedy Historical Kids	4.76
9981	Winner	1	Kids Music School Sports	4.76
7158	Aoi Heya	1	Fantasy Music	4.77
7334	2002-nen Harmoni Ondo	1	Kids Music	4.77
7457	Ba La La Xiao Mo Xian Zhi: Qiji Wubu	52	Comedy Magic Shoujo	4.77
7500	Biriken Nandemo Shoukai	22	Comedy Kids	4.77
7883	Gattai Robot Atranger	1	Mecha	4.77
7156	Hinomaru Hatanosuke: Inazuma-gumi Tobatsu no Maki	1	Action Historical Samurai	4.78
7157	Pinky Street	2	Comedy Slice of Life	4.78
7610	Chiisana Itsutsu no Ohanashi	1	Kids	4.78
7732	Doolie Baenang-Yeohaeng	7	Adventure Kids	4.78
7879	Gancheopjamneun Ttorijanggun	1	Action Drama Sci-Fi Shounen	4.78
8143	Hipira-kun Special	1	Comedy Fantasy Kids Supernatural Vampire	4.78
8462	Kick no Oni (1971)	1	Shounen Sports	4.78
8553	Konna Watashitachi ga Nariyuki de Heroine ni Natta Kekka www (TV): Heroine Kentei	11	Comedy Fantasy	4.78
8810	Mini Moni Yaru no da Pyon!	66	Comedy	4.78
9074	Ojiichan no Komoriuta	1	Kids Music	4.78
10019	Xiyue Qi Tong	1	Action Adventure Fantasy	4.78
10070	Youkai Ninpouchou Jiraiya! Special	1	Action Comedy	4.78
7154	Isu	1	Dementia	4.79
7155	Mogu Mogu	1	Music	4.79
7477	Bary-san no Imabari-ben Kouza	Unknown	Comedy	4.79
7650	Circles	1	Music	4.79
7983	Hadashi Neko	1	Adventure Comedy	4.79
8391	Kanimanji Engi	1	Fantasy	4.79
9694	Taabou no Ryuuguusei Daitanken	1	Fantasy Kids	4.79
9849	Tsuki no Miya no Oujo-sama	1	Kids	4.79
10079	Yuki no Yo no Yume	1	Drama	4.79
7145	44-hiki no Neko	1	Kids Music	4.8
7146	Ame-iro Cocoa	12	Comedy Slice of Life	4.8
7147	Hinomaru Tarou: Musha Shugyou no Maki	1	Action Samurai	4.8
7148	Jingle	1	Fantasy	4.8
7149	Petit Manga	1	Dementia	4.8
7150	Sushi Police	13	Comedy Police	4.8
7151	Tairiki Tarou no Mucha Shuugyou	1	Action	4.8
7152	Yokoo&#039;s 3 Animation Films	3	Psychological Romance	4.8
7153	Zawazawa	1		4.8
7356	Agukaru: Play with Ibaraki-hen Episode 0	1	Magic Slice of Life Supernatural	4.8
7360	Ahiru no Pekkle no Hihou wo Sagase	1	Adventure Fantasy Kids	4.8
7485	Believe in It	1	Dementia	4.8
7829	Funassyi to Yukaina Kyoudai	Unknown	Comedy Kids	4.8
8237	Inuyama Kamiko no Kireigoto ja Owaranai!	2	Slice of Life	4.8
8812	Mini Yon Soldier Rin!	1	Action Adventure Mecha Shounen	4.8
8857	Monchhichiisu	20	Kids	4.8
10118	Zhan Long Si Qu	64	Cars Kids	4.8
7143	Bara Bara Film	1	Dementia	4.81
7144	Iron Virgin Jun	1	Action Comedy Fantasy Martial Arts Super Power	4.81
7355	Agukaru: Play with Ibaraki-hen	20	Magic Slice of Life Supernatural	4.81
7490	Bic Contact X Mameshiba Collab CM	1	Comedy	4.81
7577	Channel 5.5 4th Season Prologue	1	Comedy	4.81
8186	Hwanggeum Cheolin	1	Action Adventure Demons Kids Super Power	4.81
8796	Milk House Dreaming: Ai no Shiki	1	Music Shoujo	4.81
9329	Robot Taekwon V 3tan! Sujung Teukgongdae	1	Action Mecha Sci-Fi	4.81
7142	Ramen Tenshi Pretty Menma	1	Comedy Magic Parody	4.82
7643	Chouon Senshi Borgman: Madnight☆Gigs!	1	Action Demons Music Sci-Fi Shounen	4.82
7845	Futari Zamurai Homare no Kawakiri	1	Drama Historical Samurai	4.82
8846	Momon&#039;s Sand Witch	8	Comedy Kids	4.82
7139	Fashion	1	Comedy Dementia	4.83
7140	Fue	1	Dementia	4.83
7141	Henkei Sakuhin Dai 1-ban	1	Dementia	4.83
7793	Eyedrops	4	Space	4.83
8750	Master of Torque 3	1	Action Sci-Fi	4.83
8931	Narara Superboard	54	Action Adventure Comedy	4.83
9314	Ribbon-chan	24	Comedy	4.83
9610	Sore Ike! Anpanman: Rhythm de Teasobi - Anpanman to Fushigi na Parasol	1	Comedy Fantasy Kids	4.83
7123	Great Rabbit	1	Psychological	4.84
7138	Shousei Shikisai Gensou	1	Music	4.84
7133	Nakanaori	1	Action Samurai	4.85
7134	Omocha Bako Series Dai 3 Wa: Ehon 1936-nen	1	Fantasy	4.85
7135	Shinsei Kamattechan	1	Music Sci-Fi	4.85
7136	Usagi ga Kowai	1	Dementia Game Horror	4.85
7137	Utsukushii	1	Music	4.85
7487	Beompeoking Jaepeo	26	Action Cars	4.85
8165	Hopiwa Chadolbawi	1	Action Adventure Historical Shounen	4.85
8395	Kappa Kawatarou	1	Kids Supernatural	4.85
9267	Potecco Babies (2011)	12	Comedy	4.85
9323	Robocar Poli	26	Cars Comedy Kids	4.85
9704	Taiman Blues: Shimizu Naoto-hen	3	Shounen	4.85
9770	The Gakuen Choujo-tai	1	Action Demons Shoujo Super Power	4.85
9827	Tonight	1	Music	4.85
7128	Chimuchimucheri ChimChimCheree	1	Kids Music Slice of Life	4.86
7129	Nazotokine	12	Game	4.86
7130	Satsujinkyou Jidai	1	Fantasy	4.86
7131	Self-Portrait	1	Comedy Demons	4.86
7132	Tanaami Keiichi no Shouzou	1	Dementia	4.86
7465	Bad Badtz-Maru no Ore wa Yuutousei	1	Comedy Kids	4.86
7636	Chou Kidougai-ku: Kashiwa-no-Ha	3	Mecha	4.86
7839	Futago no Monchhichi	130	Comedy Kids	4.86
8254	Itsumo Kokoro ni Ho	1	Music Slice of Life	4.86
8533	Kodanuki Ponpo	1	Kids Music	4.86
9743	TeNiOE	1	Music	4.86
9762	Tezuka Osamu Monogatari	10	Historical	4.86
7125	Peeping Life: YouTuber-kun	4	Comedy	4.87
7126	Urda	5	Action Historical Military Sci-Fi	4.87
7127	Ushi Atama	1	Dementia	4.87
7533	Bouningen Weekend	20	Slice of Life	4.87
7120	Ao Oni The Animation	Unknown	Horror	4.88
7121	Canary	1	Fantasy Music Romance School	4.88
7075	Chagama Ondo	1	Comedy Supernatural	4.99
7122	Chou Henshin Cosprayers vs. Ankoku Uchuu Shougun the Movie	1	Adventure Comedy Magic Sci-Fi	4.88
7124	Kintarou Taiiku Nikki	1	Comedy	4.88
7384	Akuma to Himegimi	1	Comedy Shoujo	4.88
8153	Hitotsuboshi-ke no Ultra Baasan	13	Comedy Slice of Life	4.88
8271	Jibun no Mune ni te wo Atete	1	Drama Kids	4.88
8477	Kiki to Lala no Papa to Mama ni Aitai	1	Kids	4.88
8966	Nihon Mukashibanashi: Saru Kani	1	Fantasy	4.88
9193	Peeping Life: Tezuka Pro - Tatsunoko Pro Wonderland	10	Comedy Parody	4.88
9331	Robot Taekwon V: Wooju Jakjeon	1	Action Mecha Sci-Fi	4.88
7115	Battle Spirits: Ryuuko no Ken	1	Action Comedy Martial Arts Shounen	4.89
7116	Hinomaru Hatanosuke: Bakemonoyashiki no Maki	1	Supernatural	4.89
7117	Kaijuu no Ballad	1	Comedy Fantasy Music	4.89
7118	Kakari	1	Psychological	4.89
7119	Rui no Masaiban	1	Comedy	4.89
7466	Bad Badtz-Maru no Otoko Dokyou no Omoiyari	1	Comedy	4.89
7519	Bokura Machi Bouzu!	1	Kids Music	4.89
8660	Love Will Find the Way Back Home	1	Music	4.89
9270	Pride	1	Slice of Life	4.89
9687	Susume! Shinji-kun	1	Kids Music	4.89
7111	Aruite Mikka!	1	Comedy Kids Music	4.9
7112	Choujikuu Romanesque Samy: Missing 99	1	Action Sci-Fi	4.9
7113	Lost Utopia	1	Action Fantasy Music Seinen Supernatural	4.9
7114	Natsu no Shisen 1942	1	Dementia	4.9
8339	Kaijuu Sakaba Kanpai!	13	Comedy Supernatural	4.9
9476	Shin Seikimatsu: Yatsuto no Souguu	5	Comedy Sci-Fi	4.9
7105	Anomalies	1	Psychological	4.91
7106	a_caFe	1	Fantasy Music	4.91
7107	Chameko no Ichinichi	1	Comedy	4.91
7108	Jam	1	Fantasy Music	4.91
7109	Memories: Younenki no Joukei	1	Dementia	4.91
7110	Sign	1	Music Sci-Fi	4.91
7575	Channel 5.5 3rd Season Prologue	1	Comedy	4.91
7801	Flicker Love No.1	1	Dementia	4.91
8481	Kimezou no Kimarimonku Ja Kimaranee.	12	Comedy	4.91
9511	Shougakusei no Yuukai Boushi: Yumi-chan Abunai yo!	1	Kids	4.91
9835	Tough Guy!	1	Action Comedy	4.91
9890	Uli Chingu Kkachi	1	School Slice of Life	4.91
7100	Ame-iro Cocoa: Rainy Color e Youkoso!	12	Comedy Slice of Life	4.92
7101	Kaze no Kokyuu: Animation ni Yoru Oufuku Shokan	1	Dementia	4.92
7102	PiKA PiKA	1		4.92
7104	Wakaranai Buta	1	Drama	4.92
8149	Hito no Kita Tooku Nagai Michi	1	Historical	4.92
8279	Jin Ken Mamoru-kun to Ayumi-chan Sekai wo Shiawase ni	1	Fantasy Kids	4.92
8369	Kamiusagi Rope Movie Episode 0	1	Comedy Slice of Life	4.92
8867	Mori no Ongakudan	Unknown	Comedy Music	4.92
8884	Mukashi Toilet ga Kowakatta!	1	Kids Music	4.92
9223	Pichiko Dakyuubu USA-hen	3	Comedy Sports	4.92
9317	Risu no Panache	1	Kids	4.92
9509	Shooting Hero	1	Kids Music Sports	4.92
7095	Anygedybudybombom	1	Music	4.93
7096	Ketsuekigata-kun! Featuring Yuri &amp; Nasuno	1	Comedy	4.93
7097	Makura no Danshi	12	Shoujo	4.93
7098	Oshiri Kajiri Mushi	1	Comedy Music	4.93
7099	Sayokyoku	1	Comedy Dementia	4.93
7103	Seichou Rap	1	Music	4.93
7521	Bokura no Saibanin Monogatari	1	School	4.93
7768	Efficus: Kono Omoi o Kimi ni...	2	Magic	4.93
7910	Genroku Koi Moyou: Sankichi to Osayo	1	Adventure Romance	4.93
8414	Kashikokimono	1	Music	4.93
8924	Nanocore: 2016 New Year Special	1	Music	4.93
9330	Robot Taekwon V wa Hwanggeum Nalgae	1	Mecha	4.93
9415	Sengoku Bushou Retsuden Bakufuu Douji Hissatsuman	3	Action Adventure Mecha	4.93
9546	Skirt	1	Music	4.93
9637	Soumubu Sououka Yamaguchi Roppeita: Saibanin Project Hajimemasu!	1	Slice of Life	4.93
9703	Taiman Blues: Ladies-hen - Mayumi	2	Shounen	4.93
7090	Hana no Hi	1	Comedy Dementia	4.94
7091	KochinPa!	12	Comedy	4.94
7092	Norakuro Shoui: Nichiyoubi no Kaijiken	1	Action Military	4.94
7093	Odoroki Ban	1	Dementia	4.94
7094	Zonmi-chan: Halloween☆Special Movie!	1	Comedy Horror	4.94
8767	Megumi to Taiyou II: Kajuu Gummi Tweet Mystery - Kieta Sapphire Roman no Nazo	1	Mystery	4.94
8768	Megumi to Taiyou III: Kajuu Gummi Tweet Fantasy - Timeline World	1	Fantasy	4.94
8863	Monster ni Natta Domerica	1	Action Fantasy	4.94
9572	Sore Ike! Anpanman: Anpanman to Okashi na Nakama	1	Comedy Fantasy Kids	4.94
9599	Sore Ike! Anpanman: Lyrical☆Magical Mahou no Gakkou	1	Comedy Fantasy Kids	4.94
9618	Sore Ike! Anpanman: Tenohira wo Taiyou ni	1	Comedy Fantasy Kids	4.94
7086	Hanabeam	1	Music	4.95
7087	Million Doll	11	Music	4.95
7088	Rayca	1	Sci-Fi	4.95
7089	Shuranosuke Zanmaken: Shikamamon no Otoko	1	Action Historical Supernatural Thriller	4.95
8579	Kozaru no Buranko	1	Kids	4.95
8753	Mattsu to Yanma to Moburi-san 2: Suigun Otakara to Nazotoki no Shimajima	1	Fantasy Magic	4.95
10126	Zombie Clay Animation: Life of the Dead	4	Comedy Horror	4.95
7082	Kokka Kimigayo	1	Historical Music	4.96
7083	Navia Dratp	5	Fantasy Music	4.96
7084	Nouryou Anime: Denkyuu Ika Matsuri	1	Dementia Horror Psychological	4.96
7385	Akuma Tou no Prince: Mitsume ga Tooru	1	Adventure Comedy Demons Supernatural	4.96
7861	Game Tengoku OVA	1	Action Adventure Comedy Mecha	4.96
8961	Nezumi no Yomeiri	1	Fantasy Kids	4.96
7080	Jigazou	1	Comedy	4.97
7081	Raja Maharaja	1	Music Slice of Life	4.97
7085	Tokyogurashi!	1	Music Parody	4.97
7077	Animal Dance	1	Dementia Music	4.98
7078	Hibari no Yadogae	1	Action	4.98
7079	Portrait	1	Dementia	4.98
9106	Oniku Daisuki! Zeushi-kun	12	Comedy	4.98
7074	Beautiful Name	1	Kids	4.99
7076	Fantastic Cell	1	Dementia	4.99
7070	Ai Sky Tree 21	1	Action	5
7071	Hana	1	Comedy	5
7072	Ichigeki Sacchuu!! Hoihoi-san: Legacy	1	Comedy Sci-Fi	5
7073	Kitte no Gensou	1	Comedy	5
7329	&quot;Aesop&quot; no Ohanashi yori: Ushi to Kaeru Yokubatta Inu	1	Kids	5
7347	Acerola-chan	3	Comedy	5
7366	Ai to Shi	1	Action	5
7382	Akuei to Gacchinpo The Movie: Chelsea no Gyakushuu/Akuei to Mahou no Hammer	1	Comedy Kids Magic	5
7418	Aoi Umi to Shounen	1	Slice of Life	5
7553	Burutabu-chan	Unknown	Comedy Fantasy Magic	5
7646	Chuugakusei	2	Comedy	5
7659	Cofun Gal no Coffy: Cofunderella	1	Comedy	5
7666	Contact	1	Comedy Kids Sci-Fi	5
7673	Crayon no Hoshi	1	Drama Kids	5
7697	Daruma-chan	5	Kids Supernatural	5
7716	Dokgotak Dasi Chajeun Maundeu	1	Shounen Sports	5
7730	Donguri to Yamaneko (1995)	1	Demons Drama Kids	5
7774	Eigo de Asobo: Tanken Goblin Tou	100	Adventure Comedy Fantasy Kids	5
7791	Examurai Sengoku Recap	1	Action Samurai	5
7823	Fuku-chan	71	Kids Slice of Life	5
7886	Geba Geba Shou Time!	1	Comedy	5
7931	GJ8 Man	Unknown	Comedy Supernatural	5
8119	High School Jingi	1	Action Comedy Seinen	5
8160	Hong Gil Dong 2084	1	Action Adventure	5
8189	Hyakumannen Attara Dousuru?	1	Kids	5
8190	Hybrid Deka	1	Comedy	5
8194	Hyoutan Suzume	1	Fantasy	5
8201	Ichimai no Etegami	1	Drama Kids	5
8343	Kaiketsu Zorori Movie: Uchuu no Yuusha-tachi	1	Adventure Comedy	5
8358	Kamaishi no &quot;Kiseki&quot;: Inochi wo Mamoru Tokubetsu Jugyou	1	Drama	5
8397	Kappa no Suribachi	1	Fantasy Kids	5
8419	Katta-kun Monogatari	1	Adventure Kids	5
8472	Kiki to Lala no Hakuchouza no Ohimesama	1	Kids	5
8482	Kimezou no Kimarimonku Ja Kimaranee. Featuring Sabu-Otoko	12	Comedy	5
8486	King Kong: 001/7 Tom Thumb	26	Adventure Sci-Fi	5
8688	Mahou no Tenshi Creamy Mami: Perfect Memory	1	Parody Shoujo Slice of Life	5
8770	Meiji Ishin wo Tsukuriageta Hitobito	1	Drama Historical Kids Samurai	5
8801	Mina no Bousai Mura Dzukuri	1	Drama Kids	5
8817	Minna Tomodachi	1	Comedy Fantasy Kids	5
8848	Momon&#039;s Sand Witch Episode 0	1	Comedy Kids	5
8870	Mori no Ratio	Unknown	Adventure Fantasy Kids	5
8894	Nae Ireumeun Dokgotak	1	Sports	5
8908	Nanbo no Monjai! 2: Yankee Gurentai	1	Action Comedy	5
8950	Neko no Sumu Shima	1	Drama	5
8991	Ninja Negizou	1	Kids Music	5
9067	Ojarumaru Yakusoku no Natsu Ojaru to Semira Movie	1	Adventure Comedy Fantasy	5
9079	Okaasan no Ki	1	Historical Kids	5
9088	Okoru yo!	1	Kids Music	5
9147	Otona no Ikkyuu-san	3	Comedy Historical	5
9222	Pichiko Dakyuubu	29	Comedy Sports	5
9236	Piyo no Ongaeshi	1	Music	5
9325	RoboDz	26	Sci-Fi	5
9328	Robot Pulta	40	Adventure Comedy Kids Mecha	5
9353	Sabaku no Takara no Shiro	1	Drama	5
9404	Seishun Anime Zenshuu Specials	2	Drama Historical	5
9461	Shin Choubakumatsu Shounen Seiki Takamaru	6	Action Comedy Fantasy	5
9518	Shounen Ashibe 2: Ashibe no Kanashii Yume	1	Comedy Slice of Life	5
9552	Sockies: Frontier Quest	39	Comedy	5
9621	Sore Ike! Anpanman: Tsukiko to Shiratama - Tokimeki Dancing	1	Comedy Fantasy Kids	5
9654	Straw Byururu	2	Adventure Fantasy Kids Magic	5
9666	Sugar Bunnies: Taisetsu na Tomodachi e...	1	Kids	5
9735	Tatsunoko Pro x Peeping Life	2	Comedy Slice of Life	5
9809	Tokio Heidi: Mainichi no Kodomo Uta	1	Kids Music	5
9816	Tokyu Plaza Ginza Open	1	Slice of Life	5
9828	Topo Gigio no Botan Sensou	1	Historical Kids	5
9845	Trip Trek (2010)	8	Adventure Comedy Fantasy	5
9879	Uchuujin Pipi	52	Kids	5
9891	Uli Sai Jjang-Iya	1	School	5
9923	Usamaru	12	Comedy	5
10022	Yahabe	1	Game Shounen Supernatural	5
10110	Zenryoku Yobikou 5.5 Seminar	9	Comedy Parody School	5
7066	Cherry no Manma	1	Comedy Romance Shoujo	5.01
7068	Dracula no Uta	1	Kids Music Vampire	5.01
7069	Mr. Empty	1	Music	5.01
7061	A Play	1	Music	5.02
7062	Kerorinpasu	1	Music	5.02
7063	MTV Japan Station ID	2	Music	5.02
7064	Quantum Leap	1	Action Music	5.02
7065	Rule	1	Dementia	5.02
7067	Comics	1	Dementia	5.02
8928	Nar Doma	26	Comedy	5.02
7056	Ainone	1	Drama Music	5.03
7057	Arigatou Thank You	1	Comedy Kids Music Sci-Fi Space	5.03
7058	Chirico	1	Dementia	5.03
7059	Dambo	1	Fantasy Music	5.03
7060	Ski Jumping Pairs: Road to Torino 2006	1	Comedy Sports	5.03
9303	Raldessia Chronicles	1	Action Adventure	5.03
7044	Bishoujo Yuugi Unit Crane Game Girls Galaxy	Unknown	Comedy Game Space	5.04
7048	BAR Kiraware Yasai	13	Comedy	5.04
7049	Furudera no Obake-soudou	1	Action Adventure	5.04
7050	Hakubutsushi	1	Dementia	5.04
7051	Ishida to Asakura Special	1	Comedy School Seinen	5.04
7052	Many Mary	1	Music	5.04
7053	Noisy Birth	1	Dementia Music	5.04
7054	Otogi no Kuni no Birthday	1	Kids Music	5.04
7055	Yakusoku	1	Dementia	5.04
8240	Iruka to Shounen	13	Adventure Kids	5.04
8457	Ketsuinu	13	Comedy	5.04
9813	Tokyo Fantasia	1	Dementia Music	5.04
9960	Warui no wo Taose!! Salaryman Man	1	Comedy Parody	5.04
7043	Arigatou Gomennasai	1		5.05
7045	Chinkoroheibei Tamatebako	1	Comedy Fantasy Kids	5.05
7046	Maabou no Kinoshita Toukichirou	1	Samurai	5.05
7047	Vie Durant	8	Drama Sci-Fi Vampire	5.05
7336	21 Emon Uchuu e Irasshai!	1	Comedy Sci-Fi Space	5.05
8641	Letchu Getchu Saru Getchu	76	Comedy	5.05
8687	Mahou no Tenshi Creamy Mami no Otogibanashi	1	Fantasy Magic Shoujo	5.05
8858	Money Wars: Nerawareta Waterfront Keikaku	1	Seinen	5.05
9107	Oniku Daisuki! Zeushi-kun 2nd Season	6	Comedy	5.05
9127	Osaru no Monkichi no Kin no Ono Gin no Ono	1	Kids	5.05
7034	&quot;0&quot;	1	Music	5.06
7035	3-Nen D-Gumi Glass no Kamen	13	Comedy Parody School	5.06
7036	Akuma no Kairozu	1	Dementia	5.06
7037	Kiseichuu no Ichiya	1	Dementia Horror	5.06
7038	Saru to Kani no Gassen	1	Drama	5.06
7039	Shogi Hour	1	Comedy Game Parody	5.06
7040	The Green Wind	1	Fantasy	5.06
7041	Umacha	2	Slice of Life	5.06
7042	Yami wo Mitsumeru Hane	1	Dementia	5.06
8052	Heisei no Cinderella: Kiko-sama Monogatari	1	Historical Romance	5.06
8136	Himitsukessha Taka no Tsume The Movie 2: Watashi wo Aishita Kuro Oolong-Cha	1	Comedy Parody Super Power	5.06
8233	Interior	1	Adventure Comedy	5.06
8608	Kutsuya to Kobito	1	Fantasy Kids	5.06
8845	Momoiro no Crayon	1	Drama Kids	5.06
9233	Piroppo	23	Comedy	5.06
9570	Sore Ike! Anpanman: Anpanman to Happy Otanjoubi	1	Comedy Fantasy Kids	5.06
9614	Sore Ike! Anpanman: Sing! Dance! Everybody&#039;s Christmas	1	Comedy Fantasy Kids Super Power	5.06
7018	Yoru no Hi	1	Psychological	5.07
7024	Peaceful Times (F02) Petit Film	1	Music	5.07
7028	Aru Zombie Shoujo no Sainan	1	Action Horror	5.07
7029	Metropolitan Museum	1	Fantasy Kids Music	5.07
7030	Oyoge ya Oyoge	1	Sports	5.07
7031	PuriGorota: Uchuu no Yuujou Daibouken	1	Adventure Kids Sci-Fi	5.07
7032	Susume! Gachimuchi Sankyoudai	1	Comedy	5.07
7033	The Humanoid: Ai no Wakusei Lezeria	1	Drama Mecha Sci-Fi Space	5.07
7555	Byeolnala Samchongsa	1	Adventure Sci-Fi	5.07
7822	Fuki to Hiyoko	1	Kids Music	5.07
8567	Kotatsu Neko	26	Comedy	5.07
8829	Mizu no Tane	1	Historical	5.07
9573	Sore Ike! Anpanman: Anpanman to Oyakusoku	2	Comedy Fantasy Kids	5.07
7019	Blue Remains	1	Adventure Sci-Fi	5.08
7020	Cherry Blossom (Music)	1	Music	5.08
7021	Double Circle	6	Sci-Fi Super Power	5.08
7022	Kuchao	1	Dementia	5.08
7023	Metamorphose	1		5.08
7025	The Chocolate Panic Picture Show	1	Dementia Psychological	5.08
7026	Urashima Tarou	1	Historical	5.08
7027	Yomiuri Shimbun	1	Historical	5.08
7589	Chi-Sui Maru 2nd Season	34	Comedy	5.08
8161	Hong Kil-dong	1	Adventure Fantasy Historical	5.08
8713	Mameshiba x Gaist Crusher Collab CM	1	Comedy Fantasy Parody	5.08
8899	Naita Aka Oni	1	Demons Kids	5.08
9240	Plus 50000-nen	1	Sci-Fi	5.08
9280	PS3® no Tsukai Kata: feat.Peeping Life	6	Comedy Slice of Life	5.08
9281	Pulsar	1	Dementia Music	5.08
9759	Tetsujin 28-gou: Tanjou-hen	1	Adventure Mecha Sci-Fi Shounen	5.08
9764	The Adventures of Hello Kitty &amp; Friends	52	Fantasy Kids	5.08
10054	Yawarakame♥	26	Comedy Kids	5.08
7013	Beluga	1	Dementia Horror	5.09
7014	Kitte no Nai Okurimono	1	Kids Music	5.09
7015	Norakuro Gochou	1	Adventure	5.09
7016	Shoujouji no Tanuki-bayashi Ban Danemon	1	Supernatural	5.09
7017	Tengu Taiji	1	Comedy	5.09
7709	Dochamon Junior	16	Comedy Kids	5.09
7851	Gaegujang-i Cheonsadeul	1	Adventure Kids	5.09
7977	GUNbare! Game Tengoku 2 the Movie	1	Action Adventure Comedy	5.09
8689	Mahou no Yousei Persia Pilot	1	Magic	5.09
9432	Sheep in the Island	2	Comedy	5.09
9536	Shuukan Shimakou Special	1	Comedy	5.09
9541	Sinbad	1	Adventure	5.09
7005	3-tsu no Kumo	3	Dementia	5.1
7006	Genma Taisen	1	Action Adventure Comedy Drama Mecha Sci-Fi Shounen	5.1
7007	Instant Music	1	Music	5.1
7008	JRA Hokan Keikaku	3	Action Mecha	5.1
7009	Kore ga UFO da! Soratobu Enban	1	Sci-Fi Space	5.1
7010	Tousan no Tsukutta Uta	1	Fantasy Music	5.1
7011	Waanabi.jk	2	Comedy School Slice of Life	5.1
7012	Yasashii Fue Tori Ishi	1	Dementia	5.1
7706	Dennou Sentai Voogie&#039;s★Angel: Forever and Ever	1	Action Comedy Drama Mecha Sci-Fi	5.1
7984	Haedori Daemoheom	1	Adventure Drama Military	5.1
8006	Hana no Zundamaru	8	Comedy Martial Arts Parody	5.1
9042	Nyuru Nyuru!! Kakusen-kun 2nd Season	13	Comedy	5.1
9111	Onpu	1	Kids Music	5.1
9187	Peeping Life Movie: We Are The Hero	1	Comedy Slice of Life	5.1
10123	Zoku Naniwa Yuukyouden	1	Action Comedy	5.1
6987	Playground	1	Dementia	5.11
6997	Robot Taekwon V	1	Action Mecha	5.11
6999	Aoki Seimei Hoken	1	Comedy	5.11
7000	Coffee Tadaiku	1	Slice of Life	5.11
7002	Hand Soap	1	Dementia Psychological	5.11
7003	Haru no Ashioto The Movie: Ourin Dakkan	1	Action Comedy School	5.11
7004	Kenju Giga	1	Parody Psychological	5.11
7772	Eien	1	Drama Fantasy Music	5.11
8245	Ishitsubutsu Toriatsukaijo	1	Drama Music	5.11
8377	Kana Kana Kazoku	Unknown	Comedy	5.11
8380	Kana Kana Kazoku: Kakusan Mare Bo ! 1-Wa-5-wa oo Matome Koukai… Ka na?	1	Comedy	5.11
8645	Lightning Atom	1	Action Kids Super Power	5.11
8927	Nansensu Monogatari Dai Ippen: Sarugashima	1	Adventure	5.11
6989	Anata mo Robot ni Nareru feat. Kamome Jidou Gasshoudan	1	Music	5.12
6990	Anima	1	Music	5.12
6991	B.B. Fish	1	Drama Romance Seinen	5.12
6992	Katsugeki Shoujo Tanteidan	1	Action Comedy School	5.12
6993	Marimo no Hana: Saikyou Butouha Shougakusei Densetsu	1	Action Shoujo	5.12
6994	Modern	1		5.12
6995	Natsumi Step!	1	Music	5.12
6996	Osakana wa Ami no Naka	1	Drama Shounen Ai	5.12
6998	Seiyuu Deka	1	Comedy Magic	5.12
7001	Fantasy	1		5.12
7449	Auto Mommy	1	Fantasy	5.12
9575	Sore Ike! Anpanman: Anpanman to Yukai na Nakama-tachi	1	Comedy Fantasy Kids	5.12
6979	Armored Core: Fort Tower Song	1	Action Mecha Sci-Fi	5.13
6980	Chou Henshin Cosprayers Specials	3	Adventure Comedy Magic Sci-Fi	5.13
6981	Clarinet Kowashichatta	1	Music	5.13
6982	Computer Obaachan	1	Adventure Comedy Kids Music Sci-Fi Space	5.13
6983	Funny Pets	12	Comedy	5.13
6984	Ganso Banana no Tamashii	1	Kids Music	5.13
6985	Kaidan	1	Supernatural	5.13
6986	Legend of Duo	12	Drama Shounen Ai Supernatural Vampire	5.13
6988	Yuuki Hitotsu wo Tomo ni Shite	1	Music	5.13
7333	15 Sonyeon Uju Pyoryugi	1	Action Sci-Fi Shounen Space	5.13
7576	Channel 5.5 4th Season	4	Comedy Parody	5.13
7661	Cofun Gal no Coffy: Okehazama no Tatakai	1	Comedy Historical Parody	5.13
7760	Duel Masters VSRF	Unknown	Action Adventure Comedy Shounen	5.13
7890	Gegege no Kitarou: Kitarou Tanjou-hen	1	Supernatural	5.13
8242	Ishii Hisaichi no Dai Seikai	1	Comedy Parody	5.13
8354	Kakko Kawaii Sengen! Specials	14	Comedy	5.13
8512	Kizuna (ONA)	1	Drama	5.13
8711	Mameshiba Gakuen	Unknown	Comedy School	5.13
9475	Shin Saru Kani Gassen (1939)	1	Kids	5.13
9636	Soukou Kyojin Z-Knight	1	Mecha	5.13
9807	Toki-iro Kaima	4	Horror Shounen	5.13
6940	Spacy	1	Dementia	5.14
6972	Issunboushi: Chibisuke Monogatari	1	Action Samurai	5.14
6973	Kuma ni Kuwarenu Otoko	1	Adventure Music	5.14
6974	MD Geist II: Death Force	1	Mecha Military Sci-Fi	5.14
6975	Ojousama Sousamou	1	Action Comedy Mystery Police	5.14
6976	Omoide no Album	1	Kids Music School Slice of Life	5.14
6977	Peeping Life Specials	2	Comedy Slice of Life	5.14
6978	Symphonic Variations	1	Music	5.14
7332	0-sen Hayato Pilot	1	Historical Military	5.14
7423	Apo Apo World: Giant Baba 90-bun 1-hon Shoubu	1	Comedy Sports	5.14
7712	Dodani	1	Drama School Shounen Slice of Life	5.14
7837	Fushigi Sekai Atagoul Monogatari	1	Adventure	5.14
7884	Gaza: Changing the World	1	Drama Supernatural	5.14
8077	Hello Kitty no Oyayubi-hime	1	Adventure Fantasy Kids	5.14
8118	Higanjima X	12	Fantasy Horror Seinen Vampire	5.14
8132	Himitsukessha Taka no Tsume GT	Unknown	Comedy Parody Super Power	5.14
8183	Hurdle	1	Drama	5.14
8273	Jigoku Koushien	1	Comedy Horror Shounen Sports	5.14
8407	Karl to Fushigi na Tou	26	Kids	5.14
8740	Manzai Taikouki	1	Comedy Historical Seinen	5.14
8890	My Home	1	Slice of Life	5.14
9513	Shoujo Fight: Norainu-tachi no Odekake	1	Comedy School Seinen Sports	5.14
9616	Sore Ike! Anpanman: Sukue! Kokorin to Kiseki no Hoshi	1	Comedy Fantasy Kids	5.14
9653	Storywriter	1	Music	5.14
10048	Yasoukyoku	1	Music	5.14
10091	Yumemakura Baku Twilight Gekijou	4	Horror Psychological	5.14
6956	Cipher	1	Drama Music	5.15
6962	12-gatsu no Uta	1	Kids	5.15
6963	Ahiru no Otegara	1	Adventure	5.15
6964	Amada Anime Series: Super Mario Brothers	3	Adventure Comedy Shounen	5.15
6965	Gunnm 3D Special	1	Action Sci-Fi Sports	5.15
6966	Kanzen Shouri Daiteiou	1	Action Adventure Kids Mecha Sci-Fi	5.15
6967	Ooatari Sora no Entaku	1	Comedy	5.15
6968	Sorette♡Dakara ne!	1	Slice of Life	5.15
6969	Super Express Mazinger 7	1	Mecha Sci-Fi	5.15
6970	Taku Boda	1	Dementia	5.15
6971	Tsuru Shitae Waka Kan	1		5.15
7834	Fushigi na Somera-chan Special	1	Comedy Magic Slice of Life	5.15
8855	Momoya x Peeping Life: Go en Desu yo! II	5	Comedy Slice of Life	5.15
9680	Super Short Comics	8	Comedy Parody	5.15
6953	PES: Peace Eco Smile - Drive your Heart	1	Cars Romance Sci-Fi	5.16
6955	Banana Mura ni Ame ga Furu	1	Kids Music	5.16
6957	Mura Matsuri	1	Music	5.16
6958	Ni-hiki no Sanma	1	Comedy	5.16
6959	Norakuro Nitouhei: Kyouren no Maki	1	Action Adventure	5.16
6960	Oshiruko	1	Comedy	5.16
6961	Shiawase no Uta	1	Historical Kids Music	5.16
7358	Ahiru no Pekkle no Ahiru no Drakestail	1	Fantasy Kids	5.16
10003	Xi Yang Yang Yu Hui Tai Lang: Zhi Niu Qi Chong Tian	1	Adventure Comedy Kids	5.16
6948	Ashiaraiyashiki no Juunin-tachi.	1	Action Fantasy Seinen Supernatural	5.17
6949	Avignon no Hashi de	1	Kids Music	5.17
6950	Doubutsu Mura no Daisodou	1	Action	5.17
6951	Mayo Elle Otoko no Ko	1	Comedy School	5.17
6952	Nougyou Musume!	1	Comedy	5.17
6954	Salad Land	1	Fantasy	5.17
7855	Gakkou no Yuurei	6	Demons Horror School	5.17
8169	Hoshi no Yuuenchi	1	Adventure Kids Sci-Fi	5.17
8178	Huang Feihong Yong Chuang Tianxia	1	Action Martial Arts Shounen	5.17
8431	Kenka no Ato wa	1	Kids Music Romance	5.17
8547	Komatsu Sakyo Anime Gekijou	24	Comedy Parody Sci-Fi Space	5.17
9068	Ojarumaru: Chitchai Mono no Ookina Chikara	1	Historical Kids	5.17
9154	Owanko	7	Comedy	5.17
9321	Robin-kun to 100 nin no Otomodachi Season 2	13	Kids	5.17
9798	Tobidase! Machine Hiryuu	21	Cars Comedy Parody Shounen	5.17
6944	Doubutsu Mura no Sports Day	1	Action	5.18
6945	Hell Target	1	Horror Sci-Fi Space	5.18
6946	Momotarou no Umiwashi	1	Historical Kids Military	5.18
6947	Spelunker Sensei	1	Comedy	5.18
7708	Din Dong	1	Comedy Parody	5.18
8591	Kumo ni Noru	2	Action Seinen	5.18
8822	Mirai e no Kakehashi: Bridge for Future	6	Slice of Life	5.18
8913	Naniwa Kinyuu Den: Minami no Teiou	2	Comedy Drama Seinen	5.18
9979	White Tree	1	Music Romance	5.18
6934	Chou Kidou Densetsu DinaGiga	2	Mecha Sci-Fi	5.19
6935	Kizuoibito	5	Action Adventure Seinen Thriller	5.19
6936	Mononoke Dance	1	Dementia Music	5.19
6937	Ofuro no Kazoe Uta	1	Kids Music	5.19
6938	Present Made no Michinori	1	Action Music	5.19
6939	Sakura	1	Fantasy	5.19
6941	Tanjou: Debut	2	Romance Slice of Life Supernatural	5.19
6942	Tokyo Loop	1	Comedy Dementia	5.19
6943	Usagi to Kame	1	Fantasy	5.19
7467	Baka Mukashibanashi Movie: Jijii Wars	1	Comedy Fantasy Historical	5.19
7489	Best Care Group	3	Drama Slice of Life	5.19
7759	Duel Masters VSR	51	Action Adventure Comedy Shounen	5.19
8332	Kagerouka-kun	1	Fantasy Kids	5.19
9196	Peeping Life: The Perfect Explosion	10	Comedy Slice of Life	5.19
9581	Sore Ike! Anpanman: Dadandan to Futago no Hoshi	1	Comedy Kids	5.19
6931	Ari Ningen Monogatari	1		5.2
6932	Dreaming Pupa: Yumemiru Bokura	1	Music	5.2
6933	Tekkon Kinkreet Pilot	1	Action Adventure Psychological Supernatural	5.2
7433	Aries: Shinwa no Seizakyuu	1	Fantasy Romance Shoujo Supernatural	5.2
7554	Butazuka	13	Slice of Life	5.2
7622	Chikyuu wo Mitsumete	1	Sci-Fi Space	5.2
7763	Easy Cooking Animation: Seishun no Shokutaku	25	Comedy	5.2
8040	Hawaiian Rock&#039;n Roll	1	Kids Music	5.2
8235	Inui-san!	Unknown	Comedy Shoujo	5.2
8372	Kamiusagi Rope x au Collaboration	Unknown	Comedy Slice of Life	5.2
8421	Kattobase! Dreamers: Carp Tanjou Monogatari	1	Sports	5.2
9232	Pipi Tobenai Hotaru	1	Drama Fantasy	5.2
9624	Sore Ike! Anpanman: Yakisobapanman to Black Sabotenman	1	Comedy Fantasy Kids	5.2
9763	That&#039;s Hanakappa Musical: Pan to Gohan Docchi nano!?	1	Comedy Kids Music	5.2
9866	TWD Express Rolling Takeoff	1	Adventure Sci-Fi	5.2
6914	Kyutai Panic Adventure!	1	Action Martial Arts Shounen Super Power	5.21
6921	0:08	1	Dementia	5.21
6922	Agukaru	5	Magic Slice of Life Supernatural	5.21
6923	Beppu x Peeping Life	1	Comedy Slice of Life	5.21
6924	First Kiss Monogatari	1	Drama Romance	5.21
6925	Henna Omamesan	1	Comedy Parody	5.21
6926	Kawaii Cook-san	1	Slice of Life	5.21
6927	Koro wa Yane no Ue	1	Music	5.21
6928	Mugen Kouro	4	Action Sci-Fi Space	5.21
6929	Nido to Mezamenu Komori Uta	1	Dementia Drama	5.21
6930	Yume no Kakera	1	Music	5.21
8106	Hero Company	2	Comedy Seinen	5.21
9311	RGB Adventure	6	Adventure	5.21
9721	Tanahashi Hiroshi X Mameshiba Pro Wrestling	2	Comedy Sports	5.21
10369	Pico: My Little Summer Story	1	Yaoi	5.21
6910	Columbos	1	Drama Mystery Police	5.22
6911	Dagram vs. Round-Facer	1	Mecha Sci-Fi Space	5.22
6912	Heybot!	Unknown	Comedy Kids Sci-Fi	5.22
6913	Kaeru San Yuushi	1	Adventure Comedy	5.22
6915	Nisou no Kuzu	1	Psychological	5.22
6916	Owari no Chronicle	1	Action Adventure Fantasy Sci-Fi	5.22
6917	Sankou to Tako: Hyakumanryou Chinsoudou	1	Action	5.22
6918	Sin in the Rain	1	Mystery	5.22
6919	The Harmonic Gleam Vibration	1	Dementia	5.22
7499	Biriken	32	Comedy Kids	5.22
7948	Gokuu no Daibouken Pilot	1	Comedy Fantasy	5.22
9244	Poka Poka Mori no Rascal	52	Kids	5.22
9320	Robin-kun to 100 nin no Otomodachi	13	Comedy Kids	5.22
9676	Super Backkom	1	Comedy Kids Super Power	5.22
6902	Goro-chan	1	Kids Music	5.23
6903	Higenashi Gogejabaru	1	Comedy Fantasy Kids Music	5.23
6904	Highway Jenny	1	Fantasy	5.23
6905	Ishindenshin Shiyou	1	Kids Music	5.23
6906	Kago Shintarou Anime Sakuhin Shuu	15	Comedy Dementia Horror Seinen	5.23
6907	Kakumeiteki Broadway Shugisha Doumei	1	Music	5.23
6908	Norakuro Nitouhei: Enshuu no Maki	1	Adventure	5.23
6909	Shinsetsu Kachikachi Yama	1	Action Fantasy Historical	5.23
7341	47 Todoufuken Specials	2	Comedy Kids Romance	5.23
7680	Cynical Hysterie Hour: Henshin!	1	Comedy	5.23
7798	Field ni Soyogu Kaze	1	Shounen Sports	5.23
8390	Kangetsu Ittou: Akuryou Kiri	2	Action Martial Arts Samurai	5.23
9386	Saru Kani Gassen	1	Kids	5.23
10113	Zero Tester: Chikyuu wo Mamore!	28	Action Adventure Mecha Sci-Fi	5.23
10368	Houkago no Shokuinshitsu	2	Drama Romance Yaoi	5.23
6886	The New A-Class.: Next Stage with YOU	1	Cars Music	5.24
6897	Doubutsu Tonarigumi	1	Comedy Historical Kids	5.24
6898	Estima: Sense of Wonder	13	Comedy Historical Sci-Fi	5.24
6899	Numa no Taishou	1	Adventure Comedy	5.24
6900	One: Kagayaku Kisetsu e	4	Drama Supernatural	5.24
6901	The Baby Birds of Norman McLaren	1	Music	5.24
7802	Flowering Heart	26	Kids Magic	5.24
7835	Fushigi na Taiko	1	Kids	5.24
8016	Hane (2016)	1	Music	5.24
8956	Nemuranu Machi no Cinderella: Hirose Ryouichi - Memorial Date	1	Romance	5.24
9201	Peng You Town	1	Kids Slice of Life	5.24
6888	Asylum Session	1	Sci-Fi Seinen	5.25
6889	Houkago no Pleiades: Manner Movie	1	Magic	5.25
6890	Karo to Piyobupt: Ouchi	1	Comedy	5.25
6891	Kitsune to Circus	1	Comedy Kids	5.25
6892	Master of Torque	4	Action Sci-Fi	5.25
6893	Onaka no Ookina Ouji-sama	1	Music	5.25
6894	Psychedelic Afternoon	1	Music	5.25
6895	Sleepy	1	Dementia	5.25
6896	Yume	1	Dementia	5.25
7361	Ahiru no Pekkle no Minikui Ahiru no Ko	1	Fantasy Kids	5.25
7391	Alice in Dreamland	1	Adventure Fantasy	5.25
7408	Anime Roukyoku Kikou Shimizu no Jirochouden	30	Comedy Drama Historical	5.25
7705	Dennou Sentai Voogie&#039;s★Angel Gaiden: Susume! Super★Angels!	2	Action Comedy Mecha Parody Sci-Fi	5.25
7739	Dosukoi! Wanpaku Dohyou	1	Drama Sports	5.25
7771	Ehon Yose	50	Historical Horror Kids	5.25
7912	Gensei Shugoshin P-hyoro Ikka OVA	3	Adventure Fantasy Shoujo	5.25
7936	Go! Go! Kadendanshi	78	Action Seinen	5.25
7937	Go! Go! Kadendanshi 2nd Season	78	Action Seinen	5.25
8023	Happening Star ☆	1	Comedy Sci-Fi	5.25
8096	Hello Kitty to Miyou: Aesop Monogatari	4	Fantasy Kids	5.25
8389	Kaneko Misuzu: Yasashisa no Fuukei	1	Drama Kids	5.25
8644	Life!	Unknown	Comedy Slice of Life	5.25
9091	Omakase! Miracle Cat-dan	32	Comedy Kids Super Power	5.25
9109	Onimaru: Senjou ni Kakeru Itsutsu no Seishun	1	Action Adventure	5.25
9260	Porong Porong Pororo 4	26	Cars Kids	5.25
9389	Saru Kani Gassen: Ijimekkozaru to Shoujiki Kani-san	1	Comedy Kids	5.25
9422	Sensuikan ni Koi wo Shita Kujira no Hanashi	1	Kids	5.25
9578	Sore Ike! Anpanman: Baikinman vs. Baikinman!?	1	Comedy Fantasy Kids	5.25
9722	Tanbai Haru Tookaraji	1	Drama Kids	5.25
9897	Ultraman Graffiti	6	Action Comedy Parody Super Power	5.25
10081	Yukidaruma Kazoku	1	Kids Music	5.25
10094	Yurumi to Shimeru	1	Comedy Sci-Fi	5.25
6875	Akaoni to Aooni no Tango	1	Music	5.26
6876	Hanare Toride no Yonna	1	Adventure Fantasy	5.26
6877	JaJa Uma! Quartet	2	Adventure Comedy Fantasy Magic Shounen	5.26
6878	Kiekaketa Monogataritachi no Tame ni	1	Dementia	5.26
6879	Lies Lies.	1	Music	5.26
6880	Mormorando	1		5.26
6881	Odin: Koushi Hansen Starlight	1	Action Adventure Drama Sci-Fi	5.26
6882	Poker	1	Music	5.26
6883	Potecco Babies	2	Comedy	5.26
6884	Sora no Momotarou	1	Adventure Comedy Military	5.26
6885	TANK S.W.A.T. 01	1	Mecha	5.26
6887	Tobacco wa Dasai	1	School Slice of Life	5.26
7504	Bloody Bunny	26	Comedy	5.26
8709	Mameshi-Pamyu-Pamyu	9	Comedy Parody	5.26
9648	Star Dust	1	Sci-Fi Space	5.26
10001	Xi Yang Yang Yu Hui Tai Lang: Zhi Hu Hu Sheng Wei	1	Adventure Comedy Kids	5.26
10002	Xi Yang Yang Yu Hui Tai Lang: Zhi Kaixin Chuang Long Nian	1	Adventure Comedy Kids	5.26
6866	Aoki Honoo	1	Drama Romance Seinen	5.27
6867	Chainsaw Maid	1	Comedy Horror Supernatural Thriller	5.27
6868	Fuyu no Yoru no Ohanashi	1	Kids Music Slice of Life	5.27
6869	Kakegae no	1	Drama	5.27
6870	Karo to Piyobupt: Sandwich	1	Comedy	5.27
6871	Kiseki	1	Dementia	5.27
6872	Mogura no Adventure	1	Adventure Kids	5.27
6873	Sin: The Movie	1	Action Horror Police Sci-Fi Shounen Supernatural	5.27
6874	Tenbatsu Angel Rabbie☆	1	Comedy Magic Sci-Fi	5.27
7685	Daisougen no Chiisana Tenshi Bush Baby Specials	2	Adventure Drama	5.27
8137	Himitsukessha Taka no Tsume The Movie 3: http://takanotsume.jp wa Eien ni	1	Comedy Parody Super Power	5.27
9208	Pepsi Nex x 009 Re:Cyborg	3	Action Comedy	5.27
10092	Yumemi Douji	1	Drama	5.27
6853	Deva Zan	1	Action Fantasy	5.28
6854	Ghost	1	Dementia	5.28
6855	Hal &amp; Bons	5	Comedy Slice of Life	5.28
6856	Jubilee	1	Dementia Music	5.28
6858	Kitakaze Kozou no Kantarou	1	Music Samurai	5.28
6859	Makyuu Senjou	2	Action Sci-Fi	5.28
6860	Promised Town	1	Action Mecha Sci-Fi	5.28
6861	Speed	1	Comedy	5.28
6862	Tensai Banpaku Opening	1	Dementia	5.28
6863	Time Bokan 24	Unknown	Adventure Comedy Mecha	5.28
6864	Umo	1	Music	5.28
6865	Utsukushii Hoshi	1	Dementia	5.28
7563	Celebration and Chorale	1	Music	5.28
7733	Dorami-chan: A Blue Straw Hat	1	Fantasy Kids	5.28
8600	Kuro	1	Kids Music	5.28
8820	Miracle! Mimika	225	Kids Slice of Life	5.28
6851	Dragon Fist	1	Action Martial Arts Shoujo	5.29
6852	Tora-chan no Kankan Mushi	1	Drama	5.29
7348	Ad Lib Anime Kenkyuujo	38	Comedy	5.29
7484	Beer Mukashi Mukashi	1	Historical	5.29
7567	Chalk-iro no People	1	Romance Seinen	5.29
7782	Elite Jack!!	Unknown	School Shoujo	5.29
7918	Gijinka de Manabo!	1	Comedy Sci-Fi	5.29
8234	Introspection	1	Dementia	5.29
8375	Kamiwaza Wanda	Unknown	Kids Sci-Fi	5.29
9210	Perman: Copy World no Nazo	1	Comedy Kids	5.29
9460	Shin Bikkuriman	72	Comedy Fantasy	5.29
9522	Shounen Ninja Kaze no Fujimaru	65	Action Adventure Samurai Shounen	5.29
9544	Sinbad: Soratobu Hime to Himitsu no Shima Pilot	1	Adventure	5.29
10367	Kimera	1	Action Horror Sci-Fi Supernatural Vampire Yaoi	5.29
6844	Afro-Ken	1	Comedy Kids	5.3
6845	Hana no Hanashi	1	Slice of Life	5.3
6846	Makura no Danshi: Sono Ato no Makura no Danshi	1	Shoujo	5.3
6847	Roba Chotto Suneta	1	Music	5.3
6848	Ryokunohara Meikyuu	1	Dementia Drama Psychological Romance Shounen Ai	5.3
6849	Sougiya to Inu	1	Dementia Horror	5.3
6850	Yellow	1	Psychological	5.3
6857	Kimi wa Sou Kimeta	1	Music	5.3
8003	Hana no Asukagumi! 2: Lonely Cats Battle Royale	1	Adventure Drama Shoujo	5.3
8679	Magical Hat	33	Adventure Comedy Fantasy Kids	5.3
9554	Solar I.II.III	1	Action Mecha Shounen	5.3
9580	Sore Ike! Anpanman: Bokura wa Hero	1	Comedy Fantasy Kids	5.3
6838	Cabbage UFO	1	Kids Music	5.31
6839	Fight!!	1	Action Fantasy Supernatural	5.31
6840	Idol Memories	12	Music	5.31
6841	Izakaya no Ichiya	1	Action	5.31
6842	New York Trip	1	Dementia	5.31
6843	Oira no Ski	1	Comedy Sports	5.31
6920	Urmă (Zanzou)	1	Music Supernatural Vampire	5.31
7617	Chikara to Onna no Yo no Naka	1	Historical	5.31
8146	His Lipstick	1	Comedy Kids	5.31
8469	Kikansha Yaemon: D51 no Daibouken	1	Fantasy Kids	5.31
9083	Okane wa Mawaru: Kurashi to Kinyuu	1	Slice of Life	5.31
9265	Pororo&#039;s English Show	13	Kids Music	5.31
9900	Ultraman M78 Gekijou: Love and Peace	1	Comedy Kids Parody Sci-Fi Space Super Power	5.31
6834	Gulliver Funtouki	1	Adventure	5.32
6835	Kogane no Hana	1	Action Adventure Fantasy Historical	5.32
6836	Run=Dim	13	Action Mecha Sci-Fi	5.32
6837	Spectral Force Chronicle Divergence	1	Fantasy	5.32
7574	Channel 5.5	4	Comedy Parody	5.32
7770	Eguchi Hisashi no Nantoka Narudesho!	1	Parody Shoujo Sports	5.32
9535	Shuukan Shimakou	11	Comedy	5.32
9545	Singles	1	Romance Shoujo	5.32
6819	Azure Nihon Data Center	1	Action	5.33
6825	Animegatari x Ghost in the Shell Collab Eizou	1	Comedy Sci-Fi	5.33
6826	Aoi Chou	1	Music	5.33
6827	Ari-chan	1	Comedy Music	5.33
6828	Ark IX	1	Action	5.33
6829	Hon Ran	1	Action Magic Martial Arts	5.33
6830	Hyper-Psychic Geo Garaga	1	Action Adventure Sci-Fi	5.33
6831	Kowabon	13	Horror	5.33
6832	Peeping Life: Shinkon-chan Kansai ni Irasshai	1	Comedy Slice of Life	5.33
7451	AWOL	12	Action Military Sci-Fi Space	5.33
7590	Chi-Sui Maru Specials	2	Comedy	5.33
7606	Chii Jiaan Chuaanqii	26	Action Adventure Fantasy	5.33
7877	Ganbare!! Tabuchi-kun!! Gekitou Pennant Race	1	Comedy Sports	5.33
7938	Go! Go! Vejitan	1	Kids Sci-Fi Space	5.33
7973	Guilstein	1	Action Horror Sci-Fi	5.33
7994	Hajimete no Eigo: Sekai Meisaku Douwa	18	Fantasy Kids	5.33
8315	Kachikachi Yama	1	Drama	5.33
8640	Lena lena	13	Slice of Life	5.33
8707	Malta no Bouken	12	Kids Slice of Life	5.33
8882	Mugen Senki Portriss	52	Action Mecha Sci-Fi Shounen	5.33
8923	Nanocore 2nd Season	Unknown	Action Sci-Fi	5.33
9029	Notteke Explet&#039;s	26	Kids	5.33
9219	Piano Specials	4	Drama Music Romance Shoujo Slice of Life	5.33
9385	Saru Getchu Movie: Ougon no Pipo Helmet - Ukki Battle	1	Adventure Comedy Shounen	5.33
9494	Shiritori Mambo	1	Kids Music	5.33
9559	Son Gokuu Silk Road wo Tobu!!	1	Adventure Fantasy	5.33
9595	Sore Ike! Anpanman: Kokin-chan to Aoi Namida	1	Comedy Fantasy Kids	5.33
9596	Sore Ike! Anpanman: Kokin-chan to Namida no Christmas	1	Comedy Fantasy Kids	5.33
9607	Sore Ike! Anpanman: Omusubiman	1	Kids	5.33
9801	Tobidasu Ehon 3D	1	Kids	5.33
9863	Tu Xia Chuanqi	1	Action Adventure Comedy	5.33
9947	Wala! Pyeon-uijeom The Animation	24	Slice of Life	5.33
9998	Xabungle Graffiti	1	Mecha	5.33
10067	Yonimo Kimyou na Man☆Gatarou	8	Comedy	5.33
6817	20-dai no Heya-hen	1	Slice of Life	5.34
6818	2010	1	Music	5.34
6820	Eat You Up/Bunny	1	Music	5.34
6821	Makai Tenshou	2	Action Historical Samurai Supernatural	5.34
6822	Suzume no Oyado	1	Fantasy	5.34
6823	Tentoumushi no Otomurai	1	Music	5.34
6824	UFO Gakuen no Himitsu	1	Sci-Fi Space	5.34
6833	Doamaiger D	13	Action Comedy Mecha	5.34
8031	Harinezumi	1	Music	5.34
6809	Donna Donna	1	Music Slice of Life	5.35
6810	Enkinhou no Hako: Hakase no Sagashimono	1	Slice of Life	5.35
6811	Oshiri Kajiri Mushi (TV)	20	Comedy Kids	5.35
6812	Shiawasette Naani	1	Fantasy	5.35
6813	Tatamp	1	Music	5.35
6814	Tekken	2	Action Adventure Martial Arts Sci-Fi	5.35
6815	Tenpou Suikoden Neo	5	Historical	5.35
6816	Yami no Purple Eye	1	Horror Music Mystery Psychological Shoujo Supernatural	5.35
7352	Agigongryong Doolie (1988)	7	Kids	5.35
7387	Akuma-kun: Youkoso Akuma Land e!!	1	Adventure Fantasy Horror Magic Supernatural	5.35
7735	Dorami-chan: Wow The Kid Gang of Bandits	1	Fantasy	5.35
7817	Fujiko Fujio A no Mumako	1	Horror Supernatural	5.35
8204	Ijigen Gattai Mojibakeru Z	1	Game Kids	5.35
9035	Nyamen: Tenkai Daiichi Joshi Koukou Bunka Matsuri Tokubetsu Eizou	1	Music	5.35
9184	Pecola	26	Kids	5.35
9488	Shiodome Cable TV	22	Comedy	5.35
9577	Sore Ike! Anpanman: Baikinman to 3 Bai Punch	1	Comedy Fantasy Kids	5.35
9585	Sore Ike! Anpanman: Happy no Daibouken	1	Comedy Kids	5.35
9602	Sore Ike! Anpanman: Minna Atsumare! Anpanman World	1	Comedy Fantasy Kids	5.35
9894	Ultra Dino Makera	1	Action Kids	5.35
6799	Ai Tenchi Muyou! Recaps	10	Comedy Sci-Fi Shounen	5.36
6800	Hanasaka Jijii	1	Comedy Drama	5.36
6801	Hane	1	Music	5.36
6802	Karo to Piyobupt: Ame no Hi	1	Fantasy	5.36
6803	Kurayami Santa	13	Historical Supernatural	5.36
6804	Litchi DE Hikari Club	8	Comedy Drama Horror Psychological Romance	5.36
6805	Mahoutsukai Nara Miso wo Kue!	1	Fantasy Magic School	5.36
6806	Maji de Otaku na English! Ribbon-chan: Eigo de Tatakau Mahou Shoujo	12	Comedy Magic	5.36
6807	Ni-hiki no Sanma (1968)	1	Comedy	5.36
6808	Wamono	1	Music	5.36
7399	Anata ga Furikaeru Toki	1	Romance School Shoujo	5.36
7411	Animegatari	Unknown	Comedy	5.36
7725	Don: Gokudou Suikoden	2	Drama	5.36
7878	Ganbare-bu Next!	6	Comedy Sports	5.36
8299	Justeen	1	Action Mecha Sci-Fi	5.36
8769	Megumi to Taiyou: Kajuu Gummi Tweet Love Story	1	Romance Slice of Life	5.36
9266	Pororo-wa Noraehaeyo	14	Kids Music	5.36
9313	Ribbon no Kishi Pilot	1	Adventure	5.36
9918	Usagi no Mofy	13	Kids	5.36
8872	Morizo to Kikkoro	52	Kids	5.42
9990	Wonder-kun no Hatsu Yume Uchuu Ryokou	1	Adventure	5.36
6786	Fukashigi no Kazoekata	1	Kids	5.37
6787	Futon	1	Dementia	5.37
6789	Hone Hone Rock	1	Kids Music	5.37
6790	Jikuu Bouken Nuumamonjaa	1	Action Comedy Fantasy	5.37
6791	Love &amp; Gift	1	Slice of Life	5.37
6792	Maze	1		5.37
6793	Mirakururun Grand Purin!	1	Kids Music	5.37
6794	Nekketsu Uchuujin	1	Comedy Sci-Fi	5.37
6795	Seijuuki Cyguard	1	Mecha Sci-Fi Supernatural	5.37
6796	Shinpi no Hou	1	Adventure Supernatural	5.37
6797	Suisei	1	Comedy Dementia	5.37
6798	Tori	1	Dementia	5.37
8131	Himitsukessha Taka no Tsume Gaiden: Mukashi no Yoshida-kun	9	Comedy Historical Parody	5.37
6773	A.LI.CE	1	Sci-Fi	5.38
6774	Ai wa KAT-TUN	5	Comedy	5.38
6775	Black Ocean	1	Music	5.38
6776	Chou no Sainan	1	Action	5.38
6777	Komachi to Dangorou	2	Adventure Comedy Kids Sci-Fi	5.38
6778	Kremlin	5	Comedy Seinen	5.38
6779	Oppai ga Ippai	1	Kids Music	5.38
6780	Pacusi no Uta	1	Comedy	5.38
6781	Peeping Life: The Perfect Evolution Specials	3	Comedy Slice of Life	5.38
6782	Space Neko Theater	1	Comedy	5.38
6783	Tanu no Magical Holiday	1	Kids Music	5.38
6784	Urawa no Usagi-chan Special	1	Comedy School Slice of Life	5.38
6785	Youkoso Uchuujin	1	Comedy	5.38
6788	Green Dakara x Bakemono no Ko	2	Music	5.38
7522	Bokutachi no Peace River	1	Adventure Drama Kids Supernatural	5.38
8026	Happy Jozy	Unknown	Comedy	5.38
8519	Kobutori	1	Comedy Demons	5.38
8619	Kyoufu Shinbun	2	Horror Shounen	5.38
8755	Mayutoro The Toons	33	Comedy Fantasy Kids	5.38
8780	Meoteoldosawa Ttomae	1	Action Adventure Fantasy Magic Shounen	5.38
8946	Neko no Dayan	52	Kids Magic	5.38
8958	Neo Faust	1	Supernatural	5.38
9006	Noel no Fushigi na Bouken	1	Adventure Comedy Fantasy	5.38
9383	Sanzoku Diary	1	Seinen Slice of Life	5.38
9587	Sore Ike! Anpanman: Hiya Hiya Hiyariko to Bafu Bafu Baikinman	1	Comedy Fantasy Kids	5.38
9628	Sore Ike! Anpanman: Yuuki no Hana ga Hiraku Toki	1	Comedy Fantasy Kids	5.38
9629	Sore Ike! Anpanman: Yuuki to Honoo to Christmas	1	Comedy Fantasy Kids	5.38
10020	Xiyue Qi Tong (2006)	1	Action Adventure Fantasy	5.38
10122	ZIP! x Peeping Life TV: Cool Japan Saizensen	5	Comedy Slice of Life	5.38
6764	Akiba-chan	10	Comedy Kids Slice of Life	5.39
6765	Carol	1	Fantasy Magic Shoujo	5.39
6766	Chou Akuukan Bouheki Cheese Napolitan	1	Music	5.39
6767	Devour Dinner	1	Dementia Fantasy	5.39
6768	Koisuru Niwatori	1	Music	5.39
6769	Mahou no Chocolate	1	Drama Romance	5.39
6771	R²: Rise R to the Second Power	1	Music	5.39
6772	Yuki no Hi no Tayori	1	Music	5.39
8251	Itoshi no Betty Mamonogatari	1	Fantasy Romance Seinen	5.39
8659	Lord of Vermillion III Special Anime Movie	1	Action Adventure Fantasy	5.39
9623	Sore Ike! Anpanman: Utatte Teasobi! Anpanman to Mori no Takara	1	Comedy Fantasy Kids	5.39
9899	Ultraman Kids: M7.8 Sei no Yukai na Nakama	1	Kids Super Power	5.39
6753	Anison Nippon	1	Action Sci-Fi	5.4
6754	Chiryokumaru	1	Action	5.4
6755	Hana to Chou	1	Fantasy	5.4
6756	Henna ABC	1	Kids Music	5.4
6757	Momotarou: Umi no Shinpei	1	Action Military	5.4
6758	Nana-iro Megane	1	Music	5.4
6759	Nara Shika Monogatari	1	Comedy	5.4
6760	Saboten ga Nikui	1	Comedy Kids Music	5.4
6761	Taiko no Tatsujin: 15 Shuunenkinen Short Animation	1	Game	5.4
6762	TOTO Green Challenge	1	Slice of Life	5.4
6763	Wanna-Be&#039;s	1	Action Comedy Sports	5.4
7373	Ajjishin da Tsunami wa? Jibun no Inochi wa Jibun de Mamoru	1	Drama Kids	5.4
7393	Aloha! Youkai Watch: Rakuen Hawaii de Geragerapou!!	Unknown	Kids Slice of Life Supernatural	5.4
7513	Boku wa Kimi wo Warawanai	1	Music	5.4
7784	En En Nikoli	3	Adventure Kids Music	5.4
8221	Ima no Watashi ni Dekiru Koto...	2	Sci-Fi	5.4
8289	Joukyou Monogatari	1	Slice of Life	5.4
8566	Kosys! Lite: Tsuyoku Suishou Bansaku no Sunglasses - Password Tsukai-mawashi no Jutsu	1	Comedy Slice of Life	5.4
9001	Nippon Tanjou	5	Historical	5.4
9096	on-chan Yume Power Daibouken!	1	Fantasy	5.4
9347	Ryoukan-san	1	Historical	5.4
9532	Shura ga Yuku	1	Drama Seinen	5.4
9853	Tsunagaru Animal	1	Kids	5.4
6746	Ahiru Rikusentai	1	Action Historical Kids Military	5.41
6747	Bishoujo Yuugekitai Battle Skipper	3	Comedy Mecha Sci-Fi	5.41
6748	Broots	1	Mecha Sci-Fi	5.41
6749	Cool Cool Bye	1	Action Adventure Fantasy	5.41
6750	Genma Taisen: Shinwa Zenya no Shou	13	Adventure Drama Horror Sci-Fi Shounen Supernatural	5.41
6751	Nandarou	1	Comedy	5.41
6752	Ring of Gundam	1	Mecha Sci-Fi Space	5.41
8365	Kamiusagi Rope 2	12	Comedy Slice of Life	5.41
8704	Makoto-chan	1	Comedy	5.41
9613	Sore Ike! Anpanman: Shabondama no Purun	1	Comedy Fantasy Kids	5.41
6737	Balloon	1	Dementia	5.42
6738	Benkei tai Ushiwaka	1	Action Comedy	5.42
6739	Digital Devil Story: Megami Tensei	1	Adventure Demons Drama Fantasy Horror Mystery Psychological School Supernatural	5.42
6740	Netrun-mon the Movie	1	Comedy	5.42
6741	Oira no Yakyuu	1	Sports	5.42
6742	Pacusi	18	Comedy	5.42
6743	Picotopia	1	Fantasy Music	5.42
6744	Soukihei MD Geist	1	Mecha Military Sci-Fi	5.42
6745	Toei Robot Girls	1	Mecha Parody Sci-Fi	5.42
7497	Bikkuriman: Moen Zone no Himitsu	1	Action Adventure Kids	5.42
8009	Hanakappa	Unknown	Comedy Kids	5.42
9259	Porong Porong Pororo 3	52	Kids Sci-Fi	5.42
9818	Tomodachi 8-nin	Unknown	Comedy	5.42
9873	Uchuu Kaizoku Mito no Daibouken Pilot	1	Comedy Sci-Fi	5.42
9882	UFO Nitsukamatta Kodomo-tachi	1	Kids	5.42
6734	Tarzan	1	Dementia	5.43
6735	Toushinden	2	Action Martial Arts	5.43
6736	Yakimochi Caprice	2	Slice of Life	5.43
6770	Meitantei Gordon	1	Comedy Mystery	5.43
7406	Anime Koten Bungaku Kan	6	Historical Kids	5.43
7970	Green Saver	26	Adventure Kids	5.43
8399	Kappamaki	130	Comedy Slice of Life	5.43
8475	Kiki to Lala no Mamatte Suteki!	1	Kids Magic	5.43
8794	Mikosuri Han-Gekijou	1	Comedy Parody	5.43
8824	Mirai Kara Kita Shounen Super Jetter	52	Action Comedy Sci-Fi Super Power	5.43
8920	Nanja Monja Obake	1	Horror Kids	5.43
9619	Sore Ike! Anpanman: Tobase! Kibou no Handkerchief	1	Comedy Fantasy Kids	5.43
9861	Tsuzuki wo Kangaeru Monogatari	4	Drama	5.43
9938	Virtual Star 2000	6	Action	5.43
6724	Ano Ko ni 1000%	1	Romance School Shoujo	5.44
6725	Answer	1	Music Supernatural Vampire	5.44
6726	Coffee Break	1		5.44
6727	Fuku-chan no Sensuikan	1	Comedy Historical Military	5.44
6728	Idol Ace	1	Comedy	5.44
6729	Kitsutsuki Keikaku	1	Slice of Life	5.44
6730	Orchestra	1	Music	5.44
6731	Recorder	1	Dementia Music	5.44
6732	Shin Tenchi Souzou	1	Comedy	5.44
6733	Soul Reviver	1	Action Seinen Supernatural	5.44
7363	Ahiru no Pekkle no Suieitaikai wa Oosawagi	1	Fantasy Kids	5.44
8211	Ikemen Kyuugo-tai Nurse Angels	10	Comedy	5.44
8721	Manga Doushite Monogatari OVA	2	Adventure Comedy Kids	5.44
8779	Meoteoldosawa 108 Yogoe	1	Action Adventure Fantasy Shounen	5.44
9041	Nyuru Nyuru!! Kakusen-kun	25	Comedy	5.44
9217	Phantom Yuusha Densetsu	1	Action Drama Military Seinen	5.44
9262	Pororo Daemoheom	1	Adventure Kids	5.44
9493	Shiratori Reiko de Gozaimasu!	1	Comedy Romance	5.44
9592	Sore Ike! Anpanman: Keito no Shiro no Christmas	1	Comedy Fantasy Kids	5.44
9702	Taiheiyou ni Kakeru Niji	1	Drama Kids Slice of Life	5.44
6711	Daimajuu Gekitou: Hagane no Oni	1	Horror Mecha Sci-Fi	5.45
6712	Dangobei Torimonochou: Hirake - Goma no Maki	1	Action Adventure Comedy	5.45
6713	Happy Weekend	1	Kids Music	5.45
6714	Kangaroo no Tanjoubi	1	Adventure	5.45
6715	Kumo ga Haretara	1	Music	5.45
6716	Lightning Trap: Leina &amp; Laika	1	Action Sci-Fi	5.45
6717	Master of Torque 2	1	Action Sci-Fi	5.45
6718	Mushiba Tetsudou	1	Adventure Fantasy Kids	5.45
6719	Mutant Turtles: Choujin Densetsu-hen	2	Action Adventure Comedy Sci-Fi Super Power	5.45
6720	Omake	1	Comedy	5.45
6721	Saru Masamune	1	Adventure Military	5.45
6722	Swimming	1	Dementia	5.45
6723	Urawa no Usagi-chan	12	Comedy School Slice of Life	5.45
7762	Eagle Sam	51	Comedy Sports	5.45
8296	Jungle Wars	1	Adventure Kids	5.45
9324	Robocar Poli 2	26	Cars Kids Police	5.45
9962	Washimo 2nd Season	24	Comedy Kids School Sci-Fi Slice of Life	5.45
10056	Yeonghongibyeong Lazenca	13	Action Adventure Mecha Sci-Fi	5.45
6689	Kyutai Panic Adventure Returns!	1	Action Shounen Super Power	5.46
6704	Ijime: Ikenie no Kyoushitsu	1	Drama Shoujo	5.46
6705	Keitai Shoujo	6	Comedy Drama Romance School	5.46
6706	LolitA☆Strawberry in Summer	1	Music	5.46
6707	Luigi&#039;s Toy Adventure	1	Adventure	5.46
6708	Many Things SD Gundam	2	Comedy Mecha Parody	5.46
6709	Violence Jack: Harlem Bomber-hen	1	Action Drama Horror	5.46
6710	Yami no Shihosha Judge	1	Horror Seinen Supernatural	5.46
8741	MapleStory Special	1	Action Comedy Fantasy Kids	5.46
9795	Time-Patrol Bon: Fujiko F. Fujio Anime Special - SF Adventure	1	Action Adventure	5.46
10055	Yell	1	Music	5.46
6696	3-tsu no Hanashi	1	Fantasy	5.47
6697	Ame-iro Cocoa in Hawaii	12	Comedy Slice of Life	5.47
6698	Bokura no Hero	1	Music	5.47
6699	Compiler	2	Comedy Drama Romance Sci-Fi	5.47
6700	Diabolik Lovers Recap	1	Shoujo Vampire	5.47
6701	Eien no Hou	1	Fantasy Sci-Fi	5.47
6702	Explorer Woman Ray	2	Action Adventure	5.47
6703	Onigiri	13	Comedy Fantasy Supernatural	5.47
8135	Himitsukessha Taka no Tsume The Movie 1: Soutou wa Nido Shinu	1	Comedy Parody Super Power	5.47
8236	Inumarudashi	4	Comedy	5.47
8548	Konchuu Monogatari Tentoumu Chu! to Mitsubachi Hatsu Chu!	10	Music	5.47
8574	Kouchuu Ouja Mushiking: Greatest Champion e no Michi	1	Adventure Fantasy	5.47
8671	Mach Girl	26	Cars Comedy	5.47
8797	Milky Passion: Dougenzaka - Ai no Shiro	1	Josei Romance	5.47
9162	Pac-World	52	Adventure Comedy Sci-Fi	5.47
9417	Senjutsu Choukoukaku Orion	1	Action Adventure Comedy Fantasy Sci-Fi	5.47
9584	Sore Ike! Anpanman: Gomira no Hoshi	1	Comedy Fantasy Kids	5.47
9590	Sore Ike! Anpanman: Kaiketsu Naganegiman to Doremi Hime	1	Comedy Fantasy Kids	5.47
10063	Yoligongju Loopy	6	Kids Magic	5.47
6684	Call Me Tonight	1	Comedy Horror Romance Sci-Fi	5.48
6685	Charady no Joke na Mainichi	365	Comedy	5.48
6686	Inferno Cop: Fact Files	12	Action Comedy Police	5.48
6687	Itsumademo Tabibito	1	Drama Music	5.48
6688	Kujira (1952)	1	Fantasy	5.48
6690	Mikan-bune	1	Historical	5.48
6691	Neo Satomi Hakkenden: Satomi-chanchi no Hachi Danshi	1	Comedy	5.48
6692	Oshiri Kajiri Mushi (TV) 3rd Season	10	Comedy Kids	5.48
6693	Princess Army: Wedding★Combat	2	Action Martial Arts Romance Shoujo	5.48
6694	Sun Set Sun	1	Music	5.48
6530	Marine Dreamin&#039;	1	Music	5.63
6695	Wagamama High Spec	12	Comedy School	5.48
7354	Agigongryong Doolie (Movie)	1	Kids	5.48
7390	Alexandros no Ketsudan	1	Historical	5.48
7651	Circuit no Ookami II: Modena no Ken	1	Cars Seinen	5.48
6673	Buddy Spirits	1	Action Mecha	5.49
6674	Chinka	1	Action	5.49
6675	Harbor Light Monogatari: Fashion Lala yori	1	Shoujo	5.49
6676	Hikenai Guitar wo Hikundaze	1	Music	5.49
6677	Ikeike! Momon-chan Specials	3	Comedy	5.49
6678	Nora	1	Adventure Sci-Fi Space	5.49
6679	Sanjougattai Transformers Go!	10	Mecha Sci-Fi Shounen	5.49
6680	Tarou-san no Kisha	1	Action	5.49
6681	Top wo Nerae 2! Kagaku Kouza	3	Sci-Fi	5.49
6682	Yasashii Lion	1	Fantasy Kids Music	5.49
6683	Zekkyou Gakkyuu: Tensei	2	Horror Shoujo Supernatural	5.49
8684	Mahou no Princess Minky Momo: Hitomi no Seiza - Minky Momo Song Special	1	Magic Music Shoujo	5.49
9285	Puu-Neko	11	Comedy	5.49
6661	Macross Fufonfia Specials	3	Comedy Parody	5.5
6662	Mini-Chara Macross	1	Comedy Mecha Parody	5.5
6663	Peeping Life: The Perfect Emotion Special	1	Comedy Slice of Life	5.5
6664	Pony Metal U-GAIM Promotion Film	1	Action Mecha Music Parody Sci-Fi	5.5
6665	Saiko Robot Kombock	25	Mecha Sci-Fi	5.5
6666	Samurai Spirits: Haten Gouma no Shou	1	Adventure Historical Samurai Shounen	5.5
6667	Sentou Yousei Shoujo Tasukete! Mave-chan	1	Comedy Parody Sci-Fi Shounen Super Power	5.5
6668	The Tales of Rien Village #1: &quot;Toilet ni Ittokiya&quot;	1	Fantasy	5.5
6669	Tobacco to Hai	1	Adventure	5.5
6670	Venus Project: Climax	6	Action Music	5.5
6671	Zekkyou Gakkyuu	3	Shoujo Supernatural	5.5
6672	Zonmi-chan: Meat Pie of the Dead	1	Comedy Horror Supernatural	5.5
7353	Agigongryong Doolie (2009)	26	Adventure Kids	5.5
7462	Bad Badtz-Maru no Ari to Kirigirisu	1	Fantasy Kids	5.5
7571	Chan Shuo A Kuan	1	Comedy Slice of Life	5.5
7586	Cherry Blossom	1	Drama Kids	5.5
7598	Chibinacs	25	Comedy	5.5
7717	Dokgotak: Taeyang-eul Hyanghae Deonjyeola	1	Sports	5.5
7908	Genki!! Ekoda-chan	22	Comedy	5.5
7917	Giga Tribe	39	Comedy Parody Shounen Super Power	5.5
7947	Gokudou Sakaba Denden: Gokudou Daisensou Gaiden	3	Comedy	5.5
8205	Ijime Juuyon-sai no Message	1	Drama	5.5
8320	Kachikachi Yama: Umi Yama-hen	1	Fantasy	5.5
8336	Kai Douryoku Real	1	Dementia Sci-Fi	5.5
8394	Kansuke-san to Fushigi na Jitensha	1	Fantasy Kids	5.5
8551	Konna Watashitachi ga Nariyuki de Heroine ni Natta Kekka www	1	Comedy Fantasy	5.5
8635	Learn to Love	1	Dementia	5.5
8665	Lupin Shanshei Pilot	1	Comedy Parody	5.5
8678	Maemilggot Unsu Joeun Nal Geurigo Bombom	1	Drama Slice of Life	5.5
8712	Mameshiba the DVD Green Pea-shiba no Kutsujoku	4	Comedy	5.5
8803	Mina no Mura no Gomi Soudou	1	Drama Kids	5.5
8992	Ninja-tai Gatchaman ZIP!	475	Comedy Parody	5.5
9009	Nonki na Tou-san Ryuuguu Mairi	1	Supernatural	5.5
9015	Norakuro Compilation OVA	1	Comedy	5.5
9057	Offside	1	Action Drama Sports	5.5
9072	Ojiichan ga Nokoshite Kureta Mono: Moetemo Moenai? Moenikui!	1	Slice of Life	5.5
9141	Otogi no Sekai Ryokou	1	Adventure	5.5
9269	Present	1	Drama Kids	5.5
9510	Shou-chan Sora wo Tobu	1	Horror Sci-Fi	5.5
9571	Sore Ike! Anpanman: Anpanman to Kaizoku Lobster	1	Adventure Fantasy Kids	5.5
9601	Sore Ike! Anpanman: Minami no Umi wo Sukue!	1	Comedy Fantasy Kids	5.5
9782	The Primitives: Bongo and Grunge	52	Comedy	5.5
9789	Tick &amp; Tack	10	Fantasy Kids	5.5
9963	Washimo 3rd Season	44	Comedy Kids School Sci-Fi Slice of Life	5.5
6655	Insomniac	1	Music	5.51
6656	Kämpfer Picture Drama	1	Comedy	5.51
6657	Kouryuu no Mimi: Mina no Shou	2	Action Drama Super Power	5.51
6658	Maji de Otaku na English! Ribbon-chan: Eigo de Tatakau Mahou Shoujo - The TV	10	Comedy Magic	5.51
6659	SOS TV Walpurgis Night Fever Episode 0	1	Comedy Sci-Fi	5.51
6660	You Shoumei Bijutsukan Line	1	Fantasy	5.51
7696	Dareka no Santa Claus	1	Music	5.51
7967	Greed	1	Adventure Fantasy	5.51
8005	Hana no Mahoutsukai Mary Bell: Phoenix no Kagi	1	Adventure Fantasy Magic Shoujo	5.51
6647	Akai Boushi	1	Music Slice of Life	5.52
6648	Elysium	1	Action Mecha Sci-Fi	5.52
6649	Haja Kyosei G Dangaiou	13	Action Mecha Sci-Fi	5.52
6650	Happy Kappy Recap	1	Comedy Fantasy Shoujo	5.52
6651	Hiyoko Gumo	1	Fantasy Kids Music	5.52
6652	makemagic	1	Fantasy Music	5.52
6653	Modern No.2	1		5.52
6654	Summer Train!	1	Slice of Life	5.52
7547	Bunbuku Chagama (1958)	1		5.52
7620	Chikyuu Monogatari Telepath 2500	1	Adventure Drama Sci-Fi	5.52
7813	Fruity Samurai	13	Action Comedy Historical Samurai	5.52
8121	Hikari: Kariya wo Tsunagu Monogatari	1	Sports	5.52
8776	Meitantei Rascal	12	Adventure Kids Mystery	5.52
9537	Shuukan Shimakou: Sono Toki Shimakou ga Ugoita!	11	Comedy	5.52
9892	Ultra B	119	Comedy Super Power	5.52
6624	Nemure Omoi Ko Sora no Shitone ni	1	Adventure Drama Space	5.53
6637	Adesugata Mahou no Sannin Musume	1	Comedy Magic Shoujo	5.53
6638	Cornelis	1	Comedy	5.53
6639	Kamakura	1		5.53
6640	Oshiri Kajiri Mushi (TV) 2nd Season	32	Comedy Kids	5.53
6641	Peeping Life: The Perfect Evolution	10	Comedy Slice of Life	5.53
6642	Seishoujo Kantai Virgin Fleet	3	Fantasy Military School Sci-Fi	5.53
6643	Shigeo wa Handsome	1	Comedy Drama	5.53
6644	Shiroi Michi	1	Music	5.53
6645	Tabi	1	Fantasy Psychological	5.53
6646	The Impression of First Gundam	1	Action Mecha Military Sci-Fi Space	5.53
7359	Ahiru no Pekkle no Aladdin to Mahou no Lamp	1	Fantasy Kids	5.53
7913	Geori-eui Mubeopja	1	Action Martial Arts	5.53
8552	Konna Watashitachi ga Nariyuki de Heroine ni Natta Kekka www (TV)	12	Comedy Fantasy	5.53
6632	Glasslip	13	Romance Slice of Life Supernatural	5.54
6633	Hanaori	1	Comedy	5.54
6634	Niedola	1	Music	5.54
6635	Pi~hyara Kouta	1	Kids Music	5.54
6636	Tomato ni Natta Otokonoko	1	Kids	5.54
8037	Hatara Kids Mai Ham Gumi	50	Action Kids	5.54
8348	Kaitou Gary no Nihonjin Kouryakuhou!	1	Drama	5.54
8436	Kero Kero Keroppi no Bikkuri! Obakeyashiki	1	Kids Supernatural	5.54
9038	Nyanfuru	Unknown	Comedy Music	5.54
9620	Sore Ike! Anpanman: Tobe! Tobe! Chibigon	1	Comedy Fantasy Kids	5.54
9829	Toppuku Kyousou Kyoku	2	Comedy Shounen	5.54
9857	Tsuruhime Ja!	49	Comedy Kids Shoujo Slice of Life	5.54
9893	Ultra B: Black Hole kara no Dokusaisha BB!!	1	Adventure Comedy	5.54
9945	Wake up!! Tamala	1	Fantasy Psychological	5.54
6614	48x61	1	Comedy Sports	5.55
6615	AKB48 Stage Fighter	1	Action	5.55
6616	And And	1	Music	5.55
6617	Choujin Locke Special	1	Action Sci-Fi Super Power	5.55
6618	Hizumu Realism	1	Dementia Music	5.55
6619	Kid&#039;s Castle	1	Comedy	5.55
6620	Koguma no Koro-chan	1	Kids	5.55
6621	Loups=Garous Picture Drama	1	Mystery Sci-Fi	5.55
6622	Message Song	1	Music	5.55
6623	Mushi no Tameiki	1	Music	5.55
6625	New Hal &amp; Bons	9	Comedy Slice of Life	5.55
6626	Osu	1	Slice of Life	5.55
6628	Space Travelers The Animation	1	Sci-Fi Space	5.55
6629	Television	1	Horror	5.55
6630	Watashitachi Luck Logic-bu!	12	Comedy School	5.55
6631	Yume kara Samenai	1	Romance School	5.55
7362	Ahiru no Pekkle no Sindbad no Bouken	1	Adventure Fantasy Kids	5.55
7461	Backstage Idol Story	8	Music	5.55
7527	Bosco no Mori no Nakama-tachi	1	Adventure Fantasy	5.55
7859	Gamba: Gamba to Nakama-tachi	1	Adventure Kids	5.55
8020	Hangyodon no Parallel Daisakusen: Kyouryuu Oukoku wa Oosawagi	1	Kids Sci-Fi	5.55
8818	Miracle Giants Doumu-kun Special	1	Sports	5.55
9508	Shoko Nakagawa Prism Tour Special	1	Music	5.55
9586	Sore Ike! Anpanman: Hashire! Wakuwaku Anpanman Grand Prix	1	Comedy Fantasy Kids	5.55
9589	Sore Ike! Anpanman: Inochi no Hoshi no Dolly	1	Fantasy Kids Magic	5.55
10103	Yuuyake Dandan	6		5.55
6602	DPR Special Movie	1	Slice of Life Space	5.56
6604	Hermes: Ai wa Kaze no Gotoku	1	Drama Fantasy	5.56
6605	Hyakka Zukan	1	Comedy	5.56
6606	Juujika You and I	1	Mecha Music Sci-Fi	5.56
6607	Mattsu to Yanma to Moburi-san: Nanatsu no Hihou to Soratobu Oshiro	1	Fantasy Magic	5.56
6608	Nekko-kun	1	Kids Music	5.56
6609	Organic	1	Comedy	5.56
6610	Scandal	12	Music Slice of Life	5.56
6611	Sengoku Choujuu Giga	26	Demons Historical Supernatural	5.56
6612	Shokichi Monogatari	1	Kids Music	5.56
6613	Tokyo Vice	1	Action Mecha Mystery Sci-Fi	5.56
6627	Schick x Evangelion	2	Comedy Parody	5.56
8499	Kirin Monoshiri Yakata	1565	Kids	5.56
8785	Midori no Makibao Compilation OVA	1	Comedy Sports	5.56
9246	Pom Pom Purin no Kitakaze to Taiyou	1	Fantasy Kids	5.56
9564	Sora e	1	Fantasy Kids Music	5.56
6595	Hungry Zombie Francesca!!	2	Fantasy Music	5.57
6596	Kaitou Reinya Pilot	1	Comedy	5.57
6597	Kaze no Invitation	1	Magic Music	5.57
6598	Minna Atsumare! Falcom Gakuen SC Special	1	Comedy Parody School Seinen	5.57
6599	Sayonara Space Shuttle	1	Music Space	5.57
6600	Surprise 4 U.	2	Sports	5.57
6601	Tokyo Babylon: Vision	1	Music Supernatural	5.57
6603	Fr/day Night	1	Comedy Music	5.57
7345	A-jang.com	13	Fantasy	5.57
7372	Ajisai no Uta	3	Comedy Drama Historical	5.57
7614	Chiisana Love Letter: Mariko to Nemunoki no Kodomo-tachi	1	Drama Music School	5.57
8837	Mobile Suit Gundam-san: Bouya Dakara sa	1	Comedy Mecha Parody	5.57
8851	Momotarou	1	Drama	5.57
8952	Neko to Nezumi	1	Comedy	5.57
9245	Pokopon no Yukai na Saiyuuki	1	Adventure Fantasy Kids Magic Martial Arts	5.57
9258	Porong Porong Pororo 2	52	Kids	5.57
9768	The Collected Animations of ICAF (2001-2006)	16	Fantasy Mystery	5.57
9808	Toki: Kono Hoshi no Mirai wo Mitsumete	2	Drama Historical	5.57
9936	Video Ehonkan Sekai Meisaku Douwa	26	Adventure Comedy Fantasy Historical Kids Magic Sci-Fi Space Supernatural	5.57
9978	Where is Mama	1	Kids	5.57
10128	Zoobles!	26	Kids	5.57
6581	Yuki no Taiyou Pilot	1	Drama Shoujo	5.58
6582	Anitore! EX: Jigoku no Training	5	Sports	5.58
6583	Baguda-jou no Touzoku	1	Adventure Historical Romance	5.58
6584	Fantasia	1	Comedy Drama Fantasy Magic Romance	5.58
6585	Fushigi no Umi no Nadia: Original Movie	1	Action Adventure Drama Historical Mystery Romance Sci-Fi	5.58
6586	I Love Picnic	1	Comedy Kids	5.58
6587	Marriage: Kekkon	2	Romance Slice of Life	5.58
6588	Meow no Hoshi	1	Drama	5.58
6589	Michi (Music)	1	Music	5.58
6590	Mirai Koushi Harima SACLA	1	Music Sci-Fi	5.58
6591	Oshiri Kajiri Mushi (TV) 4th Season	10	Comedy Kids	5.58
6592	PoPo Loouise	1	Kids Music	5.58
6593	Shinrabanshou: Tenchi Shinmei no Shou	1	Action Fantasy Shounen	5.58
6594	Tokyo Juushouden: Fuuma Gogyou Denshou	3	Action Adventure Shounen Supernatural	5.58
7667	Contact 2	1	Comedy Kids Sci-Fi	5.58
7723	Dolphin Ouji	3	Action Adventure Kids Sci-Fi	5.58
7972	Gu-Gu Ganmo (Movie)	1	Comedy	5.58
8148	Historical	Unknown	Adventure Historical	5.58
8246	Isobe Isobee Monogatari: Ukiyo wa Tsurai yo	Unknown	Comedy Historical	5.58
8371	Kamiusagi Rope tsuka Natsuyasumi Rasuichi tte Maji ssuka!?	1	Adventure Comedy Slice of Life	5.58
8433	Kentauros no Densetsu	1	Action Drama	5.58
8661	Lovely Movie: Itoshi no Muco Season 2	22	Slice of Life	5.58
9604	Sore Ike! Anpanman: Niji no Pyramid	1	Comedy Kids	5.58
6569	3-Nen C-Gumi 14-Ban Kubozono Chiyoko no Nyuukaku	1	Music School	5.59
6570	Heya/Keitai	1	Fantasy Music	5.59
6571	MapleStory	25	Action Comedy Fantasy Kids Romance	5.59
6572	Nekketsu Tantei Jimusho	5	Comedy Mystery Parody	5.59
6573	Nihonichi Momotarou	1	Fantasy	5.59
6574	Prayers	2	Sci-Fi	5.59
6575	Shounen Jack to Mahoutsukai	1	Adventure Fantasy	5.59
6576	Sparrow&#039;s Hotel	12	Comedy	5.59
6577	Sugio: Mori de Koi wo Shite	3	Comedy	5.59
6578	Toyama Kankou Anime Project	6	Historical Slice of Life	5.59
6579	Virus: Virus Buster Serge	12	Action Adventure Mecha Police Sci-Fi	5.59
6580	Worku	2	Fantasy Psychological	5.59
7400	Angel (Special)	1	Dementia	5.59
7683	Cynical Hysterie Hour: Yoru wa Tanoshii	1	Comedy	5.59
8065	Hello Kitty no Kieta Santa-san no Okurimono	1	Kids	5.59
8413	Kaseki Dorobou to Kyouryuuseki	1	Adventure Kids	5.59
9028	Notari Matsutarou	10	Sports	5.59
9349	Ryuuichi Manga Gekijou Onbu Obake	52	Supernatural	5.59
9625	Sore Ike! Anpanman: Yomigaere Bananajima	1	Adventure Comedy Fantasy Kids Super Power	5.59
6554	Meiji x Kokosake &amp; anohana Receipt Oubo Campaign	2	Drama	5.6
6558	Amon Saga	1	Action Adventure Fantasy	5.6
6559	Atama wa Tsukaiyou. Card mo Tsukaiyou.	1	Comedy	5.6
6560	Bavi Stock	2	Action Adventure Fantasy Sci-Fi	5.6
6561	Be Blues! Ao ni Nare	1	Shounen Sports	5.6
6563	Kimi ga Nozomu Eien: Gundam Parody	1	Mecha Parody Sci-Fi Space	5.6
6564	Okashina Hotel	1	Dementia	5.6
6565	Old City Ward	1	Fantasy Music	5.6
6566	Peeping Life	10	Comedy Slice of Life	5.6
6567	Rinkaku	1	Dementia Horror Music	5.6
6568	Wake Up	1	Music	5.6
7453	Azumi Mamma★Mia	60	Comedy Kids	5.6
7867	Ganbare! Bokura no Hit and Run	1	School Sports	5.6
7961	Gra-P &amp; Rodeo	61	Comedy Music	5.6
8538	Koha Ginjiro	3	Action Drama School Shounen	5.6
8656	Lolling Seutajeu	26	Kids Sports	5.6
8891	My Melody no Akazukin	1	Fantasy Kids	5.6
8903	Nameko: Sekai no Tomodachi	Unknown	Comedy	5.6
9012	Noobow: Na Kokoro	52	Kids Slice of Life	5.6
9047	Obake no Q-Tarou: Tobidase! Bake Bake Daisakusen	1	Comedy Kids School Slice of Life	5.6
9152	Ousama Monogatari	Unknown	Adventure Kids	5.6
9180	Patta Potta Monta	26	Comedy Kids Slice of Life	5.6
9276	Pro Golfer Saru: Super Golf World e no Chousen!!	1	Kids Sports	5.6
9519	Shounen Ashibe Anzen Kyouiku Anime	2	Kids	5.6
9520	Shounen H ga Mita Sensou	1	Historical Kids	5.6
9733	Tatakae! Osper	52	Action Sci-Fi Shounen	5.6
9767	The Aurora: Umi no Aurora	1	Adventure Sci-Fi	5.6
9964	Washimo 4th Season	Unknown	Comedy Kids School Sci-Fi Slice of Life	5.6
10086	Yume no Jidousha	1	Cars	5.6
6546	663114	1	Fantasy	5.61
6548	Apartment!	1	Comedy Slice of Life	5.61
6549	Blame! Special	1	Mecha Sci-Fi	5.61
6550	Choro Q Dagram	1	Comedy Mecha Sci-Fi Shounen	5.61
6551	Copihan	7	Comedy School Sci-Fi	5.61
6552	Good Morning Althea	1	Action Mecha Sci-Fi	5.61
6553	Jikuu Ihoujin Kyoko: Chocola ni Omakase!	1	Comedy Fantasy	5.61
6555	Minihams no Ai no Uta	1	Kids Music	5.61
6556	SD Gundam Force	52	Adventure Comedy Fantasy Mecha	5.61
6557	With You: Mitsumeteitai	2	Drama Fantasy Mystery Romance School	5.61
7339	47 Todoufuken	26	Comedy Kids	5.61
8478	Kikou Heidan J-Phoenix: PF Lips Shoutai	3	Comedy Mecha	5.61
8672	Machi Ichiban no Kechinbou	1	Drama Historical Music Supernatural	5.61
9343	Ruri-iro Princess	2	Romance Shoujo	5.61
9598	Sore Ike! Anpanman: Kyouryuu Nosshii no Daibouken	1	Comedy Fantasy Kids	5.61
9656	Stray Sheep: Poe no Chicchana Daibouken	12	Comedy Kids	5.61
6536	Angel&#039;s Feather	2	Drama Fantasy Romance Sci-Fi Shoujo Shounen Ai Supernatural	5.62
6537	Boku wa Konomama Kaeranai	1	Drama Romance Shounen Ai	5.62
6538	Bologee Story	1	Drama Romance	5.62
6539	Choboraunyopomi Gekijou Dai Ni Maku Ai Mai Mii: Mousou Catastrophe Special	1	Comedy Slice of Life	5.62
6540	Double-J	11	Comedy School Shounen	5.62
6541	Kipling Jr.	1	Comedy	5.62
6542	RS Keikaku: Rebirth Storage	1	Mecha	5.62
6543	Sono Mukou no Mukougawa	1	Music	5.62
6544	Uchuu Kyoudai: Apo&#039;s Dream	1	Comedy Sci-Fi Space	5.62
6545	Urarochi Diamond	1	Adventure	5.62
6547	Anitore! EX	12	Comedy Sports	5.62
7538	Break-Age	1	Adventure Mecha Sci-Fi Shounen	5.62
7715	Dokachin	26	Comedy Kids	5.62
8710	Mameshiba Bangai-hen	4	Comedy Music	5.62
8937	Nazotoki-hime wa Meitantei♥	Unknown	Mystery Shoujo	5.62
9034	Nyamen	12	Comedy	5.62
9690	Sylvanian Families	3	Comedy Fantasy Kids	5.62
9732	Tasukeai no Rekishi: Inochi Hoken no Hajimari	1	Drama Historical Kids	5.62
10069	Yoshimoto Muchikko Monogatari	47	Comedy	5.62
6525	A-Girl	1	Music Romance School Shoujo	5.63
6526	Bernard-jou Iwaku.	12	Comedy School	5.63
6527	Kimi wa Tomodachi	1	Adventure Fantasy Music	5.63
6528	Kinniku Banzuke: Kongou-kun no Daibouken!	3	Action Shounen Sports	5.63
6529	Kokoro ga Sakebitagatterunda. x Sony Hi-Res &quot;Walkman&quot; and Headphone	1	Drama	5.63
6531	Neon The Animation	6	Comedy Historical Mecha Police Slice of Life	5.63
6532	Obake no Dokurou	1	Kids Supernatural	5.63
6533	Pan de Peace!	13	Comedy School Slice of Life	5.63
6534	Teddy	1	Slice of Life	5.63
6535	Twinkle Heart: Gingakei made Todokanai	1	Adventure Comedy Space	5.63
6562	Kennosuke-sama	1	Adventure Comedy	5.63
7374	Akadou Suzunosuke	52	Adventure Historical	5.63
7448	Aura Battler Dunbine Memorial	3	Adventure Mecha Sci-Fi	5.63
7588	Chi-Sui Maru	41	Comedy	5.63
7665	Congming de Yixiu Zhi Fan Dou Gongzhu	1	Comedy Historical Kids	5.63
8212	Ikinari Dagon	12	Adventure Fantasy	5.63
8556	Kono Shihai kara no Sotsugyou: Ozaki Yutaka	1	Historical Slice of Life	5.63
8572	Kotowaza House	773	Comedy Slice of Life	5.63
9261	Porong Porong Pororo 5	26	Cars Kids	5.63
9517	Shounen Ashibe 2	25	Comedy Slice of Life	5.63
9698	Tachumaru Gekijou	26	Comedy Parody	5.63
9785	The Story of Mr. Sorry	1	Comedy Fantasy Horror	5.63
9872	Uchuu Icchokusen	1	Fantasy Mystery Sci-Fi Space	5.63
6511	100%	1	Drama	5.64
6512	Abashiri Ikka	4	Action Comedy Shounen	5.64
6513	Ariel Visual	2	Action Comedy Mecha Sci-Fi	5.64
6514	Asa ga Kuru mae ni: Sasurai Version	1	Music Romance	5.64
6515	Big Wars: Kami Utsu Akaki Kouya ni	1	Action Military Sci-Fi Space	5.64
6516	Docchi ni Suru?	1	Kids	5.64
6517	Fen Qing	1	Music	5.64
6518	Francesca	24	Comedy Fantasy	5.64
6519	Happy Kappy	25	Comedy Fantasy Shoujo	5.64
6520	Ikeike! Momon-chan	15	Comedy	5.64
6521	Kaumori	1	Drama Samurai	5.64
6522	Pair	1	Music	5.64
6523	Suzakinishi the Animation	12	Comedy Slice of Life	5.64
6524	Yumekuri	1	Seinen Slice of Life	5.64
8173	Hoshigari Hime no Bouken	1	Fantasy Kids	5.64
8270	Jiaoao de Jiangjun	1	Drama	5.64
8468	Kikansha Yaemon	1	Fantasy Kids	5.64
8575	Kougyou Aika Volley Boys	2	Comedy School Seinen Sports	5.64
8580	Kubbe Kort Animasjon	24	Fantasy	5.64
8838	Mobile Suit Gundam-san: Hiyoko day&#039;s Ichisuisei Hiyoko to Fushigi na Ofuda	1	Comedy Mecha Parody	5.64
9069	Ojarumaru: Mangetsu Road Kiki Ippatsu - Tama ni wa Maro mo Daibouken	1	Adventure Comedy Fantasy Kids Slice of Life	5.64
9153	Ousama no Shippo	1	Fantasy	5.64
9341	Running Boy: Star Soldier no Himitsu	1	Sci-Fi Space	5.64
9381	Santa-san to Tonakai Kuppi	1	Fantasy Kids	5.64
9423	Sequence	1	Romance Sci-Fi Shoujo	5.64
9569	Sore Ike! Anpanman: Anpanman to Christmas no Hoshi	1	Comedy Fantasy Kids	5.64
9582	Sore Ike! Anpanman: Dokin-chan no Dokidoki Calendar	1	Comedy Fantasy Kids Sci-Fi	5.64
9608	Sore Ike! Anpanman: Otanjoubi Series	12	Comedy Fantasy Kids	5.64
9927	Usogui	1	Game Psychological Seinen	5.64
6502	E no Umakatta Tomodachi	1	Music	5.65
6503	Happy ComeCome	1	Comedy Sci-Fi Slice of Life	5.65
6504	Homé-Pato the Movie	1	Cars	5.65
6505	Maryuu Senki	3	Fantasy Horror	5.65
6506	Power Dolls	2	Action Adventure Mecha Sci-Fi	5.65
6507	Souhaku Shisuferia	1	Music	5.65
6508	Timing	1	Horror Psychological	5.65
6509	Tomoe ga Yuku!	2	Adventure Drama	5.65
6510	Yubi wo Nusunda Onna	1		5.65
7871	Ganbare! Marine Kid	13	Action Adventure Kids Sci-Fi	5.65
8341	Kaiketsu Tamagon	195	Adventure Comedy Kids	5.65
8471	Kiki to Lala no Habatake! Pegasus	1	Kids Magic	5.65
8476	Kiki to Lala no Ohimesama ni Naritai	1	Kids	5.65
8561	Koro Koro Kuririn no Inaka no Nezumi Tokai no Nezumi	1	Fantasy Kids	5.65
9115	Ookami Shounen Ken	86	Adventure Kids	5.65
9479	Shin Takarajima	1	Adventure Kids	5.65
6494	Backkom: Jung-gug Gijeogwi	1	Comedy Kids	5.66
6495	Digital Juice	6	Comedy Psychological	5.66
6496	Futago no Mahoutsukai Lico to Gli	4	Magic Music	5.66
6497	Gokicha!!	2	Comedy	5.66
6498	Legend of Lemnear: Kyokuguro no Tsubasa Valkisas	1	Action Adventure Fantasy	5.66
6499	Meat or Die	12	Adventure Comedy	5.66
6500	Midori no Neko	1	Mystery	5.66
6501	Nebula feat. Hatsune Miku	1	Music	5.66
9407	Sekai Douwa Anime Zenshuu	10	Adventure Fantasy Kids	5.66
6478	Anime Tenchou Movie	1	Action Parody	5.67
6479	Barom One	13	Action Sci-Fi Shounen Supernatural	5.67
6480	Be-Boy Kidnapp&#039;n Idol	1	Drama Shounen Ai	5.67
6481	Eien no Aselia	2	Adventure Drama Fantasy	5.67
6482	I Love Sky	1	Comedy Kids	5.67
6483	InaDan Movie x Mameshiba Collab CM	2	Comedy Kids Sports	5.67
6484	Kyoto Animation: Sora-hen	1	Slice of Life	5.67
6485	Majuu Sensen: The Apocalypse	13	Action Fantasy	5.67
6486	Mayonaka wa Junketsu	1	Action Music	5.67
6487	Moving Colors	1	Dementia	5.67
6488	Nakoruru: Ano Hito kara no Okurimono	1	Drama Fantasy Historical Supernatural	5.67
6489	Rakugaki Picasso	1	Music	5.67
6490	Reunion (Music)	1	Music	5.67
6491	Riki-Oh 2: Horobi no Ko	1	Action Martial Arts Seinen Super Power	5.67
6492	Stay the Same	1	Kids Music	5.67
6493	Tokyo Juushouden	3	Action Adventure Shounen Supernatural	5.67
7346	AAA de Ikou!!: Yuuna &amp; Akiko	1	Comedy	5.67
7396	Ama Gli Animali	1	Kids	5.67
7401	Angel ga Tonda Hi	1	Comedy Slice of Life	5.67
7425	Araiguma Rascal Specials	2	Drama Slice of Life	5.67
7677	Cyborg 009: Call of Justice 2	1	Action Adventure Mecha Sci-Fi Shounen	5.67
7711	Doctor Mambo &amp; Kaitou Jibako: Uchuu yori Ai wo Komete!!	1	Adventure Fantasy Kids Mystery Sci-Fi	5.67
7724	Don&#039;t You Wish You Were Here?	1	Dementia	5.67
7726	Donbe Monogatari	1	Kids	5.67
7743	Doubutsu Dai Yakyuu Sen	1	Sports	5.67
7916	Ghost Messenger Movie	1	Action Fantasy	5.67
8021	Hangyodon no Parallel Daisakusen: Mirai Sekai wa Oosawagi	1	Kids Sci-Fi	5.67
8087	Hello Kitty no Stump Village	26	Fantasy Kids	5.67
8301	Juugo Shounen Hyouryuuki: Kaizokujima de! Daibouken	1	Adventure Fantasy Kids Sci-Fi	5.67
8305	Kaba Enchou no Doubutsuen Nikki	1	Comedy Drama Kids	5.67
8318	Kachikachi Yama (1958)	1	Fantasy	5.67
8321	Kaden Manzai John TV Show!	25	Comedy	5.67
8325	Kagayake! Yuujou no V Sign	1	Sports	5.67
8402	Karasu no Panya-san/Dorobou Gakkou	2	Kids	5.67
8409	Karugamo Oyako no Hi no Youjin	1	Drama Kids	5.67
8428	Ken to Kaijuu	6	Fantasy Kids Magic	5.67
8432	Kenritsu Umisora Koukou Yakyuubu-in Yamashita Tarou-kun	1	Sports	5.67
8489	Kiniro no Kujira	1	Drama Kids	5.67
8504	Kitsune no Kan Chigai	1	Drama Kids	5.67
8511	KiyaKiya	1	Psychological	5.67
8606	Kushimitama Samurai	1	Action Adventure Drama Historical Samurai	5.67
8760	Me wo Samase Toragorou	1	Kids	5.67
8835	Mobile Suit Gakuen: G-Reco Koushien	9	Comedy	5.67
8862	Monpy	18	Adventure Kids	5.67
9005	Nobunaga-kun no Minna de Yakusoku Hi no Youjin	1	Drama Kids	5.67
9082	Okama Hakusho	3	Comedy Seinen	5.67
9092	Omedetou Jesus-sama	1	Historical Kids	5.67
9225	PikkaPika Summer	31		5.67
9234	Pittanko! Nekozakana	Unknown	Comedy	5.67
9447	Shibuzome Ikki: Ashita ni Kakeru Niji	1	Historical Kids	5.67
9452	Shima Kousaku no Asia Risshi-den Specials	4	Drama Seinen	5.67
9484	Shinken Densetsu: Tight Road	13	Action Martial Arts	5.67
9507	Shizukanaru Don: Yakuza Side Story	1	Action Comedy Drama Seinen	5.67
9671	Sukima no Kuni no Polta	13	Fantasy	5.67
9878	Uchuu Shounen Soran (Movie)	1	Action Adventure Sci-Fi	5.67
9880	Uchuusen Sagittarius Pilot	1	Adventure Sci-Fi	5.67
9926	Ushiro no Seki no Ochiai-kun	1	Kids School	5.67
9941	Wa Wa Wa Wappi-chan 2nd Season	26	Kids	5.67
10011	Xiong Chu Mo	104	Comedy Kids	5.67
10013	Xiong Chu Mo Zhi Conglin Zhongdongyuan	104	Comedy Kids	5.67
10014	Xiong Chu Mo Zhi Dongri Le Fantian	52	Comedy Kids	5.67
10017	Xiong Chumo Zhi Xueling Xiongfeng	1	Adventure Comedy	5.67
6461	009 Re:Cyborg x Zip	10	Comedy Super Power	5.68
6462	Baby Felix	65	Comedy Kids	5.68
6463	Bishoujo Mobage: Mobami-chan	1	Fantasy	5.68
6464	Delpower X Bakuhatsu Miracle Genki!	1	Action Comedy Mecha Parody School Sci-Fi	5.68
6465	Dream C Club Pure Songs Clips	2	Music	5.68
6466	Good Morning	1	Music Slice of Life	5.68
6467	Hoka Hoka Oden no Uta	1	Music	5.68
6468	Joker: Marginal City	1	Action Romance Sci-Fi	5.68
6469	Kaede New Town	1	Comedy Romance School Slice of Life	5.68
6470	Kuro Nyago	1	Fantasy	5.68
6471	Momoya x Peeping Life: Go en Desu yo!	4	Slice of Life	5.68
6472	Planzet	1	Action Mecha Sci-Fi	5.68
6473	PostPet Momobin	24	Comedy Kids	5.68
6474	Shinjuku Shin-chan Patrol: Warui Otona ni Ki wo Tsukete	1	Kids	5.68
6475	Sora wa Koko ni Aru	1	Music	5.68
6476	Sotsugyou M: Ore-tachi no Carnival	2	Drama School	5.68
6477	Violence Jack: Hell&#039;s Wind-hen	1	Action Drama Horror	5.68
7422	Apache Yakyuugun	26	Action School Sports	5.68
7536	Boyfriend	1	Romance Shoujo Sports	5.68
7744	Doubutsu Kankyou Kaigi	20	Kids	5.68
8027	Happyakuyachou Hyouri Kewaishi	16	Drama Historical	5.68
9094	Omoikkiri Kagaku Adventure Sou Nanda!	26	Comedy Kids Sci-Fi	5.68
9597	Sore Ike! Anpanman: Kuruyuki-hime to Mote Mote Baikinman	1	Comedy Fantasy Kids	5.68
9651	Stitch! Perfect Memory	1	Adventure Comedy Kids Sci-Fi	5.68
10366	Ice	3	Action Military Sci-Fi Shoujo Ai Yuri	5.68
6442	Dead Heat	1	Action Mecha Sci-Fi Sports	5.69
6451	Dennou Sentai Voogie&#039;s★Angel	3	Action Drama Mecha Military Sci-Fi	5.69
6452	Fushigi na Kusuri	1	Slice of Life	5.69
6453	Gundress	1	Action Mecha Sci-Fi	5.69
6454	Hagane Orchestra	12	Adventure Comedy	5.69
6455	Koroshiya-san: The Hired Gun	10	Action Comedy Police Seinen Thriller	5.69
6456	KY Kei JC Kuukichan	6	Comedy School	5.69
6457	Kyoufu Densetsu Kaiki! Frankenstein	1	Drama Horror Sci-Fi	5.69
6458	Peeping Life: The Perfect Emotion	10	Comedy Slice of Life	5.69
6460	Transformers: Robot Masters	2	Mecha	5.69
8742	Marin to Yamato: Fushigi na Nichiyoubi	1	Kids	5.69
9583	Sore Ike! Anpanman: Franken-Robo-kun&#039;s Surprised Christmas	1	Comedy Fantasy Kids Super Power	5.69
6416	Crash!	3	Comedy Shoujo	5.7
6440	Ai Mai! Moe Can Change!	1	Comedy Sci-Fi	5.7
6441	Big Order (TV)	10	Action Shounen Super Power	5.7
6443	Densha Kamo Shirenai	1	Music	5.7
6444	Kaette Kita Top wo Nerae! Kagaku Kouza	2	Comedy Mecha Sci-Fi	5.7
6445	Last Orders	1	Action Samurai Sci-Fi	5.7
6446	Nulu-chan to Boku	1	Comedy Fantasy	5.7
6448	Wakusei Daikaiju Negadon	1	Action Fantasy Mecha Military Sci-Fi Space	5.7
6449	World Fool News	6	Comedy Slice of Life	5.7
6450	Yuureisen	1	Supernatural	5.7
6459	Pink Mizu Dorobou Ame Dorobou	1	Adventure Comedy Fantasy Shounen	5.7
7463	Bad Badtz-Maru no Ookami ga Kita!	1	Fantasy Kids	5.7
7493	Big X Episode 0	1	Action Historical Sci-Fi Shounen	5.7
7625	Chinpui Specials	2	Comedy	5.7
8019	Hangyodon no Parallel Daisakusen: Hana no Oedo wa Oosawagi	1	Historical Kids	5.7
8302	Juuippiki no Neko to Ahoudori	1	Adventure Fantasy Kids	5.7
8972	Niji ni Mukatte	1	Historical Romance	5.7
9198	Peeping Life: The Perfect Extension Specials	2	Comedy Slice of Life	5.7
6429	Ankoku Shindenshou Takegami	3	Action Drama Mecha Sci-Fi Supernatural	5.71
6430	Capricorn	1	Adventure Comedy Fantasy Sci-Fi Shounen	5.71
6431	Cosmos Pink Shock	1	Comedy Parody Sci-Fi Space	5.71
6432	Gyo	1	Horror	5.71
6433	Kanojo ga Kanji wo Suki na Riyuu.	2	School Slice of Life	5.71
6434	Macross XX	1	Action Mecha	5.71
6435	Minihams no Kekkon Song	1	Kids Music	5.71
6436	Murder	1	Mystery Parody Vampire	5.71
6437	OZ	2	Action Drama Military Sci-Fi Shoujo	5.71
6438	Psychic Force	2	Action Sci-Fi Shounen Super Power	5.71
6439	Shin Megami Tensei: Tokyo Mokushiroku	2	Action Horror Sci-Fi	5.71
6447	Shinano Mainichi Shinbun	1	Slice of Life	5.71
7458	Backkom Meogeujan Yeohaeng	1	Adventure Comedy Kids Magic	5.71
7496	Bikkuriman: Daiichiji Seima Taisen	1	Action Adventure Kids	5.71
7534	Bousou Sengokushi	2	Action	5.71
7592	Chibi Neko Chobi/Chibi Neko Kobi to Tomodachi	1	Kids	5.71
7833	Fushigi na Elevator	1	Fantasy	5.71
8230	Inochi Kagayaku Akari	1	Drama Kids	5.71
8620	Kyoufu! Zombie Neko	Unknown	Comedy	5.71
8639	Lemon Angel YJ-ban	2	Romance School	5.71
8892	My Melody no Akazukin (OVA)	1	Fantasy Kids	5.71
9123	Ore-tachi Ijiwaru Kei	14	Comedy	5.71
9156	Oyone to Mattsan: Ai no Uta	1	Music Romance	5.71
9214	Peter Pan no Bouken Specials	2	Adventure Fantasy	5.71
9226	Pinch to Punch	156	Comedy	5.71
9588	Sore Ike! Anpanman: Horrorman to Hora Horako	1	Comedy Fantasy Kids	5.71
9951	Wankorobee	26	Comedy Fantasy Kids	5.71
9975	What&#039;s Michael?	1	Comedy	5.71
6409	Lost Forest	1	Music	5.72
6414	Bamboo Blade: Fanfu-Fufe-Fo	2	Comedy Parody	5.72
6415	Christmas	1	Music Supernatural	5.72
6417	Kyoto Animation: Ajisai-hen	1	Magic	5.72
6418	Kyoufu no Bio Ningen Saishuu Kyoushi	1	Action Adventure Comedy School Supernatural	5.72
6419	Mahou no Pen	1	Historical	5.72
6420	Marine Bloomin&#039;	1	Music	5.72
6421	Pareo wa Emerald	1	Music	5.72
6422	Q Transformers: Kaette Kita Convoy no Nazo	13	Mecha Parody Slice of Life	5.72
6423	R20: Ginga Kuukou	1	Sci-Fi	5.72
6424	Refrain	1	Music	5.72
6425	Shimanchu MiRiKa	1	Slice of Life	5.72
6426	Tora-chan to Hanayome	1	Drama	5.72
6427	Ugokie Kori no Tatehiki	1	Comedy Supernatural	5.72
6428	Wild 7 Another Bouryaku Unga	13	Action Adventure Police Shounen	5.72
7640	Choubakuretsu Ijigen Menko Battle: Gigant Shooter Tsukasa	32	Action Comedy Game Kids	5.72
7820	Fujilog 2nd Season	13	Comedy	5.72
10365	Fujimi 2-choume Koukyougakudan	1	Drama Music Psychological Romance Slice of Life Yaoi	5.72
6406	Kai Doh Maru	1	Action Fantasy Historical Magic	5.73
6407	Kyoto Animation: Hassou-hen	1	Fantasy	5.73
6408	Lance N&#039; Masques	12	Fantasy	5.73
6410	Minarai Diva	10	Music	5.73
6411	Moonrakers	1	Drama Sci-Fi Space	5.73
6412	Oosouji	1	Music	5.73
6413	White Fantasy	1	Fantasy Sports	5.73
7464	Bad Badtz-Maru no Ore no Pochi wa Sekaiichi	1	Kids	5.73
8297	Junkers Come Here: Memories of You	1	Drama Slice of Life	5.73
8452	Kero Kero Keroppi no Tomodachi wa Mahoutsukai	1	Kids Magic	5.73
9100	Onegai My Melody: Yuu &amp; Ai	1	Comedy Fantasy	5.73
9999	Xevious	1	Action Adventure Sci-Fi Space	5.73
6397	B Who I Want 2 B	1	Music	5.74
6398	Bulg-eunmae	1	Martial Arts Super Power	5.74
6399	Elf 17	1	Adventure Comedy Martial Arts Mecha	5.74
6400	Galerians: Rion	3	Adventure Drama Horror Military Mystery Psychological Sci-Fi Shounen Supernatural	5.74
6401	Glass no Kamen Desu ga	3	Comedy Parody	5.74
6402	Go! Go! 575: Meippai ni Hajiketeru?	1	Slice of Life	5.74
6403	Jigen Sengokushi: Kuro no Shishi - Jinnai-hen	1	Action Adventure Historical Sci-Fi Shounen	5.74
6404	Shokupan Mimi Specials	4	Comedy	5.74
6405	Uchuu Hikoushi no Uta	1	Fantasy Kids Music	5.74
7471	Bakuhatsu Gorou	26	Comedy Sports	5.74
8586	Kujira	1	Adventure	5.74
8939	Nekketsu Jinmen Inu: Life Is Movie	3	Comedy Mystery Parody	5.74
9579	Sore Ike! Anpanman: Black Nose to Mahou no Uta	1	Comedy Fantasy Kids	5.74
9609	Sore Ike! Anpanman: Outa to Teasobi Tanoshii ne	2	Comedy Fantasy Kids	5.74
10004	Xi Yang Yang Yu Hui Tai Lang: Zhi Tu Nian Ding Gua Gua	1	Adventure Comedy Kids	5.74
6385	Biohazard 4D-Executer	1	Action Adventure Horror Military	5.75
6386	Bounty Dog: Getsumen no Ibu	2	Action Sci-Fi Space	5.75
6387	EDEN	1	Music	5.75
6388	Gekkou Shokudou	1	Music	5.75
6389	It Girl	1	Music	5.75
6390	Life no Color	1	Music School	5.75
6391	Marie &amp; Gali Special	1	Comedy	5.75
6392	Minions x Godzilla x Toho Cinema Collaboration Tokubetsu Eizou	1	Comedy	5.75
6393	Mugen Senshi Valis	1	Action Adventure Fantasy	5.75
6394	Onna Senshi Efe &amp; Jira: Gude no Monshou	1	Adventure Fantasy	5.75
6395	Toilet no Kamisama	1	Music	5.75
6396	Wasure-boshi	1	Fantasy Music	5.75
7405	Anime Douyou	Unknown	Kids Music	5.75
7419	Aoki Uru: Overture	1	Military Sci-Fi	5.75
7452	Azarashi Tama-chan no Hi no Youjin	1	Drama Kids Super Power	5.75
7510	Boku no Diet Daisakusen	1	Drama Kids	5.75
7648	Chuuko Video-ya no Onna Tenin X	1	Comedy Shounen	5.75
7687	Daisuki! Nendomama	9	Fantasy Kids Slice of Life	5.75
7818	Fujilog	13	Comedy	5.75
7874	Ganbare!! Nattou-san	4	Comedy	5.75
8144	Hiroshima e no Tabi	1	Drama Historical Slice of Life	5.75
8209	Ijiwaru Baasan (1996)	46	Comedy Slice of Life	5.75
8213	Ikite Iru	1		5.75
8559	Konpora Kid	26	Comedy Kids Sci-Fi	5.75
8626	Kyuumei Senshi Nanosaver	28	Adventure Shounen	5.75
8900	Naita Aka Oni (OVA)	1	Demons Drama Kids	5.75
8998	Nintama Rantarou no Uchuu Daibouken with Cosmic Front☆Next	2	Adventure Comedy Kids Space	5.75
9055	Odoriko Clinoppe	26	Comedy Slice of Life	5.75
9102	Oni Keibu Anpan	2	Kids Police	5.75
9178	Patalliro Saiyuuki! Special	1	Adventure Comedy Fantasy Shoujo Shounen Ai	5.75
9380	Santa Claus Tsukamaeta!	1	Fantasy Kids	5.75
9394	Sayanora Kaba-kun	1	Historical Kids	5.75
9412	Sekai no Hikari: Shinran Shounin	6	Historical	5.75
9496	Shiritsu Liyon Gakuen	Unknown	Comedy School	5.75
9531	Shuang Yue Zhi Chengi	12	Military Sci-Fi	5.75
9540	Silk Road Shounen Yuuto: Toki wo Kakeru Shounen Yuuto no Hyouryuu Nikki	1	Adventure Fantasy Historical	5.75
9548	Slippy Dandy	4	Action Kids Mystery	5.75
9750	Tensai Bakavon: Yomigaeru Flanders no Inu	1	Comedy Parody	5.75
9772	The Legend of Huainanzi	26	Adventure Fantasy Historical	5.75
9796	Tobe! Pegasus Kokoro no Goal ni Shoot	1	School Sports	5.75
10075	Yowamushi Chinsengumi	1	Comedy Kids	5.75
6376	Aesop&#039;s World	26	Kids	5.76
6378	Channel 5.5 2nd Season	4	Comedy Parody	5.76
6379	Hana to Mogura	1	Comedy	5.76
6380	Macross Fufonfia	20	Comedy Parody	5.76
6381	Molly Star-Racer	1	Mecha Music	5.76
6382	Mugen Shinshi: Bouken Katsugeki-hen	1	Fantasy Horror Mystery	5.76
6383	Super Mario Brothers: Peach-hime Kyuushutsu Daisakusen!	1	Adventure Comedy Shounen	5.76
6384	Wake Up! Dodo	1	Music	5.76
7435	Arisa☆Good Luck	1	Action Comedy	5.76
7482	Be-Bop Kaizokuban	3	Comedy School Seinen	5.76
7800	Flanders no Inu Specials	2	Drama Slice of Life	5.76
8062	Hello Kitty no Hansel to Gretel	1	Fantasy Kids	5.76
8368	Kamiusagi Rope 3 (ONA)	3	Comedy Slice of Life	5.76
8988	Ninja Hattori-kun Plus Perman: Ninja Kaijuu Jippou tai Miracle Tamago	1	Adventure Comedy Martial Arts Sci-Fi Super Power	5.76
9921	Usahana: Yumemiru Ballerina	7	Kids	5.76
6361	1989	1	Music Space	5.77
6362	Bouken Shite mo Ii Koro	3	Comedy Seinen	5.77
6363	California Crisis: Tsuigeki no Juuka	1	Action Adventure Comedy	5.77
6364	Compiler Festa	1	Action Drama Sci-Fi	5.77
6365	Dallos Special	1	Fantasy	5.77
6367	Kuragehime: Soreike! Amars Tankentai	6	Adventure Comedy Josei	5.77
6368	Love to Live By	1	Music	5.77
6369	Makaryuudo Demon Hunter	1	Demons Supernatural	5.77
6370	Maken Liner 0011 Henshin Seyo!	1	Action Mecha Sci-Fi	5.77
6371	Minarai Chameleon	1	Comedy Kids Music	5.77
6372	Okitegami Kyouko no Bibouroku x Monogatari	1	Supernatural	5.77
6373	Souseiki	1	Parody	5.77
6374	Stitch to Suna no Wakusei	1	Adventure Comedy Kids Sci-Fi	5.77
6375	Wish Me Mell	2	Fantasy Kids Magic	5.77
6377	Ai think so	1	Music	5.77
7394	Alps Monogatari: Watashi no Annette Specials	2	Drama Slice of Life	5.77
7587	Chi Dor Dor Chi Dor Dor	15	Kids	5.77
7633	Chogattai Majutsu Robot Ginguiser Specials	2	Adventure Mecha Sci-Fi	5.77
6350	Antique Heart	1	Magic Mystery School	5.78
6351	Circuit Angel: Ketsui no Starting Grid	1	Action	5.78
6352	Exper Zenon	1	Action Sci-Fi	5.78
6353	Kyoufu Shinbun (2014)	16	Demons Fantasy Horror Supernatural	5.78
6354	Mai Zhu	1	Comedy Historical	5.78
6355	Makeruna! Makendou	1	Comedy Magic Shounen	5.78
6356	Onnanoko tte.	4	Comedy Shoujo Slice of Life	5.78
6357	Robo to Shoujo (Kari)	9	Action Comedy Mecha Sci-Fi	5.78
6358	Shibainuko-san	26	Comedy	5.78
6359	Yona Yona Penguin	1	Adventure Fantasy Kids	5.78
6360	Zoku Natsume Yuujinchou: 3D Nyanko-sensei Gekijou	5	Comedy	5.78
7472	Bakujuu Gasshin Ziguru Hazeru	6	Action Mecha	5.78
7621	Chikyuu SOS Sore Ike Kororin	26	Action Comedy Kids Sci-Fi	5.78
7658	Cofun Gal no Coffy Campus Life	11	Comedy	5.78
7778	Eko Eko Azarak	1	Fantasy Horror Magic	5.78
7876	Ganbare!! Tabuchi-kun!! Aa Tsuppari Jinsei	1	Comedy Sports	5.78
8053	Heisei Policemen!!	6	Comedy Police	5.78
8487	King of Prism by Pretty Rhythm Short Anime	1	Comedy Fantasy Music	5.78
8652	Little Polar Bear: Shirokuma-kun Fune ni Noru	1	Adventure Fantasy Kids	5.78
8879	Mr. Pen Pen II	1	Comedy Kids Shoujo	5.78
9145	Otoko wa Tsurai yo: Torajirou Wasurenagusa	1	Comedy Romance	5.78
9471	Shin Obake no Q-tarou	70	Comedy School Slice of Life Supernatural	5.78
9640	Sowa Sowa Calendar	1	Kids Music	5.78
9916	Urikupen Kyuujo-tai	156	Adventure Comedy Kids	5.78
10072	Yousei Dick	26	Fantasy Kids	5.78
6318	Gakuen Handsome: Haitoku no Lesson	2	Comedy Music	5.79
6333	Ai City	1	Action Sci-Fi Super Power	5.79
6334	Ano Koro no Namida wa	1	Music Slice of Life	5.79
6335	Ariel Deluxe	2	Action Comedy Mecha Sci-Fi	5.79
6336	Around	1	Slice of Life	5.79
6337	Bavel no Hon	1	Kids	5.79
6338	Chains &amp; Rings	1	Fantasy Music	5.79
6339	Dimension Loop	1	Sci-Fi	5.79
6340	Endride	24	Adventure Fantasy	5.79
6341	Hietsuki Bushi	1	Fantasy Music Sci-Fi	5.79
6342	Katsudou Shashin	1		5.79
6343	Korekarasaki Nando Anata to.	1	Music Slice of Life	5.79
6344	Makyou Gaiden Le Deus	1	Action Adventure Mecha Sci-Fi	5.79
6345	Mission School	1	Music School	5.79
6346	Mizutori	1	Music	5.79
6347	Nanako Kaitai Shinsho	6	Comedy Mecha Military Sci-Fi	5.79
6348	Princess Minerva	1	Adventure Comedy Fantasy Parody	5.79
6349	Toukiden Kiwami	1	Action Fantasy Martial Arts	5.79
7511	Boku no Son Gokuu	1	Adventure Fantasy Kids	5.79
8044	Hayou no Ken: Shikkoku no Mashou	2	Fantasy Shoujo Supernatural	5.79
6091	DragonBlade	1	Action Fantasy	5.95
8373	Kamiusagi Rope x Panasonic Collaboration	1	Comedy Slice of Life	5.79
9286	Puu-Neko Shougekijou	11	Comedy	5.79
6316	Alice in Cyberland	1	Action	5.8
6317	Cosmo Police Justy	1	Action Sci-Fi Shounen Space Super Power Supernatural	5.8
6319	Go! Go! 575	4	Slice of Life	5.8
6320	Ippatsu Hicchuu!! Devander	1	Action Mecha Parody Sci-Fi Super Power	5.8
6321	Love Like Aliens	1	Action Music Sci-Fi	5.8
6322	Mahou no Yousei Persia: Escape!	1	Music	5.8
6323	Mayoiga	12	Drama Horror Mystery Psychological	5.8
6324	Nurse Witch Komugi-chan Magikarte Z Special	1	Comedy Parody	5.8
6325	Planetes Picture Drama	9	Comedy Sci-Fi Space	5.8
6326	Relic Armor Legaciam	1	Action Mecha Sci-Fi	5.8
6328	Seisen Cerberus: Ryuukoku no Fatalités	13	Adventure Fantasy	5.8
6329	Shokupan Mimi	12	Comedy	5.8
6330	Sword Gai	1	Action Seinen Supernatural	5.8
6331	Umi no Mizu wa Naze Karai	1	Historical	5.8
6332	Violence Jack: Jigoku Gai-hen	1	Action Drama Horror	5.8
7524	Bonobono (TV) Specials	9	Comedy	5.8
7596	Chibikuro Sambo no Tora Taiji	1	Kids	5.8
7608	Chii-chan to Hige Ojisan	10	Kids Slice of Life	5.8
7769	Egao ni Dai Sekkin	1	Kids Music	5.8
7872	Ganbare! Moudouken Serve	1	Slice of Life	5.8
8041	Hayabusa: Back to the Earth	1	Historical	5.8
8045	Hazedon	26	Adventure Comedy Kids	5.8
8505	Kitsune to Budou	1	Drama Kids	5.8
8549	Konchuu Tsurezuregusa	1	Kids Slice of Life	5.8
8592	Kumo no Ito	1	Fantasy	5.8
8723	Manga Hajimete Monogatari OVA	1	Adventure Comedy Historical	5.8
8800	Mimizuku to Tsuki-sama	1	Drama Kids	5.8
8806	Minami no Kuni kara Kita Tegami	1	Kids Music	5.8
8849	Momonga-mon	5	Adventure Kids	5.8
9011	Noobow: Kieta Medal	1	Kids Slice of Life	5.8
9022	Norasco (TV)	43	Comedy Slice of Life	5.8
9224	Pikaia!	13	Drama Kids Slice of Life	5.8
9523	Shounen Ninja Kaze no Fujimaru: Nazo no Arabiya Ningyou	1	Action Adventure Samurai Shounen	5.8
9593	Sore Ike! Anpanman: Kieta Jam Ojisan	1	Adventure Fantasy Kids	5.8
6298	Alexander Senki	13	Action Adventure Fantasy Historical Sci-Fi Supernatural	5.81
6299	Boku no Imouto wa &quot;Osaka Okan&quot;: Haishin Gentei Osaka Okan.	1	Comedy	5.81
6300	Canvas: Sepia-iro no Motif	2	Comedy Romance Slice of Life	5.81
6301	Cyborg 009: The Reopening	1	Action Adventure Mecha Sci-Fi Shounen	5.81
6302	Evidence	1	Music	5.81
6303	Hacka Doll	2	Fantasy	5.81
6304	I&#039;m Here with You	1	Kids Music	5.81
6305	Iczer-Girl Iczelion	2	Action Adventure Sci-Fi	5.81
6306	Ishikeri	1	Comedy	5.81
6307	Joseito	1	Drama School Slice of Life	5.81
6308	Kataribe Shoujo Honoka	1	Slice of Life Supernatural	5.81
6309	Kidou Shinsengumi Moeyo Ken	4	Adventure Comedy Historical	5.81
6310	Landlock	2	Adventure Fantasy Sci-Fi	5.81
6311	Makkuramori no Uta	1	Music	5.81
6312	Moekan The Animation	3	Comedy Romance	5.81
6313	Ninja Ryuukenden	1	Adventure Demons Drama Sci-Fi Shounen Supernatural Thriller	5.81
6314	Taneyamagahara no Yoru	1	Fantasy Kids Psychological Slice of Life	5.81
6315	Uchurei!	12	Comedy Sci-Fi Slice of Life	5.81
6327	Saiki Kusuo no Ψ-nan	1	Comedy School Shounen Supernatural	5.81
7340	47 Todoufuken R	12	Comedy Kids	5.81
7788	Eun-sil-i	1	Drama	5.81
8342	Kaiketsu Zorori Da-Da-Da-Daibouken!	1	Adventure Comedy	5.81
8986	Ninja Hattori-kun (2012) Special	1	Comedy Kids	5.81
9104	Onigakure Yama no Soba no Hana	1	Demons Historical Kids	5.81
9293	Qin Shiming Yue Tebie Pian: Di Zi Jiang Xi	1	Action Fantasy Historical Martial Arts	5.81
9731	Tarepanda	1	Music	5.81
6287	Band of Ninja	1	Action	5.82
6288	Denshinbashira no Okaasan	1	Drama	5.82
6289	Doggy Poo	1	Fantasy Kids	5.82
6290	Fuuun Ishin Dai☆Shogun	12	Action Historical Mecha	5.82
6291	Ice Movie	1	Action Military Sci-Fi	5.82
6292	Kyoto Animation: Hoshi-hen	1	Fantasy	5.82
6293	Onara Gorou	13	Comedy	5.82
6294	PES: Peace Eco Smile	7	Slice of Life Space	5.82
6295	Platonic Chain	24	Sci-Fi Slice of Life	5.82
6296	Shinkai no Kantai: Submarine 707	1	Action Adventure Military Sci-Fi	5.82
6297	Transformers Zone	1	Mecha Sci-Fi	5.82
7351	Agigongryong Doolie	6	Adventure Kids	5.82
9370	Samuraider: Nazo no Tenkousei	1	Action Drama Samurai	5.82
9568	Sore Ike! Anpanman: Anpanman no Jin-Jin-Jingle Bells	1	Comedy Fantasy Kids	5.82
10037	Yanbo Ninbo Tonbo	39	Fantasy	5.82
10060	Yodomi no Sakagi	1	Drama	5.82
10114	Zettai Zetsumei Dangerous Jiisan	33	Comedy Kids	5.82
6257	Choboraunyopomi Gekijou Ai Mai Mii	13	Comedy Slice of Life	5.83
6259	Chuumon no Ooi Ryouriten (1993)	1	Fantasy Horror Supernatural	5.83
6263	Imokawa Mukuzo: Genkanban no Maki	1	Comedy	5.83
6271	Akane Maniax	3	Comedy Mecha Romance	5.83
6272	Awake	2	Action Mecha Parody Sci-Fi	5.83
6273	Battle Break	1	Action Kids	5.83
6274	Battle Royal High School	1	Action Horror Martial Arts Super Power Supernatural	5.83
6275	Doudou	2	Fantasy	5.83
6276	Hashire Melos	1	Drama Historical	5.83
6277	Lupin VIII	1	Adventure Comedy Shounen	5.83
6278	Mame-Mofu Collab Animation	1	Comedy	5.83
6279	Minna Atsumare! Falcom Gakuen	13	Comedy Parody School Seinen	5.83
6280	Misute♡naide Daisy	12	Comedy Romance Sci-Fi	5.83
6281	Ougon no Hou: El Cantare no Rekishikan	1	Fantasy Historical	5.83
6282	Peeping Life TV: Season 1??	12	Comedy Slice of Life	5.83
6283	Romantica Clock	3	Shoujo	5.83
6284	Satsujin Kippu wa Heart-iro	1	Mystery Shoujo	5.83
6285	Tokiwa Kitareri!!	1	Action Magic Shounen	5.83
6286	Utopa	1	Sci-Fi	5.83
7552	Burning Village	10	Fantasy Horror	5.83
7713	Dohyou no Oni-tachi	1	Drama Historical Sports	5.83
7747	Doukyuusei	1	Kids Music	5.83
7873	Ganbare! Oden-kun	102	Comedy	5.83
8057	Hello Kitty no Cinderella (OVA)	1	Fantasy Kids	5.83
8078	Hello Kitty no Oyayubi-hime (OVA)	1	Fantasy Kids	5.83
8460	Kibun wa Uaa Jitsuzai OL Kouza	1	Comedy Seinen	5.83
8995	Ninpuu Kamui Gaiden: Tsukihigai no Maki	1	Action Adventure Historical Martial Arts Samurai	5.83
9129	Oshare Majo Love and Berry: Shiawase no Mahou	1	Magic	5.83
9146	Otokogi	3	Seinen	5.83
9869	Ucchare Goshogawara	1	Martial Arts School Shounen Sports	5.83
10132	Zukkoke Sannin-gumi no Hi Asobi Boushi Daisakusen	1	Drama Kids	5.83
6256	Alps no Shoujo Heidi Pilot	1	Comedy Drama Slice of Life	5.84
6258	Choujin Locke: Mirror Ring	1	Action Sci-Fi Super Power	5.84
6260	ClassicaLoid	25	Comedy Music	5.84
6261	Grendizer Giga	1	Action Mecha	5.84
6262	Hoshi no Orpheus	1	Fantasy Kids	5.84
6264	Love Position: Halley Densetsu	1	Fantasy Sci-Fi	5.84
6265	Mini Moni the TV	15	Comedy	5.84
6266	Next Senki Ehrgeiz	12	Action Mecha Sci-Fi	5.84
6267	Onizushi	3	Comedy Demons	5.84
6268	Ravex in Tezuka World	1	Music Space	5.84
6269	Sakura Taisen: Kanadegumi	1	Shoujo	5.84
6270	Soul Link Picture Drama	3	Romance Sci-Fi	5.84
7407	Anime Rakugo Kan	4	Comedy	5.84
8098	Hello Kitty: Ringo no Mori no Fantasy	13	Comedy Fantasy Kids	5.84
8252	Itoshi no Muco OVA	1	Comedy Slice of Life	5.84
9761	Tetsuwan Atom: Chikyuu Saigo no Hi	1	Mecha Sci-Fi	5.84
6239	Blame! Prologue	2	Action Mecha Sci-Fi	5.85
6241	Futari wa Milky Holmes	12	Comedy Mystery Super Power	5.85
6242	Growlanser IV: Wayfarer of the Time	1	Action	5.85
6243	High Score	8	Comedy Shoujo	5.85
6244	Irodorimidori: Change Our Mirai!	1	Music	5.85
6245	Mahou Shoujo Taisen	26	Magic	5.85
6246	Monster Farm 5: Circus Caravan OVA - Kessei!! Orcoro Circus	1	Action Fantasy Shounen	5.85
6247	Okubyou na Venus	1	Music	5.85
6248	Oval x Over	1	Cars	5.85
6249	Parappa the Rapper	30	Comedy Fantasy	5.85
6250	Popful Mail	1	Comedy Fantasy Music	5.85
6251	Portable Kuukou	1	Music Sci-Fi	5.85
6252	Rakushou! Hyper Doll	2	Adventure Comedy Magic Sci-Fi Shounen	5.85
6253	Shounen Kenya	1	Adventure	5.85
6254	Show By Rock!!: Plasmagica na Gogo	3	Comedy	5.85
6255	Youseiki Suikoden	1	Action Fantasy Martial Arts	5.85
7860	Game Center Arashi	26	Comedy Game Kids Shounen	5.85
8162	Hong Ling Jin Xia	1	Action School	5.85
9783	The Siamese: First Mission	1	Action	5.85
9925	Ushiro no Hyakutarou	2	Horror School Supernatural	5.85
9971	Watashitachi Luck Logic-bu! 2	Unknown	Comedy School	5.85
6225	Aura Battler Dunbine OVA	3	Adventure Mecha Sci-Fi	5.86
6226	Chaos Dragon: Sekiryuu Seneki	12	Action Fantasy Supernatural	5.86
6227	Cheating Craft	12	Action Comedy School	5.86
6228	Chou Kousoku Gran Doll	3	Action Comedy Mecha School	5.86
6229	Egao no Hana	1	Music	5.86
6230	Gundam: G no Reconguista	26	Action Mecha Sci-Fi Space	5.86
6231	Kojiki: Hyuuga-hen	1	Historical	5.86
6232	Mahou Yuugi 3D	1	Comedy Magic	5.86
6233	Mikan-Seijin	26	Comedy	5.86
6234	Mobile Suit Gundam: Zeonic Front - Indignation of Zeon.	1	Mecha Military	5.86
6235	Seihou Tenshi Angel Links Special	1	Comedy Sci-Fi Space	5.86
6236	Studio Khara vs. CyberConnect2 Gachinko! Animation Taiketsu!	2	Action	5.86
6237	Superflat First Love	1	Adventure Fantasy	5.86
6238	Yugami-kun ni wa Tomodachi ga Inai	2	Comedy Romance School Slice of Life	5.86
7556	Byulbyul Iyagi 2	6	Drama Psychological	5.86
7568	Challenge Ichinensei de Kakkoii Ichinensei ni Henshin!	1	Kids	5.86
8244	Ishinomori Shoutarou no Rekishi Adventure	5	Historical Samurai	5.86
8280	Jingi	2	Adventure Drama Police	5.86
8355	Kakkun Cafe	1	Comedy Parody Slice of Life	5.86
8614	Kyojin no Hoshi: Dai League Ball	1	Drama Sports	5.86
9284	Pururun! Shizuku-chan Aha	51	Comedy Kids	5.86
9312	Ribbon no Kishi (1999)	1	Adventure	5.86
10008	Xiao Taiji	14	Action Kids Martial Arts	5.86
6206	Mori no e	1	Kids Music	5.87
6216	Ali Baba to 40-hiki no Touzoku	1	Action Fantasy	5.87
6217	Aoi Umi no Tristia	2	Adventure Mecha	5.87
6218	Bihada Ichizoku	12	Drama Parody Shoujo	5.87
6219	Hakimono to Kasa no Monogatari	1	Music	5.87
6220	Inuki Kanako Zekkyou Collection: Gakkou ga Kowai!	1	Horror	5.87
6221	Loups=Garous Pilot	1	Mystery Sci-Fi Thriller	5.87
6222	Princess Lover!: Magical Knight Maria-chan	6	Magic Parody	5.87
6223	Sekiei Ayakashi Mangatan	3	Fantasy Historical Supernatural	5.87
6224	Sugar*Soldier	3	Shoujo	5.87
6240	Chikotan	1	Music Psychological	5.87
7388	Al Caral no Isan	1	Sci-Fi	5.87
8718	Manga Aesop Monogatari	1	Adventure Fantasy Kids	5.87
9468	Shin Karate Jigoku-hen	2	Action Martial Arts	5.87
9760	Tetsuro no Kanata	1	Adventure	5.87
9804	Toilet no Hanako-san	1	Horror	5.87
10000	Xi Yang Yang Yu Hui Tai Lang	Unknown	Adventure Comedy Kids	5.87
6198	7-kakan.	1	Music	5.88
6199	Divine Gate	12	Action Fantasy Sci-Fi	5.88
6200	Honey Tokyo	1	Sci-Fi	5.88
6201	HORIZON feat. Hatsune Miku	1	Music	5.88
6202	Jikuu Tenshou Nazca	12	Action Adventure Drama Fantasy Magic	5.88
6090	Dai Yamato Zero-gou	5	Sci-Fi Space	5.95
6203	Juusenki L-Gaim I: Pentagona Window + Lady Gyabure	1	Action Adventure Drama Mecha Sci-Fi Shounen Space	5.88
6204	Kyoto Animation: Hana-hen	1	Slice of Life	5.88
6205	lilac (bombs Jun Togawa)	1	Music	5.88
6207	Nimrod	1	Fantasy Music	5.88
6208	Platonic Chain: Web	1	Sci-Fi Slice of Life	5.88
6209	Shin Seiki Den Mars	13	Mecha Sci-Fi Shounen	5.88
6210	Super Milk-chan	14	Action Comedy Parody Sci-Fi	5.88
6211	Super Speed	1	Music	5.88
6212	Suteneko Tora-chan	1	Music	5.88
6213	Tie Shan Gongzhu	1	Action Adventure Fantasy	5.88
6214	Top wo Nerae! Gunbuster Specials	3	Mecha Space	5.88
6215	Wizardry	1	Action Adventure Fantasy	5.88
7537	Brave Fire S0.9	1	Mecha Sci-Fi	5.88
7565	Cello Hiki no Gauche (OVA)	1	Drama Fantasy Music	5.88
7691	Damen&#039;s Walker	12	Comedy Romance	5.88
8292	Judo-bu Monogatari	2	School Sports	5.88
8337	Kaibutsu-kun: Demon no Ken	1	Comedy Horror Kids Shounen	5.88
8667	Maabou no Shounen Koukuu Tsuwamono	1	Historical	5.88
8977	Nikoniko Pun	40	Comedy Fantasy Kids	5.88
8990	Ninja Hattori-kun: Nin Nin Ninpo Enikki no Maki	1	Comedy Martial Arts Slice of Life	5.88
9605	Sore Ike! Anpanman: Ningyohime no Namida	1	Comedy Kids	5.88
9626	Sore Ike! Anpanman: Yousei Rinrin no Himitsu	1	Comedy Fantasy Kids	5.88
9664	Sugar Bunnies Fleur	26	Kids	5.88
9848	Tsuki ga Noboru made ni	1	Drama Historical	5.88
10040	Yankee Reppuu-tai	6	Adventure Drama Shounen	5.88
6170	Calm	1	Dementia Music	5.89
6171	Coluboccoro	1	Fantasy Sci-Fi	5.89
6183	All That Gundam	1	Action Mecha Sci-Fi	5.89
6184	Anitore! XX	12	Comedy Sports	5.89
6185	Aquarion Logos	26	Action Comedy Drama Fantasy Mecha Romance Sci-Fi	5.89
6186	Arabian Nights: Sindbad no Bouken	1	Action Adventure Fantasy	5.89
6187	Baka Misérables	3	Music Parody	5.89
6188	Grandeek	1	Adventure Fantasy Magic	5.89
6189	Gundam: Mission to the Rise	1	Action Mecha Sci-Fi	5.89
6190	Mahou Shoujo Lalabel: Umi ga Yobu Natsuyasumi	1	Comedy Magic Shoujo Slice of Life	5.89
6191	Peeping Life: The Perfect Extension	10	Comedy Slice of Life	5.89
6192	Rean no Tsubasa	6	Fantasy Mecha Sci-Fi	5.89
6193	Toukiden 2	3	Action Demons	5.89
6194	Touyama Sakura Uchuu Chou: Yatsu no Na wa Gold	1	Action Sci-Fi	5.89
6195	Usakame	12	Comedy Shounen Sports	5.89
6196	Waza no Tabibito	1	Adventure Fantasy	5.89
6197	Wellber no Monogatari: Kanashimi no Senshi Galahad no Banka	1	Action Adventure Comedy Fantasy	5.89
7335	2020 Nyeon Ujuui Wonder Kiddy	13	Sci-Fi Space	5.89
7847	Fuusen Inu Tinny	26	Adventure Kids	5.89
8258	Jakusansei Million Arthur Specials	3	Comedy Fantasy	5.89
8268	Jewelpet: Attack Chance!?	Unknown	Comedy Fantasy Magic Shoujo	5.89
8778	Meoteoldosa	1	Action Adventure Fantasy Magic Shounen	5.89
8842	Moeru! Oniisan (OVA)	2	Comedy	5.89
9209	Perman: Birdman ga Yatte Kita!!	1	Adventure Comedy Kids Super Power	5.89
9576	Sore Ike! Anpanman: Baikinman no Gyakushuu	1	Comedy Fantasy Kids	5.89
10018	Xiongmao Monogatari TaoTao	1	Comedy Fantasy Kids	5.89
6172	Cosplay Complex: Extra Identification	1	Comedy	5.9
6173	DinoZone	5	Adventure Sci-Fi Shounen	5.9
6174	Gakuen Tokusou Hikaruon	1	Action Martial Arts School Super Power	5.9
6175	Gregorio	1	Music	5.9
6176	Hatsune Miku x Tetsuya Nomura	1	Music	5.9
6177	Inishie no Megami to Houseki no Ite	1	Action	5.9
6178	Karen Senki	11	Action Sci-Fi	5.9
6179	Lupin Shanshei	10	Comedy Parody	5.9
6180	Shishunki Bishoujo Gattai Robo Z-MIND	6	Action Mecha Parody	5.9
6181	Taiyou no Hou: El Cantare e no Michi	1	Fantasy Historical	5.9
6182	Tang Lang Bu Chan	1	Historical	5.9
7734	Dorami-chan: Hello Kyouryuu Kids!!	1	Fantasy	5.9
8174	Hotaru Kagayaku	1	Drama Kids	5.9
8219	Ikkyuu-san: Ooabare Yancha-hime	1	Comedy Historical Kids	5.9
8562	Korogashi Ryouta	3	Action Comedy Seinen	5.9
8576	Koume-chan ga Iku!	12	Comedy Romance Slice of Life	5.9
8756	Maze Maze Wien	1	Dementia	5.9
8945	Neko Neko Nihonshi	Unknown	Historical Parody	5.9
9256	Pops	1	Romance Shoujo Slice of Life	5.9
9283	Pururun! Shizuku-chan	51	Comedy Kids	5.9
9463	Shin Dokonjou Gaeru: Dokonjou Yumemakura	1	Comedy Slice of Life	5.9
9765	The Adventures of T-Rex	52	Action Adventure Comedy Kids	5.9
6148	Persona 3 the Movie Meets “Walkman”	1	Drama	5.91
6156	Asako Get You!!	2	Comedy Romance School Seinen Slice of Life	5.91
6157	Babel Nisei (2001)	13	Action Adventure Mystery Sci-Fi Shounen Supernatural	5.91
6158	Goulart Knights: Evoked the Beginning Black	1	Action Drama Fantasy Shoujo Supernatural	5.91
6159	Hoshi no Kirby: Pilot	1	Adventure Comedy Fantasy Parody	5.91
6160	Hoshikuzu Paradise	1	Comedy Romance	5.91
6161	Houkago no Tinker Bell	1	Comedy Drama Mystery Romance School Slice of Life	5.91
6162	Kashi no Ki Mokku	52	Adventure Fantasy	5.91
6163	Mahou no Princess Minky Momo vs. Mahou no Tenshi Creamy Mami	1	Magic Shoujo	5.91
6164	Ryuu Seiki	2	Action Demons Fantasy Sci-Fi	5.91
6165	Shizuku	1	Comedy	5.91
6166	Sweet Valerian	18	Action Comedy Magic School Shoujo	5.91
6167	Ttori wa Zeta Robot	1	Action Adventure Kids Mecha	5.91
6168	Unkai no Meikyuu Zeguy	2	Action Adventure Fantasy	5.91
6169	X Densha de Ikou	1	Dementia Mystery Supernatural	5.91
7386	Akuma-kun (Movie)	1	Adventure Fantasy Horror Magic Supernatural	5.91
7414	Ano Yama ni Noborou yo	1	Adventure Fantasy Kids	5.91
7456	Ba La La Xiao Mo Xian Zhi: Meng Huan Xuan Lu	52	Comedy Magic Shoujo	5.91
7615	Chiisana Teien	1	Adventure Fantasy	5.91
7889	Gegege no Kitarou: Kitarou no Yuurei Densha	1	Adventure Demons Super Power Supernatural	5.91
8018	Hangyodon no Hadaka no Ou-sama	1	Fantasy Kids	5.91
8435	Kero Kero Keroppi no Aladdin to Mahou no Lamp	1	Fantasy Kids	5.91
9272	Private Eye Dol	3	Comedy Mystery	5.91
10023	Yajikita Gakuen Douchuuki	2	Adventure Martial Arts School Shoujo	5.91
6135	Bara no Hana to Joe	1	Drama Kids	5.92
6136	Battery	11	Drama Slice of Life Sports	5.92
6137	Dragon Slayer Eiyuu Densetsu: Ouji no Tabidachi	2	Action Fantasy Magic	5.92
6138	Dragoon	3	Adventure Fantasy	5.92
6139	Duel Masters	26	Action Adventure Comedy Shounen	5.92
6140	Haru wa Kuru	1	Adventure	5.92
6141	Kaitou Reinya	12	Comedy	5.92
6142	Majokko Club Yoningumi: A Kuukan kara no Alien X	1	Action Comedy Magic Parody Sci-Fi	5.92
6143	Malice@Doll	3	Horror Psychological Sci-Fi	5.92
6144	Meisou-Ou Border	1	Adventure	5.92
6145	Mobile Suit Gundam ZZ: Gundam Frag.	2	Action Mecha Military Sci-Fi	5.92
6146	Moon Festa	1	Music	5.92
6147	Onsen Yousei Hakone-chan	13	Comedy Seinen Slice of Life	5.92
6149	Pugyuru	13	Comedy Fantasy School	5.92
6150	REACH x Thermae Romae: Pietrada no Kekkon	1	Comedy Historical Seinen	5.92
6151	Slime Boukenki: Umi da Yeah!	1	Action Adventure Comedy Fantasy Game	5.92
6152	Sweet Valerian Specials	8	Comedy Magic Shoujo	5.92
6153	Tobira wo Akete	1	Action Adventure Fantasy Sci-Fi	5.92
6154	Turnover	1	School Slice of Life	5.92
6155	YanYan Machiko	Unknown	Comedy Slice of Life	5.92
7954	Gon 2nd Season	26	Action Adventure Kids	5.92
8451	Kero Kero Keroppi no Tomodachi ni Narou yo	1	Fantasy Kids	5.92
8459	Ki-Fighter Taerang	26	Adventure Kids	5.92
8465	Kigyou Senshi Yamazaki: Long Distance Call	1	Drama Sci-Fi Seinen	5.92
9410	Sekai Monoshiri Ryoko	1006	Comedy	5.92
9539	Silk Road Shounen Yuuto	26	Adventure Fantasy Historical	5.92
9643	Spo-chan Taiketsu: Youkai Daikessen	1	Kids	5.92
9831	Toshi Souzou Gakubu Shoukai	Unknown	Slice of Life	5.92
9961	Washimo	10	Comedy Kids School Sci-Fi Slice of Life	5.92
10089	Yume wo Kanaeru Zou	12	Comedy	5.92
6121	Anisava	13	Comedy Romance Slice of Life	5.93
6122	Cream Lemon: New Generation	4	Drama Romance	5.93
6123	Down Load: Namu Amida Butsu wa Ai no Uta	1	Action Adventure Psychological Sci-Fi	5.93
6124	Fire Emblem	2	Action Adventure Fantasy Magic Shounen	5.93
6125	Flying Witch Petit	9	Comedy Slice of Life Supernatural	5.93
6126	Ginsoukikou Ordian	24	Mecha Sci-Fi	5.93
6127	Hoshi no Umi no Amuri	3	Adventure Fantasy Sci-Fi	5.93
6128	Little Nemo Pilot (1987)	1	Adventure	5.93
6129	Meisou! Underworld	1	Action Supernatural Thriller	5.93
6130	Moegaku★5	40	Magic Parody	5.93
6131	Namida no Tsubomi	1	Music Slice of Life	5.93
6132	Neko nanka Yondemo Konai.	12	Seinen Slice of Life	5.93
6133	Norn9: Norn+Nonet Recap	1	Adventure Fantasy Josei Romance	5.93
6134	Youkai Ningen Bem (2006)	26	Horror	5.93
7470	Baku Tech! Bakugan Gachi: Tokubetsu-hen	1	Action Game Shounen	5.93
7959	Gothicmade: Hana no Utame	1	Mecha Romance Sci-Fi	5.93
8072	Hello Kitty no Momotarou	1	Fantasy Kids	5.93
8179	Huckleberry no Bouken (Movie)	1	Adventure Drama Historical	5.93
8198	Ichigatsu ni wa Christmas	1	Romance	5.93
8495	Kintarou	1	Drama	5.93
9061	Oh! Super Milk-chan Special	1	Action Comedy Sci-Fi	5.93
9367	Sakuran Boy DT	11	Comedy Super Power	5.93
9505	Shitakiri Suzume	1	Drama	5.93
9615	Sore Ike! Anpanman: Sora Tobu Ehon to Glass no Kutsu	1	Comedy Fantasy Kids	5.93
9889	Ukkari Pénélope OVA	2	Fantasy	5.93
6102	Akai Hayate	4	Action Martial Arts Super Power	5.94
6103	Kantoku Fuyuki Todoki	13	Comedy Josei Slice of Life	5.94
6104	Kobutori (1929)	1	Comedy Demons	5.94
6105	Koroshiya 1 The Animation: Episode 0	1	Action Dementia Drama Horror Martial Arts Psychological Seinen	5.94
6106	Kotatsu Neko (ONA)	2	Comedy	5.94
6107	Kumo to Tulip	1	Adventure	5.94
6108	Kuro to Kin no Akanai Kagi.	2	Romance Shoujo	5.94
6109	Mahou Shoujo Lyrical Nanoha: Lyrical Toy Box	1	Magic Music	5.94
6110	Meshimase Lodoss-tou Senki: Sorette Oishii no?	13	Comedy	5.94
6111	Moshidora Recap	1	Drama Sports	5.94
6112	Santa Company	1	Fantasy	5.94
6113	Seirei Tsukai	1	Action Adventure Fantasy Magic Romance Shounen Supernatural	5.94
6114	Selector Infected WIXOSS: Midoriko-san to Piruruku-tan	3	Comedy	5.94
6115	Shounen Ashibe: Go! Go! Goma-chan	Unknown	Comedy Slice of Life	5.94
6116	Toukiden: The Age of Demons - Introduction	1	Action Demons	5.94
6117	Uchuu Enban Dai-Sensou	1	Action Mecha Romance	5.94
6118	Wake Up Girl Zoo! Miyagi PR de Go!	1	Comedy	5.94
6119	Youchien Senshi: Hanamaru Girls	3	Action Comedy Kids	5.94
6120	Yume no Ukiyo ni Saitemina	1	Music	5.94
7752	Dr. Slump: Arale-chan no Koutsuu Anzen	1	Comedy Sci-Fi Shounen	5.94
8099	Hello Kitty: Ringo no Mori no Mystery	13	Comedy Kids Mystery	5.94
8329	Kagee Grimm Douwa	52	Adventure Demons Drama Fantasy Historical Kids Magic Romance Supernatural	5.94
8573	Kouchuu Ouja Mushiking Super Battle Movie: Yami no Kaizou Kouchuu	1	Adventure Fantasy	5.94
8630	Lao Fu Zi Fan Dou Zhen Tan	1	Comedy Seinen	5.94
9649	Starlight Scramble Renai Kouhosei	2	Action Romance Sci-Fi	5.94
9994	X Bomber	25	Action Adventure Kids Mecha Sci-Fi Space	5.94
6079	Choboraunyopomi Gekijou Dai Ni Maku Ai Mai Mii: Mousou Catastrophe	12	Comedy Slice of Life	5.95
6087	11eyes Picture Drama	13	Comedy	5.95
6088	Blade &amp; Soul Specials	7	Comedy	5.95
6089	Bloodivores	12	Action Supernatural Vampire	5.95
6093	Handsome Girl	1	Romance Shoujo	5.95
6094	Juusenki L-Gaim II: Farewell My Lovely + Pentagona Doors	1	Action Adventure Drama Mecha Sci-Fi Shounen Space	5.95
6095	MAPS	4	Adventure Comedy Sci-Fi	5.95
6096	Mujigen Hunter Fandora	3	Adventure Fantasy Sci-Fi	5.95
6097	Pankunchi	10	Adventure Kids	5.95
6098	Psycho Diver: Mashou Bosatsu	1	Horror Psychological Sci-Fi	5.95
6099	Rolling☆Girls: Chibi☆Rolling☆Girls Korokoro Gekijou	12	Slice of Life	5.95
6100	Ten no Kawa	1	Fantasy Music	5.95
6101	Yuri Seijin Naoko-san	1	Comedy	5.95
7849	Fuusen no Doratarou	13	Kids	5.95
8738	Manga Nippon Mukashibanashi	12	Historical	5.95
9734	Tatakae!! Ramenman (Movie)	1	Action Adventure Martial Arts Shounen	5.95
6078	Boku no Imouto wa &quot;Osaka Okan&quot;	12	Comedy	5.96
6080	Dark Side Cat	6	Action	5.96
6081	Erementar Gerad: Aozora no Senki	1	Music	5.96
6082	Fake Doll	1	Music	5.96
6084	Mahou no Tenshi Creamy Mami: Zutto Kitto Motto	1	Fantasy Magic Music Romance School Sci-Fi Shoujo	5.96
6085	Mugen no Ryvius: Illusion	6	Comedy	5.96
6086	Oshare Kozou wa Hanamaru	1	Romance Shoujo	5.96
6092	Garo: Guren no Tsuki	23	Action Demons Fantasy Magic Supernatural	5.96
7681	Cynical Hysterie Hour: Trip Coaster	1	Comedy Slice of Life	5.96
9003	Nobara no Julie	13	Adventure Drama Historical Music	5.96
9241	Pochacco no Jack to Mame no Ki	1	Fantasy Kids	5.96
9279	Project HAL	3	Action Mecha	5.96
9497	Shiritsu Tantai: Toki Shouzou Trouble Note - Hard &amp; Loose	1	Action Mystery	5.96
6065	Ame to Shoujo to Watashi no Tegami	1	Shoujo	5.97
6066	Bab Mook Ja	1	Slice of Life	5.97
6067	Fushigi na Somera-chan	12	Comedy Magic Slice of Life	5.97
6068	Juuza Engi: Engetsu Sangokuden - Gaiden Youzhou Genya	1	Fantasy Historical Romance Shoujo	5.97
6069	Kakko Kawaii Sengen!	5	Comedy	5.97
6070	Kiitarou Shounen no Youkai Enikki	12	Comedy Supernatural	5.97
6071	Kikyuu	1	Music	5.97
6072	Long Riders Recap	1	Comedy Shounen Slice of Life Sports	5.97
6073	Marie &amp; Gali Episode Zero	1	Comedy	5.97
6074	Mobile Suit SD Gundam Mk V	3	Comedy Mecha Parody Sci-Fi	5.97
6075	Mother: Saigo no Shoujo Eve	1	Adventure Drama Sci-Fi	5.97
6076	Refrain Blue	3	Drama Romance	5.97
6077	Yuki Terai	6	Music	5.97
6083	Hatsune Miku: Hiyashite Narasou Okashi no Ii Oto	1	Music	5.97
7415	Anpanman to Hajime yo! Iro Kazu Katachi Wakarukana Iro Katachi	1	Kids	5.97
9730	Tao Hua Yuan Ji	1	Fantasy Historical	5.97
10025	Yakushiji Ryouko no Kaiki Jikenbo: Hamachou Voice &amp; Fiction	1	Mystery Police Supernatural	5.97
6049	Beast Saga	38	Action Kids Sci-Fi Shounen	5.98
6050	Boku no Imouto wa &quot;Osaka Okan&quot;: Uchi no Oniichan wa Tokyo Rule	1	Comedy	5.98
6051	Boku wa Kuma	1	Kids Music Slice of Life	5.98
6052	Crazy for It	1	Dementia Music	5.98
6053	Donyatsu Specials	2	Comedy Sci-Fi Seinen	5.98
6054	Dream Creator feat. GUMI	1	Music	5.98
6056	Hashire!	1	Comedy	5.98
6057	Kaichuu!	4	Comedy Seinen Sports	5.98
6058	Kamisama Dolls Specials	6	Comedy	5.98
6059	Magma Taishi	13	Action Sci-Fi Shounen Space Super Power	5.98
6060	Mahou Shoujo Sonico★Magica	1	Music Parody	5.98
6061	Ninja Mono	2	Adventure Comedy Shounen Supernatural	5.98
6062	Stitch!: Piko Kara no Chousenjou	1	Adventure Comedy Kids	5.98
6063	Yoshino no Hime	1	Comedy Fantasy Historical Slice of Life	5.98
6064	Yu Bang Xiang Zheng	1	Historical	5.98
6030	6♥Princess	1	Magic Music	5.99
6031	D-1 Devastator	2	Mecha Sci-Fi	5.99
6032	Dededen	5	Slice of Life	5.99
6033	Dibetagurashi: Ahiru no Seikatsu	39	Comedy Slice of Life	5.99
6034	Early Reins	1	Action Adventure Seinen	5.99
6035	First Squad	1	Action Music	5.99
6036	Ghibli ga Ippai Special Short Short	10	Slice of Life	5.99
6037	Gun x Sword-san	13	Action Dementia Parody	5.99
6038	Hoshizora Kiseki	1	Romance Sci-Fi	5.99
6039	Idol Project	4	Adventure Comedy Music	5.99
6040	Katsura Hime	1	Action Comedy	5.99
6041	Kita e: Pure Session	1	Music	5.99
6042	Melody	1	Drama	5.99
6043	Nenga no Kizuna	1	Slice of Life	5.99
6044	Nexus	1	Music	5.99
6045	SD Gundam Gaiden	4	Adventure Comedy Fantasy Mecha	5.99
6046	Si Ling Bianma: Zhi Shijie Caozong Zhe	12	Fantasy Game Horror Mystery Parody Psychological	5.99
6047	Space Station No.9	1	Music Sci-Fi	5.99
6048	Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e	1	Comedy Romance School	5.99
6366	Kaijuu Girls: Ultra Kaijuu Gijinka Keikaku	12	Comedy Fantasy Parody	5.99
6019	Comet Lucifer	12	Action Adventure Fantasy Mecha	6
6020	Gdleen	1	Fantasy Sci-Fi	6
6021	Kodomo no Keijijougaku	1	Fantasy	6
6022	Medamayaki no Kimi Itsu Tsubusu?	4	Comedy Seinen	6
6023	Nanairo Kakumei	3	Comedy School Shoujo	6
6024	Planet:Valkyrie	1	Action Music	6
6025	Sekai Kei Sekai Ron	1	Psychological Sci-Fi	6
6026	Shin Onimusha: Dawn of Dreams the Story	1	Action Demons Historical Martial Arts Samurai	6
6027	Sora Iro no Tane	1	Kids	6
6028	T.P. Sakura: Time Paladin Sakura	2	Action Magic	6
6029	The Epic Of ZektBach	1	Action Fantasy Supernatural	6
6055	Gakuen Handsome: Legend of Sexy	2	Comedy Music	6
7420	AOTU Shijie	Unknown	Action Adventure Fantasy Sci-Fi	6
7444	Atashin&#039;chi 3D Movie: Jounetsu no Chou Chounouryoku Haha Dai Bousou	1	Comedy	6
7447	Audition	1	Music	6
7473	Bakusou Circuit Roman Twin	1	Sports	6
7501	Bit the Cupid	48	Comedy	6
7525	Bonobono: Kumomo no Ki no Koto	1	Drama	6
7544	Bug tte Honey: Megarom Shoujo Mai 4622	1	Adventure Comedy	6
7550	Buonomo	13	Slice of Life	6
7570	Chamebou Shin Gachou: Nomi Fuufu Shikaeshi no Maki	1	Comedy	6
7597	Chibikuro Sambo to Futago no Otouto	1	Kids	6
7602	Chichi to Ko	1	Drama	6
7605	Chieri to Cherry	1	Adventure Fantasy Shoujo	6
7619	Chikkun Takkun	23	Comedy Sci-Fi	6
7626	Chinpui: Eri-sama Katsudou Daishashin	1	Comedy	6
7627	Chinyuuki: Tarou to Yukai na Nakama-tachi	3	Comedy	6
7630	Choco to Watashi	1	Kids Music	6
7634	Chokin no Susume	1	Comedy	6
7635	Chotto Ugoku!? &quot;Futeneko&quot;	1	Comedy	6
7642	Choujuu Kishin Dancougar: Juusenki-tai Songs	1	Action Mecha Sci-Fi Shounen	6
7662	Colorful Ninja Iromaki	1	Fantasy	6
7670	Cooking Papa Christmas Special	1	Comedy Slice of Life	6
7707	DigiGirl Pop!: Strawberry &amp; Pop Mix Flavor	26	Comedy Sci-Fi	6
7710	Dochamon Junior 2	Unknown	Comedy Kids	6
7741	Doteraman	20	Comedy Sci-Fi	6
7799	Fight Da!! Pyuta	26	Action Comedy Sci-Fi Shounen	6
7857	Gakushuu Animation Nihon Koku Kenpou	1	Historical	6
7875	Ganbare!! Tabuchi-kun!!	1	Comedy Sports	6
7903	Genki Genki Non-tan (2004)	10	Kids Music	6
7904	Genki Genki Non-tan (2006)	10	Kids Music	6
7906	Genki Genki Non-tan: Spoon Tan Tan Tan	1	Kids Music	6
7907	Genki Genki Non-tan: Utaou! Christmas	1	Kids Music	6
7911	Gensei Shugoshin P-hyoro Ikka	1	Adventure Fantasy	6
7922	Ginga Hyouryuu Vifam: Chicago Super Police 13	1	Action Comedy Parody Police	6
7923	Ginga Hyouryuu Vifam: Kachua Kara no Tayori	1	Action Adventure Mecha Sci-Fi	6
7946	Goi-sensei to Tarou	1	Drama Kids School	6
7957	Good Morning!!! Doronjo	225	Comedy Parody	6
7969	Greek Roman Sinhwa: Olympus Guardian (Movie)	1	Adventure Fantasy Historical	6
8000	Hamster Sam	4	Kids Music	6
8076	Hello Kitty no Ou-sama no Mimi wa Roba no Mimi	1	Fantasy Kids	6
8082	Hello Kitty no Shiawase no Aoi Hotaru	1	Kids	6
8141	himitsukesshatakanotsume.jp Specials	2	Comedy Parody	6
8151	Hitoribotchi	1	Drama	6
8171	Hoshi Shinichi Short Short Special	1	Comedy Sci-Fi	6
8195	Hyper ERT	20	Kids	6
8197	Ichiban Chikaku ni	1	Drama Slice of Life	6
8247	Isobe Isobee Monogatari: Ukiyo wa Tsurai yo (2015)	Unknown	Comedy Historical Shounen	6
8248	Issunboushi	1	Drama	6
8269	Ji no Nai Hagaki	1	Slice of Life	6
8363	Kamiusagi Rope	14	Comedy Slice of Life	6
8364	Kamiusagi Rope (ONA)	Unknown	Comedy Slice of Life	6
8440	Kero Kero Keroppi no Dai Bouken	1	Adventure Fantasy Kids	6
8442	Kero Kero Keroppi no Ganbare! Keroppooz	1	Fantasy Kids Sports	6
8560	Koori no Kuni no Misuke	1	Adventure Kids	6
8563	Korokoro Animal	60	Kids	6
8637	Legend of the Moles: The Frozen Horror	1	Adventure Fantasy Kids	6
8653	Little Twins	3	Adventure Kids	6
8657	Lolling Seutajeu (Movie)	1	Kids Sports	6
8666	Ma Shen	Unknown	Drama Game	6
8670	Maboroshi Mabo-chan	24	Adventure Fantasy Kids	6
8685	Mahou no Princess Minky Momo: Yume wo Dakishimete Specials	3	Magic Shoujo	6
8686	Mahou no Star Magical Emi: Finale! Finale!	1	Comedy Magic Shoujo	6
8700	Makeruna! Senta: Sayonara Ijime Mushi	1	Drama Kids	6
8715	Mameushi-kun no Koutsuu Anzen	1	Drama Kids	6
8745	Mars	2	Action Mecha Sci-Fi Shounen	6
8804	Mina no Mura to Kawa	1	Drama Kids	6
8815	Minna Ichiban!	1	Drama Kids	6
8854	Momotarou no Hi Asobi Yameyou! Hi no Youjin	1	Drama Fantasy Historical Kids	6
8865	Moom	1	Kids	6
8904	Nana Moon	52	Fantasy Kids	6
8909	Nanbo no Monjai! Yankee Gurentai	1	Action Comedy	6
8914	Naniwa Yuukyouden	1	Action Comedy	6
8964	Nidoto Touranai Tabibito	1	Drama Kids	6
8989	Ninja Hattori-kun: Nin Nin Furusato Daisakusen no Maki	1	Comedy Kids Martial Arts Slice of Life	6
9014	Norakuro	26	Comedy	6
9044	Obake Entotsu no Uta	1	Historical Kids	6
9121	Ore no Sora Keiji-hen	2	Action Drama Police	6
9155	Oyo Neko Bunyan	31	Comedy Kids	6
9172	Papa Mama Bye Bye	1	Historical Kids	6
9243	Pochacco no Wakuwaku Birthday	1	Fantasy Kids	6
9318	Rita to Nantoka	26	Slice of Life	6
9319	Robby to Kerobby	52	Comedy Kids	6
9334	Romangeun Eobsda	1	Drama	6
9346	Ryoku Tama Shinshi	1	Comedy Demons	6
9357	Saikin Ponta	12	Kids Slice of Life	6
9360	Saitama Bousou Saizensen Flag! Shinimonogurui no Seishun!!	1	Drama Slice of Life	6
9361	Saitama-ken Zaijuu Fujiyama Osamu 33-sai Mushoku (NEET).: Fujilog Nyuumon-hen	25	Comedy	6
9391	Sasurai-kun	13	Comedy Slice of Life	6
9403	Seisho Gensou Fu: Adam to Eve	1	Historical	6
9413	Sekai no Ouja: King Kong Taikai	1	Adventure Sci-Fi	6
9445	Shibai Taroka	2	Action Comedy Romance School Shounen	6
9451	Shima Kousaku no Asia Risshi-den	26	Drama Seinen	6
9466	Shin Kabukichou Story Hana no Asukagumi!	1	Adventure Drama Shoujo	6
9483	Shinkai Densetsu Meremanoid	24	Adventure Fantasy	6
9489	Shiokari Touge	1	Drama Kids	6
9515	Shounen Ashibe	6	Comedy	6
9516	Shounen Ashibe (TV)	37	Comedy Slice of Life	6
9521	Shounen Muku Hatojuu Monogatari	1	Drama Kids	6
9603	Sore Ike! Anpanman: Minna de Teasobi - Anpanman to Itazura Obake	1	Comedy Fantasy Kids	6
9647	Spy Penguin	5	Kids	6
9669	Suiren no Hito	1	Drama	6
9794	Time Ranger Cesar Boy no Bouken: Roma Teikoku-hen	1	Adventure Sci-Fi	6
9806	Toki no Daichi: Hana no Oukoku no Majo	3	Adventure Fantasy	6
9864	Tu Xia Zhi Qing Li Chuanshuo	1	Action Adventure Comedy	6
9906	Umi no Koumori	1	Drama Kids	6
9908	Umihiko Yamahiko	1	Fantasy Historical	6
9920	Usagi to Kame no Koutsuu Anzen	1	Drama Fantasy Kids	6
9956	Warai no Show Gakkou	20	Comedy Kids	6
9966	Wasurerumonka!	1	Drama Kids	6
9970	Watashitachi no Kurashi to Doboku	3	Historical Kids Samurai	6
10032	Yamakoshi Mura no Mari to Sanbiki no Koinu	1	Drama Kids	6
10044	Yasai no Yousei: Quiz Gekijou	1	Comedy Kids	6
10096	Yuujou no Kickoff	1	Drama Kids Sports	6
5965	Soul Buster	12	Action Samurai	6.01
6002	4-Day Weekend	1	Music	6.01
6004	Baton	3	Adventure Sci-Fi	6.01
6005	Chokkyuu Hyoudai Robot Anime: Straight Title	12	Comedy Mecha	6.01
6006	DušaN	1	Music Psychological	6.01
6007	Full Moon Party	1	Music	6.01
6008	Hipira-kun ONA	2	Comedy Fantasy Kids Supernatural Vampire	6.01
6009	Ima Futari no Michi	1	Drama	6.01
6010	Jack to Mame no Ki (1989)	1	Adventure Dementia Kids	6.01
6011	Kara The Animation	5	Action	6.01
6012	Kotoura-san: Haruka no Heya	6	Comedy School	6.01
6013	Otaku no Seiza	2	Comedy Parody	6.01
6014	Princess Rouge	2	Fantasy Romance	6.01
6015	Ryo	1	Action Drama Historical Samurai	6.01
6016	SOS TV Walpurgis Night Fever	11	Comedy Sci-Fi	6.01
6017	Techno Police 21C	1	Action Mecha Police Sci-Fi	6.01
6018	Ulysses 31 Pilot	1	Action Adventure Sci-Fi Space	6.01
5983	Super Mario World: Mario to Yoshi no Bouken Land	1	Comedy Game Kids	6.02
5984	Active Raid: Kidou Kyoushuushitsu Dai Hachi Gakari	12	Comedy Mecha Police Sci-Fi	6.02
5985	Avenger	13	Adventure Fantasy Sci-Fi Shounen	6.02
5986	Babel Nisei (1992)	4	Action Mecha Sci-Fi	6.02
5987	Bounty Hunter: The Hard	1	Action Police	6.02
5988	Chocotan!	1	Comedy Shoujo	6.02
5989	Chouon Senshi Borgman: Lovers Rain	1	Action Demons Sci-Fi Shounen	6.02
5990	Firestorm	26	Action Mecha Military Sci-Fi	6.02
5991	G-On Riders	13	Action Comedy School Sci-Fi	6.02
5992	Gokiburi-tachi no Tasogare	1	Drama Military	6.02
5993	Ishida to Asakura	12	Comedy School Seinen	6.02
5994	Kingdom of Chaos: Born to Kill	4	Fantasy	6.02
5995	Kizuna (Special)	1	Drama Romance Slice of Life	6.02
5996	La Rose de Versailles	1	Drama Historical Military Romance Shoujo Ai Slice of Life	6.02
5997	Match Shoujo	1		6.02
5998	Mobile Suit SD Gundam Musha Knight Commando	2	Action Comedy Fantasy Mecha Parody	6.02
5999	Oyaji no Imo no Kamisama.	1	Slice of Life	6.02
6000	Sailor Victory	2	Action Comedy Mecha Sci-Fi	6.02
6001	Three Monks	1	Music	6.02
6003	Ashita e Mukau Hito	1	Music	6.02
7933	Glass no Kamen Desu ga to Z	14	Comedy Parody	6.02
5960	Monster Hunter Stories: Ride On	48	Fantasy	6.03
5963	Regalia: The Three Sacred Stars	13	Action Mecha Sci-Fi	6.03
5970	Anime Oyako Gekijou	26	Adventure Fantasy Historical Kids Sci-Fi	6.03
5971	Chiisana Ojisan	30	Slice of Life	6.03
5972	Committed RED	1	Music	6.03
5973	DD Hokuto no Ken 2 Ichigo Aji+	12	Comedy Parody School Seinen	6.03
5974	Forsaken	1	Music Vampire	6.03
5975	Girlfriend (Kari)	12	School Slice of Life	6.03
5976	Himegoto	13	Comedy School	6.03
5977	Kaitou Tenshi Twin Angel: Kyun Kyun☆Tokimeki Paradise!!	12	Magic	6.03
5978	Kokoro Toshokan: Communication Clips	1	Comedy Drama Slice of Life	6.03
5979	Mahou Shoujo Nante Mou Ii Desukara.	12	Comedy Magic	6.03
5980	Petit Eva: Evangelion@School	24	Comedy Parody School	6.03
5981	Puzzle &amp; Dragons Cross	Unknown	Game Kids	6.03
5982	Shihaisha no Tasogare	1	Action Demons Drama Horror Sci-Fi Shoujo Supernatural	6.03
8345	Kaitei Daisensou: Ai no 20000 Miles	1	Action Adventure	6.03
8607	KutsuDaru.	48	Fantasy Kids School Slice of Life	6.03
5947	Angel Cop	6	Action Police Sci-Fi	6.04
5948	Aquarian Age: Saga II - Don&#039;t Forget Me...	1	Action Drama Super Power	6.04
5949	Babyshiba	6	Comedy	6.04
5950	Birth	1	Action Adventure Comedy Sci-Fi	6.04
5951	Bouken! Iczer 3	6	Action Adventure Sci-Fi	6.04
5952	Busou Chuugakusei: Basket Army	5	Action Military	6.04
5953	Deimos no Hanayome: Ran no Kumikyoku	1	Demons Drama Fantasy Horror Magic Mystery Psychological Shoujo Supernatural	6.04
5954	Gall Force: New Era	2	Action Mecha Military Sci-Fi Space	6.04
5955	High School Agent	2	Action Drama Military	6.04
5956	Install Pilot	1	Action Sci-Fi Shounen	6.04
5957	Kerokko Demetan	39	Comedy Fantasy Kids	6.04
5958	Lesson XX	1	Romance Shounen Ai	6.04
5959	Licca-chan to Yamaneko Hoshi no Tabi	1	Adventure Fantasy Kids Magic	6.04
5961	Nayuta	1	Action Sci-Fi Shoujo	6.04
5962	Otome Nadeshiko Koi Techou	1	Historical Shoujo	6.04
5964	Shining Hearts: Shiawase no Pan - Kokoro ga Todoita Picture Drama	6	Fantasy	6.04
5966	Strange+ Special	1	Comedy Shoujo Slice of Life	6.04
5967	Tetsuwan Atom: Ao Kishi no Kan	1	Action Mecha Sci-Fi	6.04
5968	Transformers Superlink Special	1	Adventure Kids Mecha Sci-Fi Shounen	6.04
5969	Transformers: Scramble City	1	Action Mecha Sci-Fi Shounen	6.04
7582	Chengyu Donghua Lang	180	Historical Kids	6.04
8056	Hello Kitty no Alps no Shoujo Heidi II: Klara to no Deai	1	Kids	6.04
8073	Hello Kitty no Nagagutsu wo Naita Neko	1	Fantasy Kids	6.04
8095	Hello Kitty to Issho	16	Comedy Kids Slice of Life	6.04
8103	Hennako-chan	6	Comedy	6.04
8420	Katte ni Shirokuma	1	Comedy	6.04
8629	Lan Mao	Unknown	Adventure Comedy	6.04
8987	Ninja Hattori-kun Plus Perman: Chounouryoku Wars	1	Adventure Martial Arts Super Power	6.04
5918	Mangirl!	13	Comedy Slice of Life	6.05
5932	Chiisana Jumbo	1	Fantasy Kids Music	6.05
5933	Chou Seimeitai Transformers Beast Wars Metals: Convoy Daihenshin!	1	Action Mecha Sci-Fi Super Power	6.05
5934	Dore Dore no Uta	1	Music	6.05
5935	G-9	1	Fantasy	6.05
5936	Glass no Kamen Desu ga the Movie: Onna Spy no Koi! Murasaki no Bara wa Kiken na Kaori!?	1	Comedy Parody	6.05
5937	Hoka Hoka Kazoku	1428	Comedy	6.05
5938	Kaitou Tenshi Twin Angel	2	Magic	6.05
5939	Memories Off	3	Drama Romance	6.05
5940	Mobile Suit Gundam 0083: Stardust Memory Picture Drama - Uchuu no Kagerou 2	1	Action Mecha Space	6.05
5941	Parol no Miraijima	1	Action Adventure Fantasy	6.05
5942	Samurai Girl Real Bout High School	13	Adventure Comedy Fantasy Shounen	6.05
5943	Sengoku Kitan Youtouden Soushuuhen	1	Action Martial Arts Samurai	6.05
5944	Shuten Douji	4	Demons Historical Horror Sci-Fi Shounen Space Supernatural	6.05
5945	Teinenpi Shoujo Haiji	8	Comedy	6.05
5946	vivi	1	Adventure Fantasy Music Romance	6.05
7370	Aitsu to Lullaby: Suiyobi no Cinderella	1	Drama Romance Shounen	6.05
7439	Ashita no Eleventachi	1	Sports	6.05
7647	Chuuhai Lemon: Love 30s - Ame ni Nurete mo	1	Comedy Drama Police Romance	6.05
8092	Hello Kitty no Yume Dorobou	1	Fantasy Kids	6.05
8739	Manga Nippon Mukashibanashi (Movie)	1	Historical	6.05
9218	Pi Po Pa Po Patrol-kun	65	Comedy Kids	6.05
9296	Qin Shiming Yue Zhi: Luosheng Tangxia	1	Action Fantasy Historical Martial Arts	6.05
9627	Sore Ike! Anpanman: Yumeneko no Kuni no Nyanii	1	Comedy Fantasy Kids	6.05
9838	Toumei Shounen Tantei Akira	1	Action Shounen	6.05
5889	Yes! BanG_Dream!	1	Music	6.06
5907	Ayane-chan High Kick!	2	Comedy Shounen Sports	6.06
5908	Behind a Smile	1	Action Demons Music	6.06
5909	Defend Love	1	Adventure Fantasy Magic Mecha Music Romance Sci-Fi Super Power Supernatural	6.06
5910	Gunparade Orchestra	24	Drama Mecha Military Romance Sci-Fi Slice of Life	6.06
5911	Hatsukoi Monster	12	Comedy Romance School Shoujo	6.06
5912	Himitsu Spark	1	Music	6.06
5913	Inferno Cop Specials	2	Action Comedy	6.06
5914	Juusou Kikou Dancougar Nova	12	Mecha	6.06
5915	Koi Hanabi	1	Fantasy Music	6.06
5916	Komaneko no Christmas: Maigo ni Natta Present	1	Comedy Fantasy	6.06
5917	Mahou no Star Magical Emi: Semishigure	1	Comedy Magic Shoujo	6.06
5919	Marginal Prince: Gekkeiju no Ouji-tachi	13	Romance School Shounen Ai	6.06
5920	Maria†Holic: Run Run Riru Ran Ran Rara	1	Comedy Music	6.06
5921	Ninja &amp; Soldier	1	Psychological	6.06
5922	Nobiro Nobiro Daisuki na Ki	1	Fantasy Music	6.06
5923	Osiris no Tenbin	10	Drama Supernatural Thriller	6.06
5924	Puzzle &amp; Dragons CM	2	Game School	6.06
5925	Saa Ikou! Tamagotchi	12	Kids	6.06
5926	Seihou Tenshi Angel Links	13	Action Adventure Comedy Drama Romance Sci-Fi Space	6.06
5927	Shijin no Shougai	1	Drama Fantasy Psychological	6.06
5928	Teito Monogatari	4	Historical Horror Supernatural	6.06
5929	Turning Girls	7	Comedy Slice of Life	6.06
5930	Yuugen Kaisha: Jiken File 00 - Hajimari wa Ayashiku mo Hanayaka ni	1	Adventure Comedy Supernatural	6.06
5931	Cheer Danshi!! Recap	1	School Sports	6.06
7864	Ganbare Goemon: Jigen Jou no Akumu	1	Comedy	6.06
8033	Harley Spiny	140	Kids	6.06
8066	Hello Kitty no Kurumi Wari Ningyou	1	Fantasy Kids	6.06
8690	Mahoutsukai Haley no Speed Story	1	Fantasy Kids Magic	6.06
9085	Okon Joururi	1	Drama Fantasy Historical	6.06
9477	Shin Shounan Bakusouzoku Arakure Knight	2	Adventure	6.06
9485	Shinken Seminar Koukou Kouza	1	School Shounen	6.06
9791	Tiger &amp; Bunny: Too Many Cooks Spoil the Broth	1	Action Comedy Mystery Super Power	6.06
10130	Zouressha ga Yatte Kita	1	Adventure	6.06
5890	Ai to Ken no Camelot: Mangaka Marina Time Slip Jiken	1	Adventure Comedy Fantasy	6.07
5891	Antinotice	1	Music	6.07
5892	Duel Masters Movie 1: Yami no Shiro no Maryuuou	1	Adventure Kids	6.07
5893	Gensou Jotan Ellcia	4	Adventure Fantasy	6.07
5894	Hana no Ko Lunlun: Konnichiwa Sakura no Kuni	1	Drama Magic Shoujo	6.07
5895	Hate You	1	Music	6.07
5896	Idol Bouei-tai Hummingbird	4	Action Adventure Comedy Military Music Shounen	6.07
5897	La Primavera	1	Music	6.07
5898	Misenai Namida wa Kitto Itsuka	1	Fantasy Music	6.07
5899	Oh! Super Milk-chan	12	Action Comedy Parody Sci-Fi	6.07
5900	Oreca Battle	51	Game	6.07
5901	Strobe Light	1	Music	6.07
5902	Taisei Kensetsu: Shin Doha Kokusai Kuukou	1	Drama	6.07
5903	Tomorrow&#039;s Song	1	Music	6.07
5904	Ultraman USA	1	Action Adventure Sci-Fi	6.07
5905	Wake Up Girl Zoo!	10	Comedy	6.07
7690	Dame Oyaji	26	Comedy	6.07
7921	Ginga Hyouryuu Vifam: Atsumatta 13-nin	1	Action Adventure Mecha Sci-Fi	6.07
8170	Hoshi Shinichi Short Short	26	Comedy Sci-Fi	6.07
8999	Nintama Rantarou: Dokutake Onsen no Dan	1	Comedy	6.07
9089	OL Kaizou Kouza	1	Comedy Slice of Life	6.07
9363	Sakura Capusule	1	Kids Slice of Life	6.07
9594	Sore Ike! Anpanman: Kirakira Boshi no Namida	1	Adventure Comedy Kids Super Power	6.07
10129	Zou no Inai Doubutsuen	1	Drama	6.07
5872	Adachi-ga Hara	1	Sci-Fi	6.08
5873	Divergence Eve	13	Adventure Comedy Drama Mecha Military Sci-Fi Space	6.08
5874	GAME OVER feat. Hatsune Miku	1	Music	6.08
5875	Getter Robo (Movie)	1	Action Mecha Sci-Fi Shounen	6.08
5876	Goddamn	2	Action Cars Seinen Sports	6.08
5877	Gunslinger Stratos: The Animation - Kikan/Kaze no Yukue	1	Action Sci-Fi	6.08
5878	Hello Kitty no Kaguya-hime	1	Fantasy Kids	6.08
5879	Himitsu no Akko-chan: Umi da! Obake da!! Natsu Matsuri	1	Magic Shoujo	6.08
5880	Kikou Sennyo Rouran	28	Action Fantasy Mecha	6.08
5881	Koneko no Rakugaki	1	Comedy	6.08
5882	Naikaku Kenryoku Hanzai Kyousei Torishimarikan Zaizen Joutarou	11	Action Drama Police Seinen	6.08
5883	Pankis! 2-jigen	24	Comedy Music	6.08
5884	Sarutobi Ecchan	26	Comedy Kids Magic School	6.08
5885	Scoopers	1	Action Sci-Fi	6.08
5886	Time Slip Ichimannen: Prime Rose	1	Action Adventure Drama Romance Sci-Fi	6.08
5887	Tuzki: Love Assassin	1	Comedy Romance	6.08
5888	Wakusei Robo Danguard Ace tai Konchuu Robot Gundan	1	Mecha Sci-Fi	6.08
7416	Ao no Doumon	1	Drama Historical Kids Samurai	6.08
7863	Ganbare Goemon: Chikyuu Kyuushutsu Daisakusen	1	Comedy Shounen	6.08
7943	Goannai Shimasu Another World e	1	Slice of Life	6.08
8229	Inferious Wakusei Senshi Gaiden Condition Green	6	Action Sci-Fi	6.08
8677	Maegami Tarou	1	Adventure	6.08
8783	Microid S	26	Action Sci-Fi	6.08
8787	Midoriyama Koukou Koushien-hen (Movie)	1	Comedy School Sports	6.08
8859	MonHun Nikki Girigiri Airou Mura: Airou Kiki Ippatsu Specials	2	Action Comedy	6.08
9058	Ogami Matsugorou	1	Action Martial Arts Romance School Shounen	6.08
9098	Onbu Obake	1	Supernatural	6.08
9132	Osiris no Tenbin: Season 2	11	Drama Supernatural Thriller	6.08
9883	UFO Senshi Dai Apolon 2	21	Action Mecha Sci-Fi	6.08
10364	Yebisu Celebrities 1st	1	Yaoi	6.08
5852	Backkom	52	Comedy Kids	6.09
5853	Chime	1	Music	6.09
5854	Dr. Slump Movie 11: Dr. Mashirito &amp; Abale-chan	1	Comedy Sci-Fi Shounen	6.09
5855	Geisters: Fractions of the Earth	26	Action Sci-Fi	6.09
5856	Himitsu no Akko-chan (Movie)	1	Magic School Shoujo	6.09
5857	Mai no Mahou to Katei no Hi	1	Drama Magic	6.09
5858	Minna Atsumare! Falcom Gakuen SC	12	Comedy Parody School Seinen	6.09
5859	Miracle Shoujo Limit-chan	25	Comedy Magic School Sci-Fi Shoujo Super Power	6.09
5860	Mu Di	1	Music	6.09
5861	Musaigen no Phantom World: Limitless Phantom World	7	Comedy Fantasy Supernatural	6.09
5862	Nanmu Ichibyousokusai	1	Historical Music	6.09
5863	Nurse Witch Komugi-chan R	12	Comedy Magic Parody	6.09
5864	Ra/Radio Noise*Planet	1	Adventure Psychological Sci-Fi	6.09
5865	Rokushin Gattai GodMars: Juunanasai no Densetsu	1	Action Mecha Sci-Fi Space	6.09
5866	Saint Beast: Seijuu Kourin-hen	6	Action Fantasy Magic Supernatural	6.09
5867	Tonari no 801-chan R	1	Comedy Music	6.09
5868	Toshi Densetsu Monogatari Hikiko	1	Horror	6.09
5869	Ultraviolet: Code 044	12	Action Sci-Fi	6.09
5870	Xanadu Dragonslayer Densetsu	1	Adventure Comedy Fantasy	6.09
5871	Zettai Bouei Leviathan: Mini Takibi Gekijou	13	Comedy Fantasy Magic	6.09
7377	Akane-chan	26	Comedy School Slice of Life	6.09
8180	Hula Kappa	78	Comedy	6.09
8578	Koutetsu no Vendetta Episode 0	1	Action Mecha Military Sci-Fi	6.09
10074	Youyou no Neko Tsumami	130	Comedy Slice of Life	6.09
5798	Garo: Guren no Tsuki Special	1	Action Demons Fantasy Magic Supernatural	6.1
5831	Arata Kangatari Picture Drama	6	Fantasy	6.1
5832	Bamboo Blade: CM Fanfu-Fufe-Fo	24	Comedy Parody Sci-Fi	6.1
5833	Bio Hunter	1	Action Demons Horror	6.1
5834	Buddha Saitan	1	Psychological Romance Supernatural	6.1
5835	Byulbyul Iyagi	6	Drama Psychological	6.1
5836	Cinnamon no Parade	1	Fantasy	6.1
5837	Comet Lucifer: Garden Indigo no Shasou kara	12	Adventure Comedy Fantasy	6.1
5838	Eiyuu Gaiden Mozaicka	4	Fantasy	6.1
5839	Hanabi	1	Drama Music Romance Slice of Life	6.1
5840	Hot Minute: Gudetama	1	Comedy Kids	6.1
5841	Kagami no Genon	1	Slice of Life	6.1
5842	Kare Baka: Wagahai no Kare wa Baka de R	8	Comedy Romance School	6.1
5843	Kikumana	1	Dementia Psychological	6.1
5844	Piano	10	Drama Music Romance Shoujo Slice of Life	6.1
5845	Rokushin Gattai GodMars (1982)	1	Action Mecha Sci-Fi Space	6.1
5846	Show By Rock!!: Legend of Shingan Crimsonz	3	Comedy Music	6.1
5847	Strange+	12	Comedy Shoujo Slice of Life	6.1
5848	Sushi Ninja	Unknown	Action Comedy Fantasy	6.1
5849	The SoulTaker: Tamashii-gari - Komugi Daisakusen	3	Comedy	6.1
5850	Yamato 2520	3	Action Adventure Military Sci-Fi	6.1
5851	Yodaka no Hoshi (Music)	1	Drama Fantasy Music Slice of Life	6.1
5906	Wake Up Girls! no Miyagi PR Yarasete Kudasai!	1	Drama	6.1
7495	Bikkuriman 2000	68	Adventure Fantasy Kids	6.1
8140	himitsukesshatakanotsume.jp	78	Comedy Parody Super Power	6.1
8278	Jim Button	26	Adventure Fantasy Kids Magic	6.1
8430	Kenji no Trunk	1	Fantasy Kids	6.1
8439	Kero Kero Keroppi no Christmas Eve no Okurimono	1	Fantasy Kids	6.1
8445	Kero Kero Keroppi no Kyouryuu ga Deta	1	Fantasy Kids	6.1
8811	Mini Van 2nd Season	26	Comedy Game Parody Slice of Life	6.1
9714	Tam Mao Phieu Luu Ky Ta	25	Comedy Historical Kids	6.1
9716	Tamagotchi Honto no Hanashi	1	Kids	6.1
9840	Train Heroes	26	Kids	6.1
5812	Anime Tenchou	1	Action Parody	6.11
5813	Believe	1	Action Music Super Power	6.11
5814	Dallos	4	Action Mecha Sci-Fi	6.11
5815	Gakuen Handsome	12	Comedy Parody School Shounen Ai	6.11
5816	Kaitou Tenshi Twin Angel: Kyun Kyun☆Tokimeki Paradise!! OVA	2	Magic	6.11
5817	Kanojo wa Zombie	1	Music Romance	6.11
5818	Karasu Tengu Kabuto: Ougon no Me no Kemono	1	Action Adventure Drama Historical	6.11
5819	Kashou no Tsuki: Aki Kyougen	2	Historical Romance Shoujo Supernatural	6.11
5820	Legend of Crystania OVA	3	Action Adventure Fantasy Magic Supernatural	6.11
5821	Lily C.A.T.	1	Horror Sci-Fi Space	6.11
5822	Mangirl!: Asobu Henshuu Girl	1	Comedy Slice of Life	6.11
3762	Je T&#039;aime	1	Sci-Fi	6.79
5823	Ojisan to Marshmallow Special	1	Comedy	6.11
5824	Pia Carrot e Youkoso!!: Sayaka no Koi Monogatari	1	Comedy Romance	6.11
5825	Shin SOS Dai Tokyo Tankentai	1	Adventure	6.11
5826	Shoka	1	Action Fantasy Historical	6.11
5827	Suki Desu Suzuki-kun!!	2	Romance	6.11
5828	Taboo Tattoo	12	Action Comedy Martial Arts Mystery Super Power Supernatural	6.11
5829	Tooryanse	1	Music Supernatural	6.11
5830	Usaru-san	4	Kids	6.11
7365	Ai Shoujo Pollyanna Story Specials	2	Drama Historical Slice of Life	6.11
7410	Anime Yasei no Sakebi	22	Adventure Drama	6.11
7459	Backkom Mission Impossible	2	Comedy Kids Parody	6.11
7766	Eddie the Fast Break	Unknown	Kids Sports	6.11
8396	Kappa no Sanpei	1	Adventure Kids Supernatural	6.11
8441	Kero Kero Keroppi no Daibouken: Fushigi na Mame no Ki	1	Adventure Comedy Kids	6.11
8695	Mak Dau Dang Dang Ban wo Xin	1	Comedy	6.11
8725	Manga Hajimete Omoshiro Juku OVA	4	Adventure Kids	6.11
9140	Otogi Manga Calendar	312	Historical	6.11
9547	Skyers 5	12	Action Sci-Fi	6.11
5790	Alexander Senki Movie	1	Action Adventure Dementia Historical Military Mystery Shounen Supernatural	6.12
5791	Arei no Kagami: Way to the Virgin Space	1	Action Adventure Sci-Fi Space	6.12
5793	Channel 5.5 3rd Season	4	Comedy Parody	6.12
5794	Decorator	1	Music	6.12
5795	Digimon Adventure 3D: Digimon Grand Prix!	1	Action Adventure Comedy Fantasy Kids Parody Sports	6.12
5796	Downloader	1	Music	6.12
5797	Gaist Crusher	51	Action Fantasy Supernatural	6.12
5799	Genocyber	5	Action Horror Mecha Psychological Sci-Fi	6.12
5800	Ginga Tansa 2100-nen: Border Planet	1	Sci-Fi	6.12
5801	Houma Hunter Lime	3	Comedy Fantasy	6.12
5802	Kyouryuu Tankentai Born Free	25	Action Sci-Fi	6.12
5803	Mobile Suit SD Gundam Mk III	6	Mecha Parody Sci-Fi	6.12
5804	Puchitto Gargantia Special	1	Comedy Mecha Sci-Fi	6.12
5805	Sagashita no wa Oheya Mitsuketa no wa Mirai	1	Romance Slice of Life	6.12
5806	Samurai Gun	12	Action Historical Seinen	6.12
5807	Stitch!	25	Adventure Comedy Kids	6.12
5808	World Fool News (TV)	12	Comedy Slice of Life	6.12
5809	Yonimo Osoroshii Nihon Mukashibanashi	3	Dementia Horror Psychological	6.12
5810	Ys IV: The Dawn of Ys	1	Action Adventure Fantasy Game	6.12
8470	Kiki to Lala no Aoi Tori	1	Kids	6.12
9524	Shounen Santa no Daibouken!	24	Adventure Fantasy Shounen	6.12
9949	Wan Wan Chuushingura	1	Action Adventure Drama Fantasy	6.12
5764	Marginal Prince: Gekkeiju no Ouji-tachi - Tokyo Merry-Go-Round	1	Romance School Shounen Ai	6.13
5773	&quot;Eiji&quot;	1	Comedy Drama Sports	6.13
5774	Bohemian Rhapsody	1	Music Sci-Fi Space	6.13
5775	Fake Style	1	Music	6.13
5776	Fantasista Stella	3	Shounen Sports	6.13
5777	Hello Kitty no Fushigi no Kuni no Alice	1	Fantasy Kids	6.13
5778	Houseki no Kuni	1	Fantasy Sci-Fi Seinen	6.13
5779	I&#039;&#039;s	2	Drama Romance	6.13
5780	Mahoutsukai Jiji	1	Fantasy Magic Music	6.13
5781	Majokko Shimai no Yoyo to Nene Movie Extra: Hatsukoi - Mikako Komatsu	1	Music	6.13
5782	Mighty Orbots	13	Adventure Comedy Mecha Sci-Fi	6.13
5783	Nineteen 19	1	Drama Romance	6.13
5784	Ninku: Knife no Bohyou	1	Action Adventure Comedy Martial Arts Shounen	6.13
5785	Shin Strange+ Special	1	Comedy Shoujo Slice of Life	6.13
5786	Shining Hearts: Shiawase no Pan Specials	6	Fantasy	6.13
5787	Starry Tales: Seiza wa Toki wo Koete	1	Fantasy Space	6.13
5788	Yonhyakunijuu Renpai Girl	1	Comedy Romance School	6.13
5789	Yoroiden Samurai Troopers Message	5	Adventure Fantasy Samurai Shounen	6.13
5792	Bannou Yasai Ninninman	1	Comedy Supernatural	6.13
5811	Yuru Yuri: Doushite Tomaranai Tokimeki Dokidoki Paradox Eternal	1	Comedy	6.13
7392	Alice Tantei Kyoku	56	Kids	6.13
7540	Bucchigiri	4	Sports	6.13
7684	Dai-chan Daisuki.	1	Drama School Slice of Life	6.13
7868	Ganbare! Lulu Lolo	26	Kids Slice of Life	6.13
8163	Hong Xing Xiao Yong Shi	1	Historical Kids Slice of Life	6.13
8267	Jeremy no Ki	1	Drama Fantasy Kids	6.13
8306	Kaba no Potomasu	1	Kids	6.13
8571	Kotowaza Gundam-san	17	Comedy Mecha Parody	6.13
8612	Kyojin no Hoshi (Movie)	1	Drama Sports	6.13
8868	Mori no Ongakukai	1	Comedy	6.13
8878	Mr. Pen Pen	1	Comedy Kids Shoujo	6.13
9013	Norabbits&#039; Minutes	5	Comedy Fantasy Kids	6.13
9309	Revbahaf Wang-gug Jaegeon-soelgi	26	Comedy Drama Shoujo	6.13
9934	Vampiyan Kids Specials	3	Comedy Fantasy Kids	6.13
9953	Wansa-kun	26	Comedy	6.13
10083	Yukiwatari	1	Fantasy	6.13
10133	Zukkoke Sannin-gumi: Zukkoke Jikuu Bouken	1	Comedy Historical Sci-Fi	6.13
5752	Angelique: Shiroi Tsubasa no Memoire	2	Drama Fantasy Magic Romance Sci-Fi Shoujo	6.14
5753	Bakumatsu Rock: Mystery! Onsen Kaijiken ze yo!!	1	Music	6.14
5754	Chouon Senshi Borgman 2: Shin Seiki 2058	3	Action Demons Sci-Fi Shounen	6.14
5755	Cleopatra D.C.	3	Action Adventure Sci-Fi	6.14
5756	Don Chuck Monogatari	26	Adventure Kids Slice of Life	6.14
5757	Extra	1	Action Dementia Horror Music Sci-Fi	6.14
5758	Fake Style II	1	Music	6.14
5760	Kaitouranma The Animation	2	Action Adventure Martial Arts Samurai	6.14
5761	Kodai Ouja Kyouryuu King	49	Adventure Fantasy Kids	6.14
5762	Kumi to Tulip	1	Kids Sci-Fi	6.14
5763	Mahoutsukai Sally (Movie)	1	Comedy Magic Shoujo	6.14
5765	Mazinger ZIP!	237	Comedy Mecha	6.14
5766	Melty Lancer	6	Adventure Comedy Sci-Fi Space	6.14
5767	Nandaka Velonica	10	Comedy Fantasy Kids	6.14
5768	Precure kara Minna e no Ouen Movie	1	Fantasy Magic Shoujo	6.14
5769	Rusty Nail	1	Action Music Sci-Fi	6.14
5770	Shin Hurricane Polymar	2	Action Martial Arts Sci-Fi Super Power	6.14
5771	Stitch!: Itazura Alien no Daibouken - Uchuu Ichi no Oniichan	1	Adventure Comedy Kids Sci-Fi	6.14
5772	Wind: A Breath of Heart (TV)	13	Drama Romance School Supernatural	6.14
7442	Asobo Toy-chan	53	Kids	6.14
7671	Coral no Tanken	50	Adventure Kids Music	6.14
7901	Genki Bakuhatsu Ganbaruger: Hyakka	1	Action Mecha Shounen	6.14
7989	Haha wo Tazunete Sanzenri Specials	2	Adventure Drama Slice of Life	6.14
8083	Hello Kitty no Shiawase no Tulip	1	Kids	6.14
8164	Honto ni Atta Gakkou Kaidan	1	Kids Mystery School Supernatural	6.14
8424	Kaze no You ni	1	Drama Slice of Life	6.14
8539	Koishite!! Namashi-chan	Unknown	Kids Slice of Life	6.14
8729	Manga Kodomo Bunko	51	Drama Fantasy Kids	6.14
9396	Sazae-san: Dawn to Ikka de Hawaii Ryokou	1	Comedy Slice of Life	6.14
9401	Seikimatsu Leader Gaiden Takeshi!	1	Comedy School Shounen	6.14
9977	What&#039;s Michael? 2	1	Comedy	6.14
5721	Mahou Shoujo Lyrical Nanoha ViVid: Special Program	1	Action Magic	6.15
5727	Atagoal wa Neko no Mori	1	Kids	6.15
5728	Bacterial Contamination	1	Dementia Horror Music	6.15
5729	Choujin Locke: Shinsekai Sentai	2	Action Sci-Fi Super Power	6.15
5730	Daikyouryuu Jidai	1	Sci-Fi	6.15
5731	Detective Conan vs. Wooo	2	Adventure Comedy Mystery Police Shounen	6.15
5732	Gunparade Orchestra OVA	3	Mecha	6.15
5733	Hajimari no Boukensha-tachi: Legend of Crystania	1	Action Adventure Fantasy Magic Supernatural	6.15
5734	Mahou no Tenshi Creamy Mami: Lovely Serenade	1	Music	6.15
5735	Marie &amp; Gali ver. 2.0	30	Comedy	6.15
5736	Mitsu x Mitsu Drops	2	Drama Romance School Shoujo	6.15
5737	Mitsuwano	1	Slice of Life	6.15
5738	Nessa no Haou Gandalla	26	Adventure Drama Fantasy Horror Magic Music Sci-Fi Supernatural	6.15
5739	Nodoka Mori no Doubutsu Daisakusen	1	Fantasy	6.15
5740	Ouritsu Uchuugun: Honneamise no Tsubasa - Pilot Film	1	Sci-Fi Seinen	6.15
5741	Q Transformers: Saranaru Ninki Mono e no Michi	13	Mecha Parody Slice of Life	6.15
5742	Salamander	3	Adventure Sci-Fi	6.15
5743	Samurai Noodles: The Originator	1	Historical Samurai	6.15
5744	School Days: Valentine Days	1	Comedy Romance School	6.15
5745	Seraphim Call	12	Drama Romance Sci-Fi	6.15
5746	Shounen Hollywood: Holly Stage for 49	13	Music Shoujo Slice of Life	6.15
5747	Subarashii Sekai	1	Fantasy Music	6.15
5748	Takane no Jitensha	1	Fantasy School	6.15
5749	The iDOLM@STER Million Live! 1st Anniversary PV	1	Drama	6.15
5750	Toufu Kozou	1	Comedy	6.15
5751	Yama Nezumi Rocky Chuck	52	Adventure Fantasy Kids	6.15
5759	Hero Bank	51	Game Kids	6.15
7624	Chinpui	56	Comedy	6.15
7682	Cynical Hysterie Hour: Utakata no Uta	1	Comedy	6.15
7757	Dr. Typhoon	1	Drama Seinen Sports	6.15
8438	Kero Kero Keroppi no Bouken: Pink no Kinoko	1	Fantasy Kids	6.15
8632	Lao Fu Zi Zhi Xiao Shui Hu Chuan Qi	1	Comedy Seinen	6.15
9781	The Place Where We Were	1	Dementia	6.15
9895	Ultra Nyan 2: The Great Happy Operation	1	Comedy Kids	6.15
5714	A.D. Police (TV)	12	Action Mecha Sci-Fi Shounen	6.16
5715	Ange Vierge	12	Adventure Fantasy Magic School	6.16
5716	Bonobono (2016)	Unknown	Comedy	6.16
5717	Catman Specials	4	Comedy Fantasy Slice of Life	6.16
5718	Eikyuu Kazoku	1	Comedy Psychological	6.16
5719	First Squad: The Moment of Truth	1	Action Historical Military Super Power Supernatural	6.16
5720	Kyoukai no Rinne	1	Comedy Supernatural	6.16
5722	Masamune Datenicle	Unknown	Action Historical Samurai Super Power	6.16
5724	Nyanbo!	26	Comedy	6.16
5725	Youkai Watch: Best 10	1	Comedy Kids Supernatural	6.16
5726	Yuuki no Baton	1	Music	6.16
9373	Sango no Umi to Ouji	1	Fantasy	6.16
9817	Tom Sawyer no Bouken Specials	2	Adventure Drama Historical Slice of Life	6.16
5690	Ashinaga Ojisan	1	Comedy Drama Shoujo	6.17
5691	Chain Chronicle: Short Animation	8	Action Adventure Fantasy Magic Shounen	6.17
5692	Chiisana Obake Acchi Kocchi Socchi	50	Comedy Supernatural	6.17
5693	Chu Feng: B.E.E	6	Action Comedy Fantasy Mecha Romance School Sci-Fi	6.17
5694	Eightman	56	Action Drama Mecha Sci-Fi	6.17
5695	Hitotsubu ni Kawaranu Ai wo Komete	1	Magic Slice of Life	6.17
5696	Kakko Kawaii Sengen! 2	10	Comedy	6.17
5697	Kamisama Minarai: Himitsu no Cocotama	Unknown	Fantasy Kids Magic	6.17
5698	Kara no Kyoukai: Mirai Fukuin - Manner Movie	1	Drama	6.17
5699	Kawasaki Frontale x Tentai Senshi Sunred	4	Comedy Parody Seinen Sports Super Power	6.17
5700	Kaze no Matasaburou	1	Fantasy Kids Slice of Life	6.17
5701	Kaze no Toori Michi	1	Music	6.17
5702	Last Exile: Doyou no Asa	3	Comedy Parody Sci-Fi	6.17
5703	Nakedyouth	1	Romance Shounen Ai Slice of Life Sports	6.17
5704	Ozma	6	Action Sci-Fi	6.17
5705	Saint Luminous Jogakuin	13	Mystery Psychological Supernatural	6.17
5706	Sekishoku Elegy	1	Romance	6.17
5707	Soliton no Akuma	1	Drama Military Sci-Fi	6.17
5708	Space☆Dandy Picture Drama	2	Comedy Sci-Fi Space	6.17
5709	Stitch!: Zutto Saikou no Tomodachi Special	1	Adventure Comedy Kids	6.17
5710	Suzy&#039;s Zoo: Daisuki! Witzy - Happy Birthday	1	Kids	6.17
5712	The Choujo	1	Comedy Sci-Fi Super Power	6.17
5713	Wakusei Robo Danguard Ace: Uchuu Daikaisen	1	Mecha Sci-Fi	6.17
5723	Mori no Andou	1	Comedy	6.17
7454	Üks Uks	1	Dementia	6.17
7505	Bocchan	1	Historical	6.17
7755	Dr. Slump: Hoyoyo! Arale no Himitsu Dai Koukai dayo!!	1	Comedy Sci-Fi Shounen	6.17
7902	Genki Genki Non-tan	15	Kids Music	6.17
8012	Hanamaru Koutsuu Anzen	1	Drama Kids	6.17
8060	Hello Kitty no Hajimete no Christmas Cake	1	Kids	6.17
8128	Himitsukessha Taka no Tsume Countdown	12	Comedy Parody Super Power	6.17
8142	Hino Hideshi Toukaidou Yotsuya Kaidan	1	Horror	6.17
8175	Hotaru no Mau Machi de	1	Drama Kids	6.17
8222	Imokawa Mukuzo: Chuugaeri no Maki	1	Comedy	6.17
8446	Kero Kero Keroppi no Mitsubachi Daisoudou	1	Fantasy Kids	6.17
8692	Maji	3	Drama Shounen	6.17
8734	Manga Nihon Emaki	46	Historical	6.17
8922	Nanocore	10	Sci-Fi	6.17
9033	Nunbori	26	Fantasy Kids	6.17
9059	Oh! Family	26	Comedy Drama Romance Shoujo Slice of Life	6.17
9168	Panpaka Pants Movie: Bananan Oukoku no Hihou	1	Adventure Kids	6.17
9326	Robokko Beeton	50	Adventure Comedy Kids Slice of Life	6.17
9457	Shimajirou to Fufu no Daibouken Movie: Sukue! Nana-iro no Hana	1	Adventure Comedy Fantasy Kids Magic	6.17
9542	Sinbad: Mahou no Lamp to Ugoku Shima	1	Adventure	6.17
9566	Sora no Arawashi	1	Action Drama	6.17
9779	The Olympic Adventures of Fuwa	100	Comedy	6.17
9972	Wazaguu! vs. Dangerous Jiisan Ja: Houfukuzettou! Anime Quiz	1	Comedy Kids	6.17
5671	Big Order	1	Action Shounen Super Power	6.18
5672	Chuumon no Ooi Ryouriten	1	Fantasy Horror Supernatural	6.18
5673	Haitai Nanafa	13	Comedy Supernatural	6.18
5674	Hakushon Daimaou	52	Comedy Fantasy	6.18
5675	Hana wa Saku: Touhoku ni Saku	1	Fantasy Kids	6.18
5676	Hokuto no Ken: Legend of Heroes	1	Action Martial Arts	6.18
5677	Mahou Sensou	12	Action Fantasy Magic	6.18
5678	Marvel Disk Wars: The Avengers	51	Action Kids Super Power	6.18
5679	Mousou Kagaku Series: Wandaba Style	12	Comedy Sci-Fi	6.18
5680	Nisshin Seifun Group CM	3	Kids Slice of Life	6.18
5681	Oyako Club	1818	Comedy Slice of Life	6.18
5682	SAI: Part 1 / Revolving... to the Core	1	Fantasy Music	6.18
5683	Seoul-yeok	1	Horror Thriller	6.18
5684	Shin Calimero	52	Comedy	6.18
5685	Shinshaku Sengoku Eiyuu Densetsu: Sanada Juu Yuushi	1	Historical Military	6.18
5686	Soratobu Toshi Keikaku	1	Music Sci-Fi	6.18
5687	Stratos 4 OVA: Stratos 4.1 - Dutch Roll	1	Action Military Parody Sci-Fi	6.18
5688	The Borgman: Last Battle	1	Action Demons Sci-Fi Shounen	6.18
5689	Utsunomiko: Heaven Chapter	13	Adventure Demons Fantasy	6.18
5711	Tenshi na Konamaiki Specials	13	Shounen	6.18
8091	Hello Kitty no Yuki no Joou	1	Fantasy Kids	6.18
8167	Hoshi Neko Fullhouse	4	Comedy Romance Sci-Fi	6.18
8568	Kotencotenco	52	Adventure Comedy Fantasy Kids Magic	6.18
8647	Linetown	50	Comedy	6.18
8705	Maku	1	Dementia	6.18
8831	Mo fa a ma	1	Adventure Fantasy	6.18
9492	Shiranpuri	1	Drama School	6.18
9591	Sore Ike! Anpanman: Kaiketsu Naganegiman to Yakisobapanman	1	Adventure Fantasy Kids	6.18
5634	M3: Sono Kuroki Hagane Recap	1	Action Mecha	6.19
5644	21 Emon	39	Comedy Sci-Fi Space	6.19
5645	Akai Kiba: Blue Sonnet	5	Action Drama Sci-Fi Shoujo Super Power	6.19
5646	Andromeda Stories	1	Action Drama Fantasy Sci-Fi Space	6.19
5647	Apfelland Monogatari	1	Adventure Drama Historical	6.19
5648	Barbapapa (1977)	48	Comedy Fantasy Kids	6.19
5649	Barbapapa Sekai wo Mawaru	50	Adventure Comedy	6.19
5650	Ben-To Picture Drama	6	Comedy	6.19
5652	Ginga e Kickoff!!: Natsuyasumi Special	1	Sports	6.19
5654	Gunslinger Stratos	1	Action Sci-Fi	6.19
5655	Hengen Taima Yakou Karura Mau! Nara Onryou Emaki	1	Action Adventure Demons Fantasy Horror Shoujo Supernatural	6.19
5656	Ichirin-sha	1	Action Mecha Sci-Fi Seinen	6.19
5657	Kikou Kai Galient OVA	3	Action Fantasy Mecha Sci-Fi	6.19
5658	Mahou Gakuen Lunar! Aoi Ryuu no Himitsu	1	Comedy Fantasy Magic	6.19
5659	Mobile Suit SD Gundam Festival	1	Action Comedy Fantasy Mecha Parody	6.19
5660	Mou Hitotsu no Mirai wo.	3	Sci-Fi	6.19
5661	Muybridge no Ito	1	Drama	6.19
5662	Samurai Gun Special	1	Action Historical Seinen	6.19
5663	Scan2Go	52	Cars Kids Shounen Space Sports	6.19
5664	Taisei Kensetsu: Sri Lanka Kousokudouro	1	Drama	6.19
5665	The Samurai	1	Comedy Romance School Shounen	6.19
5666	Tobira wo Akete (1995)	1	Dementia Fantasy	6.19
5667	Tsuritama: Harikitte Contest	1	Comedy Sci-Fi Slice of Life Sports	6.19
5668	Vocaloid China Project Senden Animation	5	Fantasy Music	6.19
5669	Wooser no Sono Higurashi: Ken to Pants to Wooser to	1	Comedy Fantasy Slice of Life	6.19
5670	Zeonic Toyota Special Movie	2	Cars	6.19
7479	Batsu &amp; Terry	1	Comedy Drama School Shounen Sports	6.19
7679	Cybot Robocchi	39	Comedy Sci-Fi	6.19
7750	Dr. Slump: Arale-chan &#039;92 Oshougatsu Special	3	Comedy Sci-Fi Shounen Shounen	6.19
8319	Kachikachi Yama no Shouboutai	1	Comedy	6.19
8480	Kimama ni Idol	1	Music	6.19
8836	Mobile Suit Gundam-san (ONA)	15	Comedy Mecha Parody	6.19
9176	Paris no Isabelle	13	Drama Historical	6.19
5616	Abarenbou Rikishi!! Matsutarou	23	Seinen Sports	6.2
5617	Bakumatsu Gijinden Roman	12	Fantasy Historical	6.2
5618	Bakumatsu Rock	12	Action Comedy Historical Music Shoujo	6.2
5619	Baoh Raihousha	1	Action Martial Arts Sci-Fi Shounen Space Super Power	6.2
5620	Blame!	6	Mecha Sci-Fi	6.2
5621	D4 Princess	24	Action Comedy Magic Mecha Sci-Fi	6.2
5622	Dance Dance Dance	1	Fantasy Music	6.2
5623	Fate/Zero Cafe	1	Comedy Parody	6.2
5624	Gulliver no Uchuu Ryokou	1	Adventure Sci-Fi	6.2
5625	Hey! Bumboo	130	Adventure Cars Kids	6.2
5626	Houkago no Pleiades	4	Magic	6.2
5627	Ichigeki Sacchuu!! Hoihoi-san	1	Comedy Sci-Fi Slice of Life	6.2
5628	Jewelpet Movie: Sweets Dance Princess	1	Fantasy Magic Shoujo	6.2
5629	Jishu Seisaku Movie Binchou-tan	1	Music Slice of Life	6.2
5630	Kishin Houkou Demonbane (TV) Specials	2	Magic Mecha Sci-Fi Supernatural	6.2
5631	Koisuru Tenshi Angelique: Chibi Character Adventure 2	1	Adventure Comedy	6.2
5632	Kuroi Kikori to Shiroi Kikori	1	Fantasy	6.2
5633	Licca-chan Fushigi na Mahou no Ring	2	Adventure Fantasy	6.2
5635	MAPS: Densetsu no Samayoeru Seijin-tachi	1	Action Adventure Drama Sci-Fi Shounen Space	6.2
5636	Metal Fighter Miku	13	Comedy Sci-Fi Shounen Sports	6.2
5637	Sengoku Kitan Youtouden	3	Action Demons Martial Arts	6.2
5638	Shadow Skill: Kurudaryuu Kousatsuhou no Himitsu	1	Adventure Drama Fantasy Shounen	6.2
5639	Soul Worker: Your Destiny Awaits	5	Action Fantasy Sci-Fi	6.2
5640	Super Kuma-san	1	Comedy Fantasy	6.2
5641	Teekyuu 6 Specials	2	Comedy Shounen Sports	6.2
5642	Thermae Romae: Kodai Romajin ga Uchuu e	1	Comedy Seinen Space	6.2
5643	Zoku Attacker You! Kin Medal e no Michi	52	Romance Sports	6.2
5651	Chiba Pedal: Yowamushi Pedal to Manabu Jitensha Koutsuuanzen	6	Shounen Sports	6.2
5653	Gundam: G no Reconguista - From the Past to the Future	1	Action Mecha Sci-Fi Space	6.2
8010	Hanakappa Movie: Hana-sake! Pakkaan Chou no Kuni no Daibouken	1	Comedy Kids	6.2
8048	Heavy	1	Action Drama Sports	6.2
8129	Himitsukessha Taka no Tsume DO	Unknown	Comedy Parody Super Power	6.2
8238	Ippon Bouchou Mantarou	2	Action Seinen	6.2
8362	Kaminari Boy Pikkaribee★	54	Adventure Comedy Kids	6.2
8507	Kitty to Daniel no Odoru Santa-san no Himitsu	1	Fantasy Kids	6.2
8577	Kousagi Monogatari	1	Comedy Kids	6.2
8681	Magical Puuta no Hi Asobi wa Abunai yo	1	Drama Kids Magic	6.2
8736	Manga Nihonshi	52	Historical	6.2
8746	Marude Dameo	47	Comedy Sci-Fi Shounen	6.2
8805	Mina no Mura to Mori	1	Drama Kids	6.2
8874	Moudouken Quill no Isshou	1	Drama	6.2
9149	Otsuki-sama to Oujo	1	Fantasy	6.2
9273	Pro Golfer Saru	1	Kids Sports	6.2
9411	Sekai no Fushigi Tanken Series	10	Adventure Fantasy Historical	6.2
9549	Soba no Hana Saita Hi	1	Drama Kids	6.2
9912	Unko-san: Tsuiteru Hito ni Shika Mienai Yousei Junjou Ha	13	Comedy Magic	6.2
10030	Yama ni Kagayaku: Guide-ken Heiji Gou	1	Drama Slice of Life	6.2
5596	Backkom Sports	52	Comedy Kids Sports	6.21
5597	Birthday Boy	1	Action Drama Historical Military	6.21
5598	Chokin Senshi Cashman	1	Action Comedy	6.21
5599	Detatoko Princess	3	Comedy Fantasy	6.21
5600	Gekkou no Pierce: Yumemi to Gin no Bara no Kishidan	1	Fantasy Mystery Romance Shoujo	6.21
5601	Hime Gal♥Paradise	9	Shoujo	6.21
5602	Juuippiki no Neko	1	Fantasy	6.21
5603	Kishin Houkou Demonbane	1	Comedy Drama Mecha Sci-Fi	6.21
5604	Koutetsu Tenshi Kurumi Zero	3	Drama Romance Sci-Fi	6.21
5605	Kujibiki Unbalance	3	Comedy Romance School	6.21
5606	Makasete Iruka!	1	Action Comedy School	6.21
5607	Match Uri no Shoujo	1	Drama Kids	6.21
5608	Mezame no Hakobune	1	Fantasy	6.21
5609	Mobile Suit SD Gundam Mk IV	2	Mecha Parody Sci-Fi	6.21
5610	Mutekiou Tri-Zenon	22	Mecha Sci-Fi	6.21
5611	Peeping Life: World History	40	Comedy Historical Slice of Life	6.21
5612	Shingeki no Bahamut: Genesis Recap	1	Action Adventure Demons Fantasy Magic Supernatural	6.21
5613	Shining Hearts: Shiawase no Pan	12	Action Fantasy	6.21
5614	Socket	1	Kids	6.21
5615	Tobe! Kujira no Peek	1	Adventure Drama	6.21
8093	Hello Kitty no Yume no Oshiro no Ouji-sama	1	Fantasy Kids	6.21
8443	Kero Kero Keroppi no Gulliver no Bouken	1	Adventure Fantasy Kids	6.21
8454	Kero Kero Keroppi no Yowamushi-ouji no Daibouken	1	Adventure Fantasy Kids	6.21
9103	Oni no Ko to Yuki Usagi	1	Demons Fantasy Kids	6.21
9306	Rennyo to Sono Haha	1	Historical	6.21
10104	Zakuro Yashiki	1	Historical	6.21
5491	Uribyeol ilhowa ulrookso	1	Comedy Kids Magic Romance	6.22
5583	Duel Masters Victory V3	51	Action Adventure Comedy Shounen	6.22
5584	Haitai Nanafa 2nd Season	13	Comedy Supernatural	6.22
5585	I: Wish You Were Here	4	Action Drama Mystery Sci-Fi	6.22
5586	Kakomareta Sekai	1	Drama	6.22
5587	Kimagure Robot	10	Comedy Fantasy Sci-Fi	6.22
5588	Kujakuou	3	Action Demons Horror	6.22
5589	Metal Skin Panic MADOX-01	1	Action Mecha Sci-Fi	6.22
5590	Miss Monochrome: Watashi dake no Monogatari	1	Music	6.22
5591	Ninku (Movie)	1	Action Adventure Comedy Historical Martial Arts Shounen	6.22
5592	Piece	1	Music	6.22
5593	Sacred Seven: Shirogane no Tsubasa Picture Drama	2	Action Comedy School Sci-Fi Super Power	6.22
5594	Time Bokan Series: Zenderman	52	Action Adventure Comedy Mecha Sci-Fi Super Power	6.22
5595	Visions of Frank: Short Films by Japan&#039;s Most Audacious Animators	9	Dementia	6.22
7930	Ginga Tetsudou 999: Shounen no Tabidachi to Wakare	1	Adventure Drama Sci-Fi Space	6.22
8283	Jiok	1	Drama Fantasy Horror	6.22
8338	Kaibutsu-kun: Kaibutsu Land e no Shoutai	1	Comedy Horror Kids Shounen	6.22
8493	Kinnikuman: Seigi Choujin vs. Senshi Choujin	1	Action Comedy Shounen Sports	6.22
8673	Machine Robo: Butchigiri Battle Hackers	31	Action Mecha Sci-Fi	6.22
8757	Maze☆Bakunetsu Jikuu: Tenpen Kyoui no Giant	1	Adventure Comedy Fantasy Mecha Shounen	6.22
8802	Mina no Egao	1	Drama Kids	6.22
9056	Oedo wa Nemurenai!	1	Drama Fantasy Historical Shoujo	6.22
9302	Rainbow Sentai Robin	48	Action Adventure Sci-Fi	6.22
9877	Uchuu Shounen Soran	96	Action Adventure Sci-Fi	6.22
5563	Baymax	1	Drama Music Sci-Fi Slice of Life	6.23
5564	Black Bullet: Tenchuu＊Girls	1	Fantasy	6.23
5565	Dragon&#039;s Heaven	1	Action Adventure Fantasy Mecha Sci-Fi	6.23
5566	DRAMAtical Murder OVA: Data_xx_Transitory	1	Drama Psychological Sci-Fi Shounen Ai	6.23
5567	Duel Masters Movie 3: Honoo no Kizuna XX	1	Game Shounen	6.23
5568	Gakkou no Kaidan Recaps	2	Horror Mystery Supernatural	6.23
5569	Gun-dou Musashi	26	Adventure Fantasy Samurai	6.23
5570	Gunslinger Stratos: The Animation	12	Action Sci-Fi	6.23
5571	Luck &amp; Logic	12	Action Fantasy	6.23
5572	Mahoutsukai Chappy	39	Adventure Kids Magic	6.23
5573	Majuu Sensen	3	Action Fantasy	6.23
5574	Master of Epic: The Animation Age	12	Comedy Fantasy Game	6.23
5575	Mori no Tonto-tachi	23	Fantasy Kids	6.23
5576	Oishinbo: Nichibei Kome Sensou	1	Comedy Seinen Slice of Life	6.23
5577	Persona 2: Another Self	1	Action Demons Fantasy Supernatural	6.23
5578	Shounen Sunday CM Gekijou: InuYasha-hen	2	Action Demons Fantasy	6.23
5579	Street Fighter II: Yomigaeru Fujiwara-Kyou - Toki wo Kaketa Fighter-tachi	1	Action Historical Martial Arts Shounen	6.23
5580	Super Doll Licca-chan: Licca-chan Zettai Zetsumei! Doll Knights no Kiseki	1	Action Adventure Fantasy Kids Magic Shoujo Super Power	6.23
5581	Thermae Romae x LOFT Collaboration	1	Comedy Historical Seinen	6.23
5582	Yumemiru Topo Gigio	13	Adventure Comedy Kids	6.23
7364	Ai no Kiseki: Doctor Norman Monogatari	1	Drama Slice of Life	6.23
7460	Backkom Specials	8	Comedy Kids Super Power	6.23
7888	Gegege no Kitarou: Jigoku-hen	7	Adventure Comedy Fantasy Horror Supernatural	6.23
8094	Hello Kitty no Yuubinya-san Arigatou	1	Fantasy Kids	6.23
8777	Mellow	1	Comedy School Seinen	6.23
8888	Music Up	52	Music	6.23
9780	The Olympic Challenge	1	Drama Sports	6.23
9943	Wagahai wa Neko de Aru	1	Comedy Historical Slice of Life	6.23
5536	3 Choume no Tama: Onegai! Momo-chan wo Sagashite!!	1	Adventure Kids	6.24
5537	Attraction	1	Mystery	6.24
5538	Calimero	45	Comedy	6.24
5539	Connected	1	Dementia Music Sci-Fi	6.24
5540	Crystal Blaze	12	Action Sci-Fi	6.24
5541	Dororo	1	Action	6.24
5542	Doujouji	1	Historical Supernatural	6.24
5543	Fantasista Doll	12	Fantasy Magic Sci-Fi	6.24
5544	Gall Force: The Revolution	4	Action Adventure Mecha Military Sci-Fi Space	6.24
5545	Ginga Ojousama Densetsu Yuna: Kanashimi no Siren	2	Action Adventure Comedy Magic Mecha Sci-Fi	6.24
5546	Gunslinger Stratos: The Animation - Bunki/Futatsu no Mirai	1	Action Sci-Fi	6.24
5547	Kaiketsu Zorori: Mahoutsukai no Deshi/Dai Kaizoku no Takara Sagashi	1	Adventure Comedy	6.24
5548	Kaze no Matasaburou (Movie)	1	Fantasy Supernatural	6.24
5549	Koisuru Tenshi Angelique: Chibi Character Adventure	1	Adventure Comedy	6.24
5550	Koko ni Iru	1	Slice of Life	6.24
5551	Miracle Train: Chuo-sen e Youkoso	1	Fantasy Shoujo	6.24
5552	Mirai no Watashi	1	Comedy Slice of Life	6.24
5553	Mobile Suit Gundam 0083: Stardust Memory - The Mayfly of Space	1	Action Drama Mecha Military Sci-Fi Space	6.24
5554	Oishinbo	136	Comedy Seinen Slice of Life	6.24
5555	Quiz Magic Academy: The Original Animation 2	1	Comedy Fantasy Magic School	6.24
5556	School Days ONA	1	Drama Romance School	6.24
5557	Takamiya Nasuno Desu!: Teekyuu Spin-off Specials	2	Comedy Shounen	6.24
5558	The Five Killers	1	Action	6.24
5559	Thermae Romae x TOTO Collaboration	1	Comedy Historical Seinen	6.24
5560	Tokimeki Memorial: Forever With You	2	Drama Romance School	6.24
5561	True Love Story	3	Romance	6.24
5562	Wolverine	12	Action Martial Arts Super Power	6.24
8220	Ikuze! Gen-san	24	Comedy	6.24
8425	Kazoku Robinson Hyouryuuki: Fushigi na Shima no Flone Specials	2	Adventure Drama Historical Slice of Life	6.24
9356	Sagaken wo Meguru Animation	2	Slice of Life	6.24
9612	Sore Ike! Anpanman: Roll to Laura Ukigumojou no Himitsu	1	Comedy Fantasy Kids	6.24
5483	Mobile Suit Gundam UC: A Phantom World	1	Action Mecha	6.25
5494	Aa Harimanada	23	Martial Arts Seinen Sports	6.25
5495	Aquarian Age: Sign for Evolution	13	Action Adventure Fantasy Music Romance Sci-Fi Shounen Super Power Supernatural	6.25
5496	Ark	1	Action Fantasy Mecha Military Sci-Fi Supernatural	6.25
5497	Assemble Insert	2	Comedy Police Sci-Fi	6.25
5498	Blade &amp; Soul	13	Action Adventure Fantasy Martial Arts	6.25
5499	Boku Otaryman.	1	Comedy Seinen Slice of Life	6.25
5500	Dragon Age: Blood Mage no Seisen	1	Action Fantasy	6.25
5501	Eien no Filena	6	Adventure Drama Fantasy	6.25
5502	Final Fantasy	4	Action Adventure Comedy Fantasy	6.25
5503	Gon	50	Action Adventure Kids	6.25
5504	Hashi no Mukou	1	Historical Horror Supernatural	6.25
5505	Huckleberry no Bouken	26	Adventure Drama Historical	6.25
5506	Imawa no Kuni no Alice	1	Action	6.25
5507	Ippatsu Kanta-kun	53	Action Adventure Comedy Kids Sports	6.25
5508	Iron Man	12	Action Drama Mecha	6.25
5509	Kemono to Chat	1	Comedy	6.25
5510	Kouchou-sensei to Kujira	1	Drama	6.25
5511	Licca-chan no Nichiyoubi	1	Adventure	6.25
5512	Mahou no Star Magical Emi: Kumo Hikaru	1	Comedy Shoujo Slice of Life	6.25
5513	Megumi	1	Historical	6.25
5514	Mobile Suit Gundam-san	13	Comedy Mecha Parody	6.25
5515	Moldiver	6	Action Comedy Magic Mecha Romance Sci-Fi	6.25
5516	Pinocchio yori Piccolino no Bouken	52	Adventure Kids	6.25
5517	Pokemon XY: Hoopa no Odemashi Daisakusen!!	6	Comedy Fantasy Kids	6.25
5518	Pokemon: Slowking no Ichinichi	1	Fantasy Kids	6.25
5519	Quiz Magic Academy: The Original Animation	1	Comedy Fantasy Magic School	6.25
5520	Riki-Oh: Toukatsu Jigoku	1	Action Martial Arts Seinen Super Power	6.25
5521	SF Saiyuuki Starzinger (Movie)	1	Adventure Mecha Sci-Fi Shounen	6.25
5522	Shima Shima Tora no Shimajirou	726	Adventure Comedy Fantasy Kids Magic	6.25
5523	Shisha no Sho	1	Drama Supernatural	6.25
5524	Stitch!: Zutto Saikou no Tomodachi	29	Adventure Comedy Kids	6.25
5525	Tiger &amp; Bunny Pilot	1	Action Comedy Super Power	6.25
5526	Tokyo Disney Resort: Yume ga Kanau Basho	1	Slice of Life	6.25
5527	Towa no Kizuna	1	Music	6.25
5528	Urban Square: Kouhaku no Tsuigeki	1	Action Mystery Seinen	6.25
5529	Watashi no Coffee Samurai: Jihanki-teki na Kareshi	1	Action Romance Samurai Sci-Fi	6.25
5530	Wind: A Breath of Heart	1	Comedy School	6.25
5531	Yakumo Tatsu	2	Adventure Historical Horror Shoujo Supernatural	6.25
5532	Yami Shibai 3rd Season	13	Dementia Horror Supernatural	6.25
5533	Youma	2	Action Demons Fantasy Horror Supernatural	6.25
5534	Yutori-chan	25	Comedy Slice of Life	6.25
5535	Zero Duel Masters	12	Adventure Comedy Game Sports	6.25
7331	0-sen Hayato	38	Historical Military	6.25
7549	Bunna yo Ki kara Orite Koi	1	Adventure Kids	6.25
7692	Danchi Tomoo	78	Comedy Seinen	6.25
7816	Fujiko F. Fujio: Sukoshi Fushigi Tanpen Theater	11	Adventure Sci-Fi Shounen Space	6.25
7832	Furiten-kun (1990)	2	Comedy Seinen Slice of Life	6.25
8303	Juupiki no Kaeru	2	Kids	6.25
8374	Kamiusagi Rope: Warau Asa ni wa Fukuraitaru tte Maji ssuka!?	Unknown	Comedy Slice of Life	6.25
8434	Kentoushi	3	Seinen Sports	6.25
8601	Kuroi Ame ni Utarete	1	Drama Historical	6.25
8613	Kyojin no Hoshi: Chizome no Kesshousen	1	Drama Sports	6.25
8650	Little Charo: Touhoku-hen	12	Kids	6.25
8674	Machine Robo: Leina The Legend of Wolf Blade	3	Action Martial Arts Mecha Super Power	6.25
8697	Mak Dau wo He wo Mama	1	Comedy	6.25
8764	Mecha☆Afro-kun	1	Comedy	6.25
8957	Nemurenu Yoru no Chiisana Ohanashi	3	Kids	6.25
8976	Nijuushi no Hitomi	1	Drama Historical	6.25
9004	Nobunaga-kun no Jitensha no Rule wo Mamoru no Ja	1	Drama Kids	6.25
9010	Noobow	26	Kids Slice of Life	6.25
9124	Ore-tachi Tomodachi!	1	Fantasy Kids	6.25
9235	Pittanko! Taiyou-sensei to Pittanko	1	Comedy Kids School	6.25
9359	Saint Elmo: Hikari no Raihousha	1	Sci-Fi	6.25
9478	Shin Skyers 5	26	Action Sci-Fi	6.25
9565	Sora Iro Hana Iro	1	Drama Slice of Life	6.25
9633	SOS Kochira Chikyuu	1	Drama Kids	6.25
9641	Space Oz no Bouken	26	Adventure Sci-Fi	6.25
9688	Suzu 3 Tarou	24	Comedy Kids	6.25
9841	Train Heroes Movie	1	Kids	6.25
9865	Turuturutu Narongi	52	Adventure Kids	6.25
9993	Wu Lan Qi Qi Ge	26	Historical Kids	6.25
5463	100-man-nen Chikyuu no Tabi: Bander Book	1	Sci-Fi	6.26
5464	21 Emon Uchuu ike! Hadashi no Princess	1	Comedy Sci-Fi Space	6.26
5465	Akai Koudan Zillion: Utahime Yakyoku	1	Adventure Sci-Fi Shounen	6.26
5466	Baku Tech! Bakugan Gachi	39	Action Game Shounen	6.26
5467	Barbapapa	45	Comedy Fantasy	6.26
5468	Beast Wars Second: LioConvoy in Imminent Danger!	1	Action Adventure Sci-Fi	6.26
5469	Bokurano Recap	1	Drama Mecha Psychological Sci-Fi	6.26
5470	Chibikko Remi to Meiken Kapi	1	Adventure Drama Slice of Life	6.26
5471	Choujuu Densetsu Gestalt	2	Adventure Comedy Fantasy Shoujo	6.26
5472	Cyborg 009: Kaijuu Sensou	1	Action Adventure Sci-Fi	6.26
5473	Fighting Foodons	26	Adventure Comedy Fantasy Game Shounen	6.26
5474	Good Morning Call	1	Comedy Drama Romance School Shoujo	6.26
5475	Haiyoru! Nyaruani: Remember My Love(craft-sensei) Special	1	Comedy Sci-Fi	6.26
5476	iDOLM@STER Xenoglossia Specials	9	Comedy Mecha Sci-Fi	6.26
5477	Izumo	2	Adventure Fantasy Historical	6.26
5478	Jiu Se Lu	1	Supernatural	6.26
5479	Kiss wa Hitomi ni Shite	1	Comedy Romance Shoujo	6.26
5480	Kusatta Kyoushi no Houteishiki	2	Comedy Romance Shounen Ai	6.26
5481	Little Nemo Pilot	1	Adventure	6.26
5482	Madobe Nanami no Windows 7 de PC Jisaku Ouen Commercial!!	1	Comedy	6.26
5484	Oz no Mahoutsukai	1	Fantasy	6.26
5485	SoniAni: Super Sonico The Animation	12	Music Slice of Life	6.26
5486	Soul Link	12	Action Adventure Comedy Military Romance Sci-Fi Space	6.26
5487	Suntory Minami Alps no Tennen Mizu	3	Drama School	6.26
5488	Tachiguishi Retsuden	1	Comedy	6.26
5489	Tantei Team KZ Jiken Note	16	Mystery School	6.26
5490	Top wo Nerae! Kagaku Kouza	6	Comedy Sci-Fi	6.26
5492	Yurumates 3D Plus: Natsuyasumi Maison du Wish Report	1	Comedy Seinen Slice of Life	6.26
5493	Yurumates 3D: Ushinawareta Genjitsu	1	Comedy Seinen Slice of Life	6.26
8061	Hello Kitty no Hakuchou no Ouji	1	Fantasy Kids	6.26
9512	Shougeki Shinsengumi	1	Comedy Historical	6.26
5438	Akuemon	1	Fantasy Romance	6.27
5439	Ar Tonelico: Sekai no Owari de Utai Tsuzukeru Shoujo	1	Action Adventure Fantasy Magic Sci-Fi	6.27
5440	BlazBlue: Alter Memory	12	Action Fantasy	6.27
5441	By Your Side	1	Music	6.27
5442	Chika Gentou Gekiga: Shoujo Tsubaki	1	Drama Historical Horror	6.27
5443	Donyatsu	12	Comedy Sci-Fi Seinen	6.27
5444	Dragon Quest Retsuden: Roto no Monshou	1	Adventure Fantasy Magic Shounen	6.27
5445	Dream Festival!	12	Music	6.27
5446	Duel Masters VS	49	Action Adventure Comedy Shounen	6.27
5447	Earthian	4	Drama Shoujo Shounen Ai	6.27
5448	Haja Taisei Dangaiou	3	Action Adventure Mecha Sci-Fi	6.27
5449	Kamen Rider Fourze x Crayon Shin-chan	4	Action Comedy Kids Shounen	6.27
5450	Kouryuu Densetsu Villgust	2	Action Adventure Comedy Fantasy Romance	6.27
5451	Kyoto Animation: Kasa-hen	1	Fantasy	6.27
5452	Mahou no Tenshi Creamy Mami: Curtain Call	1	Comedy Music Shoujo	6.27
5453	Metropolis (2009)	1		6.27
5454	Mukougaoka Chisato wa Tada Mitsumeteita no Datta	1	Music	6.27
5455	Otohime Connection	1	Drama Mystery Romance Shoujo Slice of Life	6.27
5456	Sengoku☆Paradise Kiwami	26	Action Comedy Drama Historical Romance Samurai Shoujo	6.27
5457	Shinseiki Duel Masters Flash	24	Comedy Kids	6.27
5458	Tabi Machi Late Show	4	Drama	6.27
5459	To Heart: Remember My Memories Specials	7	Comedy Martial Arts Parody Samurai Sci-Fi Super Power	6.27
5460	Tono to Issho 1.5	1	Comedy Historical Parody Samurai Seinen	6.27
5461	Umi no Yami Tsuki no Kage	3	Drama Horror Romance	6.27
5462	Wizard Barristers: Benmashi Cecil	12	Magic	6.27
7694	Dangerous Jiisan Ja	2	Comedy Kids	6.27
8085	Hello Kitty no Shirayuki-hime (OVA)	1	Fantasy Kids	6.27
8116	Hidamari no Ki	25	Drama Historical	6.27
8410	Karuizawa Syndrome	1	Action Comedy Drama Slice of Life	6.27
9203	Penguin no Mondai DX?	52	Comedy Kids	6.27
9399	Scripta Volant	1		6.27
9446	Shibawanko no Wa no Kokoro	80	Kids	6.27
9538	Shuukan Storyland	56	Comedy Drama Seinen Slice of Life	6.27
9659	Sue Cat	40	Adventure Music Shoujo	6.27
9871	Uchuu Ace	52	Action Adventure Sci-Fi	6.27
5408	Animation!	13	Adventure Comedy Dementia Fantasy Music Mystery	6.28
5409	Baku Tech! Bakugan	51	Action Game Shounen	6.28
5410	Catman	7	Comedy Fantasy Slice of Life	6.28
5411	Chocolate Underground	13	Comedy Kids	6.28
5412	Choujuu Giga	Unknown	Romance	6.28
5413	Choujuu Kishin Dancougar: Hakunetsu no Shuushou	4	Mecha Sci-Fi Space	6.28
5414	DD Hokuto no Ken	12	Parody Seinen	6.28
5415	Dragon Ball Z Movie 11: Super Senshi Gekiha!! Katsu no wa Ore da	1	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	6.28
5416	fake!fake!	1	Music	6.28
5417	Gasshin Sentai Mechander Robo	35	Mecha Military Mystery Sci-Fi Space	6.28
5418	Girlfriend (Note)	3	Music School	6.28
5419	Gu-Gu Ganmo	50	Comedy School	6.28
5420	Lupin III: Ikiteita Majutsushi	1	Adventure Comedy Shounen	6.28
5421	Mobile Suit Gundam: More Information on the Universal Century	10	Mecha Military Sci-Fi Space	6.28
5422	Monkey Magic	13	Adventure Fantasy Kids	6.28
5423	Muv-Luv Alternative: Total Eclipse Recap - Climax Chokuzen Special	1	Action Mecha Military Sci-Fi	6.28
5424	Narutaru: Mukuro Naru Hoshi Tama Taru Ko	13	Drama Seinen Thriller	6.28
5425	Natsuki Crisis	2	Action Martial Arts School	6.28
5426	Neko Ramen: Ore no Shouyu Aji	13	Comedy	6.28
5427	RG Veda	2	Adventure Drama Fantasy	6.28
5428	Rinne no Lagrange Specials	6	Comedy	6.28
5429	Rokumon Tengai Mon Colle Knights Movie: Densetsu no Fire Dragon	1	Adventure Comedy Fantasy	6.28
5430	Senkou no Night Raid Picture Drama	1	Action Historical Super Power	6.28
5431	Shin Kujakuou	2	Action Demons Horror	6.28
5432	Sore Ike! Anpanman: Ruby no Negai	1	Comedy Kids Magic	6.28
5433	Tetsuwan Atom: Kagayakeru Hoshi - Anata wa Aoku Utsukushii...	1	Mecha Sci-Fi	6.28
5434	True Tears: Raigomaru to Jibeta no Monogatari	1	Kids	6.28
5435	Uchuu no Kishi Tekkaman Blade OVA: Missing Link	1	Action Mecha Sci-Fi Shounen	6.28
5436	World Calling	1	Music	6.28
5437	Yobarete Tobidete Akubi-chan	26	Comedy Fantasy Kids	6.28
7455	Ba La La Xiao Mo Xian Zhi: Caihong Xin Shi	36	Comedy Magic Shoujo	6.28
8154	Hoero! Bun Bun (Movie)	1	Kids	6.28
8314	Kacchikenee!	1	Supernatural	6.28
5389	Bakugan Battle Brawlers: Mechtanium Surge	46	Action Adventure Fantasy Game Shounen	6.29
5390	Bremen 4: Jigoku no Naka no Tenshi-tachi	1	Adventure Kids	6.29
5391	Chou Deneiban SD Gundam Sangokuden Brave Battle Warriors	1	Action Historical Mecha	6.29
5392	Eureka Seven AO: Aratanari Fukaki Ao	10	Comedy Slice of Life	6.29
5393	Final Fantasy: Unlimited	25	Action Adventure Fantasy Sci-Fi Shounen	6.29
5394	Genei Toushi Bastof Lemon	26	Adventure Mecha Sci-Fi	6.29
5395	Jinki:Extend	12	Mecha Sci-Fi	6.29
5396	Kawasaki Frontale x Tentai Senshi Sunred 2nd Season	1	Comedy Parody Seinen Sports Super Power	6.29
5397	Maido! Urayasu Tekkin Kazoku	25	Comedy Shounen	6.29
5398	Memory	1	Mystery	6.29
5399	Naked Wolves	52	Action Comedy Kids Sports	6.29
5400	Norageki!	1	Mystery Sci-Fi Space	6.29
5401	Oraa Guzura Dado (1987)	44	Comedy Kids	6.29
5402	Shin Kaitei Gunkan	2	Action Adventure Fantasy Historical Military Sci-Fi	6.29
5403	Show By Rock!! Short!!	12	Comedy Music	6.29
5404	Sonic X Pilot	2	Adventure Comedy Kids Mecha Sci-Fi Shounen	6.29
5405	Taisei Kensetsu: Bosporus Kaikyou Tunnel	1	Drama	6.29
5406	Tamako Market Specials	6	Comedy	6.29
5407	Yomigaeru Sora Pilot	1	Action Military Seinen	6.29
7480	Battle Spirits Shinnen Special	1	Action Game Kids	6.29
7721	Dokkan! Robotendon	26	Adventure Kids Slice of Life	6.29
7781	Elite Banana Banao	Unknown	Comedy Parody Slice of Life	6.29
7856	Gakkyuu Ou Yamazaki Specials	2	Comedy	6.29
7870	Ganbare! Lulu Lolo 3rd Season	10	Kids Slice of Life	6.29
8895	Nagareboshi no Okurimono	1	Fantasy Kids	6.29
8996	Nintama Rantarou no Jishin Youjin Hi no Youjin	1	Drama Kids	6.29
9133	Osomatsu-kun (1988): Appare! Chibita no Onitaiji zansu	1	Comedy	6.29
9487	Shinya Doubutsuen	1		6.29
5362	Akahori Gedou Hour Rabuge	13	Comedy Magic Parody	6.3
5363	Anju to Zushioumaru	1	Fantasy Historical	6.3
5364	Azuki-chan the Movie	1	Comedy Romance Shoujo Slice of Life	6.3
5365	Brain Powerd	26	Action Adventure Mecha Sci-Fi	6.3
5366	Catblue: Dynamite	1	Action Fantasy	6.3
5367	DNA Sights 999.9	1	Action Adventure Drama Sci-Fi	6.3
5368	Futari Daka	36	Cars Shounen Sports	6.3
5369	Gegege no Kitarou (1985 Movie)	1	Adventure Comedy Fantasy Horror Supernatural	6.3
5370	Goulart Knights: Evoked the Beginning White	1	Action Drama Fantasy Shoujo Supernatural	6.3
5371	Kingyo Chuuihou! (Movie)	1	Action Comedy Kids Shoujo	6.3
5372	Kiss Dum: Omokage	1	Mecha Military Sci-Fi	6.3
5373	Masou Kishin Cybuster	26	Adventure Mecha Sci-Fi Shounen	6.3
5374	Momoiro Sisters	24	Comedy Slice of Life	6.3
5375	Monotonous Purgatory	1	Music	6.3
5376	Personal Computer Travel Tanteidan	26	Adventure Historical Kids Sci-Fi	6.3
5377	Porong Porong Pororo	52	Kids	6.3
5378	Prism Ark Specials	6	Action Comedy Drama Fantasy Magic	6.3
5379	Robot Girls Z Plus	6	Comedy Mecha Parody	6.3
5380	Samurai Spirits 2: Asura Zanmaden	2	Action Fantasy Martial Arts Samurai Super Power	6.3
5381	Sengoku Musou: Sengoku Musou High School	8	Comedy Samurai School	6.3
5382	Sougen no Ko Tenguri	1	Adventure Drama Historical Kids	6.3
5383	Stitch!: Itazura Alien no Daibouken	29	Adventure Comedy Kids Sci-Fi	6.3
5384	Tamagotchi!	143	Comedy Kids	6.3
5385	Tattoon Master	2	Adventure Comedy Slice of Life Supernatural	6.3
5386	Thermae Romae x Asahi Shimbun Digital Collaboration	1	Comedy Historical Seinen	6.3
5387	Topo Gigio	21	Adventure Comedy Kids	6.3
5388	Yamatarou Kaeru	1	Kids	6.3
7543	Bug tte Honey	51	Adventure Comedy	6.3
7548	Bungaku Shounen no Yuuutsu	1	Drama Music	6.3
7898	Gene Diver	56	Action Adventure Shounen	6.3
7992	Hajimete no Christmas	1	Kids	6.3
8067	Hello Kitty no London ni Orita Uchuujin	1	Kids	6.3
8448	Kero Kero Keroppi no Sanjuushi	1	Fantasy Kids	6.3
8491	Kinnikuman: Haresugata! Seigi Choujin	1	Action Comedy Shounen Sports	6.3
8590	Kuma no Puutarou	30	Comedy	6.3
8649	Little Charo 2	50	Slice of Life	6.3
8974	Niji no Kanata e! Shoujo Diana Monogatari	1	Historical Shoujo	6.3
9832	Toshishun	1	Adventure Drama Fantasy Historical Supernatural	6.3
9896	Ultra Nyan: Hoshizora kara Maiorita Fushigi Neko	1	Comedy Kids	6.3
5342	Ai Tenchi Muyou!	50	Comedy Sci-Fi Shounen	6.31
5343	Akubi Girl	26	Comedy Fantasy	6.31
5344	Asagiri no Miko	26	Action Comedy Drama Fantasy Magic School Sci-Fi Shounen Slice of Life Super Power Supernatural	6.31
5345	Attack No.1: Namida no Fushichou	1	Drama Shoujo Sports	6.31
5346	Backkom 2	52	Comedy Kids	6.31
5347	Beyblade Burst	Unknown	Action Adventure Sci-Fi Shounen Sports	6.31
5348	Chuumon no Ooi Ryouriten (1991)	1	Fantasy Horror Supernatural	6.31
5349	D.I.C.E.	40	Action Adventure Kids Mecha Sci-Fi Shounen	6.31
5350	Dr.	1	Action Adventure Magic Music Sci-Fi Super Power	6.31
5351	Gregory Horror Show: The Bloody Karte	12	Comedy Demons Horror Mystery Supernatural Vampire	6.31
5352	Hiatari Ryoukou! Yume no Naka ni Kimi ga Ita	1	Comedy Drama Romance	6.31
5353	Hoshi ni Negai wo: Fantastic Cat	1	Adventure Sci-Fi	6.31
5354	Kimi no Sumu Machi	1	Comedy	6.31
5355	Komori-san wa Kotowarenai!	12	Comedy School Slice of Life	6.31
5356	Mangchi	1	Adventure Comedy Fantasy	6.31
5357	Maou Dante	13	Action Demons Horror Shounen Supernatural	6.31
5358	Mazinger Z tai Devilman	1	Adventure Demons Mecha Sci-Fi Shounen	6.31
5359	Rakugo Tennyo Oyui	12	Comedy Historical	6.31
5360	Sousei Kishi Gaiarth	3	Action Adventure Mecha Sci-Fi	6.31
5361	Suna no Bara: Yuki no Mokushiroku	1	Action	6.31
8084	Hello Kitty no Shirayuki-hime	1	Fantasy Kids	6.31
8217	Ikkyuu-san to Yancha Hime	1	Comedy Historical Kids	6.31
8261	Jankenman: Kaijuu Dai Kessen	1	Comedy Kids	6.31
8453	Kero Kero Keroppi no Tomodachitte Ii na	1	Kids	6.31
8636	Legend of Basara: Shinbashi Theater	1	Comedy	6.31
9414	Senbon Matsubara	1	Drama Historical	6.31
5313	Angelique: Twin Collection	8	Fantasy Sci-Fi Shoujo	6.32
5314	Bakugan Battle Brawlers: Gundalian Invaders	39	Action Adventure Fantasy Game Shounen	6.32
5315	Cosmic Break	4	Drama Game Mecha	6.32
5316	Cutey Honey Flash: The Movie	1	Adventure Comedy Magic Romance	6.32
5317	Document Taiyou no Kiba Dagram	1	Drama Mecha Military Sci-Fi Shounen	6.32
5318	DRAMAtical Murder	12	Action Psychological Sci-Fi Super Power	6.32
5319	Enchanted Journey	1	Adventure Drama Fantasy Kids	6.32
5320	Genmu Senki Leda	1	Action Adventure Fantasy Magic Mecha Sci-Fi	6.32
5321	Haiyoru! Nyaruani: Remember My Love(craft-sensei)	11	Comedy Sci-Fi	6.32
5322	Hana wa Saku	1	Music	6.32
5323	Hipira-kun	10	Comedy Fantasy Kids Supernatural Vampire	6.32
5324	Ibara-Hime matawa Nemuri-Hime	1	Drama Historical	6.32
5325	Kaitei Sanman Mile	1	Adventure Fantasy	6.32
5326	Kimi ga Nozomu Eien: Ayu Mayu Gekijou	7	Comedy	6.32
5327	Koala Boy Kokki	26	Comedy	6.32
5328	Kodai Ouja Kyouryuu King: Yokuryuu Densetsu	30	Action Adventure Game Kids Sci-Fi	6.32
5329	Kurage no Shokudou	1	Drama Slice of Life	6.32
5330	Mahou Shoujo Nante Mou Ii Desukara. 2nd Season	12	Comedy Magic	6.32
5331	Mobile Suit Gundam Battlefield Record: Avant-Title	1	Mecha Sci-Fi Space	6.32
5332	Monster High: Kowa-ike Girls	8	Kids Shoujo Supernatural	6.32
5333	Sasurai no Shoujo Nell	26	Adventure Historical Shoujo	6.32
5334	Tales of Eternia The Animation	13	Adventure Comedy Fantasy Romance Shounen	6.32
5335	Tanken Driland: 1000-nen no Mahou	51	Adventure Fantasy	6.32
5336	The iDOLM@STER Live For You!	1	Comedy Drama Music	6.32
5337	Triangle Heart: Sweet Songs Forever	4	Adventure Romance	6.32
5338	Umi ni Ochita Tsuki no Hanashi	1	Kids	6.32
5339	Yousei Ou	1	Fantasy Shoujo	6.32
5340	Yu☆Gi☆Oh! Zexal Second: Midokoro Tenkomori Special	1	Action Fantasy Game Shounen	6.32
5341	Yuyushiki: Nyanyashiki	6	Comedy	6.32
7409	Anime TV de Hakken! Tamagotchi	27	Comedy Fantasy Kids Slice of Life	6.32
7531	Bouken Yuuki Pluster World	52	Sci-Fi Shounen	6.32
7637	Chou Kousoku Galvion	22	Action Mecha Military Police	6.32
8109	Hey Yo Yorang	26	Adventure Comedy Fantasy Kids Magic	6.32
8744	Marine Snow no Densetsu	1	Sci-Fi	6.32
9530	Show By Rock!! x Joysound	Unknown	Comedy Music	6.32
9991	Wrestler Gundan Seisenshi Robin Jr.	50	Action Adventure Comedy Fantasy Kids Parody Sci-Fi Super Power	6.32
5291	.hack//Tasogare no Udewa Densetsu: Offline de Aimashou	1	Adventure Comedy Fantasy Game Sci-Fi	6.33
5292	Aftermath	1	Drama Military Music	6.33
5293	Batain Lai!! Minami no Shima no Mizu Monogatari	1	Historical Slice of Life	6.33
5294	Bobby ni Kubittake	1	Drama Romance Slice of Life	6.33
5295	Darkside Blues	1	Horror Mystery Psychological Sci-Fi	6.33
5296	Ginga no Uo Ursa Minor Blue	1	Fantasy Kids	6.33
5298	Jankenman	51	Adventure Super Power	6.33
5299	Kasumin 3rd Season	26	Fantasy Kids	6.33
5300	Kidou Shinsengumi Moeyo Ken TV	13	Adventure Comedy Fantasy Historical	6.33
5301	Kitakubu Katsudou Kiroku: Miniature Theater	6	Comedy School	6.33
5302	Kurumiwari Ningyou	1	Drama Fantasy Romance	6.33
5303	Kyokugen Dasshutsu Adv: Zennin Shibou Desu Prologue	1	Mystery	6.33
5304	Long Riders!	12	Comedy Shounen Slice of Life Sports	6.33
5305	Macross FB7: Ore no Uta wo Kike!	1	Action Mecha Music Romance Sci-Fi	6.33
5306	New Mobile Report Gundam Wing: Frozen Teardrop Picture Drama - Aratanaru Tatakai	1	Action Mecha Sci-Fi	6.33
5307	Puchitto Furikaerintia	1	Action Adventure Mecha Sci-Fi	6.33
5308	Sakura Tsuushin	12	Comedy Drama Romance Slice of Life	6.33
5309	Soreyuke! Uchuu Senkan Yamamoto Yohko	3	Adventure Comedy Sci-Fi	6.33
5310	Tanoshii Willow Town	26	Fantasy Kids	6.33
5311	Toki no Tabibito: Time Stranger	1	Action Adventure Romance Sci-Fi	6.33
5312	Ushio to Tora: Comically Deformed Theater	1	Action Comedy	6.33
7440	Ashita no Kibou: Kanashimi yo Arigatou - Takae Tsuneo Monogatari	1	Drama Slice of Life	6.33
7476	Barnacle Lou	52	Kids	6.33
7506	Bogeul Bogeul Bomulseon	1	Adventure Fantasy	6.33
7551	Burning Blood	3	Shounen Sports	6.33
7573	Chang	1	Drama Military Thriller	6.33
8080	Hello Kitty no Sanbiki no Kobuta	1	Fantasy Kids	6.33
8107	Hero Hero-kun	104	Adventure Comedy Game Kids	6.33
8202	Ichinen Ikkumi	1	Kids School	6.33
8215	Ikitemasu 15-sai.	1	Drama Kids	6.33
8255	Iwata Kunchi no Obaachan	1	Drama Historical Kids	6.33
8285	Jishin ga Kitarou Dousuru? Mushi Mushi Mura no Bousai Kunren	1	Drama Kids	6.33
8304	Juuroku Jizou Monogatari: Sensou no Gisei ni Natta Kodomo-tachi	1	Drama Historical Kids	6.33
8312	Kabushiki Kaisha Zoo	12	Comedy Kids	6.33
8423	Kaze no Tabibito	1	Drama Kids	6.33
8544	Kokoro no Koukyougaku	1	Drama Kids	6.33
8557	Kono Sora no Shita de	1	Drama Kids	6.33
8588	Kuma no Gakkou: Jackie to Katie	1	Comedy Kids	6.33
8589	Kuma no Minakuro to Kouhei Jiisan	1	Drama Kids	6.33
8595	Kumori Nochi Hare	1	Drama Kids	6.33
8875	Mouretsu Atarou	90	Comedy Kids Slice of Life	6.33
9138	Otenki Boys	30	Kids Super Power	6.33
9139	Otogi Banashi: Bunbuku Chagama	1	Kids	6.33
9220	Pic-lele	Unknown	Kids	6.33
9227	Pink Lady Monogatari: Eikou no Tenshi-tachi	33	Drama Music Slice of Life	6.33
9250	Ponsuke no Haru	1	Comedy Kids	6.33
9439	Shi Wan Ge Leng Xiaohua 2nd Season	13	Comedy Parody	6.33
9811	Tokugawa Iemitsu to Edo Bakufu	1	Drama Historical Kids Samurai	6.33
9814	Tokyo Onlypic	1	Comedy Parody Sports	6.33
9822	Tonari no Tamageta-kun	60	Comedy Sci-Fi	6.33
10006	Xiang Qi Master	26	Game	6.33
10010	Xing Mao Lixian Ji Zhi Shu Fa Pian	26	Adventure Kids	6.33
10012	Xiong Chu Mo Zhi Chunri Dui Dui Peng	52	Adventure Comedy Kids	6.33
10016	Xiong Chu Mo Zhi Huanqiu Da Maoxian	104	Comedy Kids	6.33
10076	Yowamushi Monsters	Unknown	Kids	6.33
10124	Zoku Zoku Mura no Obaketachi	12	Fantasy	6.33
5248	Amanatsu	1	Sci-Fi	6.34
5249	Aoi Hitomi no Onnanoko no Ohanashi	1	Drama Historical	6.34
5250	Azusa Otetsudai Shimasu!	1	Comedy Sci-Fi Slice of Life Sports	6.34
5251	Bakuen Campus Guardress	4	Action Comedy School Shounen Supernatural	6.34
5252	Blade	12	Action Drama Horror Vampire	6.34
5253	Cowboy Bebop: Ein no Natsuyasumi	1	Adventure	6.34
5254	Dr. Slump Movie 10: Arale no Bikkuriman	1	Comedy Sci-Fi Shounen	6.34
5255	Fortune Quest: Yo ni mo Shiawase na Boukensha-tachi	4	Adventure Comedy Fantasy Magic	6.34
5256	Fujoshi no Hinkaku	1	Slice of Life	6.34
5257	Fumoon	1	Sci-Fi	6.34
5258	Galo Sengen	1	Music	6.34
5259	Ganbare! Kickers: Hitoribocchi no Ace Striker	1	Drama Shounen Sports	6.34
5260	Gegege no Kitarou: Chisougan	1	Adventure Comedy Fantasy Horror Supernatural	6.34
5261	Haiyoru! Nyaruani	9	Comedy Parody Sci-Fi	6.34
5262	Haou Daikei Ryuu Knight: Adeu Legend II	3	Action Adventure Fantasy Mecha	6.34
5263	Hoshi no Kirby: Tokubetsu-hen - Taose!! Koukaku Majuu Ebizou	1	Action Adventure Comedy Fantasy	6.34
5264	King of Prism by Pretty Rhythm	1	Music Shoujo Sports	6.34
5265	Konchuu Monogatari Mitsubachi Hutch: Yuuki no Melody	1	Adventure Comedy Drama	6.34
5266	Koneko no Studio	1	Comedy	6.34
5267	Mad★Bull 34	4	Action Police	6.34
5268	Maze☆Bakunetsu Jikuu	2	Adventure Comedy Fantasy Mecha Shounen	6.34
5269	Memories Off #5 Togireta Film The Animation	1	Drama Romance	6.34
5270	Metal Fight Beyblade Zero G Specials	7	Adventure Sports	6.34
5271	Miss Monochrome: The Animation - Soccer-hen	1	Comedy Slice of Life Sports	6.34
5272	Oishinbo: Kyuukyoku tai Shikou Chouju Ryouri Taiketsu!!	1	Comedy Seinen Slice of Life	6.34
5273	Perman (1983)	526	Comedy Kids School Super Power	6.34
5274	Pretty Rhythm: All Star Selection	11	Music Shoujo Sports	6.34
5275	Robot Girls Z Episode 0	1	Comedy Mecha Parody	6.34
5276	Saishuu Shiken Kujira Progressive	1	Drama Romance	6.34
5277	Saki Picture Drama	7	Comedy Slice of Life	6.34
5278	SF Shinseiki Lensman	1	Action Adventure Sci-Fi Space	6.34
5279	Shounen Sarutobi Sasuke	1	Adventure Fantasy	6.34
5280	Street Fighter: Aratanaru Kizuna	1	Action Adventure Shounen	6.34
5281	Submarine 707R	2	Action Adventure Military Sci-Fi	6.34
5282	Tamayura: More Aggressive Picture Drama	1	Comedy Drama	6.34
5284	Tiger &amp; Bunny Recaps	2	Action Comedy Mystery Super Power	6.34
5285	Touken Ranbu: Hanamaru	12	Action Comedy Drama Fantasy Historical Slice of Life	6.34
5286	Uchuu no Senshi	6	Mecha Military Sci-Fi Shounen Space	6.34
5287	UN-GO: Inga Nikki	10	Parody	6.34
5288	Wild 7	2	Action Drama Police Shounen	6.34
5289	Yowai Mushi	1	Drama Music	6.34
5290	Yu☆Gi☆Oh! Zexal Special	1	Action Fantasy Game Shounen	6.34
5297	Hanamaru Youchien: Panda Neko Taisou	8	Comedy Kids Music	6.34
5189	91 Days Recap	1	Action Drama Historical	6.35
5214	Alice SOS	28	Adventure	6.35
5216	Badaui Jeonseol Jangbogo	26	Action Adventure Comedy Mystery	6.35
5217	Cyborg 009	1	Action Adventure Drama Sci-Fi Shounen	6.35
5218	Dengeki Bunko 2007 Movie Festival Special	1	Comedy	6.35
5219	Digimon Savers 3D: Digital World Kiki Ippatsu!	1	Action Adventure Fantasy Kids Supernatural	6.35
5220	Duel Masters Victory V	51	Action Adventure Comedy Shounen	6.35
5221	Esper Mami: Hoshizora no Dancing Doll	1	Fantasy Shounen	6.35
5222	Future War 198X-nen	1	Drama Military	6.35
5223	Fuyu no Hi	1	Historical	6.35
5224	Grey: Digital Target	1	Action Fantasy Sci-Fi	6.35
5225	Hijikata Toshizou: Shiro no Kiseki	1	Action Drama Historical Samurai	6.35
5226	Hoshi ni Negai wo: Cold Body + Warm Heart	1	Adventure Sci-Fi	6.35
5227	Jinki:Extend OVA	1	Mecha Sci-Fi	6.35
5228	Kagihime Monogatari Eikyuu Alice Rinbukyoku	13	Fantasy Magic	6.35
5229	Kosuke-sama Rikimaru-sama: Konpeitou no Ryuu	1	Action Adventure Super Power	6.35
5230	Lunn wa Kaze no Naka	1	Drama Romance	6.35
5231	Mainichi ga Nichiyoubi	6	Comedy Romance	6.35
5232	Mini Hama: Minimum Hamatora Movies	2	Comedy Mystery School Super Power	6.35
5233	Minori Scramble!	1	Comedy	6.35
5234	Sanrio Anime Sekai Meisaku Gekijou	13	Adventure Fantasy Kids	6.35
5235	Sazae-san	Unknown	Comedy Slice of Life	6.35
5236	Short Peace Opening	1	Fantasy Sci-Fi Supernatural	6.35
5237	Suzy&#039;s Zoo: Daisuki! Witzy	25	Kids	6.35
5238	Taifuu no Noruda	1	Drama School Sci-Fi Supernatural	6.35
5239	Tetsuwan Atom: Atom Tanjou no Himitsu	1	Drama Mecha Sci-Fi	6.35
5240	Time Bokan 2000: Kaitou Kiramekiman	26	Action Adventure Comedy Mecha Sci-Fi	6.35
5241	Tsuki no Sango	1	Drama	6.35
5242	Uchuujin Tanaka Tarou	24	Comedy School Shounen	6.35
5243	Ukkari Pénélope (2009)	26	Comedy Slice of Life	6.35
5244	Vampiyan Kids	23	Comedy Fantasy Kids	6.35
5245	Wanpaku Oomukashi Kum Kum	26	Adventure Comedy Historical Kids	6.35
5246	Wind: A Breath of Heart OVA	3	Drama Romance School Supernatural	6.35
5247	Yousei Hime Ren	2	Adventure Comedy Fantasy	6.35
5283	Teekyuu 5 Specials	2	Comedy School Shounen Sports	6.35
7729	Donguri to Yamaneko	1	Drama	6.35
8059	Hello Kitty no Fushigi na Mizuumi	1	Fantasy Kids	6.35
8479	Kiku-chan to Ookami	1	Adventure Historical	6.35
8853	Momotarou Densetsu	51	Adventure Comedy	6.35
8980	Nine 3: Kanketsu-hen	1	Action School Sports	6.35
9200	Pelican Road Club Culture	1	Drama Romance Shounen	6.35
9242	Pochacco no Ninjin Hata wa Oosawagi	1	Fantasy Kids	6.35
9929	Utsunomiko	1	Adventure Demons Fantasy	6.35
10029	Yakyuukyou no Uta: Kita no Ookami Minami no Tora	1	Action Drama Sports	6.35
10106	Zegapain ADP	1	Action Mecha Romance Sci-Fi	6.35
5190	Akai Shouzou: Char Soshite Frontal e	1	Drama Mecha Military Sci-Fi Shounen Space	6.36
5191	Andersen Monogatari	1	Drama Fantasy Kids	6.36
5192	Blue Gender: The Warrior	1	Adventure Drama Horror Mecha Military Romance Sci-Fi Space	6.36
5193	Ganbare Goemon	23	Comedy Shounen	6.36
5194	Genei wo Kakeru Taiyou: Fumikomenai Kokoro	1	Magic	6.36
5195	Glass no Kantai: La Legende du Vent de l&#039;Univers Specials	2	Adventure Sci-Fi	6.36
5196	Guskou Budori no Denki (2012)	1	Drama Fantasy Kids Slice of Life	6.36
5197	Highschool Aurabuster: Hikari no Mezame	3	Drama Fantasy Super Power	6.36
5198	Hoshi no Ko Chobin	26	Adventure Sci-Fi	6.36
5199	Ikoku Meiro no Croisée: Yune &amp; Alice	7	Historical Seinen Slice of Life	6.36
5200	Kaze no Tairiku	1	Action Adventure Fantasy Supernatural	6.36
5201	Kuusou no Sora Tobu Kikaitachi	1	Historical	6.36
5202	Machine Hayabusa	21	Action Cars Shounen Sports	6.36
5203	Makai Toshi Shinjuku	1	Adventure Horror Romance Shounen Supernatural	6.36
5204	Meiou Project Zeorymer	4	Action Drama Mecha Psychological Sci-Fi	6.36
5205	Mianhada Saranghanda	1	Drama	6.36
5206	Psychic Academy	24	Comedy Romance Supernatural	6.36
5207	Puchitto Gargantia	13	Mecha Sci-Fi	6.36
5208	Rilu Rilu Fairilu: Yousei no Door	Unknown	Fantasy Magic	6.36
5209	Seupideuwang Beongae	26	Action Game School Shounen Sports	6.36
5210	Tenshi no Shippo Chu!: Shoushuuhen Tenshi no Utagoe	1	Fantasy Magic Romance	6.36
5211	Wild Adapter	2	Action Drama Mystery Shoujo	6.36
5212	Wooser no Sono Higurashi	12	Comedy Fantasy Slice of Life	6.36
5213	Youkoso Lodoss-tou e!	1	Comedy Parody	6.36
5215	Another: Misaki Mei - Shizuka ni	1	Music	6.36
7594	Chibikko Kaijuu Yadamon	26	Comedy Kids Supernatural	6.36
8046	Heart Cocktail	77	Romance Seinen	6.36
8097	Hello Kitty: Mahou no Mori no Ohimesama	1	Fantasy Kids Magic	6.36
8384	Kanagatari. Kanabakari.: Kanadian Families	1	Slice of Life	6.36
8416	Kasumin 2nd Season	26	Fantasy Kids	6.36
8593	Kumo no Ito (OVA)	1	Fantasy	6.36
8627	L/R: Licensed by Royal Special	1	Action Adventure Mystery Police	6.36
8722	Manga Hajimete Monogatari	305	Adventure Comedy Historical	6.36
8765	Mechakko Dotakon	28	Comedy Sci-Fi	6.36
9805	Tokai no Butchy	1	Music Romance	6.36
9881	Udauda Yatteru Hima wa Nee!	2	Action Comedy School Shounen	6.36
9944	Wakakusa Monogatari: Nan to Jo-sensei Specials	2	Drama Historical School Slice of Life	6.36
9988	Wonder 3 Pilot	1	Action Adventure Comedy Sci-Fi	6.36
10042	Yasai no Yousei: N.Y.Salad	26	Kids	6.36
10102	Yuuyake Banchou	26	Action	6.36
5159	.hack//Gift	1	Comedy Fantasy Game	6.37
5160	Arion	1	Action Adventure Drama Fantasy Magic Seinen	6.37
5161	Attack No.1: Namida no Kaiten Receive	1	Drama Shoujo Sports	6.37
5162	Captain Future: Kareinaru Taiyokei Race	1	Action Adventure Sci-Fi	6.37
5163	Chocolat no Mahou	13	Drama Magic Shoujo Supernatural	6.37
5164	Choujin Locke: Lord Leon	3	Action Sci-Fi Super Power	6.37
5165	Densetsu Kyojin Ideon: Sesshoku-hen	1	Drama Mecha Sci-Fi Space	6.37
5166	Duel Masters Charge	52	Action Adventure Comedy Shounen	6.37
5167	Duel Masters Victory	52	Action Adventure Comedy Shounen	6.37
5168	Futari no Joe	6	Shounen Sports	6.37
5169	Gegege no Kitarou (1968 Movie)	1	Adventure Comedy Fantasy Horror Supernatural	6.37
5170	Hana no Kage	1	Demons Drama Historical Romance	6.37
5171	Kaitei Choutokkyuu: Marine Express	1	Action Adventure Comedy Drama Sci-Fi	6.37
5172	Kick-Heart	1	Comedy Romance Sports	6.37
5173	Kyoto Animation: Ikitaku Naru Omise-hen	1	Sci-Fi	6.37
5174	Lovely Movie: Itoshi no Muco	20	Slice of Life	6.37
5175	Miss Monochrome: The Animation - Manager	1	Comedy Music Slice of Life	6.37
5176	MitchiriNeko March	1	Music	6.37
5177	Moero Arthur: Hakuba no Ouji	22	Adventure Drama Historical Romance	6.37
5178	Moyashimon CGI Anime	1	Comedy School Supernatural	6.37
5179	Shikabane Hime: Puchitto	1	Comedy	6.37
5180	Sister Princess: Re Pure	13	Drama Romance	6.37
5181	Sotsugyou: Graduation	2	Drama School	6.37
5182	Taishou Yakyuu Musume. Specials	2	School Sports	6.37
5183	Time Bokan Series: Gyakuten Ippatsuman	58	Action Comedy Mecha Sci-Fi	6.37
5184	Time Bokan Series: Itadakiman	20	Mecha	6.37
5185	TO-Y	1	Drama Music Shounen	6.37
5186	Umezu Kazuo no Noroi	1	Horror	6.37
5187	Yurumates wa?	1	Comedy Seinen Slice of Life	6.37
5188	Zephyr	1	Drama Music	6.37
7767	Edokko Boy: Gatten Tasuke	22	Comedy Martial Arts Police Sports	6.37
8192	Hyouga Senshi Gaislugger	20	Action Mecha Sci-Fi	6.37
8400	Karakuri Kengou Den Musashi Lord	50	Action Adventure Mecha	6.37
5110	Knyacki!	Unknown	Comedy Drama Fantasy Kids	6.38
5124	A Piece of Phantasmagoria	15	Fantasy Kids	6.38
5125	Accel World: Acchel World.	8	Comedy Sci-Fi	6.38
5126	Akai Koudan Zillion Specials	3	Adventure Sci-Fi Shounen	6.38
5127	B-Densetsu! Battle Bedaman	52	Adventure Fantasy Kids Shounen	6.38
5128	Bakugan Battle Brawlers	52	Action Fantasy Game	6.38
5129	Cinderella Boy	13	Action Adventure Comedy Mystery	6.38
5130	Corpse Party: Missing Footage	1	Horror School	6.38
5131	Dear Brave	1	Music Romance	6.38
5132	Dororon Enma-kun	25	Comedy Demons Fantasy Horror Shounen Supernatural	6.38
5133	Eightman After	4	Action Drama Sci-Fi	6.38
5134	Future Card Buddyfight Recap	1	Game	6.38
5135	gdgd Fairies 2 Episode 0	1	Comedy Fantasy	6.38
5136	Gendai Kibunroku Kaii Monogatari	1	Horror	6.38
5137	Izumo: Takeki Tsurugi no Senki	12	Adventure Drama Fantasy Martial Arts Romance Supernatural	6.38
5138	Jin Sheng Yuan	1	Music	6.38
5139	Kataku	1	Demons Historical Supernatural	6.38
5140	Mahouka Koukou no Rettousei: Yoku Wakaru Mahouka!	6	Comedy Magic	6.38
5141	Nagareboshi Lens Specials	3	Romance Shoujo	6.38
5142	Nijiiro☆Prism Girl	4	Comedy Romance School Shoujo	6.38
5143	Nurarihyon no Mago Recaps	2	Action Demons Shounen Supernatural	6.38
5144	Obake no Q-tarou	96	Comedy School Slice of Life Supernatural	6.38
5145	Ongaku Shoujo	1	Music Slice of Life	6.38
5146	Saint Beast: Ikusen no Hiru to Yoru-hen	2	Fantasy Magic	6.38
5147	Sci-fi Harry	20	Drama Horror Sci-Fi	6.38
5148	Shinran-sama: Negai Soshite Hikari	1	Historical	6.38
5149	Shiranpuri (Movie)	1	Drama School	6.38
5150	Sora wo Kakeru Shoujo Picture Drama	9	Adventure Comedy Sci-Fi Space	6.38
5151	Taiko no Tatsujin	26	Game	6.38
5152	Tekkamen wo Oe: &quot;d&#039;Artagnan Monogatari&quot; yori	1	Action Historical	6.38
5153	Tenshi Nanka ja Nai	1	Comedy Drama	6.38
5154	Transformers Superlink	51	Adventure Mecha Sci-Fi Shounen	6.38
5155	Uchuu Kaizoku Mito no Daibouken: Futari no Joou-sama	13	Action Comedy Sci-Fi	6.38
5157	Yu☆Gi☆Oh! Zexal Second: Iza! Saishuu Kessen e!! Special	1	Action Fantasy Game Shounen	6.38
5158	Yuusha ni Narenakatta Ore wa Shibushibu Shuushoku wo Ketsui Shimashita. Specials	5	Comedy	6.38
7893	Gegege no Kitarou: Youkai Daisensou	1	Adventure Comedy Fantasy Horror Supernatural	6.38
7900	Genji	2	Historical Magic Romance	6.38
7925	Ginga Shounen Tai	92	Action Adventure Kids Space	6.38
8047	Heart Cocktail Again	1	Romance Seinen	6.38
8100	Hello Kitty: Ringo no Mori to Parallel Town	27	Comedy Fantasy Kids	6.38
8759	McDull the Alumni	1	Comedy	6.38
8771	Meiken Lassie Specials	2	Adventure Slice of Life	6.38
9060	Oh! My Konbu	22	Comedy Shounen Slice of Life	6.38
9171	Pants Pankurou	85	Comedy Kids Slice of Life	6.38
9365	Sakura no Ondo	1	Drama	6.38
9787	The World of Golden Eggs	26	Comedy Parody	6.38
9868	Two Down Full Base	1	Kids Sports	6.38
9887	Ukkari Pénélope	26	Comedy Slice of Life	6.38
9904	Umeboshi Denka: Uchuu no Hate kara Panparopan!	1	Comedy	6.38
9905	Umi Da! Funade Da! Nikoniko Pun	1	Comedy Fantasy	6.38
10043	Yasai no Yousei: N.Y.Salad 2nd Series	26	Kids	6.38
4995	STAR BEAT!: Hoshi no Kodou	1	Music	6.39
5079	Kakumeiki Valvrave Recaps	3	Action Mecha	6.39
5096	009-1	12	Action Mecha Sci-Fi Seinen	6.39
5097	Ai Tenshi Densetsu Wedding Peach Specials	2	Adventure Comedy Magic Romance Shoujo	6.39
5098	Amnesia	12	Fantasy Josei Mystery Romance	6.39
5099	Andersen Monogatari (TV)	52	Drama Fantasy Kids	6.39
5100	Bao Lian Deng	1	Action Adventure Fantasy	6.39
5101	Buddy Go! 2	4	Comedy Romance Shoujo	6.39
5102	Chitose Get You!!	26	Comedy Romance School Seinen Slice of Life	6.39
5103	Dragon Collection	51	Fantasy Shounen	6.39
5104	Duel Masters Movie 2: Lunatic God Saga	1	Action Adventure Comedy Shounen	6.39
5105	Future Card Buddyfight DDD	Unknown	Game	6.39
5106	Gegege no Kitarou: Youkai Tokkyuu! Maboroshi no Kisha	1	Adventure Comedy Fantasy Horror Supernatural	6.39
5107	H. P. Lovecraft&#039;s The Dunwich Horror and Other Stories	1	Horror	6.39
5108	Jikuu Tantei Genshi-kun	39	Adventure Comedy Fantasy Mystery Sci-Fi Shounen	6.39
5109	Kaze wo Nuke!	1	Sports	6.39
5111	Kujibiki♥Unbalance	12	Comedy Romance School	6.39
5112	Lupin tai Holmes	1	Mystery	6.39
5113	Muramasa	1	Historical Horror Martial Arts Samurai	6.39
5114	Phantom of the Kill: Zero kara no Hangyaku	1	Action Adventure Fantasy	6.39
5116	Senkou no Night Raid: Yogen	1	Action Historical Military Super Power	6.39
5117	Shin Strange+	12	Comedy Shoujo Slice of Life	6.39
5118	Taisei Kensetsu: Vietnam Noi Bai Kuukou	1	Drama	6.39
5119	Teki wa Kaizoku: Neko-tachi no Kyouen	6	Comedy Sci-Fi	6.39
5120	Uchuu Kazoku Carlvinson	1	Comedy Fantasy Sci-Fi	6.39
5121	Umi Monogatari: Marin no Kore Naani?	4	Comedy	6.39
5122	Votoms Finder	1	Action Drama Mecha Military Sci-Fi	6.39
5123	Yurumates 3D	13	Comedy Seinen Slice of Life	6.39
5156	Wake Up Girls! Deai no Kiroku: A Brief Recording	1	Music	6.39
8683	Mahjong Hishouden: Naki no Ryuu	3	Action Drama Game Seinen	6.39
5067	Airy Me	1	Dementia Drama Horror Music	6.4
5068	Duel Masters Zero	25	Action Kids	6.4
5069	Gakkyuu Ou Yamazaki	53	Comedy	6.4
5070	Genesis Climber Mospeada: Love Live Alive	1	Action Mecha Music	6.4
5071	Ginga Ojousama Densetsu Yuna: Shin&#039;en no Fairy	3	Action Adventure Comedy Magic Mecha Sci-Fi	6.4
5072	Hanamaru Youchien Special Preview	1	Comedy School	6.4
5073	Hello Kitty no Alps no Shoujo Heidi	1	Kids	6.4
5074	Hidamari Sketch Recap	1	Comedy School Slice of Life	6.4
5075	Hidan no Aria AA	12	Action School Shoujo Ai	6.4
5076	Himiko-den	12	Adventure Drama Fantasy Supernatural	6.4
5077	Himitsu no Akko-chan 3	44	Magic School Shoujo	6.4
5078	Hokkyoku no Muushika Miishika	1	Adventure	6.4
5080	Kiko-chan Smile	51	Adventure Comedy Josei Slice of Life	6.4
5081	Kobayashi ga Kawai sugite Tsurai!!	2	Romance School Shoujo	6.4
5082	Mahou Shoujo Pretty Sammy Specials	7	Adventure Comedy Fantasy Magic Parody Seinen	6.4
5083	Mouryou Senki Madara	2	Adventure Demons Shounen Supernatural	6.4
5084	Nanami-chan	12	Comedy Kids	6.4
5085	Nekogami Yaoyorozu Specials	7	Comedy Seinen Supernatural	6.4
5086	Osamu to Musashi	1	Adventure Fantasy Kids	6.4
5087	Play Ball	13	Action Shounen Sports	6.4
5088	Rikujou Bouei-tai Mao-chan	26	Comedy Kids Magic Military Sci-Fi	6.4
5089	Shin Maple Town Monogatari: Palm Town-hen - Konnichiwa! Atarashii Machi	1	Fantasy Slice of Life	6.4
5090	Tokimeki Tonight Recaps	2	Comedy Fantasy Romance Shoujo Vampire	6.4
5091	Tsubasa to Hotaru (2016)	3	Romance School Shoujo	6.4
5092	Umi kara no Shisha	1	Action Mecha Sci-Fi Super Power	6.4
5093	Usavich Zero	13	Comedy	6.4
5094	Vampiyan Kids: Pilot	1	Action Comedy Kids Vampire	6.4
5095	Yoiko	20	Comedy School Slice of Life	6.4
5115	Pokemon XY: Koukoku no Princess Diancie	1	Comedy Fantasy Kids	6.4
7516	Boku wa Ou-sama (TV)	12	Kids	6.4
7593	Chibi Neko Tomu no Daibouken: Chikyuu wo Sukue! Nakama-tachi	1	Adventure Kids	6.4
7958	Gorillaman	2	Comedy School Seinen	6.4
8138	Himitsukessha Taka no Tsume The Movie 4: Kaspersky wo Motsu Otoko	1	Comedy Parody	6.4
8191	Hyokkori Hyoutan Shima	1	Adventure Kids	6.4
8307	Kabi Usagi	Unknown	Comedy	6.4
8508	Kitty to Daniel no Suteki na Christmas	1	Kids	6.4
8840	Mochi Mochi no Ki (OVA)	1	Drama Kids	6.4
9032	Nukko.	Unknown	Comedy	6.4
9105	Onigara	1	Demons Kids	6.4
9134	Osomatsu-kun: Iyami wa Hitori Kaze no Naka	1	Comedy Historical	6.4
9251	Ponsuke no Udekurabe	1	Action	6.4
9252	Ponta to Ensoku	1	Adventure Drama	6.4
9336	Rose O&#039;Neill Kewpie	26	Comedy	6.4
9352	Sabaku no Kuni no Oujosama	1	Adventure Fantasy	6.4
9655	Straw-saurus Neo	1	Adventure Fantasy Kids Sci-Fi	6.4
9826	Tongari Boushi no Memole: Marielle no Housekibako	1	Fantasy Magic Shoujo	6.4
9836	Touma Kishinden Oni	25	Supernatural	6.4
9973	Wei Qi Shao Nian	26	Game Historical	6.4
5039	Xi Avant	1	Adventure Sci-Fi	6.41
5043	1001 Nights	1	Demons Fantasy Romance Seinen	6.41
5044	Blood-C: None-None Gekijou	7	Comedy Parody	6.41
5045	Busou Shinki	12	Action Sci-Fi Slice of Life	6.41
5046	Digimon Universe: Appli Monsters	Unknown	Action Adventure Comedy Fantasy Kids	6.41
5047	Ginga Eiyuu Densetsu Gaiden: Ougon no Tsubasa	1	Action Drama Military Sci-Fi Shounen Space	6.41
5048	Haai Step Jun	45	Action Romance School Sci-Fi	6.41
5049	Hakujaden	1	Adventure Fantasy Historical Romance	6.41
5050	Harukanaru Toki no Naka de: Hachiyou Shou Recap	1	Demons Fantasy Historical Magic Shoujo Supernatural	6.41
5051	Idol Tenshi Youkoso Yoko	43	Comedy Drama Shoujo	6.41
5052	Kenritsu Chikyuu Boueigun	1	Action Adventure Comedy Sci-Fi Shounen	6.41
5053	Kikou Keisatsu Metal Jack	37	Action Mecha Police Sci-Fi	6.41
5055	Kinnikuman: Gyakushuu! Uchuu Kakure Choujin	1	Action Comedy Shounen Sports	6.41
5056	Koutetsu Sangokushi	25	Adventure Historical Shounen	6.41
5057	Koutetsu Tenshi Kurumi 2	12	Comedy Mecha Romance Sci-Fi Shoujo Ai Shounen	6.41
5058	Mamono Hunter Youko	6	Comedy Fantasy Horror Magic Supernatural	6.41
5059	Mori no Densetsu: Dai Ni Gakushou	1	Fantasy	6.41
5060	Natsufuku no Shoujo-tachi	1	Drama Historical	6.41
5061	Nekota no Koto ga Kininatte Shikatanai.	1	School Shoujo	6.41
5062	Rinne no Lagrange Season 2 Specials	6	Comedy	6.41
5063	Robot Town Sagami 2028	1	Drama	6.41
5064	Submarine Super 99	13	Action Adventure Military Sci-Fi Shounen	6.41
5065	Wind: A Breath of Heart Specials	4	Comedy Romance School	6.41
5066	Yojouhan Shinwa Taikei Specials	3	Comedy	6.41
7561	Captain the Movie	1	Shounen Sports	6.41
8994	Ninpen Manmaru	30	Comedy Samurai Shounen	6.41
9406	Seito Shokun! Kokoro ni Midori no Neckerchief wo	1	Comedy School Shoujo	6.41
9486	Shinshuu Sudama-hen	4	Action Historical Martial Arts Samurai Seinen	6.41
9543	Sinbad: Soratobu Hime to Himitsu no Shima	1	Adventure	6.41
9720	Tamagotchi! Yume Kira Dream	49	Comedy Kids	6.41
9930	Utsurun Desu.	3	Comedy	6.41
4931	Duan Nao	16	Mystery Sci-Fi Shounen Thriller	6.42
4996	The Four Seasons	4	Slice of Life	6.42
5003	Buddy Go!	3	Comedy Romance Shoujo	6.42
5004	Code Geass: Hangyaku no Lelouch R2: Flash Specials	9	Parody	6.42
5005	Dr. Slump Movie 08: Arale-chan Hoyoyo!! Tasuketa Same ni Tsurerarete...	1	Comedy Sci-Fi Shounen	6.42
5007	Gin&#039;iro no Olynsis: Tokito	12	Adventure Drama Mecha Romance	6.42
5008	Ginga Hyouryuu Vifam: Kieta 12-nin	1	Action Adventure Mecha Sci-Fi	6.42
5009	Ginga Kikoutai Majestic Prince: Mirai e no Tsubasa	1	Action Mecha School Sci-Fi Seinen Space	6.42
5010	Great Mazinger tai Getter Robo	1	Action Mecha Sci-Fi	6.42
5011	Great Mazinger tai Getter Robo G: Kuuchuu Dai-Gekitotsu	1	Action Mecha Sci-Fi	6.42
5012	Hairy Tale	1	Historical Samurai	6.42
5013	Himitsu no Akko-chan 2	61	Magic School Shoujo	6.42
5014	K-On!: Ura-On!	7	Comedy	6.42
5015	Kinnikuman: New York Kiki Ippatsu!	1	Action Comedy Shounen Sports	6.42
5016	Kitty&#039;s Paradise	16	Fantasy Kids	6.42
5017	Kuusen Madoushi Kouhosei no Kyoukan OVA	1	Action Drama Fantasy Magic School	6.42
5018	Kyomu Senshi Miroku	6	Action Demons Fantasy Historical Samurai Sci-Fi Supernatural	6.42
5019	Licca-chan Fushigi na Fushigi na Yunia Monogatari	2	Adventure Kids	6.42
5020	Mafukiden: Pandarian	26	Adventure Comedy Fantasy Kids Magic Super Power	6.42
5021	Magical Canan	13	Drama Fantasy Magic Supernatural	6.42
5022	Meganebu!	12	Comedy School Slice of Life	6.42
5023	MonHun Nikki Girigiri Airou Mura: Airou Kiki Ippatsu	10	Action Comedy	6.42
5024	Nagagutsu Sanjuushi	1	Adventure Fantasy Kids	6.42
5025	Nogsaegjeoncha Haemosu	26	Action Adventure Fantasy Shounen	6.42
5026	O-bake no... Holly	200	Comedy Fantasy Kids Magic	6.42
5027	Persona 4 the Animation: Mr. Experiment Shorts	5	Comedy	6.42
5028	Sasurai no Taiyou	26	Drama Music	6.42
5029	Sekkou Boys	12	Comedy Music	6.42
5030	Shoujo-tachi wa Kouya wo Mezasu OVA	1	School	6.42
5031	Sister Princess: Re Pure Character&#039;s	12	Drama Romance	6.42
5032	Soushin Shoujo Matoi	12	Magic Supernatural	6.42
5033	Survival	1	Dementia Drama Music Psychological School Supernatural	6.42
5034	Tetsuwan Atom: Ivan no Wakusei - Robot to Ningen no Yuujou	1	Action Mecha Sci-Fi Shounen Super Power	6.42
5035	Togainu no Chi	12	Action Sci-Fi Shounen Ai	6.42
5036	Tono to Issho: Ippunkan Gekijou	12	Comedy Samurai Seinen	6.42
5037	Toradora!: SOS!	4	Comedy	6.42
5038	True Tears Specials	7	Comedy Parody School	6.42
5040	Yumeyume	1	Music	6.42
5041	Yuusha Shirei Dagwon: Suishou no Hitomi no Shounen	2	Mecha	6.42
5042	Zettai Bouei Leviathan	13	Comedy Fantasy Magic	6.42
5054	Kimi ni Maji Kyun!	1	Magic Music Romance School	6.42
7368	Aikatsu!: Nerawareta Mahou no Aikatsu Card	1	Music School Shoujo Slice of Life	6.42
8111	Hi no Tori: Hagoromo-hen	1	Drama	6.42
8537	Koguma no Misha	26	Adventure Comedy Drama Kids	6.42
8902	Namakemono ga Miteta	2	Music Seinen Slice of Life	6.42
10097	Yuuki no Omamori	1	Drama Kids	6.42
4975	12-sai. 2nd Season	4	Romance School Shoujo	6.43
4976	Asobou! Hello Kitty	26	Adventure Fantasy Kids	6.43
4977	Bakkyuu HIT! Crash Bedaman	50	Adventure	6.43
4978	Bamboo Bears	52	Comedy	6.43
4979	Code Geass: Hangyaku no Lelouch - Kiseki no Birthday Picture Drama Flash Special	1	School Supernatural	6.43
4980	Divergence Eve 2: Misaki Chronicles	13	Adventure Drama Mecha Military Sci-Fi Space	6.43
4981	Eikoku Ikka Nihon wo Taberu	24	Comedy Slice of Life	6.43
4982	Gegege no Kitarou: Daikaijuu	1	Action Fantasy Horror Shounen Supernatural	6.43
4983	Hi-Speed Jecy	12	Action Sci-Fi	6.43
4984	Himitsukessha Taka no Tsume	12	Comedy Parody Super Power	6.43
4985	Hitsuji no Uta	4	Drama Horror Vampire	6.43
4835	Buta	1	Adventure Comedy Fantasy Historical	6.48
4986	Ikoku Meiro no Croisée Picture Drama	6	Historical Seinen Slice of Life	6.43
4987	Juugo Shounen Hyouryuuki	1	Adventure Drama Historical	6.43
4988	Konchuu Monogatari Minashigo Hutch	91	Adventure Comedy Drama	6.43
4989	Kuma Miko	12	Comedy Seinen Slice of Life	6.43
4990	Loups=Garous	1	Mystery Sci-Fi Thriller	6.43
4991	Mach GoGoGo (1997)	34	Adventure Cars	6.43
4992	Majokko Tickle	45	Comedy Magic Shoujo	6.43
4993	Mitsubachi Maya no Bouken	52	Adventure Comedy Kids	6.43
4994	Okusama wa Mahou Shoujo	13	Magic Romance	6.43
4997	Thermae Romae x Yoyogi Animation Gakuin Collaboration	1	Comedy Historical Seinen	6.43
4998	TV-ban Pokemon Special Masara Town-hen Soushuuhen	3	Action Adventure Comedy Fantasy Kids	6.43
5000	UFO Senshi Dai Apolon	26	Action Mecha Sci-Fi	6.43
5001	Wolf Guy	6	Action Military Sci-Fi	6.43
5002	Yoshimune	24	Comedy Historical	6.43
5006	Ganbare! Kickers Specials	2	Drama Shounen Sports	6.43
7515	Boku wa Ou-sama	4	Kids	6.43
7641	Choujikuu Seiki Orguss Memorial	2	Action Adventure Mecha Romance Sci-Fi Shounen	6.43
7985	Hage	1	Drama Kids School	6.43
8063	Hello Kitty no Happy! Kasou Taikai	1	Kids	6.43
8498	Kirin Ashita no Calendar	1306	Historical Kids	6.43
8517	Kobito to Ao Mushi	1	Kids Music	6.43
8936	Naze Ikiru: Rennyo Shounin to Yoshizaki Enjou	1	Historical	6.43
9077	Ojisan Kaizou Kouza	1	Comedy	6.43
9630	Sore Ike! Anpanman: Yuurei Sen wo Yattsukero!!	1	Comedy Fantasy Kids	6.43
10112	Zero Tester	38	Action Adventure Mecha Sci-Fi	6.43
10363	Kachou no Koi	1	Comedy Romance Yaoi	6.43
4950	009-1: R&amp;B	1	Action Sci-Fi Seinen	6.44
4951	Amefuri Kozou	1	Fantasy Supernatural	6.44
4952	Arve Rezzle: Kikaijikake no Yousei-tachi	1	Action Drama Mystery Sci-Fi Thriller	6.44
4953	Boukyaku no Senritsu	24	Adventure Fantasy Horror Mecha Psychological Sci-Fi Shounen Space Supernatural	6.44
4954	Dive to Blue	1	Music	6.44
4955	Eureka Seven AO: Jungfrau no Hanabana-tachi	1	Action Adventure Drama Mecha Sci-Fi	6.44
4956	Fireball Special	1	Comedy Sci-Fi	6.44
4957	Getsumen To Heiki Mina	11	Comedy Parody Sci-Fi	6.44
4958	Harukanaru Toki no Naka de: Ajisai Yumegatari	2	Adventure Demons Drama Fantasy Historical Romance Shoujo Supernatural	6.44
4959	Iron Man: Rise of Technovore	1	Action Mecha	6.44
4960	Magical Nyan Nyan Taruto	12	Comedy Magic	6.44
4961	Midnight Eye: Gokuu II	1	Action Adventure Mystery Sci-Fi Seinen Super Power	6.44
4962	Oni	1	Demons Historical Supernatural	6.44
4963	Seto no Hanayome Picture Drama	1	Comedy Parody Romance School	6.44
4964	Silent Mobius 2	1	Adventure Demons Fantasy Sci-Fi Seinen	6.44
4965	StarFox Zero: The Battle Begins	1	Action Sci-Fi Space	6.44
4966	Tamala 2010: A Punk Cat in Space OVA	2	Dementia Sci-Fi	6.44
4967	Ten Little Gall Force	1	Action Comedy Mecha Military Parody Sci-Fi Space	6.44
4968	Tezuka Osamu no Don Dracula	8	Comedy Horror Supernatural Vampire	6.44
4969	Tiger Mask W	Unknown	Action Drama Shounen Sports	6.44
4970	Time Bokan Oudou Fukko	2	Action Comedy Mecha Parody Sci-Fi	6.44
4971	Ultraman Kids no Kotowaza Monogatari	26	Comedy Kids Super Power	6.44
4972	Warau Hyouteki	1	Horror Mystery	6.44
4973	Water Brain	1	Dementia Fantasy Sci-Fi	6.44
4974	Yatterman the Movie: Shin Yattermecha Osu Gou! Omocha no Kuni de Dai Ketsudan da Koron	1	Comedy Kids	6.44
4999	UFO Princess Valkyrie: Recap	1	Comedy Romance Sci-Fi	6.44
7559	Captain	1	Shounen Sports	6.44
7639	Choubakumatsu Shounen Seiki Takamaru	2	Action Comedy Fantasy	6.44
7777	Eiyuu Banka Koushi-den	1	Adventure Drama Historical Romance	6.44
7783	Elmer no Bouken: My Father&#039;s Dragon	1	Adventure Fantasy Kids	6.44
7808	Forza! Hidemaru	26	Sports	6.44
7999	Hal no Fue	1	Adventure Kids	6.44
8032	Harisu no Kaze	70	Comedy School	6.44
8492	Kinnikuman: Seigi Choujin vs. Kodai Choujin	1	Action Comedy Shounen Sports	6.44
8598	Kupu~!! Mamegoma!	51	Kids	6.44
8773	Meimon! Daisan Yakyuubu	40	Action Shounen Sports	6.44
8967	Nihon Mukashibanashi: Warashibe Chouja	1	Kids	6.44
9163	Pachislo Kizoku Gin	23	Action Game	6.44
9611	Sore Ike! Anpanman: Ringo Boy to Minna no Negai	1	Comedy Fantasy Kids	6.44
10098	Yuusei Kamen	39	Sci-Fi	6.44
10108	Zenmai Zamurai	30	Comedy Kids	6.44
4920	Ai no Wakakusa Yama Monogatari	12	Comedy	6.45
4921	Aru Hibi no CLAMP Gakuen Tanteidan	13	Comedy	6.45
4922	Asobi ni Iku yo!: Asobi ni Oide - Owari	1	Comedy	6.45
4923	Attack No.1 (1970)	1	Drama Shoujo Sports	6.45
4924	Baby☆Love	1	Comedy Romance	6.45
4925	Biohazard 4: Incubate	1	Action Demons Horror Military Mystery Police Supernatural Thriller	6.45
4926	Blocker Gundan IV Machine Blaster	38	Action Mecha Sci-Fi	6.45
4927	Chouja Raideen	38	Adventure Mecha Sci-Fi Shounen	6.45
4928	Dennou Coil Recaps	2	Adventure Comedy Drama Mystery Sci-Fi	6.45
4929	Denpa Kyoushi	2	Comedy School Shounen	6.45
4930	Denshinbashira Elemi no Koi	1	Fantasy	6.45
4932	Go! Go! Ackman	1	Action Comedy Supernatural	6.45
4933	Gowapper 5 Gordam	36	Action Adventure Mecha Sci-Fi	6.45
4934	Hi no Youjin	1	Historical Slice of Life	6.45
4935	Himawari!	13	Adventure Comedy Martial Arts	6.45
4936	Kiss Dum R: Meguriahi	1	Mecha Military Sci-Fi	6.45
4937	Magic Knight Rayearth Omake	5	Adventure Comedy Drama Fantasy Magic Mecha Romance Shoujo	6.45
4938	Mahou no Idol Pastel Yumi	25	Comedy Fantasy Kids Magic Shoujo	6.45
4939	Mari Iyagi	1	Drama Fantasy Slice of Life	6.45
4940	Memories Off 2nd	3	Drama Romance	6.45
4941	Memories Off 3.5	4	Drama Romance	6.45
4762	Bad Boys	5	Comedy	6.5
4942	Okusama wa Joshikousei (TV)	13	Comedy Drama Romance Slice of Life	6.45
4943	Otome Youkai Zakuro Picture Drama	2	Demons Historical Romance Seinen Supernatural	6.45
4944	Pokemon: Pikachu to Pokemon Ongakutai	1	Adventure Fantasy Kids	6.45
4945	Scramble Wars: Tsuppashire! Genom Trophy Rally	1	Parody	6.45
4946	Shoujo-tachi wa Kouya wo Mezasu	12	School	6.45
4947	Tezuka Osamu ga Kieta?! 20 Seiki Saigo no Kaijiken	1	Mystery	6.45
4948	Transfer	1	Action Music	6.45
4949	Wonder (Movie)	1	Dementia	6.45
7417	Aoi Kioku: Manmou Kaitaku to Shounen-tachi	1	Drama Historical Military	6.45
7438	Ashita Kirarin	1	Drama Kids	6.45
8450	Kero Kero Keroppi no Sora wo Tobetara	1	Adventure Kids	6.45
8558	Konpeki no Kantai: Sourai Kaihatsu Monogatari	1	Historical Military	6.45
10120	Ziggy: Soreyuke! R&amp;R Band	1	Adventure Music Mystery	6.45
4889	Akuma-kun	42	Adventure Fantasy Horror Magic Supernatural	6.46
4890	Bakuon!! OVA	2	Cars Seinen Slice of Life Sports	6.46
4891	Battle Spirits: Double Drive	Unknown	Action Kids	6.46
4892	Danchigai Special	1	Comedy Slice of Life	6.46
4893	Dr. Slump Movie 03: Arale-chan Hoyoyo! Sekai Isshuu Dai Race	1	Comedy Sci-Fi Shounen	6.46
4894	DT Eightron	26	Action Sci-Fi Shounen	6.46
4895	F-Zero: Falcon Densetsu	51	Action Adventure Cars Mecha Sci-Fi Shounen Sports	6.46
4896	Getter Robo Go	50	Action Adventure Mecha Military Shounen	6.46
4897	Jean Valjean Monogatari	1	Drama	6.46
4898	Jungle wa Itsumo Hare nochi Guu: Eizou Tokuten - Maboroshi no Pilot Film	1	Comedy	6.46
4899	Kappa no Kaikata	26	Comedy	6.46
4900	Kuttsukiboshi	2	Drama Romance Shoujo Ai Supernatural	6.46
4901	Megami Kouhosei Special Curriculum	1	Action Mecha Military Sci-Fi Space	6.46
4902	Midori-ko	1	Dementia Drama	6.46
4903	Mobile Suit Gundam Seed MSV Astray	2	Mecha Military Sci-Fi Shounen Space	6.46
4904	MonHun Nikki Girigiri Airou Mura G	13	Action Comedy	6.46
4905	Nekota no Koto ga Kininatte Shikatanai. (ONA)	4	School Shoujo	6.46
4906	Ocha-ken: Chokotto Monogatari	26	Comedy Kids	6.46
4907	Oira Uchuu no Tankoufu	2	Action Adventure Sci-Fi Shounen Space	6.46
4908	Onikirimaru	4	Action Demons Martial Arts Shounen	6.46
4909	Perman	54	Adventure Comedy	6.46
4910	Push	1	Parody	6.46
4911	Reporter Blues	52	Comedy Mystery	6.46
4912	Sol Bianca: Taiyou no Fune	6	Adventure Mecha Sci-Fi Space	6.46
4913	Sword Art Online: Sword Art Offline	9	Comedy	6.46
4914	Tenrankai no E	1	Comedy	6.46
4915	Tenshi Kinryouku	3	Action Drama Romance Shoujo Supernatural	6.46
4916	Umi Monogatari: Kanon to Iku Amamikoshima	13	Comedy	6.46
4917	Watt Poe to Bokura no Ohanashi	1	Adventure Sci-Fi	6.46
4918	Yawara! Sore Yuke Koshinuke Kids!!	1	Action Comedy Drama Martial Arts Romance Slice of Life Sports	6.46
4919	Youkai Ningen Bem	26	Horror	6.46
7492	Big X	59	Action Historical Sci-Fi Shounen	6.46
7560	Captain (TV)	26	Shounen Sports	6.46
7775	Eikoku Ikka Nihon wo Taberu: English Ikka Shougatsu wo Taberu	1	Comedy Slice of Life	6.46
7990	Hajime Ningen Gon	39	Comedy Historical	6.46
10361	Kizuna	2	Drama Romance Yaoi	6.46
10362	Okane ga Nai Specials	4	Drama Romance Yaoi	6.46
4746	Mutsugo to Ouma no Monogatari	6	Comedy Parody	6.47
4865	AD Police	3	Adventure Dementia Mecha Mystery Police Psychological Sci-Fi Thriller	6.47
4866	Ai no Wakakusa Monogatari Specials	2	Drama Historical Slice of Life	6.47
4867	Bubuki Buranki	12	Action Drama Mecha Sci-Fi	6.47
4868	Dr. Slump Movie 05: Arale-chan Hoyoyo! Yume no Miyako Mechapolis	1	Comedy Sci-Fi Shounen	6.47
4869	Heroman Specials	3	Action Sci-Fi Shounen	6.47
4870	King of Fighters: Another Day	4	Adventure Drama Shounen	6.47
4871	Kishin Heidan	7	Adventure Historical Mecha Sci-Fi	6.47
4872	Koihime†Musou OVA Omake	1	Adventure Comedy Fantasy	6.47
4873	Macross II: Lovers Again	6	Adventure Mecha Military Sci-Fi Shounen Space	6.47
4874	Madonna	2	Comedy School Sports	6.47
4875	Makyou Densetsu Acrobunch	24	Mecha Sci-Fi Shounen	6.47
4876	Memory (ONA)	1	Drama Military Sci-Fi Slice of Life	6.47
4877	Ookamikakushi	12	Action Horror Mystery Supernatural	6.47
4878	Ookii 1 Nensei to Chiisana 2 Nensei	1	Adventure	6.47
4879	Pokemon XY: Odemashi Ko Majin Hoopa	1	Action Fantasy Kids	6.47
4880	Robotan (1986)	33	Comedy Kids	6.47
4881	Shin Mitsubachi Maya no Bouken	52	Adventure Comedy	6.47
4882	Sol Bianca	2	Action Adventure Sci-Fi Space	6.47
4883	Sore ga Seiyuu!: Petit Uchiage	1	Comedy Slice of Life	6.47
4884	Soreyuke! Uchuu Senkan Yamamoto Yohko II	3	Action Adventure Sci-Fi	6.47
4885	Tantei Kageki Milky Holmes TD	12	Comedy Mystery Super Power	6.47
4886	Wangpai Yushi Di 0 Ji	1	Comedy Fantasy School Shounen Supernatural	6.47
4887	Xenosaga The Animation	12	Action Mecha Sci-Fi Shounen Space	6.47
4888	Zenryoku Usagi	52	Comedy Kids	6.47
7688	Dalam-iwa Goseumdochi	Unknown	Historical Military	6.47
7926	Ginga Tetsudou 999 (ONA)	6	Adventure Drama Sci-Fi Space	6.47
7991	Hajime Ningen Gyatoruz	77	Comedy Historical	6.47
8086	Hello Kitty no Shoukoujo	1	Fantasy Kids	6.47
8981	Nine: Original Han	1	Action School Sports	6.47
9050	Obocchama-kun	164	Comedy Parody	6.47
9551	Soccer Fever	51	Historical Sports	6.47
10131	Zukkoke Knight: Don De La Mancha	23	Adventure Comedy Historical Romance	6.47
10360	Papa to Kiss in the Dark	2	Comedy Drama Romance Yaoi	6.47
4832	Ajimu: Kaigan Monogatari	4	Comedy Drama Romance School	6.48
4833	B-Densetsu! Battle Bedaman Enkon	51	Adventure Comedy Kids Shounen	6.48
4834	Black Jack: Dr. Pinoko no Mori no Bouken	1	Comedy	6.48
4836	Cluster Edge	25	Action Fantasy Military Sci-Fi	6.48
4837	Dog Days&#039;&#039;: Gravure Talk	4	Comedy Fantasy	6.48
4838	Dr. Slump Movie 06: Arale-chan N-cha! Penguin Mura wa Hare Nochi Hare	1	Comedy Sci-Fi Shounen	6.48
4839	Gegege no Kitarou: Nippon Bakuretsu	1	Action Fantasy Horror Kids Shounen Supernatural	6.48
4840	Ghost in the Shell: Arise - Logicoma Specials	4	Mecha Sci-Fi	6.48
4841	Haou Taikei Ryuu Knight: Adeu Legend	13	Action Adventure Fantasy Mecha	6.48
4842	Little El Cid no Bouken	26	Adventure Historical Kids	6.48
4843	Lupin III: Secret File	1	Adventure Comedy Shounen	6.48
4844	Machine Robo: Revenge of Chronos	47	Action Mecha Sci-Fi	6.48
4845	Mahou no Mako-chan	48	Fantasy Magic Romance Shoujo	6.48
4846	Manga Nippon Mukashibanashi (1976)	1471	Fantasy Historical	6.48
4847	Marie &amp; Gali	40	Comedy	6.48
4848	Nanako SOS	39	Comedy Parody Romance Super Power	6.48
4849	NG Knight Ramune &amp; 40 EX: Biku Biku Triangle Ai no Arashi Daisakusen	3	Adventure Comedy Fantasy Mecha Shounen	6.48
4850	Nozomi Witches	3	Romance Sports	6.48
4851	Ojarumaru	Unknown	Adventure Comedy Fantasy	6.48
4852	Ozanari Dungeon: Kaze no Tou	3	Action Adventure Comedy Fantasy	6.48
4853	Robot Girls Z Specials	3	Comedy Mecha Parody	6.48
4854	Saint Beast: Kouin Jojishi Tenshi Tan	13	Fantasy	6.48
4855	Seikima II Humane Society: Jinrui Ai ni Michita Shakai	1	Demons Supernatural	6.48
4856	Shakugan no Shana: Naze Nani Shana! Nandemo Shitsumonbako! Special	3	Comedy Fantasy Supernatural	6.48
4857	Sousei no Aquarion Special	1	Comedy Mecha	6.48
4858	Super Street Fighter IV	1	Action Adventure Shounen	6.48
4859	Tentou Mushi no Uta	104	Drama Slice of Life	6.48
4860	The☆Doraemons: Goal! Goal! Goal!!	1	Comedy Fantasy Kids Sci-Fi Shounen Sports	6.48
4861	Track City	26	Action Cars	6.48
4862	Uchuu no Kishi Tekkaman Blade II	6	Action Adventure Drama Mecha Military Sci-Fi Space	6.48
4863	Wonder Garden	1	Fantasy	6.48
4864	Yotsunoha	2	Romance School	6.48
7437	Asari-chan: Ai no Marchen Shoujo	1	Adventure Shoujo Slice of Life	6.48
9020	Noramimi 2	13	Comedy	6.48
9064	Oi! Ryouma	39	Adventure Drama Historical	6.48
9416	Sengoku Majin Goushougun (Movie)	1	Mecha Parody Sci-Fi	6.48
9464	Shin Don Chuck Monogatari	73	Adventure Kids Slice of Life	6.48
9967	Watashi no Ashinaga Ojisan Specials	2	Comedy Romance School Shoujo Slice of Life	6.48
10049	Yatterman Specials	2	Adventure Comedy Parody	6.48
4779	Kara no Kyoukai: Manner Movies	7	Action Comedy	6.49
4795	A-Ko The Versus	2	Action Adventure Comedy Romance Sci-Fi Super Power	6.49
4796	Akage no Anne Specials	2	Drama Historical Kids Shoujo Slice of Life	6.49
4797	Arata naru Sekai: World&#039;s/Start/Load/End	1	Sci-Fi	6.49
4798	Attack No.1: Namida no Sekai Senshuken	1	Drama Shoujo Sports	6.49
4799	Boukensha: The Man Was from Spain	26	Adventure Historical	6.49
4800	Catman Series II	8	Comedy Fantasy Slice of Life	6.49
4801	D.C.III: Da Capo III Special	1	Drama Music Romance School	6.49
4802	Daisuki! Hello Kitty	26	Fantasy Kids	6.49
4803	Di Gi Charat: Kuchi Kara Bazooka	1	Comedy	6.49
4804	Dorami-chan: Mini-Dora SOS!!!	1	Fantasy Kids	6.49
4805	Fabre-sensei wa Meitantei	26	Mystery	6.49
4806	Geneshaft	13	Adventure Mecha Sci-Fi Space	6.49
4807	Geobreeders: File-X Chibi Neko Dakkan	3	Adventure Comedy Shounen Supernatural	6.49
4808	Guskou Budori no Denki	1	Drama	6.49
4809	Gyakuten Saiban: Sono &quot;Shinjitsu&quot; Igi Ari!	24	Comedy Drama Mystery Police	6.49
4810	Haou Daikei Ryuu Knight: Adeu Legend Final	1	Adventure Comedy Fantasy Mecha Parody	6.49
4811	Happy Seven: The TV Manga	13	Comedy Fantasy	6.49
4812	Himesama Goyoujin	12	Comedy	6.49
4813	Himitsu no Akko-chan	94	Magic School Shoujo	6.49
4814	Jigokudou Reikai Tsuushin	1	Fantasy Horror	6.49
4815	Kyoushoku Soukou Guyver	1	Action Horror Sci-Fi Super Power	6.49
4816	Magnerobo Ga-Keen	39	Action Mecha Sci-Fi	6.49
4817	Mahou no Tenshi Creamy Mami: Long Goodbye	1	Comedy Fantasy Magic Romance Shoujo	6.49
4818	Mahoutsukai Sally	109	Fantasy Magic School Shoujo	6.49
4819	Miyamoto Musashi: Souken ni Haseru Yume	1	Action Historical Martial Arts Samurai	6.49
4820	Nana Toshi Monogatari: Hokkyokukai Sensen	2	Drama Sci-Fi	6.49
4821	Nuwa Chengzhang Riji	30	Comedy Fantasy	6.49
4822	Onboro Film	1	Comedy Parody	6.49
4823	Pokemon XY: New Year Special	1	Action Adventure Comedy Fantasy Kids	6.49
4824	Pokemon: Utae Meloetta - Rinka no Mi wo Sagase!	1	Adventure Comedy Fantasy Kids	6.49
4825	Recorder to Randoseru Mi☆ Special	1	Comedy School Seinen Slice of Life	6.49
4826	Shouwa Monogatari (Movie)	1	Drama Historical	6.49
4827	Sketchbook: Full Color&#039;s Picture Drama	6	Comedy Slice of Life	6.49
4828	Space Fantasia 2001 Nights	1	Drama Sci-Fi Seinen Space	6.49
4829	Space☆Dandy 2nd Season Picture Drama	3	Comedy Sci-Fi Space	6.49
4830	Zetsumetsu Kigu Shoujo: Amazing Twins	2	Magic Slice of Life	6.49
4831	Zou no Senaka: Tabidatsu Hi	1	Drama Seinen Slice of Life	6.49
7714	Dokaben	163	Action School Shounen Sports	6.49
8346	Kaitei Shounen Marine	65	Action Adventure Kids Sci-Fi	6.49
8447	Kero Kero Keroppi no Robin Hood	1	Fantasy Kids	6.49
9408	Sekai Meisaku Douwa	20	Fantasy	6.49
9634	Sougen no Shoujo Laura	26	Adventure Shoujo	6.49
10099	Yuusei Shounen Papii	52	Action Sci-Fi Space Super Power	6.49
4748	One Off	4	Slice of Life	6.5
4758	Arslan Senki (TV): Dakkan no Yaiba	1	Action Adventure Drama Fantasy Historical Supernatural	6.5
4759	Ashita no Joe Pilots	2	Drama Sports	6.5
4760	Ashita Tenki ni Naare	47	Sports	6.5
4761	Ayakashi	12	Action Fantasy Horror Sci-Fi	6.5
4763	Bakugan Battle Brawlers: New Vestroia	52	Adventure Fantasy Game Shounen	6.5
4764	Black Jack: Karte NG Extras	1	Comedy	6.5
4765	Bronze: Kouji Nanjo Cathexis	1	Music Shounen Ai	6.5
4766	Captain Earth	25	Action Mecha Romance Sci-Fi Space	6.5
4767	Choujin Sentai Baratack	31	Adventure Mecha Sci-Fi	6.5
4768	Choujuu Kishin Dancougar: Ushinawareta Monotachi e no Requiem	1	Action Drama Mecha	6.5
4769	Choujuushin Gravion	13	Action Comedy Mecha Sci-Fi Shounen	6.5
4770	Classroom☆Crisis Special	1	School Sci-Fi	6.5
4771	Duel Masters Cross Shock	50	Action Adventure Comedy Shounen	6.5
4772	Escha &amp; Logy no Atelier: Tasogare no Sora no Renkinjutsushi	12	Fantasy	6.5
4773	Final Fantasy: The Spirits Within	1	Sci-Fi	6.5
4774	Gag Manga Biyori: Jump Festa 2002 Special	1	Comedy	6.5
4775	Galilei Donna	11	Action Adventure Sci-Fi	6.5
4776	HaruChika: Haruta to Chika wa Seishun suru	12	Mystery Romance School Slice of Life	6.5
4777	Hidamari Sketch x ☆☆☆ Recap	1	Comedy School Slice of Life	6.5
4778	Juusenki L-Gaim III: Full Metal Soldier	1	Action Mecha Sci-Fi Shounen	6.5
4780	Mobile Suit SD Gundam Mk II	3	Mecha Parody Sci-Fi	6.5
4781	Ninja Hattori-kun (2012)	52	Comedy	6.5
4782	Phantasy Star Online 2 The Animation	12	Action Game School Sci-Fi	6.5
4783	Pure-tou no Nakama-tachi	26	Fantasy Kids	6.5
4784	RahXephon Interlude: Her and Herself/Thatness and Thereness	1	Drama Psychological Sci-Fi	6.5
4785	Sanctuary	1	Action Drama Police Seinen Thriller	6.5
4786	Seikimatsu★Darling	1	Comedy Drama Romance Shounen Ai	6.5
4788	Shin Mashin Eiyuuden Wataru Majinzan	2	Action Adventure Comedy Fantasy Mecha Sci-Fi	6.5
4789	The SoulTaker: Tamashii-gari	13	Demons Horror Supernatural	6.5
4790	Toshi wo Totta Wani	1	Drama	6.5
4791	Wanpaku Ouji no Orochi Taiji	1	Adventure	6.5
4792	Yagami-kun no Katei no Jijou	3	Comedy	6.5
4793	Yoshinaga-san&#039;chi no Gargoyle Specials	5	Adventure Comedy Fantasy	6.5
4794	Yurumates	1	Comedy Seinen Slice of Life	6.5
7404	Anime Document: München e no Michi	16	Sports	6.5
7424	Aqua Kids	26	Adventure Kids	6.5
7579	Chao Shen Youxi	25	Action Fantasy Game	6.5
7645	Chuuchuu Banban	1	Adventure Kids	6.5
7663	Columbus no Daibouken	1	Historical	6.5
7722	Dolittle-sensei Monogatari	13	Adventure Kids	6.5
7779	Ekubo Ouji	50	Comedy Kids	6.5
7827	Fukuyama Gekijou: Natsu no Himitsu	1	Fantasy Kids	6.5
7841	Futari no Oujisama	1	Fantasy Slice of Life	6.5
7858	Gamba to Kawauso no Bouken	1	Adventure Kids	6.5
7949	Gokyoudai Monogatari	32	Comedy	6.5
8004	Hana no Kakarichou	25	Comedy Seinen Slice of Life	6.5
8147	Histoire d&#039;Etty	1	Kids Slice of Life	6.5
8152	Hitotsu no Hana	1	Drama Historical Kids	6.5
8317	Kachikachi Yama (1940)	1	Fantasy	6.5
8406	Kariage-kun	59	Comedy Seinen Slice of Life	6.5
8437	Kero Kero Keroppi no Boku-tachi no Takaramono	1	Fantasy Kids	6.5
8463	Kick Off 2002	26	Sports	6.5
8535	Kogitsune no Okurimono	1	Drama Fantasy Kids	6.5
8609	Kuwagata Tsumami	84	Comedy	6.5
8623	Kyouryuu Wakusei	60	Adventure Fantasy Historical Sci-Fi	6.5
8624	Kyoushitsu wa Obake ga Ippai/Boku wa Yuusha da zo	1	Fantasy Kids Supernatural	6.5
8655	Liv &amp; Bell	3	Adventure Kids	6.5
8663	Lulin Da Maoxian	1	Adventure Fantasy	6.5
8701	Makiba no Shoujo Katori Specials	2	Adventure Drama Historical Slice of Life	6.5
8719	Manga Aesop Monogatari (TV)	52	Comedy Fantasy Kids	6.5
8730	Manga Kotowaja Jiten	88	Comedy Historical	6.5
8948	Neko no Dayan: Nihon e Iku	12	Kids	6.5
9075	Ojiichan no Tomato	1	Drama Kids	6.5
9164	Padak Padak	1	Drama	6.5
9441	Shiawase Haitatsu Taneko	Unknown	Comedy	6.5
9455	Shimajirou no Wow!	Unknown	Adventure Comedy Fantasy Kids Magic	6.5
9465	Shin Dousei Jidai: Hawaiian Breeze	1	Drama Romance	6.5
9498	Shiro Hon	6	Adventure Kids	6.5
9574	Sore Ike! Anpanman: Anpanman to Tanoshii Nakama-tachi	1	Adventure Fantasy Kids	6.5
9728	Tantei Shounen Kageman	39	Comedy Mystery	6.5
9766	The Arari Show	26	Comedy Drama Slice of Life	6.5
9800	Tobidashicha dame!	1	Drama Kids	6.5
9825	Tong Zhi Zhe	10	Adventure Horror	6.5
9852	Tsukushi no Iwai	1	Historical	6.5
9860	Tsuyu no Hito Shizuku	1	Historical	6.5
10051	Yattokame Tanteidan	14	Kids Mystery Slice of Life	6.5
10057	Yeongsimi	13	Comedy Kids School Slice of Life	6.5
10101	Yuuto-kun ga Iku Movie	1	Kids Sports	6.5
4707	Kigyou Senshi Arslan	6	Comedy Parody	6.51
4734	.hack//Versus: The Thanatos Report	1	Action Game Sci-Fi	6.51
4735	Ajin Senshi	1	Fantasy Sci-Fi	6.51
4736	Cinnamon the Movie	1	Fantasy	6.51
4737	Fushigi na Koala Blinky	26	Adventure Comedy Fantasy Kids	6.51
4738	Gakkatsu! 2nd Season	25	Comedy School	6.51
4739	Gangsta. Recap	1	Action Drama Seinen	6.51
4740	Hidamari Sketch x 365 Recap	1	Comedy School Slice of Life	6.51
4741	High School! Kimengumi (Movie)	1	Action Comedy Parody Romance School Shounen	6.51
4742	Kyoto Animation: Megane-hen	1	Thriller	6.51
4743	Kyoukaisenjou no Horizon Specials	4	Comedy Fantasy School	6.51
4744	Mahou Shoujo Pretty Sammy	3	Comedy Fantasy Magic Parody	6.51
4745	Mahoutsukai Tai! vs. Shamanic Princess	1	Comedy Fantasy Magic	6.51
4747	Natsu e no Tobira	1	Drama Romance Shoujo Shounen Ai	6.51
4749	Red Garden: Dead Girls	1	Mecha Mystery	6.51
4750	Sakura Taisen: New York	6	Adventure Comedy Supernatural	6.51
4751	Shinshaku Sengoku Eiyuu Densetsu: Sanada Juu Yuushi The Animation	12	Action Comedy Historical Military Samurai	6.51
4752	Silent Mobius: The Motion Picture	1	Adventure Sci-Fi Supernatural	6.51
4753	Suki na Mono wa Suki Dakara Shou ga Nai!!: Onsen ni Ikou!	1	Comedy School Shoujo Shounen Ai Slice of Life	6.51
4754	Tetsuwan Atom: Uchuu no Yuusha	1	Action Adventure Drama Mecha Sci-Fi Shounen	6.51
4755	Time Bokan Series: Time Patroltai Otasukeman	53	Action Adventure Comedy Sci-Fi	6.51
4756	Trigger-chan	1	Action	6.51
4757	X-Men	12	Action Drama Super Power	6.51
4787	Shichinin no Nana: Oshougatsu Da yo! 7 x 7 = 49-nin no Nana?	1	Adventure Comedy Magic	6.51
8058	Hello Kitty no Circus ga Yatte Kita	1	Fantasy Kids	6.51
4694	Aisubeki Mirai e	1	Music	6.52
4695	Appleseed XIII	13	Action Mecha Military Police Sci-Fi	6.52
4696	Black Magic M-66	1	Action Mecha Military Sci-Fi	6.52
4697	Blassreiter: Navi	1	Action Sci-Fi	6.52
4698	Code-E	12	Comedy Romance School Sci-Fi Slice of Life	6.52
4699	Demashita! Powerpuff Girls Z	52	Action Comedy Magic School Sci-Fi Shoujo Slice of Life Super Power	6.52
4700	Fastening Days	2	Kids Magic	6.52
4701	Fushigi no Kuni no Alice	52	Adventure Fantasy Kids	6.52
4702	Ginga Hyouryuu Vifam: Keito no Kioku - Namida no Dakkai Sakusen	1	Action Adventure Mecha Sci-Fi	6.52
4703	Harukanaru Toki no Naka de: Hachiyou Shou Specials	8	Fantasy Historical Magic Romance Shoujo Supernatural	6.52
4704	Hello Harinezumi: Satsui no Ryoubun	1	Drama Mystery Psychological Seinen	6.52
4705	I&#039;ll/CKBC	2	Action School Shounen Sports	6.52
4706	Just Awake	1	Action Music Sci-Fi	6.52
4708	Kita e.: Diamond Dust Drops Special	1	Drama Slice of Life	6.52
4709	Kite Liberator	1	Action Drama Sci-Fi	6.52
4710	Komadori Eiga: Komaneko	1	Kids Slice of Life	6.52
4711	Mahou Shoujo Madoka★Magica Movie 3: Hangyaku no Monogatari - Magica Quartet x Nisioisin	4	Comedy	6.52
4712	Mega Man	27	Action Adventure Comedy	6.52
4714	Mobile Suit SD Gundam Mk I	3	Mecha Parody Sci-Fi	6.52
4715	My Life	1	Drama Slice of Life	6.52
4716	Pia Carrot e Youkoso!! 2 DX	6	Comedy Romance	6.52
4717	Pokemon: Pikachu no Natsumatsuri	1	Action Comedy Fantasy Kids	6.52
4718	Renkyori Enai	1	Music	6.52
4719	Rokushin Gattai GodMars	64	Action Mecha Sci-Fi Space	6.52
4720	Sakura Taisen: Sumire	1	Adventure Drama Mecha Sci-Fi Shounen	6.52
4721	Sekai Meisaku Douwa: Oyayubi Hime	1	Fantasy Kids	6.52
4722	Soukou Kihei Votoms Recaps	4	Action Drama Mecha Military Sci-Fi	6.52
4723	Tanken Driland	37	Adventure Fantasy	6.52
4724	The iDOLM@STER Million Live! &quot;Dreaming!&quot; Animation PV	1	Music	6.52
4725	TO	2	Action Sci-Fi	6.52
4726	To Heart 2 Special	1	Drama Romance School	6.52
4727	Torajima no Miime	2	Slice of Life	6.52
4728	Umi no Triton (1979)	2	Adventure Fantasy Shounen	6.52
4729	Utawarerumono OVA Picture Drama	3	Comedy Fantasy	6.52
4730	Wolf Daddy	1	Fantasy	6.52
4731	Yasashii March: The Tender March	1	Music	6.52
4732	Youjuu Toshi	1	Action Adventure Demons Drama Horror Super Power	6.52
4733	Yurumates 3D Plus	13	Comedy Seinen Slice of Life	6.52
7787	Esper Mami Special: My Angel Mami-chan	1	Comedy Super Power Supernatural	6.52
9135	Osomatsu-kun: Suika no Hoshi kara Konnichiwa zansu!	1	Comedy	6.52
9427	Shan T Lao Fu Zi	1	Action Comedy Seinen	6.52
4664	Angelique	3	Drama Fantasy Romance Sci-Fi Shoujo	6.53
4665	Casshern: Robot Hunter	4	Adventure Mecha Sci-Fi	6.53
4666	Chiisana Kyojin Microman	52	Action Adventure Comedy Kids Mecha Sci-Fi Shounen Super Power	6.53
4667	Chou Dendou Robo Tetsujin 28-gou FX	47	Action Adventure Mecha Sci-Fi	6.53
4668	Gall Force: Chikyuu Shou	3	Action Mecha Military Sci-Fi	6.53
4669	Genei wo Kakeru Taiyou	13	Magic	6.53
4670	Gokuu no Daibouken	39	Comedy Fantasy	6.53
4671	Groizer X	36	Mecha Sci-Fi	6.53
4672	Hakushaku to Yousei Specials	6	Adventure Fantasy Historical Magic	6.53
4673	Hoero! Bun Bun	39	Adventure Slice of Life	6.53
4674	Huckleberry Finn Monogatari	26	Adventure	6.53
4675	Human Crossing	13	Drama Slice of Life Sports	6.53
4676	Kochira Katsushikaku Kameari Kouenmae Hashutsujo	1	Comedy Police	6.53
4677	Lily to Kaeru to (Otouto)	1	Adventure Comedy Supernatural	6.53
4678	Mahou Yuugi 2D	24	Adventure Comedy Fantasy Magic	6.53
4679	Mahoutsukai Sally 2	88	Comedy Magic Shoujo	6.53
4680	Mazinger Z tai Dr. Hell	1	Action Drama Mecha Sci-Fi Shounen	6.53
4681	Me gumi no Daigo: Kajiba no Baka Yarou	1	Drama	6.53
4682	Miss Monochrome: The Animation	13	Comedy Music Slice of Life	6.53
4683	Next A-Class	1	Action Cars Sci-Fi	6.53
4685	Rhea Gall Force	1	Action Mecha Military Sci-Fi	6.53
4686	The Ultraman	50	Action Sci-Fi Shounen Space Super Power	6.53
4687	Tiger Mask (Movie)	1	Shounen Sports	6.53
4688	Tondemo Nezumi Daikatsuyaku	1	Adventure	6.53
4689	Tsubasa to Hotaru (2015)	4	Romance School Shoujo	6.53
4690	Tsuru ni Notte: Tomoko no Bouken	1	Drama	6.53
4691	Watashi to Watashi: Futari no Lotte	29	Kids Shoujo Slice of Life	6.53
4692	Yadamon	170	Adventure Comedy Fantasy	6.53
4693	Yonimo Osoroshii Grimm Douwa	3	Dementia Horror Psychological	6.53
4713	Mini Hama: Minimum Hamatora	8	Comedy Mystery School Shounen Super Power	6.53
7742	Double Hard	Unknown	Action Martial Arts	6.53
7854	Gakkou no Kowai Uwasa Shin: Hanako-san ga Kita!!	33	Comedy Horror School Supernatural	6.53
7892	Gegege no Kitarou: Saikyou Youkai Gundan! Nippon Jouriku!!	1	Adventure Comedy Fantasy Horror Supernatural	6.53
7928	Ginga Tetsudou 999: Akai Hoshi Betelgeuze - Inochi no Kagayaki	1	Adventure Drama Sci-Fi Space	6.53
7979	Guru Guru Town Hanamaru-kun	101	Kids	6.53
8494	Kinpatsu no Jeanie	13	Drama Historical	6.53
8587	Kujira no Josephina	23	Adventure Fantasy	6.53
8793	Mikeneko Holmes no Yuurei Joushu	1	Comedy Drama Mystery	6.53
9212	Perrine Monogatari Specials	2	Drama Historical Kids Shoujo Slice of Life	6.53
9748	Tenkuu Senki Shurato Recaps	2	Action Fantasy Magic Shounen	6.53
9776	The Monkey King and the Fruit of Immortality	1	Adventure	6.53
9903	Umeboshi Denka	26	Comedy Slice of Life	6.53
10062	Yokohama Meibutsu: Otoko Katayama-gumi!	2	Action School Shounen	6.53
4630	Angelique: Seichi yori Ai wo Komete	3	Adventure Comedy Drama Fantasy Romance Sci-Fi Shoujo	6.54
4631	Animation Kikou: Marco Polo no Bouken	43	Adventure Historical	6.54
4632	BlazBlue: Alter Memory Specials	6	Comedy	6.54
4633	Bobobo-bo Bo-bobo Recap	1	Action Comedy Parody Sci-Fi Shounen	6.54
4634	Chikyuu ga Ugoita Hi	1	Drama	6.54
4635	Code Geass: Nunnally in Wonderland	1	Comedy Fantasy Parody	6.54
4636	Comic Party Specials	4	Comedy Drama	6.54
4637	Cosmo Warrior Zero Gaiden	2	Adventure Drama Military Sci-Fi Space	6.54
4638	Dr. Slump Movie 09: Arale-chan N-cha!! Wakuwaku Hot no Natsuyasumi	1	Comedy Sci-Fi Shounen	6.54
4639	Ginyuu Mokushiroku Meine Liebe	13	Fantasy Shoujo	6.54
4640	Hana yori Dango (Movie)	1	Drama Romance Shoujo	6.54
4641	Houkago Midnighters	1	Fantasy Kids	6.54
4642	Kagaku Kyuujo-tai TechnoVoyager	18	Action Adventure Mecha Sci-Fi Space	6.54
4643	Kagaku Ninja-tai Gatchaman (Movie)	1	Action Adventure Sci-Fi Shounen	6.54
4644	Kagewani	13	Horror Mystery Supernatural Thriller	6.54
4645	Kagewani: Shou	13	Horror Mystery Supernatural Thriller	6.54
4646	Kinnikuman: Ooabare! Seigi Choujin	1	Action Comedy Shounen Sports	6.54
4647	Kuromajo-san ga Tooru!!	60	Comedy Magic School Slice of Life	6.54
4648	Mahou no Angel Sweet Mint	47	Magic Shoujo	6.54
4649	Mass Effect: Paragon Lost	1	Action Adventure Sci-Fi	6.54
4650	Obake no Q-tarou (1985)	510	Comedy Kids School Slice of Life Supernatural	6.54
4651	Oneechan ga Kita	12	Comedy Slice of Life	6.54
4652	Parasol Henbei	200	Adventure Comedy Fantasy Kids Magic	6.54
4653	Sengoku Collection	26	Fantasy Parody Samurai	6.54
4654	Shin-Men	13	Action Comedy Kids	6.54
4655	Shinryaku! Ika Musume: Ika Ice Tabena-ika?	1	Music	6.54
4656	Shinryaku! Ika Musume: Kore ga Umi e no Ai Jana-ika!	1	Music	6.54
4657	Sonic X	78	Adventure Comedy Kids Mecha Sci-Fi Shounen	6.54
4658	Suhoyojeong Michel	26	Adventure Fantasy Kids	6.54
4659	Tanpen Unico: Kuroi Kumo to Shiroi Hane	1	Adventure Fantasy Kids	6.54
4660	Tiger Mask Fuku Men League Sen	1	Shounen Sports	6.54
4661	Tottoko Hamtarou OVA 2: Hamuchanzu no Takara Sagashi Daisaku - Hamuha! Suteki na Umi no Natsuyasumi	1	Kids	6.54
4662	Yami Shibai 2nd Season	13	Dementia Horror Supernatural	6.54
4663	Yuukan Club	2	Comedy Mystery School Shoujo	6.54
4684	Nijiiro Days: Houkago Special	1	Comedy Romance School Shoujo Slice of Life	6.54
7491	Big Mouth Do Do	52	Kids Slice of Life	6.54
7920	Ginga Hyouryuu Vifam 13	26	Action Adventure Mecha Sci-Fi	6.54
8509	Kitty to Mimmy no Happy Birthday	1	Fantasy Kids	6.54
9332	Robotan	104	Comedy Kids	6.54
9821	Ton-Ton Atta to Niigata no Mukashibanashi	13	Comedy	6.54
9876	Uchuu Patrol Hopper	44	Sci-Fi Space	6.54
4591	Akuu Daisakusen Srungle	53	Action Mecha Sci-Fi	6.55
4592	Aru Tabibito no Nikki Specials	3	Adventure Fantasy	6.55
4593	Asari-chan	54	Comedy Shoujo Slice of Life	6.55
4594	Beast Wars Second Chou Seimeitai Transformers	43	Action Mecha Sci-Fi	6.55
4595	Binzume Yousei	13	Comedy Fantasy Magic Slice of Life	6.55
4596	Blue Dragon	51	Adventure Comedy Fantasy Supernatural	6.55
4597	Chocolate Underground: Bokura no Chocolate Sensou	1	Adventure	6.55
4598	Daishizen no Majuu: Bagi	1	Action Romance Sci-Fi	6.55
4599	Devilman	39	Action Demons Horror Supernatural	6.55
4600	Follow Me	1	Drama Music Romance Slice of Life	6.55
4601	Genshi Shounen Ryuu	22	Action Adventure Romance Sci-Fi Shounen	6.55
4602	Get Ride! AMDriver	51	Adventure Mecha Sci-Fi Shounen	6.55
4603	Gundam Build Fighters Specials	3	Comedy Mecha	6.55
4604	Juusen Battle Monsuno	52	Action Adventure	6.55
4605	Kabatotto	300	Comedy	6.55
4606	Ketsuekigata-kun! 3	12	Comedy	6.55
4607	Ketsuekigata-kun! 4	12	Comedy	6.55
4609	Lupin the Third	1	Adventure Music	6.55
4610	Megami Kouhosei	12	Action Mecha Military Sci-Fi Space	6.55
4611	Minami no Shima no Dera-chan	1	Comedy Slice of Life	6.55
4612	Monkey Turn	25	Drama Sports	6.55
4613	Naruto: Akaki Yotsuba no Clover wo Sagase	1	Adventure Comedy Shounen	6.55
4614	Neko Ramen	13	Comedy	6.55
4615	Peut-etre Toi	1	Music	6.55
4616	Pokemon Fushigi no Dungeon: Magnagate to Mugendai Meikyu	2	Adventure Fantasy Kids	6.55
4617	Robot Girls Z	3	Comedy Mecha Parody	6.55
4618	Rozen Maiden: Meitantei Kunkun - Duell Walzer	1	Comedy Mystery	6.55
4619	Sakura Taisen: Katsudou Shashin	1	Adventure Mecha Sci-Fi Shounen	6.55
4620	Saru Getchu: On Air	26	Adventure Comedy Fantasy Kids Romance Shounen	6.55
4621	Sentimental Journey	12	Drama Romance Shoujo	6.55
4622	Soukou Kihei Votoms: Vol.2 Highlights of the &#039;A.T. Votoms&#039;	1	Action Drama Mecha Military Sci-Fi	6.55
4623	Souten no Ken Specials	4	Action Historical Martial Arts Shounen	6.55
4624	Tactical Roar	13	Comedy Military Romance Sci-Fi	6.55
4625	Tottoko Hamtarou OVA 4: Hamuchanzu no Mezase! Hamuhamu Kin Medal - Hashire! Hashire! Daisakusen	1	Adventure Comedy Kids	6.55
4626	Twin Signal: Family Game	3	Action Comedy Mecha Sci-Fi	6.55
4627	Uchuu no Kishi Tekkaman	26	Action Adventure Mecha Sci-Fi Shounen Space	6.55
4628	Under the Dog	1	Action Sci-Fi Thriller	6.55
4629	Venus Versus Virus	12	Drama Romance Supernatural	6.55
7780	Elec-king The Animation	13	Comedy	6.55
7846	Future GPX Cyber Formula Graffiti	1	Action Sci-Fi Sports	6.55
8064	Hello Kitty no Kieta Santa-san no Boushi	1	Fantasy Kids	6.55
8716	Mamimume★Mogacho	13	Kids	6.55
8979	Nine 2: Koibito Sengen	1	Action School Sports	6.55
9165	Panda no Taputapu	Unknown	Kids	6.55
9677	Super Bikkuriman	44	Adventure Comedy Demons Fantasy Sci-Fi	6.55
9907	Umigame to Shounen	1	Drama Historical	6.55
10115	Zettai Zetsumei Dangerous Jiisan (2004)	51	Comedy Kids	6.55
4560	Bakukyuu Renpatsu! Super Bedaman	18	Adventure Game	6.56
4561	Cookin&#039; Idol Ai! Mai! Main!	305	Comedy Kids	6.56
4562	Coppelion	13	Action Sci-Fi Seinen	6.56
4563	Doraemon: Nobita to Mirai Note	1	Adventure Fantasy Kids Sci-Fi Shounen	6.56
4564	Dr. Slump Movie 07: Arale-chan N-cha! Penguin Mura yori Ai wo Komete	1	Comedy Sci-Fi Shounen	6.56
4565	Feng Yun Jue	1	Action Adventure Martial Arts	6.56
4566	Fuusen Shoujo Temple-chan	26	Adventure Comedy Kids	6.56
4567	Garakuta-doori no Stain: Epilogue	1	Comedy	6.56
4568	Getsuyoubi no Tawawa	12	Slice of Life	6.56
4569	Gifuu Doudou!!: Kanetsugu to Keiji	25	Action Historical Martial Arts Samurai Seinen	6.56
4570	Koi☆Sento	1	Comedy Romance	6.56
4571	Last Exile: Ginyoku no Fam Recaps	2	Action Adventure Sci-Fi	6.56
4572	Maetel Legend	2	Drama Sci-Fi Space	6.56
4573	Mashin Eiyuuden Wataru: Owarinaki Toki no Monogatari	3	Fantasy	6.56
4574	Minky Momo in Tabidachi no Eki	1	Drama Fantasy Magic Shoujo	6.56
4575	Mori no Youki na Kobito-tachi: Belfy to Lillibit	26	Adventure Comedy Fantasy	6.56
4576	Nangoku Shounen Papuwa-kun	42	Adventure Comedy Shounen	6.56
4577	Ninja Slayer From Animation	26	Action	6.56
4578	Panda no Daibouken	1	Adventure	6.56
4579	Panda-Z: The Robonimation	30	Action Comedy Kids Mecha Parody Sci-Fi Shounen	6.56
4580	Pokemon XY SP: Road to Kalos	1	Action Adventure Comedy Fantasy Kids	6.56
4581	Pokemon XY: New Year&#039;s Eve 2014 Super Mega Special	1	Action Adventure Comedy Fantasy Kids	6.56
4582	Rinne no Lagrange: Kamogawa Memoria	1	Action Comedy Mecha Sci-Fi	6.56
4583	SD Gundam Sangokuden Brave Battle Warriors	51	Action Historical Mecha	6.56
4584	Shirogane no Ishi: Argevollen	24	Action Mecha	6.56
4585	Sword Art Online II: Debriefing	1	Action Adventure Fantasy Game	6.56
4586	Time Bokan Series: Yattodetaman	52	Action Adventure Comedy Fantasy Mecha	6.56
4587	Tondera House no Daibouken	52	Adventure Historical Sci-Fi	6.56
4588	VitaminX Addiction	3	Romance School	6.56
4589	Wakakusa Monogatari	1	Historical Slice of Life	6.56
4590	Yodaka no Hoshi	1	Adventure Kids	6.56
7398	Amigo Tomodachi	1	School Slice of Life	6.56
7514	Boku wa Koko de Ikiteiku	1	Kids Music	6.56
7773	Eiga! Tamagotchi Uchuu Ichi Happy na Monogatari!?	1	Kids	6.56
7831	Furiten-kun	1	Comedy Seinen Slice of Life	6.56
7891	Gegege no Kitarou: Obake Nighter	1	Adventure Comedy Fantasy Horror Sports Supernatural	6.56
7997	Hakusai Anime	3	Comedy Romance School Slice of Life	6.56
8158	Holiday	1		6.56
8651	Little Polar Bear: Shirokuma-kun Doko e?	1	Adventure Fantasy Kids	6.56
8714	Mameushi-kun	52	Comedy Fantasy Kids	6.56
8993	Ninjaman Ippei	13	Action Comedy School Slice of Life	6.56
9239	Play Ball 2nd	13	Action Shounen Sports	6.56
9901	Ultraman: Chou Toushi Gekiden - Suisei Senjin Tsuifon Toujou	1	Action Sci-Fi Shounen Space Super Power	6.56
9952	Wanpaku Tanteidan	35	Action Mystery	6.56
4491	Chi&#039;s Sweet Home (2016)	Unknown	Slice of Life	6.57
4518	Pokemon: Pikachu no Summer Bridge Story	1	Adventure Comedy Fantasy Kids	6.57
4525	The iDOLM@STER Cinderella Girls: Special Program	1	Comedy Music	6.57
4531	Boku wa Imouto ni Koi wo Suru	1	Romance Shoujo	6.57
4532	Cheburashka Arere?	26	Comedy Kids Slice of Life	6.57
4533	Chinmoku no Kantai	3	Drama Military	6.57
4534	Domo TV	26	Comedy	6.57
4535	Eine Kleine	1	Drama Music Romance Slice of Life	6.57
4536	Gakkou no Kaidan (OVA)	10	Comedy Horror Mystery Supernatural	6.57
4537	Galaxy Angel Rune	13	Comedy Sci-Fi	6.57
4538	Geobreeders 2: Mouryou Yuugekitai File-XX Ransen Toppa	4	Adventure Comedy Sci-Fi Shounen	6.57
4539	Ginga Reppuu Baxingar	39	Action Adventure Mecha	6.57
4540	Kouya no Shounen Isamu	52	Action Adventure Shounen	6.57
4541	Kudan	1	Fantasy	6.57
4542	Kuusen Madoushi Kouhosei no Kyoukan	12	Action Drama Fantasy Magic School	6.57
4543	Mizuiro (2003)	2	Drama Romance Supernatural	6.57
4544	Muu no Hakugei	26	Action Fantasy Sci-Fi	6.57
4545	Nameko-ke no Ichizoku	13	Comedy Slice of Life	6.57
4546	Neo Ranga	48	Adventure Horror Mecha	6.57
4547	Ningyohime Marina no Bouken	26	Drama Fantasy Kids Romance	6.57
4548	Pokemon: Pikachu no Obake Carnival	1	Adventure Comedy Fantasy Kids	6.57
4549	Pokemon: Pikachu Tanken Club	1	Adventure Comedy Fantasy Kids	6.57
4550	Pokemon: Senritsu no Mirage Pokemon	1	Adventure Comedy Fantasy Kids	6.57
4551	Power Stone	26	Adventure Comedy Fantasy Historical Shounen	6.57
4552	Ragnarök the Animation	26	Action Fantasy Magic	6.57
4553	Saiyuuki: Son Gokuu Monogatari	1	Adventure	6.57
4554	Takamiya Nasuno Desu!: Teekyuu Spin-off	12	Comedy Shounen	6.57
4555	Tayutayu: Pure My Heart	6	Comedy	6.57
4556	Twilight Q	2	Mystery Psychological Sci-Fi	6.57
4557	Winter Sonata Episode 0	1	Drama Romance	6.57
4558	Yume Tsukai	12	Drama Fantasy Magic Slice of Life	6.57
4559	Yuugen Kaisha	4	Action Adventure Comedy Magic Super Power Supernatural	6.57
4608	Larva	26	Comedy	6.57
7474	Balgwanghaneun Hyeondaesa	1	Drama	6.57
7968	Greek Roman Sinhwa: Olympus Guardian	39	Adventure Fantasy Historical	6.57
8051	Heisei Inu Monogatari Bow Movie	1	Adventure Comedy	6.57
8075	Hello Kitty no Okaze wo Hiita Santa-san	1	Fantasy Kids	6.57
8615	Kyojin no Hoshi: Ike Ike Hyuuma	1	Drama Sports	6.57
8648	Little Charo	50	Slice of Life	6.57
8971	Nihon-ichi no Otoko no Tamashii 2	16	Comedy Romance	6.57
9062	Ohayo! Spank (Movie)	1	Comedy Romance Slice of Life	6.57
9117	Ookami Shounen Ken: Arabia no Kaijin - Ma no Iwa no Kettou	1	Adventure Kids	6.57
9151	Ougon Senshi Gold Lightan	52	Mecha Sci-Fi	6.57
9443	Shiawase no Ouji	1	Kids	6.57
9769	The Deer&#039;s Bell	1	Kids	6.57
9833	Totsugeki! Pappara-tai	25	Action Comedy Romance	6.57
9954	Wansa-kun OVA	1	Comedy Kids	6.57
4456	Chousoku Henkei Gyrozetter	51	Action Cars Mecha Shounen	6.58
4486	Active Raid: Kidou Kyoushuushitsu Dai Hachi Gakari 2nd	12	Comedy Mecha Police Sci-Fi	6.58
4487	Anmitsu Hime	51	Comedy Historical Shoujo	6.58
4488	Babel Nisei (1973)	39	Adventure Sci-Fi Shounen Supernatural	6.58
4489	Break Blade: Virgins War	1	Action	6.58
4490	Card Wang: Mix Master	39	Adventure Fantasy Game Shounen	6.58
4492	Chogattai Majutsu Robot Ginguiser	26	Adventure Mecha Sci-Fi Shounen	6.58
4493	Crush Gear Nitro	50	Cars Shounen Sports	6.58
4494	Densetsu no Yuusha no Densetsu: Iris Report	1	Action Adventure Fantasy Magic Shounen	6.58
4495	Eiga de Toujou! Tamagotchi Dokidoki! Uchuu no Maigotchi!?	1	Kids	6.58
4496	Future GPX Cyber Formula: Early Days Renewal	2	Drama Sci-Fi Shounen Sports	6.58
4497	Genji Tsuushin Agedama	51	Action Comedy Parody Sci-Fi	6.58
4498	Hengen Taima Yakou Karura Mau! Sendai Kokeshi Enka	6	Horror Shoujo	6.58
4499	Higurashi no Naku Koro ni Kira	4	Mystery Parody	6.58
4500	Himawari!!	13	Comedy Romance	6.58
4501	Honey Honey no Suteki na Bouken	29	Adventure Historical Shoujo	6.58
4502	Juusenshi Gulkeeva	26	Action Fantasy Mecha Super Power	6.58
4503	Kagaku Ninja-tai Gatchaman II	52	Action Adventure Sci-Fi Shounen	6.58
4504	Kamen Rider Den-O: Imagin Anime 3	12	Action Adventure Comedy Kids Super Power	6.58
4505	Kikou Kantai Dairugger XV	52	Action Adventure Mecha Sci-Fi Shounen	6.58
4506	Kinnikuman II Sei: Second Generations	1	Comedy	6.58
4507	Koi Tsubomi	1	Fantasy Music	6.58
4508	Maeterlinck no Aoi Tori: Tyltyl Mytyl no Bouken Ryokou	26	Adventure Fantasy	6.58
4509	Mahou no Tenshi Creamy Mami: Eien no Once More	1	Comedy Fantasy Magic Romance Shoujo	6.58
4510	Midnight Eye: Gokuu	1	Action Mystery Sci-Fi Seinen	6.58
4511	Miyanishi Tatsuya Gekijou: Omae Umasou da na	20	Adventure Kids	6.58
4512	Monster Strike: Rain of Memories	1	Action Fantasy Game	6.58
4513	Nanami-chan 3rd Series	16	Comedy Kids	6.58
4514	Neko Neko Fantasia	1	Comedy	6.58
4515	Onegai♪My Melody Kirara★	52	Comedy Fantasy Magic	6.58
4516	Otogi Story Tenshi no Shippo Specials	2	Comedy Fantasy Magic Romance	6.58
4517	Pokemon: Pikachu no Kirakira Daisousaku!	1	Adventure Comedy Fantasy Kids	6.58
4519	Precure All Stars Movie: Haru no Carnival♪	1	Action Comedy Fantasy Magic Music Shoujo	6.58
4520	Sekai Meisaku Douwa: Aladdin to Mahou no Lamp	1	Adventure Fantasy	6.58
4521	SMAnime	3	Action Seinen	6.58
4522	Sukeban Deka	2	Action Drama Police School Shoujo	6.58
4523	Teekyuu 4 Specials	2	Comedy School Shounen Sports	6.58
4524	Tegami: Haikei Juugo no Kimi e	1	Music School Slice of Life	6.58
4526	Tori no Uta	1	Fantasy	6.58
4527	Weekender Girl	1	Music	6.58
4528	Yamato Takeru: After War	2	Action Adventure Fantasy Magic Mecha Sci-Fi Shounen Space	6.58
4529	Yokuwakaru Gendaimahou	12	Comedy Magic	6.58
4530	Yu☆Gi☆Oh! Zexal	73	Action Fantasy Game Shounen	6.58
7468	Bakabon Osomatsu no Karee wo Tazunete Sansenri	1	Comedy	6.58
7528	Bouken Gabotenjima	39	Adventure	6.58
7529	Bouken Korobokkuru	26	Adventure	6.58
10359	Okane ga Nai	4	Drama Romance Yaoi	6.58
4424	Love Live! Kouhaku Special Anime	1	Music	6.59
4446	12-sai.	8	Romance School Shoujo	6.59
4447	Anata wo Zutto Aishiteru	1	Adventure Kids	6.59
4448	Argento Soma Special	1	Action Mecha Sci-Fi	6.59
4449	Atashin&#039;chi Movie	1	Comedy	6.59
4450	Avengers Confidential: Black Widow to Punisher	1	Action Sci-Fi Seinen	6.59
4451	Bakusou Kyoudai Let&#039;s &amp; Go Special	1	Adventure Cars Shounen Sports	6.59
4452	Boys Be...	13	Comedy Romance Shounen Slice of Life	6.59
4453	Catman Series III	6	Comedy Fantasy Slice of Life	6.59
4454	Chiisana Viking Vickie	78	Adventure Comedy Historical Kids	6.59
4455	Chou Kuse ni Narisou	39	Comedy Romance School Shoujo Slice of Life	6.59
4457	Cyborg 009: Chou Ginga Densetsu	1	Action Sci-Fi Space	6.59
4458	Doraemon: It&#039;s Autumn!	1	Adventure Comedy Fantasy Kids Shounen	6.59
4459	Gakkatsu!	25	Comedy School	6.59
4460	Gatchaman	3	Action Adventure Martial Arts Sci-Fi Shounen Super Power	6.59
4461	Girls und Panzer: Shoukai Shimasu!	2	Military School	6.59
4462	Go! Go! Itsutsugo Land	50	School	6.59
4463	Hacka Doll The Animation	13	Comedy Sci-Fi	6.59
4464	Himeyuri	1	Drama Historical	6.59
4465	Jinsei	13	Comedy School Slice of Life	6.59
4466	L/R: Licensed by Royal	12	Action Adventure Mystery Police	6.59
4467	Luger Code 1951	1	Action Fantasy	6.59
4468	Machikado no Märchen	1	Romance	6.59
4469	Macross 25th Anniversary: All That VF Macross Zero Version	1	Action Mecha Sci-Fi	6.59
4470	Metal Fight Beyblade Zero G	38	Adventure Sports	6.59
4471	Miyakawa-ke no Kuufuku	10	Slice of Life	6.59
4472	Monster Musume no Iru Nichijou: Hobo Mainichi ◯◯! Namappoi Douga	60	Comedy Slice of Life	6.59
4473	Ningyo	1	Fantasy	6.59
4474	Nurse Witch Komugi-chan Magikarte Special	1	Comedy Magic Parody	6.59
4475	Pika Don	1	Drama Historical	6.59
4476	Pokemon: Pikachu Kore Nan no Kagi?	1	Adventure Comedy Fantasy Kids	6.59
4477	Rockman Hoshi ni Negai wo	3	Action Adventure Sci-Fi	6.59
4478	Saint Seiya Omega	97	Action Adventure Fantasy Shounen	6.59
4479	Sakura Taisen: Le Nouveau Paris	3	Adventure Mecha Sci-Fi Shounen	6.59
4480	Shenmue: The Movie	1	Action Adventure Game Martial Arts	6.59
4481	Strange Dawn	13	Adventure Drama Fantasy	6.59
4482	Tantei Opera Milky Holmes: Alternative	2	Comedy Mystery Super Power	6.59
4483	Umi no Triton	27	Adventure Fantasy Shounen	6.59
4484	Utopia	1	Music	6.59
4485	Zoids Fuzors	26	Adventure Mecha Sci-Fi Shounen	6.59
8117	Hidari no O&#039;Clock!!	2	Drama	6.59
4413	Amnesia OVA	1	Fantasy Shoujo	6.6
4414	Android Ana Maico 2010	24	Comedy Drama Sci-Fi Seinen	6.6
4415	Chou Supercar Gattiger	25	Action Cars Sci-Fi	6.6
4416	Computer Kakumei: Saikyou x Saisoku no Zunou Tanjou	1	Sci-Fi	6.6
4417	Gokinjo Monogatari the Movie	1	Comedy Drama Romance	6.6
4418	Hello Kitty no Cinderella	1	Fantasy Kids	6.6
4419	Hi☆sCoool! SeHa Girls	13	Comedy Game	6.6
4420	Jinrui wa Suitai Shimashita: Ningen-san no Yousei-san Memo	1	Fantasy Seinen	6.6
4421	Kinnikuman: Kessen! Shichinin no Seigi Choujin vs. Uchuu Nobushi	1	Action Comedy Shounen Sports	6.6
4422	Konchuu Monogatari Minashigo Hutch (1989)	55	Adventure Comedy Drama	6.6
4423	Koutetsu Sangokushi Special	1	Historical Shounen	6.6
4425	Macross 25th Anniversary: All That VF Macross F Version	1	Action Mecha Sci-Fi	6.6
4426	Mai-Otome Special: Otome no Inori	1	School Slice of Life	6.6
4427	Mission-E	12	Action Comedy School Sci-Fi	6.6
4428	Mobile Suit Gundam AGE	49	Action Mecha Sci-Fi Space	6.6
4429	Neko Machi	1	Fantasy Horror	6.6
4430	Oneechan ga Kita Special	1	Comedy Slice of Life	6.6
4431	Prism Ark	12	Action Comedy Drama Fantasy Magic	6.6
4432	Pucca (2008)	13	Action Comedy Parody Romance	6.6
4433	Rokudenashi Blues 1993	1	Action Comedy Drama School Shounen Sports	6.6
4434	Saint October	26	Adventure Fantasy	6.6
4435	Shakugan no Shana: Shana &amp; Yuuji no Naze Nani Shana! Nandemo Shitsumon-bako!	1	Comedy Fantasy Supernatural	6.6
4436	Shin Hikari Shinwa: Palutena no Kagami	3	Adventure Comedy Fantasy	6.6
4437	Sono Hanabira ni Kuchizuke wo: Risa x Miya Gekijou	10	Comedy Romance School Shoujo Ai Slice of Life	6.6
4438	Soukou Kihei Votoms: Vol.1 Stories of the &#039;A.T. Votoms&#039;	1	Action Drama Mecha Military Sci-Fi	6.6
4439	Stella Jogakuin Koutou-ka C³-bu	13	Military School Sports	6.6
4440	Street Fighter Alpha: Generations	1	Adventure Shounen	6.6
4441	Taichi Senjimon	39	Action Adventure Fantasy Magic	6.6
4442	Tottoko Hamtarou Movie 4: Hamtaro to Fushigi no Oni no Emon Tou	1	Adventure Comedy Kids	6.6
4443	Tottoko Hamtarou OVA 3: Hamuchanzu to Niji no Kuni no Oujisama - Sekai de Ichiban no Takaramono	1	Adventure Comedy Kids	6.6
4444	Yadosagashi	1	Adventure Fantasy Kids Slice of Life	6.6
4445	Yoru no Yatterman	12	Action Adventure Comedy Drama	6.6
7815	Fuichin-san	1	Drama Historical Kids Shoujo	6.6
7909	Genkichi Jiisan to Kogitsune	1	Drama Kids	6.6
7939	Go! Samurai	1	Action Samurai	6.6
8015	Hanawa Hekonai Kappa Matsuri	1	Comedy Kids	6.6
8081	Hello Kitty no Santa-san ga Futari Ita	1	Fantasy Music	6.6
8594	Kumo no Ito (Special)	1	Drama	6.6
9046	Obake no Q-Tarou: Susume! 1/100 Daisakusen	1	Comedy Kids School Slice of Life Supernatural	6.6
9142	Otoko Doahou! Koushien	156	Action Sports	6.6
9183	Peach Command Shin Momotarou Densetsu	24	Adventure Comedy	6.6
9454	Shimajirou Hesoka	101	Adventure Comedy Fantasy Kids Magic	6.6
9638	Souta no Chikai: Sabetsu ni Makenai Chikara	1	Drama Historical Kids	6.6
9874	Uchuu Majin Daikengou	26	Action Adventure Mecha Sci-Fi Shounen Space	6.6
10021	Xue Haizi	1	Fantasy Kids	6.6
10080	Yukidaruma	1	Fantasy Historical	6.6
4388	Ace wo Nerae!: Final Stage	12	Action Drama Sports	6.61
4389	Bakuon!!	12	Comedy Seinen Slice of Life	6.61
4390	Black Jack: Heian Sento	1	Shounen	6.61
4391	Chikyuu Bouei Kazoku Special	1	Comedy Kids Mecha School Super Power	6.61
4392	Code Geass: Soubou no Oz Picture Drama	5	Action Drama Mecha Military School Supernatural	6.61
4393	Dance in the Vampire Bund Recap	1	Action Supernatural Vampire	6.61
4394	Disney Tsum Tsum	Unknown	Kids	6.61
4395	eX-Driver the Movie Specials	3	Comedy	6.61
4396	Madou King Granzort: Bouken-hen	3	Action Comedy Fantasy Magic Mecha Sci-Fi Shounen	6.61
4397	Meitantei Holmes: Mrs. Hudson Hitojichi Jiken no Maki / Dover Kaikyou no Daikuuchuusen no Maki	1	Adventure Comedy Mystery	6.61
4398	Miss Monochrome: The Animation 2	13	Comedy Music Slice of Life	6.61
4399	Nanami-chan 2nd Series	16	Comedy Kids	6.61
4400	Ore-sama Kingdom	14	Romance Shoujo	6.61
4401	Persona 4 the Golden Animation: Thank you Mr. Accomplice	1	Adventure Drama Mystery Supernatural	6.61
4402	Pokemon Best Wishes! Season 2: Decolora Adventure	20	Action Adventure Comedy Fantasy Kids	6.61
4403	Pokemon: Pikachu no Fushigi na Fushigi na Daibouken	1	Adventure Comedy Fantasy Kids	6.61
4404	Seikimatsu Occult Gakuin Specials	4	Comedy School Supernatural	6.61
4405	Sengoku Basara Movie: 4-Koma Gekijou - Another Last Party	5	Comedy Historical	6.61
4406	Shin Koihime†Musou OVA Omake	1	Adventure Comedy Fantasy	6.61
4407	Shin Koihime†Musou: Otome Tairan OVA Omake	1	Adventure Comedy Fantasy	6.61
4408	Sore Ike! Anpanman	Unknown	Comedy Fantasy Kids	6.61
4409	To Be Hero	12	Comedy	6.61
4410	Utawarerumono: Itsuwari no Kamen Specials	2	Comedy Fantasy	6.61
4411	Yozakura Quartet: Yoza-Quar!	6	Comedy	6.61
4412	Zettai Karen Children Recap	1	Action Comedy Shounen Supernatural	6.61
7932	Glass no Chikyuu wo Sukue Unico Tokubetsu-hen	1	Fantasy Kids	6.61
8070	Hello Kitty no Minna no Mori wo Mamore!	1	Kids	6.61
8257	Jakusansei Million Arthur	Unknown	Comedy Fantasy	6.61
8896	Nagasaki 1945: Angelus no Kane	1	Drama Historical Military	6.61
9661	Sugar Bunnies	26	Kids	6.61
4324	Beautiful World	1	Action Drama Mecha Music Sci-Fi	6.62
4336	Joker Game: Kuroneko Yoru no Bouken	2	Drama Historical Military Seinen	6.62
4354	Arc the Lad	26	Action Adventure Fantasy Horror Sci-Fi	6.62
4355	Arslan Senki (TV) Specials	8	Comedy	6.62
4356	Chibi Kero: Kerobouru no Himitsu!?	1	Comedy	6.62
4357	Detective Conan: Nazo no Suisei Kaijuu wo Oe!	1	Mystery	6.62
4358	Dimension W Special	1	Sci-Fi Seinen	6.62
4359	Doku Tenshi no Shippo	4	Comedy Fantasy Magic Romance	6.62
4360	Doubutsu Takarajima	1	Adventure	6.62
4361	Fushigi na Melmo	26	Magic Shoujo	6.62
4362	Hai to Gensou no Grimgar Special	1	Comedy	6.62
4363	Jewelpet Magical Change	39	Comedy Fantasy Magic Shoujo	6.62
4364	K-On!!: Ura-On!!	9	Comedy	6.62
4365	Kami nomi zo Shiru Sekai: Nonstop!! Hunters	1	Music	6.62
4366	Kaze no Na wa Amnesia	1	Action Dementia Drama Sci-Fi	6.62
4367	Kira Kira 5th Anniversary Live Anime: Kick Start Generation	1	Music	6.62
4368	Kokoro Toshokan	13	Comedy Drama Slice of Life	6.62
4369	Kyou Koi wo Hajimemasu	2	Romance School Shoujo	6.62
4370	Leopard Eyes	1	Music	6.62
4371	Lupin III: Pilot Film	1	Action Comedy Shounen	6.62
4372	Morita-san wa Mukuchi. Specials	2	Comedy School Slice of Life	6.62
4373	Nezumi Monogatari: George to Gerald no Bouken	1	Adventure Kids	6.62
4374	Ore no Imouto ga Konnani Kawaii Wake ga Nai. Specials	3	Comedy Romance Seinen Slice of Life	6.62
4375	Palme no Ki	1	Adventure Drama Fantasy Romance	6.62
4376	Rokudenashi Blues	1	Comedy Drama School Shounen Sports	6.62
4377	Saiyuuki	1	Adventure	6.62
4378	Sensou no Tsukurikata	1	Drama Kids	6.62
4379	Shin Megami Tensei Devil Children: Light &amp; Dark	52	Action Adventure Demons Fantasy Game Kids Magic Sci-Fi Supernatural	6.62
4380	Shin Minashigo Hutch	26	Adventure Comedy Drama	6.62
4381	Shiritsu Araiso Koutougakkou Seitokai Shikkoubu	2	Comedy Shounen Ai Sports	6.62
4382	Sojunghan Nal-ui Kkum	1	Comedy Drama Romance	6.62
4383	Sukitte Ii na yo.: Mei and Marshmallow	10	Romance School Shoujo	6.62
4384	The☆Doraemons: Mushimushi Pyonpyon Daisakusen!	1	Fantasy	6.62
4385	Tooi Sekai	1	Drama Romance	6.62
4386	Usavich V	13	Comedy	6.62
4387	Utawarerumono Recaps	2	Action Drama Fantasy	6.62
7644	Chouriki Robo Galatt	25	Action Adventure Comedy Mecha Sci-Fi	6.62
7929	Ginga Tetsudou 999: Niji no Michishirube	1	Drama Sci-Fi	6.62
8134	Himitsukessha Taka no Tsume NEO	38	Comedy Parody Super Power	6.62
8449	Kero Kero Keroppi no Sora Tobu Yume no Fune	1	Fantasy Kids	6.62
8455	Kero Kero Keroppi: Hasunoue Town Kiki Ippatsu!	6	Fantasy Kids	6.62
9708	Takarajima (Movie)	1	Adventure Drama Historical Mystery Supernatural	6.62
9727	Tantei Opera Milky Holmes Movie: Gyakushuu no Milky Holmes	1	Comedy Mystery Super Power	6.62
4299	Gakuen Handsome The Animation	1	Comedy Parody School Shounen Ai	6.63
4323	Amagi Brilliant Park: Wakuwaku Mini Theater - Rakugaki Backstage	7	Comedy	6.63
4325	Blossom	1	Music	6.63
4326	Doraemon: It&#039;s Summer!	1	Adventure Comedy Fantasy Kids Shounen	6.63
4327	Fudanshi Koukou Seikatsu	12	Comedy School Shoujo Slice of Life	6.63
4328	Futari wa Precure: Splash☆Star Maji★Doki♥ Theater	1	Action Comedy Fantasy Magic Shoujo	6.63
4329	Gakkou no Kowai Uwasa: Hanako-san ga Kita!!	35	Horror	6.63
4330	Gall Force 3: Stardust War	1	Action Military Sci-Fi Space	6.63
4331	Ghiblies	2	Comedy	6.63
4332	Girls und Panzer Heartful Tank Disc Picture Drama	4	Military School	6.63
4333	Gundam Neo Experience 0087: Green Divers	1	Adventure Mecha Space	6.63
4334	Hamelin no Violin Hiki: The Movie	1	Adventure Comedy Fantasy	6.63
4335	Inugami-san to Nekoyama-san Special	1	Comedy School Shoujo Ai	6.63
4337	Joshikousei: Girl&#039;s High Specials	3	Comedy Slice of Life	6.63
4338	Kagaku Ninja-tai Gatchaman F	48	Action Adventure Sci-Fi Shounen	6.63
4339	Kinnikuman (1984)	1	Action Comedy Shounen Sports	6.63
4340	Kiteretsu Daihyakka	331	Comedy Drama Slice of Life	6.63
4341	Morita-san wa Mukuchi.	13	Comedy School Slice of Life	6.63
4342	PetoPeto-san	13	Comedy Fantasy Romance School	6.63
4343	Pokemon Fushigi no Dungeon: Shutsudou Pokemon Kyuujotai Ganbaruzu!	1	Adventure Fantasy	6.63
4344	Rokumon Tengai Mon Colle Knights	51	Adventure Comedy Fantasy Kids Magic Parody	6.63
4345	Ryoutei no Aji	4	Slice of Life	6.63
4346	Saru Getchu: On Air 2nd	51	Adventure Comedy Fantasy Kids Romance Shounen	6.63
4347	Shin Megami Tensei Devil Children	50	Action Adventure Demons Fantasy Game Kids Magic Sci-Fi Supernatural	6.63
4348	Sonic: Night of the WereHog	1	Action	6.63
4349	Taiyou no Ouji: Horus no Daibouken	1	Adventure Drama Magic	6.63
4350	Terra e...	1	Action Drama Sci-Fi Shounen	6.63
4351	Tetsuko no Tabi	13	Comedy Seinen Slice of Life	6.63
4352	Upotte!!	10	Action Comedy Military Seinen	6.63
4353	Ys	7	Adventure Demons Drama Fantasy Magic	6.63
7337	21 Seiki Manga Hajimete Monogatari	1	Adventure Comedy Kids Sci-Fi	6.63
8079	Hello Kitty no Papa Nante Daikirai	1	Kids Slice of Life	6.63
8126	Himalaya no Hikari no Oukoku	1	Adventure Fantasy	6.63
8184	Hustle Punch	26	Comedy Fantasy Kids	6.63
9119	Oraa Guzura Dado	52	Comedy Kids	6.63
9499	Shiroi Kiba White Fang Monogatari	1	Adventure Drama Historical	6.63
9646	Spy Gekimetsu	1	Historical Military	6.63
4270	Mahouka Koukou no Rettousei: Yoku Wakaru Mahouka! Special	1	Comedy Magic	6.64
4288	Aozora Shoujo-tai	7	Action Comedy Military Romance Shounen	6.64
4289	Dallyeola Hani	13	Sports	6.64
4290	Danchigai	12	Comedy Slice of Life	6.64
4291	DD Hokuto no Ken (2013)	13	Parody Seinen	6.64
4292	Denshin Mamotte Shugogetten	8	Comedy Fantasy Magic Romance Shounen	6.64
4293	Dokkiri Doctor	26	Comedy Slice of Life	6.64
4294	Dynamic Super Robots Soushingekki	3	Action Mecha Sci-Fi Shounen	6.64
4295	Etotama Specials	6	Action Comedy Fantasy	6.64
4296	eX-Driver: Nina &amp; Rei Danger Zone	1	Action Cars Sci-Fi	6.64
4297	Fatal Fury: Legend of the Hungry Wolf	1	Action Adventure Drama Martial Arts Romance Shounen	6.64
4298	Futakoi	13	Comedy Romance School	6.64
4300	Gokujou!! Mecha Mote Iinchou Second Collection	51	Comedy Romance School Shoujo	6.64
4301	Hanayaka Nari Waga Ichizoku: Kinetograph	2	Drama Historical Josei	6.64
4302	Jungle Taitei Movie	1	Adventure Shounen	6.64
4303	Kamen Rider SD Kaiki?! Kumo Otoko	1	Action Parody	6.64
4304	Kikou Kai Galient	25	Action Fantasy Mecha Sci-Fi	6.64
4305	Kinkyuu Hasshin Saver Kids	50	Action Adventure Comedy Mecha Sci-Fi	6.64
4306	Kyoukai no Kanata: Idol Saiban! Mayoi Nagara mo Kimi wo Sabaku Tami	5	Comedy	6.64
4307	Last Exile: Ginyoku no Fam Movie - Over the Wishes	1	Action Adventure Sci-Fi	6.64
4308	Legend of Regios	3	Magic	6.64
4309	Mobile Suit SD Gundam&#039;s Counterattack	2	Comedy Mecha Parody	6.64
4310	Muteki Robo Trider G7	50	Comedy Mecha Sci-Fi Space	6.64
4311	Onigamiden	1	Action Demons Supernatural	6.64
4312	Paul no Miracle Daisakusen	51	Action Adventure Kids	6.64
4313	Pokemon: Pikachu no Fuyuyasumi (2001)	3	Adventure Comedy Fantasy Kids	6.64
4314	Project A-Ko 3: Cinderella Rhapsody	1	Action Comedy Mecha Sci-Fi Super Power	6.64
4315	Shining Tears X Wind	13	Action Adventure Fantasy Magic	6.64
4316	Sora no Manimani Specials	3	Comedy School Slice of Life	6.64
4317	Tenshi no Shippo Chu!	11	Fantasy Magic Romance	6.64
4318	Tezuka Osamu Monogatari: Boku wa Son Gokuu	1	Adventure	6.64
4319	Tokyo ESP	12	Action Comedy Sci-Fi Shounen Super Power Supernatural	6.64
4320	Trickster: Edogawa Ranpo &quot;Shounen Tanteidan&quot; yori	24	Mystery	6.64
4321	Wakakusa no Yon Shimai	26	Drama Historical Slice of Life	6.64
4322	Yume de Aetara (TV)	16	Comedy Drama Romance Seinen Slice of Life	6.64
8074	Hello Kitty no Nemureru Mori no Bijo	1	Fantasy Kids	6.64
8090	Hello Kitty no Yappari Mama ga Suki	1	Fantasy Kids	6.64
8415	Kasumin	26	Fantasy Kids	6.64
8525	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Ryou-san no Sushi Kuinee! - Choujyou Maguro Taiket	2	Comedy Police	6.64
8602	Kurokan	Unknown	Sports	6.64
8970	Nihon-ichi no Otoko no Tamashii	16	Comedy Romance	6.64
9307	Rerere no Tensai Bakabon	24	Comedy	6.64
9358	Saikyou Robot Daioja	50	Action Mecha Shounen	6.64
9711	Tako ni Natta Okaasan	1	Drama Historical	6.64
9902	Uma Musume: Pretty Derby	1	Action	6.64
4236	Pokemon Best Wishes! Season 2: Shinsoku no Genosect - Mewtwo Kakusei	1	Action Adventure Comedy Fantasy Kids	6.65
4249	Amagami SS+ Plus Picture Drama	2	Romance	6.65
4250	Atama Yama	1	Comedy Dementia Fantasy	6.65
4251	Baldr Force Exe Resolution	4	Action Drama Mecha Sci-Fi	6.65
4252	Brave Beats	22	Adventure Music	6.65
4253	Busou Shinki OVA	1	Action Sci-Fi	6.65
4254	Cheung gong chat hou	1	Kids	6.65
4255	Choujin Locke	1	Action Sci-Fi Super Power	6.65
4256	Dirty Pair no Ooshoubu: Nolandia no Nazo	1	Action Adventure Comedy Police Sci-Fi	6.65
4257	Eden&#039;s Bowy	26	Action Adventure Fantasy Romance Sci-Fi	6.65
4258	Examurai Sengoku	24	Action Martial Arts Samurai Sci-Fi	6.65
4259	Fushigiboshi no☆Futagohime Gyu! Recap	1	Comedy Magic Shoujo	6.65
4260	Gall Force 2: Destruction	1	Action Military Sci-Fi Space	6.65
4261	Gekitou! Crush Gear Turbo: Kaizabaan no Chousen	1	Shounen Sports	6.65
4262	Go-Q-Choji Ikkiman	32	Sci-Fi Sports	6.65
4263	Hamster Club	140	Kids	6.65
4264	Jie Mo Ren	14	Action Fantasy Mystery Supernatural	6.65
4265	Joou Heika no Petite Angie	26	Historical Mystery Shoujo	6.65
4266	Kami nomi zo Shiru Sekai: Natsu-iro Surprise	1	Music	6.65
4267	Kishin Douji Zenki Gaiden: Anki Kitan	1	Action Supernatural	6.65
4268	Kuma Miko Specials	2	Comedy Seinen	6.65
4269	Mahou Shoujo Lalabel	49	Comedy Magic Shoujo Slice of Life	6.65
4271	Major 2nd	1	Shounen Sports	6.65
4273	Mobile Suit Gundam Unicorn: One of Seventy Two	1	Mecha	6.65
4274	Nobunaga no Shinobi	Unknown	Comedy Historical	6.65
4275	Nono-chan	61	Comedy Slice of Life	6.65
4276	Norn9: Norn+Nonet	12	Adventure Fantasy Josei Romance	6.65
4277	Omoi no Kakera	1	Slice of Life	6.65
4278	Pokemon: Pikachu no Wanpaku Island	1	Adventure Comedy Fantasy Kids	6.65
4279	Pokemon: Pikachu Tankentai	1	Adventure Comedy Fantasy Kids	6.65
4280	Project A-Ko 4: Final	1	Action Comedy Mecha Sci-Fi Super Power	6.65
4282	Reideen	26	Action Mecha Sci-Fi	6.65
4284	Saint Seiya: Legend of Sanctuary	1	Adventure Fantasy Sci-Fi Shounen	6.65
4285	Tesagure! Bukatsumono	12	Parody School Slice of Life	6.65
4286	Uchuu Kaizoku Mito no Daibouken	13	Action Comedy Sci-Fi	6.65
4287	Uchuu Senshi Baldios (Movie)	1	Action Mecha Sci-Fi Space	6.65
7530	Bouken Shounen Shadar	156	Adventure Horror	6.65
7914	Geunyeoneun Yeppeotda	1	Comedy Drama Romance	6.65
9364	Sakura Momoko Gekijou: Coji-Coji	100	Comedy Fantasy	6.65
9667	Sugata Sanshirou	1	Action Martial Arts Sports	6.65
4190	Code Geass: Boukoku no Akito Final - Itoshiki Monotachi e Picture Drama	1	Comedy Military	6.66
4217	Arrow Emblem Grand Prix no Taka	44	Cars Drama Sports	6.66
4218	Aru Hi Inu no Kuni kara Tegami ga Kite	1	Drama Shoujo	6.66
4219	Attacker You!	58	Action Romance Shoujo Sports	6.66
4220	Bus Gamer	3	Action	6.66
4221	Chou Tokkyuu Hikarian	156	Action Adventure Kids	6.66
4222	Chouon Senshi Borgman	35	Action Demons Sci-Fi Shounen	6.66
4223	Crusher Joe (1989)	2	Action Adventure Sci-Fi	6.66
4224	Fortune Quest L	26	Adventure Comedy Fantasy Magic	6.66
4225	Ginga Patrol PJ	26	Drama Military Sci-Fi Space	6.66
4226	Honto ni Atta! Reibai Sensei	22	Comedy School Shounen Supernatural	6.66
4227	Kujiratori	1	Adventure	6.66
4228	La Seine no Hoshi	39	Adventure Drama Historical Shoujo	6.66
4229	Light Lag	1	Music	6.66
4230	Maroko	1	Comedy Sci-Fi	6.66
4231	MONSTER GENERATiON	1	Music	6.66
4232	Monster Strike	51	Action Fantasy Game	6.66
4233	Mottainai	1	Slice of Life	6.66
4234	Ooyasan wa Shishunki!	12	Comedy Slice of Life	6.66
4235	Phantom The Animation	3	Action Drama Shounen	6.66
4237	Pokemon: Pikachu Koori no Daibouken	1	Adventure Comedy Fantasy Kids	6.66
4239	Rolling☆Girls	12	Action Adventure Slice of Life Super Power	6.66
4240	Shounen Hollywood: Holly Stage for 50	13	Music Shoujo Slice of Life	6.66
4241	Sono Hanabira ni Kuchizuke wo: Reo x Mai Diaries	10	Comedy Romance School Shoujo Ai	6.66
4242	Super Doll Licca-chan	52	Adventure Comedy Magic	6.66
4243	Take Your Way	1	Action Music Seinen Supernatural	6.66
4244	Tatakae!! Ramenman	35	Action Adventure Comedy Martial Arts Shounen	6.66
4245	Tensai Bakabon	40	Comedy Slice of Life	6.66
4246	Tottoi	1	Adventure Drama Kids Slice of Life	6.66
4247	UFO Robo Grendizer tai Great Mazinger	1	Mecha Sci-Fi	6.66
4248	Yuri Seijin Naoko-san (2012)	1	Comedy	6.66
4272	Miss Monochrome: The Animation 3	13	Comedy Music Slice of Life	6.66
4281	Redial	1	Music	6.66
4283	Ryuugajou Nanana no Maizoukin	1	Comedy Supernatural	6.66
7887	Gegege no Kitarou: Gekitotsu!! Ijigen Youkai no Daihanran	1	Adventure Comedy Fantasy Horror Supernatural	6.66
9867	Twin Bee Paradise	4	Action Adventure	6.66
4185	.hack//G.U. Trilogy: Parody Mode	1	Comedy Fantasy Game Parody Sci-Fi	6.67
4186	Ai to Yuuki no Pig Girl Tonde Buurin	51	Adventure Comedy Fantasy Magic Parody Romance School Shoujo	6.67
4187	Alps no Shoujo Heidi: Alm no Yama-hen	1	Drama Historical Slice of Life	6.67
4188	Bubblegum Crash	3	Action Adventure Mecha Sci-Fi Shounen	6.67
4189	Burenai Ai de	1	Music	6.67
4191	Comic Party Revolution OVA	4	Comedy	6.67
4192	Crying Freeman	6	Action Drama Martial Arts Police Romance Seinen	6.67
4193	Doraemon: It&#039;s Spring!	1	Adventure Comedy Fantasy Kids Shounen	6.67
4194	Futatsu no Kurumi	1	Drama	6.67
4195	Ginga Tetsudou 999: Jikuu wo Koeta Energy no Tabi	5	Adventure Drama Sci-Fi	6.67
4196	Happy Happy Clover	13	Comedy Fantasy Kids Shoujo	6.67
4197	Hitori no Shita: The Outcast	12	Action Super Power Supernatural	6.67
4198	Honoo no Alpenrose	2	Drama Historical Romance Shoujo	6.67
4199	Interlude	3	Adventure Horror Mystery	6.67
4200	Meme Iroiro Yume no Tabi	127	Adventure Kids Sci-Fi	6.67
4201	Nekojiru Gekijou Jirujiru Original	27	Action Comedy	6.67
4202	Nintama Rantarou Movie	1	Comedy Shounen	6.67
4203	Nurarihyon no Mago: Jump Super Anime Tour Special	1	Action Demons Shounen Sports Supernatural	6.67
4204	Pokemon XY&amp;Z: Subete no Nazo wo Tokiakase!	1	Action Adventure Fantasy Kids	6.67
4205	Pucca (2006)	26	Comedy Parody Romance	6.67
4206	RahXephon Specials	2	Action Drama Mecha Music Mystery Romance Sci-Fi	6.67
4208	Ryuuseiki Gakusaver	6	Action Comedy Mecha Parody School Sci-Fi Space	6.67
4209	Samurai Giants	46	Sports	6.67
4210	Sengoku Musou	12	Action Historical Samurai	6.67
4211	Sexy Commando Gaiden: Sugoiyo!! Masaru-san Specials	2	Comedy Martial Arts School Shounen	6.67
4212	Sky Girls Specials	9	Comedy Mecha Military Sci-Fi	6.67
4213	Soukyuu no Fafner: Arcadian Memory	2	Action Drama Mecha Military Sci-Fi	6.67
4214	Tottoko Hamtarou Hai!	77	Adventure Kids	6.67
4215	Wakako-zake	12	Seinen Slice of Life	6.67
4216	Yuki	1	Adventure Demons Fantasy	6.67
4238	Pokemon: Pikachu no Fuyuyasumi (2000)	2	Adventure Comedy Fantasy Kids	6.67
7349	Afghanistan Paghman-mura no Monogatari: Boku no Mura ni Circus ga Kita	1	Historical Kids	6.67
7350	Afghanistan Paghman-mura no Monogatari: Sekaiichi Utsukushii Boku no Mura	1	Historical Kids	6.67
7486	Bemubemu Hunter Kotengu Tenmaru	19	Adventure Fantasy	6.67
7566	Chain Chronicle: Haecceitas no Hikari Part 1	1	Action Adventure Fantasy Magic Shounen	6.67
7776	Eikou e no Spur: Igaya Chiharu Monogatari	1	Drama Historical Sports	6.67
7824	Fuku-chan no Kishuu	1	Comedy Historical	6.67
7842	Futari no Tarou	1	Adventure Kids	6.67
7865	Ganbare Gonbe	77	Comedy Kids Parody	6.67
7980	Gutchonpa Omoshiro Hanashi	5	Kids	6.67
8089	Hello Kitty no Tomatta Big Ben	1	Fantasy Kids	6.67
8262	Japonese	1	Comedy	6.67
8426	Kazu &amp; Yasu Hero Tanjou	1	Drama Sports	6.67
8467	Kikansha Sensei	1	Comedy School Slice of Life	6.67
8536	Kogitsune no Shouboutai	1	Drama Fantasy Kids	6.67
8720	Manga Doushite Monogatari	100	Adventure Comedy Kids	6.67
8733	Manga Naruhodo Monogatari OVA	5	Adventure Kids	6.67
8735	Manga Nihon Keizai Nyuumon	25	Drama	6.67
8940	Neko Enikki	13	Comedy Slice of Life	6.67
8969	Nihon Omoshiro Mukashibanashi	12	Comedy Historical Parody	6.67
8975	Niji no Kizuna	1	Drama Kids	6.67
8856	Mon Cheri CoCo	13	Romance Shoujo	6.71
9000	Nintama Rantarou: Ninjutsu Gakuen to Nazo no Onna - Kore wa Jiken Da yo! no Dan	1	Comedy	6.67
9027	Noroma na Jiji	1	Historical	6.67
9051	Ocha-ken: Hotto Monogatari	13	Kids Slice of Life	6.67
9304	Ranpou	21	Comedy Parody School	6.67
9437	Shi Wan Ge Leng Xiaohua	12	Comedy Parody	6.67
9481	Shin-chan no Sanrinsha	1	Historical Kids	6.67
9715	Tama &amp; Friends: Uchi no Tama Shirimasenka?	Unknown	Adventure Kids	6.67
9724	Tanoshii Bunmeishi: Tetsu Monogatari	1	Historical Slice of Life	6.67
9777	The Monkey King Conquers the Demon	1	Adventure	6.67
9810	Toko-chan Chokkin	3	Adventure Historical Kids Slice of Life	6.67
10066	Yongshi	1	Historical Martial Arts	6.67
10358	Bronze: Zetsuai Since 1989	1	Drama Music Romance Sports Yaoi	6.67
4141	Amon: Devilman Mokushiroku	1	Demons Horror Psychological Supernatural	6.68
4142	Appleseed XIII Remix Movie 2: Yogen	1	Action Mecha Military Police Sci-Fi	6.68
4143	Arata Kangatari	12	Adventure Fantasy Shounen	6.68
4144	Busou Shinki Moon Angel	10	Action Sci-Fi	6.68
4145	Chargeman Ken!	65	Action Adventure Sci-Fi Shounen	6.68
4146	Comic Party	13	Comedy Drama	6.68
4147	Comic Party Revolution	13	Comedy Drama	6.68
4148	Cosmo Warrior Zero	13	Action Adventure Military Sci-Fi Space	6.68
4149	Cutey Honey	25	Action Adventure School Sci-Fi	6.68
4150	Detonator Orgun	3	Action Mecha Sci-Fi	6.68
4151	Digimon Xros Wars: Toki wo Kakeru Shounen Hunter-tachi	25	Action Adventure Comedy Fantasy Shounen	6.68
4152	Fake	1	Comedy Mystery Police Romance Shounen Ai	6.68
4153	Ghost in the Shell Arise Episode: [.jp]	1	Action	6.68
4154	Ginga Tetsudou no Yoru: Fantasy Railroad in the Stars	1	Drama Fantasy Mystery	6.68
4155	Haikyuu!! Quest Picture Drama	3	Comedy Fantasy Game Shounen	6.68
4156	iDOLM@STER Xenoglossia	26	Action Comedy Mecha Sci-Fi	6.68
4157	Inu to Hasami wa Tsukaiyou	12	Comedy Supernatural	6.68
4158	Kakumei no Wakaki Sora	1	Drama Historical	6.68
4159	Kizuna Ichigeki	1	Comedy Martial Arts	6.68
4160	Kojika Monogatari	52	Drama	6.68
4161	Kuragehime: Eiyuu Retsuden☆	4	Comedy Josei Slice of Life	6.68
4162	Kurenai Sanshirou	26	Action Martial Arts Sports	6.68
4163	Kyuukyoku Choujin R	1	Comedy Sci-Fi	6.68
4164	Little Lulu to Chicchai Nakama	26	Comedy Kids Slice of Life	6.68
4165	Nihonbashi Koukashita R Keikaku	1	Music	6.68
4166	Nurarihyon no Mago: Sennen Makyou Recaps	2	Action Demons Shounen Supernatural	6.68
4167	Nyoro-n Churuya-san	13	Comedy	6.68
4168	Pokemon Best Wishes! Season 2: Kyurem vs. Seikenshi	1	Action Adventure Comedy Drama Fantasy Kids	6.68
4169	Pokemon Ranger: Hikari no Kiseki	2	Adventure Comedy Fantasy Kids	6.68
4170	Pokemon: Pikachu no Dokidoki Kakurenbo	1	Adventure Comedy Fantasy Kids	6.68
4171	Puni Puni☆Poemii	2	Comedy Magic Sci-Fi Shounen	6.68
4172	Sengoku Musou SP: Sanada no Shou	1	Action Historical Samurai	6.68
4173	Takara-sagashi	1	Adventure Fantasy Kids	6.68
4174	Tetsujin 28-gou	96	Adventure Mecha Sci-Fi Shounen	6.68
4175	Time Travel Shoujo: Mari Waka to 8-nin no Kagakusha-tachi	12	Adventure Sci-Fi	6.68
4176	Tottoko Hamtarou Movie 3: Ham Ham Grand Prix Aurora Tani no Kiseki - Ribon-chan Kiki Ippatsu!	1	Adventure Comedy Kids	6.68
4177	Umineko no Naku Koro ni Specials	26	Comedy Parody	6.68
4178	Wakusei Robo Danguard Ace	56	Mecha Sci-Fi Shounen	6.68
4179	X/1999	1	Action Drama Fantasy Horror Magic Sci-Fi Supernatural	6.68
4180	X²: Double X	1	Drama Music Shoujo	6.68
4181	Yatterman	60	Adventure Comedy Parody	6.68
4182	Yu☆Gi☆Oh!: Hikari no Pyramid	1	Adventure Comedy Fantasy Game	6.68
4183	Z/X: Ignition	12	Adventure Fantasy Game Sci-Fi	6.68
4184	Zettai Muteki Raijin-Oh (1992)	4	Mecha Sci-Fi Shounen	6.68
4207	Rokka no Yuusha Picture Drama	3	Action Adventure Fantasy Magic Mystery	6.68
7494	Bikkuriman	75	Comedy Fantasy	6.68
8232	Instant History	312	Historical	6.68
8291	Judo Sanka	27	Shounen Sports	6.68
8724	Manga Hajimete Omoshiro Juku	110	Adventure Kids	6.68
9870	Uchi no 3 Shimai	141	Comedy Slice of Life	6.68
4107	12-sai.: Chicchana Mune no Tokimeki	12	Romance School Shoujo	6.69
4108	Anemone	1	Drama Magic Supernatural	6.69
4109	Atarashii Sekai	1	Music	6.69
4110	Bannou Bunka Neko-Musume (1998)	12	Action Adventure Comedy Mecha Sci-Fi Seinen	6.69
4111	Beast Wars Neo	35	Action Adventure Mecha Shounen Super Power	6.69
4112	Candy Candy: Haru no Yobigoe	1	Drama Shoujo Slice of Life	6.69
4113	Final Approach	13	Comedy Drama Romance Slice of Life	6.69
4114	Girls und Panzer: Nihon Senshadou Renmei News	2	Comedy	6.69
4115	Glass no Kantai: La Legende du Vent de l&#039;Univers	24	Adventure Sci-Fi	6.69
4116	Guitar wo Motta Shounen: Kikaider vs. Inazuman	1	Sci-Fi Shounen	6.69
4117	Jumping	1	Adventure	6.69
4118	Jungle Taitei	52	Adventure Kids Shounen	6.69
4119	Karakuri no Kimi	1	Action Comedy Fantasy Historical Horror Martial Arts Samurai Shounen Supernatural	6.69
4120	Kyoushirou to Towa no Sora	12	Drama Magic Romance Shounen	6.69
4121	Miracle☆Train: Oedo-sen e Youkoso	13	Fantasy Shoujo	6.69
4122	Mori no Densetsu	1	Adventure Drama Fantasy Music	6.69
4123	Morita-san wa Mukuchi	1	Comedy School Slice of Life	6.69
4124	Mouse and His Child	1	Adventure	6.69
4125	Mushrambo (2008)	2	Action Adventure Fantasy Sci-Fi	6.69
4126	Parasite Dolls	3	Action Mecha Police Sci-Fi	6.69
4127	Psychoarmor Govarian	26	Action Mecha Sci-Fi Super Power	6.69
4128	RDG: Red Data Girl	12	Fantasy Magic	6.69
4129	RESTOL: Special Rescue Team	26	Action Adventure Mecha Police	6.69
4130	Rewrite	13	Action Comedy Romance School Supernatural	6.69
4131	Soukou Kihei Votoms: Case; Irvine	1	Action Drama Mecha Military Sci-Fi	6.69
4132	Star Ocean EX	26	Adventure Fantasy Sci-Fi Shounen	6.69
4133	Street Fighter Zero The Animation	1	Action Drama Martial Arts Shounen Super Power	6.69
4134	Teekyuu 3 Specials	2	Comedy School Shounen Sports	6.69
4135	Transformers Headmasters	35	Adventure Mecha Sci-Fi Shounen	6.69
4136	Trouble Chocolate	20	Comedy Romance Sci-Fi Shounen	6.69
4137	Tsuki no Waltz	1	Music	6.69
4138	Yoroshiku Mechadock	30	Action Cars Comedy Police Sports	6.69
4139	Yume no Hoshi no Button Nose	26	Adventure Kids	6.69
4140	Yumedamaya Kidan	1	Drama Fantasy	6.69
9211	Perrine Monogatari Movie	1	Drama Historical Shoujo Slice of Life	6.69
9442	Shiawase no Katachi	4	Comedy	6.69
9686	Susie-chan to Marvy	104	Comedy Kids	6.69
10357	Zetsuai 1989	1	Drama Music Romance Sports Yaoi	6.69
4086	Bomberman B-Daman Bakugaiden V	50	Sci-Fi Shounen	6.7
4087	Di Gi Charat Summer Special 2000	4	Comedy	6.7
4088	Eat-Man	12	Action Adventure Sci-Fi Shounen Super Power	6.7
4089	Fushigi Mahou Fun Fun Pharmacy	48	Kids Magic	6.7
4090	Gall Force 1: Eternal Story	1	Action Adventure Mecha Military Sci-Fi Space	6.7
4091	Hana no Mahoutsukai Mary Bell	50	Adventure Fantasy Magic Shoujo	6.7
4092	Narue no Sekai	12	Comedy Romance Sci-Fi	6.7
4093	NG Knight Ramune &amp; 40 DX: Wakuwaku Jikuu - Honoo no Daisousasen	3	Adventure Comedy Fantasy Shounen	6.7
4094	Ojisan to Marshmallow	12	Comedy Slice of Life	6.7
4095	Onkyo Seimeitai Noiseman	1	Action Fantasy Sci-Fi	6.7
4096	Otogi Juushi Akazukin OVA	1	Adventure Comedy Fantasy Magic	6.7
4097	Pokemon: Meloetta no Kirakira Recital	1	Adventure Comedy Fantasy Kids Music	6.7
4098	Pokemon: Pikachu no Fuyuyasumi	2	Adventure Comedy Fantasy Kids	6.7
4099	Precure All Stars Movie: Haru no Carnival♪ - Ima Koko kara	1	Fantasy Magic Music Shoujo	6.7
4100	Puchimas!: Petit iDOLM@STER Episode 0	1	Comedy Music Slice of Life	6.7
4101	Ring ni Kakero 1	12	Action Shounen Sports	6.7
4102	Romeo no Aoi Sora Specials	2	Adventure Drama Historical Slice of Life	6.7
4103	Sansha Sanyou Specials	3	Comedy School Slice of Life	6.7
4104	Trava: Fist Planet	4	Action Comedy Mecha Sci-Fi Space	6.7
4105	UFO Robo Grendizer: Akai Yuuhi no Taiketsu	1	Mecha Sci-Fi	6.7
4106	Viva Namida	1	Music	6.7
7756	Dr. Slump: Robot Taiketsu! Shukuteki Dr. Mashirito Toujou / Keen de Yuushou!? Penguin Grand Prix	1	Comedy Mecha Sci-Fi Shounen	6.7
7862	Gan to Gon	260	Comedy Kids	6.7
8130	Himitsukessha Taka no Tsume EX	38	Comedy Parody Super Power	6.7
8605	Kuruneko: Nyaalock Holmes no Bouken	4	Comedy Slice of Life	6.7
9202	Penguin no Mondai	100	Comedy Kids	6.7
10356	Finder Series	2	Action Drama Yaoi	6.7
4009	Battle Spirits: Heroes	50	Action Shounen	6.71
4052	.hack//Intermezzo	1	Adventure Fantasy Game Magic Mystery Sci-Fi	6.71
4053	Akai Ito	1	Drama Romance Slice of Life	6.71
4054	Alien 9	4	Horror School Sci-Fi	6.71
4055	Ashita e Free Kick	52	Sports	6.71
4056	Bakuten Shoot Beyblade the Movie: Gekitou!! Takao vs. Daichi	1	Action Adventure Comedy Sci-Fi Shounen Sports	6.71
4057	Chouyaku Hyakuninisshu: Uta Koi. - Sake to Kikoushi ~ Murasaki Kishikibu to Kintou	1	Historical Josei	6.71
4058	Galactic Patrol Lensman	25	Action Adventure Sci-Fi	6.71
4059	Gekiganger 3: The Movie	1	Action Comedy Mecha Parody Sci-Fi Shounen	6.71
4060	Ginga Shippuu Sasuraiger	43	Action Adventure Mecha	6.71
4061	Hakuouki: Otogisoushi	13	Fantasy Historical Josei Samurai	6.71
4062	Hikari no Megami	1	Action Fantasy	6.71
4063	Jagainu-kun	26	Adventure Fantasy Kids Shoujo Slice of Life	6.71
4064	Kero Kero Chime	30	Adventure Comedy Fantasy	6.71
4065	Kurokami: Intermission	1	Action Martial Arts Super Power	6.71
4066	Kyousou Giga (TV) Recaps	2	Action Fantasy Supernatural	6.71
4067	Massugu ni Ikou.	4	Comedy Josei Romance Slice of Life	6.71
4068	Master Mosquiton 99	26	Action Adventure Comedy Supernatural Vampire	6.71
4069	Natsu-iro no Sunadokei	2	Drama Romance Sci-Fi	6.71
4071	Pokemon: Pika Pika Hoshizora Camp	1	Adventure Comedy Fantasy Kids	6.71
4072	Puchimas!: Petit iDOLM@STER - Takatsuki Gold Densetsu Special!! Haruka-san Matsuri	6	Comedy Music Slice of Life	6.71
4073	Qualidea Code	12	Action Magic Supernatural	6.71
4074	Sengoku Otome: Momoiro Paradox	13	Action Comedy Historical Samurai Sci-Fi Super Power	6.71
4075	Seton Doubutsuki: Risu no Banner	26	Drama Kids	6.71
4076	Shakugan no Shana: Friagne to Marianne no Naze Nani Shana! Nandemo Shitsumonbako! 2	8	Comedy Fantasy Supernatural	6.71
4077	Shugo Chara! Party!	25	Comedy Magic School Shoujo	6.71
4078	Taiho Shichau zo in America	1	Action Comedy Police Shounen	6.71
4079	Teekyuu 2 Specials	2	Comedy School Shounen Sports	6.71
4080	Tokkou	13	Action Comedy Horror Mystery Police Supernatural	6.71
4081	Touka Gettan	26	Drama Romance Supernatural	6.71
4082	Umi Monogatari: Anata ga Ite Kureta Koto - Shinjiau Kokoro	1	Comedy Fantasy Supernatural	6.71
4083	Windaria	1	Action Drama Fantasy Romance Sci-Fi	6.71
4084	Yokuwakaru Gendaimahou 00	1	Comedy Magic	6.71
4085	Yuusha Exkaiser	48	Action Mecha Sci-Fi Shounen	6.71
7402	Animal 1	27	Sports	6.71
7532	Bouken-tachi Gamba to Nanbiki no Nakama	1	Adventure Kids	6.71
7885	gdgd Fairies Movie: tte Iu Eiga wa Dou kana...?	1	Comedy Fantasy	6.71
7986	Haguregumo	1	Comedy Historical Seinen	6.71
8604	Kuruneko: Kurunekobin	4	Comedy Slice of Life	6.71
8631	Lao Fu Zi Shui Hu Chuan	1	Comedy Historical Seinen	6.71
8654	Little Twins: Bokura no Natsu ga Tondeiku	1	Adventure Kids	6.71
8676	Madou King Granzort: Nonstop Rabi	1	Action Comedy Fantasy Magic Mecha Sci-Fi Shounen	6.71
8978	Nine	1	Action School Shounen Sports	6.71
9409	Sekai Meisaku Douwa Series	4	Adventure Fantasy Historical Kids Magic Supernatural	6.71
9639	Souya Monogatari	21	Adventure Drama Historical	6.71
4006	Akihabara Dennou-gumi	26	Adventure Mecha Sci-Fi Shoujo	6.72
4007	Alps no Shoujo Heidi: Heidi to Clara-hen	1	Drama Historical Slice of Life	6.72
4008	Bannou Bunka Neko-Musume Specials	2	Action Adventure Comedy Mecha Sci-Fi Seinen	6.72
4010	Blue Seed 1.5	2	Comedy Romance Sci-Fi	6.72
4011	Bomberman B-Daman Bakugaiden	48	Comedy Sci-Fi Shounen	6.72
4012	Choujuu Kishin Dancougar: God Bless Dancougar	1	Action Mecha Sci-Fi	6.72
4013	Chrno Crusade: Az demo Wakaru Chrno Crusade Kouza	11	Adventure Comedy Demons Historical Supernatural	6.72
4014	Cutey Honey F	39	Action Adventure Comedy Magic Romance Sci-Fi Shoujo	6.72
4015	Digimon Savers the Movie: Kyuukyoku Power! Burst Mode Hatsudou!!	1	Action Adventure Comedy Fantasy Shounen	6.72
4016	Dr. Slump Movie 01: Arale-chan Hello! Fushigi Shima	1	Comedy Sci-Fi Shounen	6.72
4017	Dr. Slump Movie 04: Arale-chan Hoyoyo! Nanaba Shiro no Hihou	1	Comedy Sci-Fi Shounen	6.72
4018	Dragon Ball GT	64	Action Adventure Comedy Fantasy Magic Sci-Fi Shounen Super Power	6.72
4019	Dragon Quest: Dai no Daibouken Buchiyabure!! Shinsei 6 Daishougun	1	Action Adventure Fantasy Magic Shounen	6.72
4020	Duel Masters Cross	100	Action Adventure Comedy Shounen	6.72
4021	Entaku no Kishi Monogatari: Moero Arthur	30	Adventure Drama Historical Romance	6.72
4022	Genji Monogatari	1	Drama Historical Romance	6.72
4023	Ghost in the Shell: Arise - Another Mission	1	Action Mecha Police Sci-Fi	6.72
4024	Golgo 13: Queen Bee	1	Action Adventure Drama Military Seinen	6.72
4025	Harukanaru Toki no Naka de: Hachiyou Shou OVA	2	Comedy Demons Fantasy Historical Shoujo Supernatural	6.72
4026	Hibike! Euphonium: Suisougaku-bu no Nichijou	7	Comedy Music School	6.72
4027	Hidamari Sketch: Chou Hidamatsuri Special	1	Comedy	6.72
4028	Inugami-san to Nekoyama-san	12	Comedy School Shoujo Ai	6.72
4029	Juushin Liger	43	Action Mecha Sci-Fi	6.72
4030	K: Missing Kings - Manner Movie	1	Comedy	6.72
4031	Kamui no Ken	1	Adventure Drama Fantasy Historical Shounen	6.72
4032	M3: Sono Kuroki Hagane	24	Action Drama Mecha Mystery Psychological Sci-Fi	6.72
4033	Macross F: Choujikuu Gekijou	1	Comedy Slice of Life	6.72
4034	Metal Fight Beyblade	51	Adventure Comedy Sports	6.72
4035	Mobile Police Patlabor: MiniPato	3	Parody	6.72
4036	Naisho no Tsubomi	3	Kids Romance School Shoujo Slice of Life Supernatural	6.72
4037	Nils no Fushigi na Tabi (Movie)	1	Adventure Fantasy Kids	6.72
4039	One Pound Gospel	1	Comedy Romance Seinen Sports	6.72
4040	Pokemon: Odoru Pokemon Himitsu Kichi	1	Comedy Fantasy Kids	6.72
4041	Sakura Taisen: Ouka Kenran	4	Adventure Mecha Sci-Fi Shounen	6.72
4042	Seton Doubutsuki: Kuma no Ko Jacky	26	Adventure Drama Historical	6.72
4043	Telepathy Shoujo Ran	26	Fantasy School	6.72
4044	Tentai Senshi Sunred: Short Corner	4	Comedy Parody Seinen Super Power	6.72
4045	Tezuka Osamu no Kyuuyaku Seisho Monogatari: In the Beginning	26	Historical	6.72
4046	Tottoko Hamtarou OVA 1: Hamtaro no Otanjoubi - Mama wo Tasunete Sanzen Techi Techi	1	Adventure Comedy Kids	6.72
4047	Transformers: Car Robots	39	Adventure Comedy Mecha Sci-Fi Shounen	6.72
4048	Turn A Gundam I Movie: Earth Light	1	Action Drama Mecha Military Sci-Fi Space	6.72
4049	Uchuu Taitei God Sigma	50	Action Mecha Space	6.72
4050	Video Senshi Lezarion	45	Action Mecha Sci-Fi	6.72
4051	Weiß Kreuz Glühen	13	Action Drama Shounen	6.72
8518	Kobo-chan	63	Comedy Kids Slice of Life	6.72
8942	Neko Hiki no Ororane	1	Fantasy	6.72
3955	Love Live! x Watering KissMint Collaboration CM	1	Music	6.73
3968	.hack//Quantum: Sore ike! Bokura no Chimuchimu-chan!!	3	Comedy Game	6.73
3969	Alps Monogatari: Watashi no Annette	48	Drama Historical Slice of Life	6.73
3972	Baby Baachan	53	Comedy Drama	6.73
3973	Blood-C	12	Action Horror School Supernatural Vampire	6.73
3974	Buzzer Beater	13	Shounen Sports	6.73
3975	Dagashi Kashi	12	Comedy Shounen Slice of Life	6.73
3976	DNA² OVA	3	Comedy Drama Sci-Fi	6.73
3977	Dr. Slump Movie 02: &quot;Hoyoyo!&quot; Uchuu Daibouken	1	Comedy Sci-Fi Shounen	6.73
3978	Element Hunters	39	Sci-Fi Shounen	6.73
3979	Fusha no Sha	1	Adventure Historical Martial Arts Samurai Supernatural	6.73
3980	Ghost in the Shell: Stand Alone Complex - Tachikoma no Hibi Fan Disc	3	Comedy Mecha Sci-Fi	6.73
3981	Ghost in the Shell: The New Movie Virtual Reality Diver	1	Police Sci-Fi Seinen	6.73
3982	Gokujou!! Mecha Mote Iinchou	51	Comedy Romance School Shoujo	6.73
3983	Helen Keller Monogatari: Ai to Hikari no Tenshi	1	Drama	6.73
3984	Hoshi no Kirby	100	Action Adventure Comedy Fantasy Parody	6.73
3985	Inochi no Chikyuu: Dioxin no Natsu	1	Drama	6.73
3986	Juubee-chan: Lovely Gantai no Himitsu	13	Action Adventure Comedy Drama Shounen	6.73
3987	Kage kara Mamoru!	12	Comedy Romance Shounen	6.73
3988	KO Seiki Beast Sanjuushi	7	Adventure Comedy Fantasy Mecha Shounen Supernatural	6.73
3989	Meitantei Holmes: Aoi Ruby no Maki / Kaitei no Zaihou no Maki	1	Adventure Comedy Mystery	6.73
3990	Midori no Makibao	61	Comedy Sports	6.73
3991	Nekogami Yaoyorozu	12	Comedy Seinen Slice of Life Supernatural	6.73
3992	Ohayo! Spank	63	Comedy Slice of Life	6.73
3993	Osomatsu-san Short Film Series	8	Comedy Parody	6.73
3994	Ougon Bat	52	Action Sci-Fi Super Power	6.73
3995	Project A-Ko 2: Daitokuji Zaibatsu no Inbou	1	Action Comedy Mecha Sci-Fi Super Power	6.73
3996	Sasuga no Sarutobi	69	Action Adventure Comedy Martial Arts Romance Sports	6.73
3997	Shin Ace wo Nerae!	25	Drama Romance School Shoujo Sports	6.73
3998	Shounan Bakusouzoku	12	Action Comedy Shounen	6.73
3999	The Hakkenden: Shin Shou	7	Action Adventure Demons Historical Martial Arts Samurai Shounen	6.73
4000	Time Bokan	61	Adventure Comedy Mecha	6.73
4001	Tondemo Senshi Muteking	56	Action Comedy Kids Magic Mecha Sci-Fi Shounen Super Power	6.73
4002	Tono to Issho: Gantai no Yabou	12	Comedy Historical Parody Samurai Seinen	6.73
4003	Toushi Gordian	73	Action Mecha Sci-Fi	6.73
4004	Tsuyokiss	12	Comedy Romance School Slice of Life	6.73
4005	Usavich Special	1	Adventure Comedy	6.73
4070	Nijiiro Days OVA	1	Comedy Romance School Shoujo Slice of Life	6.73
8253	Itsuka no Main: Kaminari Shounen - Tenta Sanjou!	1	Action Drama Seinen	6.73
8323	Kagaku Bouken-tai Tansar 5	34	Adventure Mystery Sci-Fi Supernatural	6.73
8344	Kaiketsu Zorori: Mamoru ze! Kyouryuu no Tamago	1	Adventure Comedy Kids	6.73
8350	Kaitou Lupin: 813 no Nazo	1	Mystery	6.73
8965	Nihon Meisaku Douwa Series: Akai Tori no Kokoro	26	Adventure Fantasy Kids	6.73
9159	Pa-Pa-Pa the ★ Movie: Perman	1	Adventure Comedy	6.73
9237	Planetarium Chibi Maruko-chan Hoshi ni Negai wo	1	Comedy Kids School Slice of Life	6.73
9268	Pozzie	17	Kids	6.73
9622	Sore Ike! Anpanman: Tsumiki Shiro no Himitsu	1	Comedy Fantasy Kids	6.73
9842	Trapp Ikka Monogatari Specials	2	Drama Historical Music Romance	6.73
9859	Tsuyoshi Shikkari Shinasai: Tsuyoshi no Time Machine de Shikkari Shinasai	1	Comedy Drama Romance School Shounen Slice of Life	6.73
9987	Wonder 3	52	Action Adventure Comedy Sci-Fi	6.73
3934	Takarajima Memorial: Yuunagi to Yobareta Otoko	1	Adventure Drama Historical Mystery Supernatural	6.74
3939	.hack//Liminality	4	Game Mystery Sci-Fi	6.74
3940	3 Choume no Tama: Uchi no Tama Shirimasenka?	35	Adventure	6.74
3941	Amazing Nuts!	4	Adventure Music Police Romance Sci-Fi	6.74
3942	Bakusou Kyoudai Let&#039;s &amp; Go MAX	51	Cars Shounen Sports	6.74
3943	Blue Dragon: Tenkai no Shichi Ryuu	51	Adventure Comedy Fantasy Supernatural	6.74
3944	Coyote Ragtime Show	12	Action Adventure Comedy Mecha Sci-Fi Shounen	6.74
3945	Dokonjou Gaeru	103	Comedy Slice of Life	6.74
3946	Doraemon: It&#039;s Winter!	1	Adventure Comedy Fantasy Kids Shounen	6.74
3947	Doraemon: Treasure of the Shinugumi Mountain	1	Adventure Comedy Fantasy Kids Shounen	6.74
3948	Fluximation	14	Music	6.74
3949	Gasaraki	25	Drama Mecha Military Psychological Supernatural	6.74
3950	Honoo no Mirage	13	Action Drama Historical Romance School Shounen Ai Supernatural	6.74
3951	Ketsuekigata-kun! 2	12	Comedy	6.74
3952	Koro no Dai Sanpo	1	Adventure	6.74
3953	Kuro ga Ita Natsu	1	Drama Historical	6.74
3954	Love Get Chu	25	Comedy Romance	6.74
3956	Madou King Granzort: Saigo no Magical Taisen	2	Action Comedy Fantasy Magic Mecha Sci-Fi Shounen	6.74
3957	Pokonyan!	170	Comedy Fantasy Kids Magic	6.74
3958	Ryuugajou Nanana no Maizoukin (TV) Specials	6	Comedy	6.74
3959	Sacred Seven	12	Action School Sci-Fi Super Power	6.74
3960	Sasami-san@Ganbaranai	12	Comedy Romance Supernatural	6.74
3961	Sensei no Ojikan: Doki Doki School Hours OVA	7	Comedy School	6.74
3962	Shirayuki Hime no Densetsu	52	Adventure Fantasy Romance	6.74
3963	Sky Girls OVA	1	Mecha Military Sci-Fi	6.74
3964	Spirit of Wonder: China-san no Yuuutsu	1	Romance Sci-Fi Seinen	6.74
3965	Superflat Monogram	1	Adventure Fantasy	6.74
3966	Tokyo Underground	26	Action Adventure Romance Sci-Fi Shounen Super Power	6.74
3967	Wish	1	Music	6.74
3970	Appleseed XIII Remix Movie 1: Yuigon	1	Action Mecha Military Police Sci-Fi	6.74
3971	Ashita Genki ni Nare!: Hanbun no Satsumaimo	1	Drama	6.74
4038	Nobunaga no Shinobi Episode 0	1	Comedy Historical	6.74
8732	Manga Naruhodo Monogatari	102	Adventure Kids	6.74
3818	Princess Princess Specials	12	Comedy School Shoujo	6.75
3900	.hack//Tasogare no Udewa Densetsu	12	Adventure Comedy Fantasy Game Sci-Fi Shounen	6.75
3901	Aishite Knight	42	Comedy Romance Shoujo	6.75
3902	Akage no Anne: Green Gables e no Michi	1	Adventure Historical Shoujo Slice of Life	6.75
3903	Canaan: Minorikawa Report 201X Shanghai	1	Action Seinen	6.75
3904	Choujuushin Gravion Zwei	12	Adventure Comedy Mecha Sci-Fi Shounen	6.75
3905	Doraemon: It&#039;s New Year!	1	Comedy Kids Sci-Fi Shounen	6.75
3906	Dragon Ball GT: Goku Gaiden! Yuuki no Akashi wa Suushinchuu	1	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	6.75
3907	E&#039;s Otherwise	26	Adventure Comedy Drama Military Sci-Fi Shounen Supernatural	6.75
3908	Fatal Fury: The Motion Picture	1	Action Adventure Drama Martial Arts Romance Shounen	6.75
3909	Gakumon!: Ookami Shoujo wa Kujikenai	3	Comedy School Shounen	6.75
3910	Ganso Tensai Bakabon	103	Comedy Slice of Life	6.75
3911	Ginga Tetsudou 999: Diamond Ring no Kanata e	1	Adventure Drama Sci-Fi	6.75
3912	Girls und Panzer Heartful Tank Disc: Fushou - Akiyama Yukari no Sensha Kouza	2	Military School	6.75
3913	Gun Frontier	13	Action Adventure Drama Historical Sci-Fi Seinen	6.75
3914	Hakugei Densetsu	26	Adventure Sci-Fi	6.75
3915	Haou Taikei Ryuu Knight	52	Action Adventure Fantasy Mecha	6.75
3916	Hikyou Tanken Fam &amp; Ihrlie	4	Action Adventure Comedy Fantasy Magic	6.75
3917	Jetter Mars	27	Action Drama Mecha Sci-Fi	6.75
3918	Koihime†Musou OVA	1	Comedy Fantasy School	6.75
3919	Line Offline: Salaryman	114	Comedy	6.75
3920	Mach GoGoGo	52	Adventure Cars Shounen Sports	6.75
3921	Mahou no Princess Minky Momo: Yume no Naka no Rondo	1	Magic Shoujo	6.75
3922	Majokko Megu-chan	72	Magic Shoujo	6.75
3923	Mama wa Poyopoyo Saurus ga Osuki	52	Comedy Kids Slice of Life	6.75
3924	Nanaka 6/17	12	Comedy Drama Romance Shounen Slice of Life	6.75
3925	Persona 4 the Golden Animation	12	Adventure Mystery School Sci-Fi Super Power Supernatural	6.75
3926	Pokemon XY: Hakai no Mayu to Diancie	1	Adventure Fantasy Kids	6.75
3927	Pokemon: Ash&#039;s Journey	1	Fantasy Kids	6.75
3928	Princess Tutu Recaps	3	Comedy Magic Romance Shoujo	6.75
3929	Ranpo Kitan: Game of Laplace	11	Mystery	6.75
3930	Shadow Skill (1996)	3	Adventure Drama Fantasy Shounen	6.75
3931	Shigofumi Picture Drama	7	Comedy	6.75
3932	Space Cobra Pilot	1	Action Adventure Sci-Fi Space	6.75
3933	Stratos 4	13	Comedy Military Sci-Fi Shounen	6.75
3935	Transformers Galaxy Force	52	Adventure Mecha Sci-Fi Shounen	6.75
3936	Utakata Hanabi	1	Music	6.75
3937	Wild Arms: Twilight Venom	22	Action Adventure Fantasy Magic Sci-Fi Vampire	6.75
3938	Yama no Susume: Kabette Kowakunai no?	1	Comedy Slice of Life	6.75
7443	Asu wo Tsukutta Otoko: Tanabe Sakurou to Biwako Sosui	1	Historical	6.75
7623	Chingou Muchabee	26	Adventure Comedy	6.75
7731	Donkikko	21	Comedy Shounen	6.75
7740	Dotanba no Manners	283	Comedy Slice of Life	6.75
7905	Genki Genki Non-tan: Deka Deka Arigatou	1	Kids Music	6.75
8014	Hanasaka Tenshi Tenten-kun	43	Comedy Fantasy	6.75
8351	Kaitou Pride	105	Adventure Comedy Kids	6.75
8359	Kamen no Marionette-tachi	1	Dementia	6.75
8570	Kotori Samba	240	Comedy Music	6.75
8864	Monster Strike The Movie: Hajimari no Basho e	1	Action Fantasy Game	6.75
9039	Nyani ga Nyandaa Nyandaa Kamen	83	Comedy	6.75
9160	Pa-Pa-Pa the ★ Movie: Perman - Tako de Pon! Ashi wa Pon!	1	Adventure Comedy Kids Super Power	6.75
9335	Roppou Yabure-kun	110	Slice of Life	6.75
9436	Shenmi Shijie Lixian Ji 2	1	Adventure Comedy Fantasy	6.75
9600	Sore Ike! Anpanman: Mija to Mahou no Lamp	1	Comedy Fantasy Kids	6.75
9670	Suisenzuki no Yokka	1	Fantasy Kids	6.75
9712	Takoyaki Mant-Man	77	Comedy Sci-Fi	6.75
9718	Tamagotchi! Tamatomo Daishuu GO	26	Comedy Fantasy Kids	6.75
9726	Tanpen Animation Junpei Fujita	3	Music	6.75
9757	Tetsu no Ko Kanahiru	1	Fantasy	6.75
9886	Ukare Violin	1	Fantasy Kids	6.75
9910	Uniminipet	26	Adventure Fantasy	6.75
3864	009 Re:Cyborg	1	Action Adventure Mecha Sci-Fi	6.76
3865	Anime de Wakaru Shinryounaika	20	Comedy Seinen	6.76
3866	Baka to Test to Shoukanjuu: Mondai - Christmas ni Tsuite Kotae Nasai	1	Comedy Romance	6.76
3867	Bari Bari Densetsu	2	Action Drama Shounen Sports	6.76
3868	Chikyuu Bouei Kazoku	13	Action Comedy Sci-Fi Shounen	6.76
3869	Digimon Savers: Agumon! Gaomon! Lalamon! Bakuretsu! Jougai Last Battle!	1	Action Adventure Comedy Fantasy Sci-Fi Supernatural	6.76
3870	Dragon Ball Z: Atsumare! Gokuu World	1	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	6.76
3871	Fate/Zero: Onegai! Einzbern Soudanshitsu	6	Comedy	6.76
3872	Freedom Previsited	1	Action Adventure Sci-Fi	6.76
3873	Hikari no Densetsu	19	Music Romance Shoujo Sports	6.76
3874	Jewelpet	52	Fantasy Magic Shoujo	6.76
3875	Kurogane Communication	24	Action Adventure Drama Sci-Fi	6.76
3876	Kyoushirou to Towa no Sora Specials	6	Drama Magic Romance Shounen	6.76
3877	Mahou no Star Magical Emi	38	Comedy Magic Shoujo Slice of Life	6.76
3878	Medarot Damashii	39	Action Adventure Sci-Fi	6.76
3879	Mobile Suit Gundam AGE: Memory of Eden	2	Action Drama Mecha Military Sci-Fi	6.76
3880	Mouryou no Hako Special	1	Mystery Seinen Supernatural Thriller	6.76
3881	Musaigen no Phantom World Special	1	Action Comedy Fantasy Supernatural	6.76
3882	Nekogami Yaoyorozu: Ohanami Ghostbusters	1	Comedy Seinen Supernatural	6.76
3883	Nezha Nao Hai	1	Kids	6.76
3884	Ore Twintail ni Narimasu.	12	Action Comedy Fantasy Romance School Shounen	6.76
3885	Otome wa Boku ni Koishiteru Special	1	Comedy Romance School	6.76
3886	Persona: Trinity Soul	26	Action Sci-Fi Super Power	6.76
3887	SKET Dance: SD Character Flash Anime	16	Comedy School Shounen	6.76
3888	Souryuuden	12	Drama Mystery Super Power Supernatural	6.76
3889	Spider Riders: Oracle no Yuusha-tachi	26	Action Adventure Mecha	6.76
3890	Tales of Gekijou	5	Comedy	6.76
3891	Teekyuu 8	12	Comedy Shounen Sports	6.76
3892	The House	1	Drama Fantasy Kids	6.76
3893	Time Bokan Series: Yatterman	108	Adventure Comedy Mecha	6.76
3894	Tono to Issho	1	Comedy Historical Parody Samurai Seinen	6.76
3895	Umi Monogatari: Anata ga Ite Kureta Koto	12	Drama Fantasy Magic Romance Supernatural	6.76
3896	Ushinawareta Mirai wo Motomete: Ushinawareta Natsuyasumi wo Motomete	1	Romance	6.76
3897	Warau Salesman	103	Comedy Drama Seinen	6.76
3898	Winter Garden	2	Drama Romance Shoujo Slice of Life	6.76
3899	Xiao Qian	1	Action Drama Fantasy Romance	6.76
8035	Hashiri Hajimeta bakari no Kimi ni	1	Music	6.76
8168	Hoshi no Ko Poron	260	Sci-Fi	6.76
8327	Kage no Kodomo	1	Dementia	6.76
10109	Zeno: Kagirinaki Ai ni	1	Drama Historical	6.76
10355	Saigo no Door wo Shimero!	1	Comedy Drama Romance Yaoi	6.76
3826	Ai Tenshi Densetsu Wedding Peach	51	Adventure Comedy Magic Romance Shoujo	6.77
3827	Aoki Hagane no Arpeggio: Ars Nova - Kirikumas	13	Comedy Parody	6.77
3828	B-Project: Kodou＊Ambitious	12	Music Shoujo	6.77
3829	Bakuten Shoot Beyblade 2002	51	Action Adventure Comedy Sci-Fi Shounen Sports	6.77
3830	Betterman	26	Action Adventure Comedy Drama Horror Mecha Mystery Psychological Sci-Fi Shounen	6.77
3831	Chance Triangle Session	13	Drama Music Slice of Life	6.77
3832	Choujikuu Kidan Southern Cross	23	Action Drama Mecha Sci-Fi	6.77
3833	Doraemon Movie: Boku Momotarou no Nanna no Sa	1	Adventure Fantasy Kids Sci-Fi Shounen	6.77
3834	Dragon Quest: Dai no Daibouken Tachiagare!! Aban no Shito	1	Action Adventure Fantasy Magic Shounen	6.77
3835	Egao	1	Music Slice of Life	6.77
3836	Eureka Seven: New Order	1	Adventure Drama Mecha Romance Sci-Fi	6.77
3837	Gegege no Kitarou (1985)	108	Comedy Supernatural	6.77
3838	Grendizer: Getter Robo G - Great Mazinger Kessen! Daikaijuu	1	Action Mecha Sci-Fi Shounen	6.77
3839	Honoo no Tenkousei	2	Action Comedy Martial Arts Parody School Shounen Sports	6.77
3840	IGPX: Immortal Grand Prix	5	Mecha Sci-Fi Shounen Sports	6.77
3841	Jungle Taitei: Susume Leo!	26	Adventure Shounen	6.77
3842	Katte ni Kaizou Specials	3	Comedy Parody School Sci-Fi Shounen	6.77
3843	Kita e.: Diamond Dust Drops	12	Drama Romance Slice of Life	6.77
3844	Kuiba: Zhi Shiwanhuoji	1	Action Adventure Fantasy Kids	6.77
3845	Kuusou Kagaku Sekai Gulliver Boy	50	Action Adventure Fantasy Magic Mecha	6.77
3846	Lupin III: Green vs. Red	1	Action Comedy Mystery Shounen	6.77
3847	Mahou no Yousei Persia	48	Comedy Magic	6.77
3848	Maoyuu Maou Yuusha: Kono Monogatari wa Daniku dake Dewanai no ja!	1	Adventure Demons Fantasy Romance	6.77
3849	Metal Fight Beyblade vs. Taiyou: Shakunetsu no Shinryakusha Sol Blaze	1	Adventure Comedy Sports	6.77
3850	Nagato Yuki-chan no Shoushitsu	16	Comedy Romance School Seinen Slice of Life	6.77
3851	Nanaka 6/17 Special	1	Comedy Drama Romance Shounen Slice of Life	6.77
3852	Nurse Witch Komugi-chan Magikarte	5	Comedy Magic Parody	6.77
3853	Ore wa Teppei	28	Action Shounen Sports	6.77
3854	Shamanic Princess	6	Action Fantasy Magic Romance	6.77
3855	Sora no Method	13	Drama Fantasy School Slice of Life	6.77
3856	Sword Art Online II: Sword Art Offline II	9	Comedy	6.77
3857	Teekyuu	12	Comedy School Shounen Sports	6.77
3858	Tetsujin 28-gou: Hakuchuu no Zangetsu	1	Action Adventure Mecha Sci-Fi	6.77
3859	The Hakkenden	6	Action Adventure Demons Historical Martial Arts Samurai Shounen	6.77
3860	Tide-Line Blue	12	Action Adventure Drama Military Shounen	6.77
3861	Universe	1	Fantasy Music	6.77
3862	Wooser no Sono Higurashi: Kakusei-hen	12	Comedy Fantasy Slice of Life	6.77
3863	Wooser no Sono Higurashi: Mugen-hen	13	Comedy Fantasy Slice of Life	6.77
8054	Heisei Tensai Bakabon	46	Comedy Slice of Life	6.77
8295	Jungle Taitei Leo: Hon-o-ji	1	Adventure Drama	6.77
8422	Kayoe! Chuugaku	Unknown	Comedy School	6.77
9274	Pro Golfer Saru (1985)	143	Kids Sports	6.77
9469	Shin Kyojin no Hoshi	52	Sports	6.77
9771	The Kabocha Wine: Nita no Aijou Monogatari	1	Comedy Romance School Slice of Life	6.77
3787	Ai no Gakko Cuore Monogatari	26	Drama Historical Slice of Life	6.78
3788	Akame ga Kill! Theater	24	Comedy	6.78
3789	Bayonetta: Bloody Fate	1	Action Demons Fantasy Super Power	6.78
3790	Chirorin Mura Monogatari	170	Kids Slice of Life	6.78
3791	Chuunibyou demo Koi ga Shitai!: Depth of Field - Ai to Nikushimi Gekijou	7	Action Mecha	6.78
3792	Di Gi Charat: Hoshi no Tabi	1	Comedy	6.78
3793	Dog Days Recap	1	Action Adventure Fantasy Magic	6.78
3794	Five Star Stories	1	Action Drama Fantasy Mecha Sci-Fi	6.78
3795	Fushigi no Umi no Nadia Specials	10	Adventure Sci-Fi	6.78
3796	Gambo	1	Demons Historical	6.78
3797	Ginga Tetsudou 999: Glass no Clair	1	Drama Sci-Fi Space	6.78
3798	GS Mikami: Gokuraku Daisakusen!!	1	Comedy Fantasy	6.78
3799	Hamelin no Violin Hiki	25	Adventure Drama Fantasy	6.78
3800	Idaten Jump	52	Game School Sports	6.78
3801	Jungle Taitei (1989)	52	Adventure Drama	6.78
3802	Juubee Ninpuuchou: Ryuuhougyoku-hen	13	Adventure Horror Magic Martial Arts Shounen Supernatural	6.78
3803	Kamen Rider Den-O: Imagin Anime	10	Action Adventure Comedy Kids Super Power	6.78
3805	Kindaichi Shounen no Jikenbo: Shinigami Byouin Satsujin Jiken	1	Mystery Shounen	6.78
3806	Kouchuu Ouja Mushiking: Mori no Tami no Densetsu	52	Fantasy	6.78
3807	Medaka no Gakkou	5	Comedy	6.78
3808	Megane na Kanojo	4	Comedy Romance School Shounen	6.78
3809	Mezzo DSA	13	Action Adventure Comedy Mystery Sci-Fi	6.78
3810	Occultic;Nine	12	Mystery Sci-Fi	6.78
3811	Ore no Imouto ga Konnani Kawaii Wake ga Nai.: Ore no Imouto ga Konnani Eroge na Wake Nai	1	Comedy Romance	6.78
3812	Passion	1	Music	6.78
3814	Pokemon Best Wishes!	84	Action Adventure Comedy Fantasy Kids	6.78
3815	Pokemon Best Wishes! Season 2	24	Action Adventure Comedy Fantasy Kids	6.78
3816	Pokemon Fushigi no Dungeon: Toki no Tankentai Yami no Tankentai	1	Adventure Fantasy	6.78
3817	Pokemon: Bokutachi Pichu Brothers - Party wa Oosawagi! no Maki	1	Adventure Comedy Fantasy Kids	6.78
3819	Pyuu to Fuku! Jaguar	3	Comedy Music Shounen	6.78
3820	Rokujouma no Shinryakusha!?	1	Comedy Romance School Supernatural	6.78
3821	Tamala 2010: A Punk Cat in Space	1	Comedy Dementia Psychological Sci-Fi	6.78
3822	Toki wa Meguru: Tokyo Station	1	Slice of Life	6.78
3823	True Tears Epilogue	1	Drama Music Romance	6.78
3824	Wanwan Sanjuushi	26	Adventure Historical	6.78
3825	Wellber no Monogatari: Sisters of Wellber	13	Action Adventure Comedy Drama Fantasy Historical	6.78
7584	Cheonbangjichuk Hani	13	Comedy Drama School Sports	6.78
8114	Hibike! Wadaiko	1	Drama Kids	6.78
8907	Nanatsu no Umi no Tico Specials	2	Adventure Slice of Life	6.78
9291	Qi Cai Lao Fu Zi	1	Action Comedy Seinen	6.78
9823	Tonari no Tokoro	1	Comedy	6.78
9854	Tsuri Baka Nisshi	36	Comedy Slice of Life	6.78
9989	Wonder Bebil-kun	30	Comedy Fantasy	6.78
3754	8-gatsu no Symphony: Shibuya 2002-2003	1	Music	6.79
3755	Afro Samurai Pilot	1	Action Martial Arts Samurai Seinen	6.79
3756	Ai Tenshi Densetsu Wedding Peach DX	4	Adventure Comedy Magic Romance Shoujo	6.79
3757	Appleseed	1	Action Adventure Mecha Police Sci-Fi	6.79
3758	Bakuto Sengen Daigander	39	Adventure Mecha Sci-Fi Shounen	6.79
3759	Bari Bari Densetsu (1987)	1	Action Drama Shounen Sports	6.79
3760	Gegege no Kitarou (1996)	114	Adventure Demons Supernatural	6.79
3761	Hashire! Shiroi Ookami	1	Drama	6.79
3763	Kaibutsu-kun (1980)	94	Comedy Horror Kids	6.79
3764	Ketsuekigata-kun!	12	Comedy	6.79
3765	Kimagure Orange☆Road: Shounen Jump Special	1	Drama Romance Shounen	6.79
3766	Kinnikuman II Sei: Muscle Ninjin Soudatsu sen! Choujin Daisensou	1	Action Comedy Drama Martial Arts Romance Samurai	6.79
3767	Kiss Dum: Engage Planet	26	Mecha Military Sci-Fi	6.79
3768	Konjiki no Gash Bell!!: Hashire Gash!! Ubawareta Umagon	1	Adventure Comedy Magic Shounen Supernatural	6.79
3769	Kyokujitsu no Kantai	15	Action Drama Historical Military	6.79
3770	Loveless Specials	6	Comedy Fantasy Romance Shounen Ai Supernatural	6.79
3771	Lupin III (2015): Italian Game	1	Action Adventure Comedy Shounen	6.79
3772	Mahou no Princess Minky Momo	63	Magic Shoujo	6.79
3773	Mamotte Shugogetten!	22	Comedy Fantasy Magic Romance Shounen	6.79
3774	Mirai Nikki (TV): Ura Mirai Nikki	10	Action Comedy Mystery Psychological Shounen Supernatural Thriller	6.79
3775	Moero! Top Striker	49	Action Shounen Sports	6.79
3776	Nagareboshi Lens	1	Romance Shoujo	6.79
3777	Nichijou: Tanken Nichijou no Machi	14	Comedy School Slice of Life	6.79
3778	Okusama ga Seitokaichou! OVA: Okusama Gekijou	7	Comedy Shounen	6.79
3779	Pokemon Best Wishes! Season 2: Decolora Adventure - Iris vs. Ibuki! Dragon Master e no Michi!!	1	Action Adventure Comedy Fantasy Kids	6.79
3780	Pokemon: Pichu to Pikachu	1	Adventure Comedy Fantasy Kids	6.79
3781	Skull Man	13	Action Mystery Super Power	6.79
3782	Soreyuke! Uchuu Senkan Yamamoto Yohko (1999)	26	Action Adventure Sci-Fi	6.79
3783	Super Robot Taisen OG The Animation	3	Mecha Sci-Fi Shounen Space	6.79
3784	Teekyuu 6	12	Comedy Shounen Sports	6.79
3785	Tokimeki Memorial: Only Love Specials	2	Comedy School	6.79
3786	Uchuu Senshi Baldios	34	Adventure Drama Mecha Sci-Fi Shounen Space	6.79
3804	Kanamewo	1	Drama Romance Shoujo Ai Supernatural	6.79
3813	Planetarium Uchuu Kyoudai: Itten no Hikari	1	Comedy Sci-Fi Seinen Slice of Life	6.79
7395	Alps no Shoujo Heidi? Chara Onji	Unknown	Comedy Parody	6.79
7631	Choegang Habche: Mix Master	39	Adventure Fantasy	6.79
7748	Doushitemo Eto ni Hairitai	13	Comedy	6.79
8758	McDull and Chinese Culture	5	Comedy Historical	6.79
3689	Kekkai Sensen: Soresaemo Saitei de Saikou na Hibi	1	Action Fantasy Shounen Super Power Supernatural Vampire	6.8
3719	3-gatsu no Lion meets Bump of Chicken	1	Drama Music Seinen	6.8
3720	Bannou Bunka Neko-Musume	6	Adventure Comedy Mecha Sci-Fi Seinen	6.8
3721	Choujikuu Seiki Orguss	35	Action Adventure Mecha Romance Sci-Fi Shounen	6.8
3722	Chuuzumou	1	Comedy	6.8
3723	Di Gi Charat Tsuyu Specials	2	Comedy	6.8
3724	Doraemon: Ganbare! Gian!!	1	Adventure Comedy Fantasy Kids Shounen	6.8
3725	Eyeshield 21: Maboroshi no Golden Bowl	1	Shounen Sports	6.8
3726	Fate/kaleid liner Prisma☆Illya: Undoukai de Dance!	1	Comedy Fantasy Magic	6.8
3727	Fortune Dogs	39	Adventure	6.8
3728	Full Moon wo Sagashite: Kawaii Kawaii Daibouken	1	Comedy Fantasy Supernatural	6.8
3729	Gakuen Heaven	13	Comedy Drama Romance School Shounen Ai	6.8
3730	Gilgamesh	26	Drama Fantasy Sci-Fi Supernatural	6.8
3731	God Eater Prologue	1	Action Fantasy Military Sci-Fi	6.8
3732	Gregory Horror Show: The Last Train	26	Comedy Demons Horror Mystery Supernatural Vampire	6.8
3733	Harukanaru Toki no Naka de 2: Shiroki Ryuu no Miko	3	Demons Fantasy Historical Magic Romance Shoujo Supernatural	6.8
3734	Ie Naki Ko (Movie)	1	Adventure Drama Slice of Life	6.8
3735	Kujira no Chouyaku	1	Drama Fantasy Kids	6.8
3736	Lemon Angel Project	13	Drama Music	6.8
3737	Madan no Ou to Vanadis: Tigre-kun to Vanadi-chu	14	Comedy	6.8
3738	Mahou no Princess Minky Momo: Yume wo Dakishimete	62	Magic Shoujo	6.8
3739	Maze☆Bakunetsu Jikuu (TV)	25	Adventure Comedy Fantasy Mecha Shounen	6.8
3740	Meiken Jolie	52	Adventure Historical	6.8
3741	Morita-san wa Mukuchi. 2	13	Comedy School Slice of Life	6.8
3742	Mushi-Uta	12	Action Fantasy Sci-Fi	6.8
3743	Patalliro! Stardust Keikaku	1	Adventure Comedy Romance Shoujo Shounen Ai	6.8
3744	Prince of Tennis: Message in a Bottle	1	Comedy School Shounen Sports	6.8
3745	Recorder to Randoseru Mi☆	12	Comedy School Seinen Slice of Life	6.8
3746	Redline Pilot	1	Cars Sports	6.8
3747	Sakamoto desu ga? Special	1	Comedy School Seinen	6.8
3748	Shadow Skill	1	Adventure Drama Fantasy Shounen	6.8
3749	The☆Doraemons: Strange Sweets Strange?	1	Fantasy	6.8
3750	Tsukuyomi: Moon Phase Special	1	Comedy Dementia Slice of Life	6.8
3751	Uchuu no Kishi Tekkaman Blade OVA: Burning Clock	1	Action Mecha Sci-Fi Shounen	6.8
3752	Uchuu Senkan Yamato 2199: Tsuioku no Koukai	1	Action Drama Military Sci-Fi Space	6.8
3753	Ys: Tenkuu no Shinden - Adol Christine no Bouken	4	Adventure Demons Drama Fantasy Magic	6.8
7591	Chibi Maruko-chan Movie: Italia kara Kita Shounen	1	Comedy Kids School Slice of Life	6.8
7652	City Hunter: Ryou no Propose	1	Action Comedy Mystery Police	6.8
7881	Garon	1	Sci-Fi	6.8
7927	Ginga Tetsudou 999 for Planetarium	1	Adventure Drama Sci-Fi Space	6.8
8071	Hello Kitty no Minna no Tanoshii Natsuyasumi	1	Fantasy Kids	6.8
8224	Inakappe Taishou	104	Comedy Sports	6.8
8294	Jungle Kurobee	31	Comedy	6.8
8861	Monoshiri Daigaku: Ashita no Calendar	1274	Historical	6.8
9007	Nogiku no Haka	1	Drama Kids Romance	6.8
9110	Only You: Viva! Cabaret Club	15	Comedy	6.8
9118	Ookami to Nanahiki no Ko Yagi	1	Fantasy Kids	6.8
9287	Puyo Puyo: Madou Monogatari	1	Comedy Fantasy	6.8
9290	Pyuu to Fuku! Jaguar: Return of Yaku Ichinenburi	3	Comedy Music Shounen	6.8
9395	Sayonara Midori ga ike: Tobe! Tako Glider!!	1	Adventure Kids	6.8
9820	Tomoko-chan to Watashi	1	Comedy Kids School	6.8
10105	Ze Tian Ji	13	Action Adventure Fantasy	6.8
10117	Zettai Zetsumei Dangerous Jiisan Special-ban	1	Comedy Kids	6.8
3647	Gyakuten Saiban 6 Prologue	1	Mystery	6.81
3670	Ace wo Nerae! 2	13	Drama Shoujo Sports	6.81
3671	Aru Machi Kado no Monogatari	1	Drama Music Romance	6.81
3672	Azumanga Web Daioh	1	Comedy School Slice of Life	6.81
3673	Bakuten Shoot Beyblade	51	Action Adventure Comedy Sci-Fi Shounen Sports	6.81
3674	Berserk (2016)	12	Action Adventure Demons Drama Fantasy Horror Military Romance Seinen Supernatural	6.81
3675	Candy Candy: Candy no Natsu Yasumi	1	Drama Shoujo Slice of Life	6.81
3676	Chocchan Monogatari	1	Drama Historical Slice of Life	6.81
3677	Cross Fight B-Daman	52	Adventure	6.81
3678	Cyborg 009 VS Devilman	3	Action Demons Sci-Fi Shounen Super Power Supernatural	6.81
3679	Di Gi Charat Christmas Special	1	Comedy	6.81
3680	Dragonaut: The Resonance	25	Action Drama Fantasy Mecha Romance Sci-Fi	6.81
3681	Emblem Take 2	2	Action Drama Seinen	6.81
3682	Fumiko no Kokuhaku	1	Comedy	6.81
3683	Ginga Tetsudou 999: Kimi wa Senshi no You ni Ikirareru ka?	1	Drama Sci-Fi Space	6.81
3684	Houkago no Pleiades (TV)	12	Magic Space	6.81
3685	Hurricane Polymar	26	Action Adventure Police Sci-Fi Super Power	6.81
3686	Inazuma Eleven Go: TCG CM NG-shuu	1	Comedy	6.81
3687	Isshuukan Friends. Specials	12	School Slice of Life	6.81
3688	Kashimashi: Girl Meets Girl	12	Comedy Drama Romance School Shoujo Ai Slice of Life	6.81
3690	Kitakubu Katsudou Kiroku	12	Comedy School Slice of Life	6.81
3691	Mahou Shoujo Lyrical Nanoha ViVid	12	Action Adventure Magic	6.81
3692	Mini Van Special	1	Comedy Game Parody Slice of Life	6.81
3693	Mobile Suit Gundam ZZ	47	Comedy Drama Mecha Military Sci-Fi Space	6.81
3694	Mokei Senshi Gunpla Builders Beginning G	3	Action Mecha Sci-Fi Shounen	6.81
3695	Monster Extra	1	Drama Horror Mystery Seinen	6.81
3696	Muumin (1972)	52	Adventure Comedy Fantasy Slice of Life	6.81
3697	Natsu-iro Kiseki: 15-kaime no Natsuyasumi	1	Slice of Life	6.81
3698	Night Wizard	13	Adventure Fantasy Magic Shounen	6.81
3699	Nobunaga the Fool	24	Action Historical Mecha Sci-Fi	6.81
3700	Pretty Rhythm Movie: All Star Selection - Prism Show☆Best Ten	1	Music Shoujo Sports	6.81
3701	PriPara Movie: Mi~nna Atsumare! Prism☆Tours	1	Music Shoujo	6.81
3702	Ray The Animation	13	Drama Romance Sci-Fi	6.81
3703	Recorder to Randoseru Do♪	13	Comedy School Seinen Slice of Life	6.81
3704	Ribbon no Kishi	52	Action Fantasy Mystery Romance	6.81
3705	Salad Juu Yuushi Tomatoman	50	Adventure Comedy	6.81
3706	Sekai Seifuku: Bouryaku no Zvezda - Shin Zvezda Daisakusen	1	Action Comedy Fantasy	6.81
3707	Sensei no Ojikan: Doki Doki School Hours	13	Comedy Slice of Life	6.81
3708	Shingeki no Kyojin Picture Drama	9	Comedy Parody	6.81
3709	Spriggan	1	Adventure Military Sci-Fi Shounen	6.81
3710	Star Driver the Movie	1	Action Mecha Romance Shounen	6.81
3711	Tekken: Blood Vengeance	1	Action Fantasy Martial Arts Sci-Fi Supernatural	6.81
3712	Tenkuu Senki Shurato: Sousei e no Anto	6	Action Fantasy Magic Shounen	6.81
3713	Tottoko Hamtarou Movie 2: Ham-Ham Hamuuja! Maboroshi no Princess	1	Adventure Comedy Kids	6.81
3714	Transformers Micron Densetsu	52	Action Mecha Sci-Fi Shounen	6.81
3715	Wagaya no Oinari-sama. Specials	12	Adventure Comedy Fantasy Shounen Supernatural	6.81
3716	Wan Wan Celepoo Soreyuke! Tetsunoshin	51	Comedy Fantasy Kids	6.81
3717	Yoroiden Samurai Troopers Kikoutei Densetsu	4	Adventure Fantasy Samurai Shounen	6.81
3718	Yuu☆Yuu☆Hakusho: Mu Mu Hakusho	4	Comedy	6.81
7523	Bonobono	1	Comedy	6.81
7988	Haha wo Tazunete Sanzenri (Movie)	1	Adventure Drama Historical Slice of Life	6.81
8068	Hello Kitty no Mahou no Ringo	1	Fantasy Kids	6.81
8698	Mak Dau Xiang Dang Dang	1	Comedy	6.81
3580	Feeling from Mountain and Water	1	Music	6.82
3606	Girls und Panzer: Kore ga Hontou no Anzio-sen Desu! - Fushou - Akiyama Yukari no Sensha Kouza	1	Military School	6.82
3636	Ai Monogatari: 9 Love Stories	1	Drama Romance	6.82
3637	Akuma no Riddle	12	Action School Shoujo Ai	6.82
3638	Araiguma Rascal	52	Drama Historical Slice of Life	6.82
3639	Bakusou Kyoudai Let&#039;s &amp; Go!! WGP Bousou Mini Yonku Daitsuiseki	1	Adventure Cars Shounen Sports	6.82
3640	Beet the Vandel Buster Excellion	25	Adventure Fantasy Shounen Supernatural	6.82
3641	Black Jack ONA	12	Drama	6.82
3642	Crayon Shin-chan Manatsu no Yoru ni Ora Sanjou! Arashi wo Yobu Den-O vs. Shin-O 60-bu Special!!	1	Action Comedy Kids Shounen Super Power	6.82
3643	Da Nao Tiangong	1	Adventure	6.82
3644	Dan Doh!!	26	Adventure Shounen Sports	6.82
3645	Doraemon: Featherplace	1	Comedy Fantasy Kids Sci-Fi Shounen	6.82
3646	Gad Guard	26	Adventure Mecha Sci-Fi Shounen	6.82
3648	Hiiro no Kakera: Totsugeki! Tonari no Ikemenzu	1	Comedy Fantasy Shoujo	6.82
3649	Hyakko OVA	1	Comedy	6.82
3650	Jigoku Sensei Nube (Movie)	1	Adventure Comedy Horror School Shounen Supernatural	6.82
3651	Kaibutsu Oujo (OVA) Specials	3	Adventure Comedy Horror Shounen Supernatural	6.82
3652	Kaiketsu Jouki Tanteidan	26	Action Mecha Mystery Police	6.82
3653	Karakuri Kiden: Hiwou Senki	26	Action Adventure Historical Mecha	6.82
3654	Kimagure Orange☆Road: Soushuuhen Tanabata Special	1	Shounen	6.82
3655	Kyoukai no Kanata: Mini Theater	7	Slice of Life Supernatural	6.82
3656	Lupin III: Babylon no Ougon Densetsu	1	Action Adventure Comedy Shounen	6.82
3657	Mikagura Gakuen Kumikyoku	12	Action Comedy School Shoujo Ai	6.82
3658	Mobile Police Patlabor Reboot	1	Comedy Mecha Police Sci-Fi	6.82
3659	Nurse Witch Komugi-chan Magikarte Z	2	Comedy Magic Parody	6.82
3660	Puka Puka Juju	1	Fantasy Slice of Life	6.82
3661	Sasami: Mahou Shoujo Club	13	Fantasy Magic School	6.82
3662	Sayonara Zetsubou Sensei Special Omake	1	Comedy Parody School	6.82
3663	Tari Tari: Kumottari Kagayaitari Mata Itsuka Utattari	1	Music School Slice of Life	6.82
3664	Teekyuu 7	12	Comedy Shounen Sports	6.82
3665	Tenkai Knights	52	Action Adventure Comedy Kids Mecha Sci-Fi Shounen Super Power	6.82
3666	Tokyo Babylon	2	Action Magic Mystery Supernatural	6.82
3667	Ultra Maniac OVA	1	Comedy Magic Romance School	6.82
3668	Yamato yo Towa ni	1	Action Adventure Drama Military Sci-Fi Space	6.82
3669	Yume Senshi Wingman	47	Action Comedy Romance School Super Power	6.82
8584	Kuiba III: Zhanshen Jueqi	1	Action Adventure Fantasy Kids	6.82
8827	Mister Ajikko Special	1	Comedy Shounen	6.82
3598	Anime Sanjuushi: Aramis no Bouken	1	Adventure Historical Romance	6.83
3599	Azuki-chan	117	Comedy Romance Shoujo Slice of Life	6.83
3600	Bananya	13	Comedy Kids Slice of Life	6.83
3601	Cooking Papa	151	Comedy Slice of Life	6.83
3602	Days	1	Music	6.83
3603	Di Gi Charat Natsuyasumi Special	4	Comedy	6.83
3604	Eiyuu Densetsu: Sora no Kiseki The Animation	2	Action Adventure Fantasy	6.83
3605	Fresh Precure! Movie: Omocha no Kuni wa Himitsu ga Ippai!?	1	Action Comedy Fantasy Magic Shoujo	6.83
3607	God Mazinger	23	Action Fantasy Mecha	6.83
3608	Hitomi no Naka no Shounen: Juugo Shounen Hyouryuuki	1	Adventure Historical	6.83
3609	Inazuma Eleven Go Recap	1	Shounen Sports Super Power	6.83
3610	Jack to Mame no Ki	1	Fantasy Kids	6.83
3611	Lady Lady!! (1988)	1	Drama Shoujo	6.83
3612	Majokko Tsukune-chan	6	Comedy Magic Seinen	6.83
3613	Nagato Yuki-chan no Shoushitsu: Owarenai Natsuyasumi	1	Comedy Seinen Slice of Life	6.83
3614	Namiuchigiwa no Muromi-san OVA	1	Comedy Fantasy Slice of Life	6.83
3615	Naruto: Takigakure no Shitou - Ore ga Eiyuu Dattebayo!	1	Action Adventure Comedy Shounen Super Power	6.83
3616	Nobunagun	13	Action Supernatural	6.83
3617	Nurse Angel Ririka SOS	35	Drama Fantasy Magic Shoujo	6.83
3618	Nyanpire The Animation	12	Comedy Supernatural	6.83
3619	Omishi Mahou Gekijou: Risky/Safety	24	Comedy Shoujo	6.83
3620	Oz no Mahoutsukai (1986)	52	Adventure Fantasy Kids	6.83
3621	Phantom: Requiem for the Phantom Picture Drama	12	Comedy	6.83
3622	Pucca	46	Comedy Romance	6.83
3623	Ranma ½: 1994 Music Calendar	1	Comedy Martial Arts Slice of Life	6.83
3624	Re-Kan!	13	Comedy School Seinen Supernatural	6.83
3625	Re:Zero kara Hajimeru Break Time	11	Adventure Comedy Fantasy	6.83
3626	Sengoku Majin Goushougun: Toki no Etranger	1	Action Sci-Fi	6.83
3627	Spoon Oba-san	130	Kids Magic	6.83
3628	Stella no Mahou	12	Comedy School Slice of Life	6.83
3629	Tide-Line Blue Special	1	Adventure Drama Shounen	6.83
3630	Toriko 3D: Kaimaku Gourmet Adventure!!	1	Action Adventure Comedy Shounen	6.83
3631	Transformers Victory	44	Adventure Mecha Sci-Fi Shounen	6.83
3632	Ushinawareta Mirai wo Motomete	12	Drama Romance School Sci-Fi	6.83
3633	Vampire Hunter	4	Action Adventure Drama Fantasy	6.83
3634	Witch Craft Works Specials	6	Comedy Magic	6.83
3635	Yama no Susume	12	Adventure Comedy Slice of Life	6.83
7686	Daisougen to Hakuba	1	Adventure Historical	6.83
8188	Hyakubanme no Saru	1	Historical Kids	6.83
8335	Kai Douryoku	1	Dementia Sci-Fi	6.83
9137	Otanoshimi Anime Gekijou	26	Comedy	6.83
9179	Patchin shite! Obaachan	1	Drama	6.83
9221	Picchipichi Shizuku-chan	52	Comedy Kids	6.83
9480	Shin-chan ga Naita!	1	Drama Kids	6.83
9525	Shounen to Sakura	1	Drama Historical Kids	6.83
3573	Aiura	12	Comedy School Shounen Slice of Life	6.84
3574	Ashita e Attack!	23	Drama School Sports	6.84
3575	Bakegyamon	51	Action Game Shounen	6.84
3576	Battle Spirits: Shounen Toppa Bashin	50	Game Shounen	6.84
3577	Candy Candy (Movie)	1	Drama Shoujo Slice of Life	6.84
3578	Denkou Chou Tokkyuu Hikarian	52	Action Adventure Kids	6.84
3579	Dragon Ball Z Movie 04: Super Saiyajin da Son Gokuu	1	Adventure Fantasy Sci-Fi Shounen	6.84
3581	Gegege no Kitarou (1971)	45	Adventure Demons Super Power Supernatural	6.84
3582	Ginyuu Mokushiroku Meine Liebe Wieder	13	Drama Fantasy Shoujo	6.84
3583	Hareluya II Boy	25	Action Comedy Fantasy School Shounen	6.84
3584	Hurricane Live! 2033	7	Music	6.84
3585	Jikuu Boukenki Zentrix	26	Adventure Mecha Sci-Fi	6.84
3586	Koufuku Graffiti	12	Comedy Seinen Slice of Life	6.84
3587	Majin Bone	52	Game	6.84
3588	Mizugumo Monmon	1	Fantasy Kids Romance	6.84
3589	Nagagutsu wo Haita Neko no Bouken	26	Adventure Fantasy	6.84
3590	Project BLUE Chikyuu SOS	6	Adventure Comedy Sci-Fi Shounen	6.84
3591	Saki Achiga-hen: Episode of Side-A - Kuro no Tanjoubi	1	Game School Slice of Life	6.84
3592	Seishun Anime Zenshuu	32	Drama Historical Romance	6.84
3593	Slow Step	5	Comedy Romance School Slice of Life Sports	6.84
3594	Tottoko Hamtarou Movie 1: Ham-Ham Land Daibouken	1	Adventure Comedy Kids	6.84
3595	Tsukumo	1	Historical Supernatural	6.84
3596	Weiß Kreuz	25	Action Drama Shounen	6.84
3597	Working&#039;!! Announcement Specials	2	Comedy	6.84
7754	Dr. Slump: Arale-chan Specials	2	Comedy Sci-Fi Shounen	6.84
8444	Kero Kero Keroppi no Kero Kero House no Himitsu	1	Fantasy Kids	6.84
9008	Non-tan to Issho	263	Kids	6.84
3506	12-sai.: Chicchana Mune no Tokimeki 2nd Season	12	Romance School Shoujo	6.85
3529	Puchimas!!: Petit Petit iDOLM@STER - Fuyu→Kotatsu←Haru	1	Comedy Music Slice of Life	6.85
3539	Aikatsu!: Dai Starmiya Ichigo Matsuri Zenyasai!!	1	Music School Shoujo	6.85
3540	Anime Koukyoushi: Jungle Taitei	1	Adventure Kids Shounen	6.85
3541	Attack No.1	104	Drama Shoujo Sports	6.85
3542	Boku no Chikyuu wo Mamotte: Kiniro no Toki Nasarete	1	Drama Music Romance Sci-Fi Shoujo	6.85
3543	Boku wa Tomodachi ga Sukunai Episode 0	1	Comedy Romance School Seinen Slice of Life	6.85
3544	Choujuu Kishin Dancougar	38	Action Mecha Sci-Fi Shounen	6.85
3545	Chousoku Spinner	22	Shounen Sports	6.85
3546	Cross Fight B-Daman eS	52	Kids	6.85
3547	Di Gi Charat	16	Comedy Fantasy Sci-Fi	6.85
3548	DNA²	12	Comedy Romance Sci-Fi	6.85
3549	eX-Driver the Movie	1	Action Adventure Cars Comedy Sci-Fi Shounen	6.85
3550	Hamatora The Animation: Saishuukai Chokuzen! Mao ga Okuru Soushuuhen Special	1	Comedy Mystery Super Power	6.85
3552	Koi to Senkyo to Chocolate: Ikenai Hazuki-sensei	1	Drama Romance School	6.85
3553	Konpeki no Kantai	32	Action Drama Historical Military	6.85
3554	Koutetsu Tenshi Kurumi Encore	4	Comedy Historical Romance Sci-Fi Shounen	6.85
3555	Majime ni Fumajime Kaiketsu Zorori: Nazo no Otakara Daisakusen	1	Adventure Comedy	6.85
3556	Massugu ni Ikou. 2nd Season	5	Comedy Josei Romance Slice of Life	6.85
3557	Myself ; Yourself Specials	2	Drama Romance School	6.85
3558	Nintama Rantarou Movie: Ninjutsu Gakuen Zenin Shutsudou! no Dan	1	Comedy Shounen	6.85
3559	One Piece: Cry Heart	3	Fantasy Shounen	6.85
3560	Oyayubi Hime Monogatari	26	Adventure Fantasy Shoujo	6.85
3561	Ring ni Kakero 1: Nichibei Kessen-hen	12	Action Shounen Sports	6.85
3562	Sacred Seven: Shirogane no Tsubasa	1	Action School Sci-Fi Super Power	6.85
3563	Saki Biyori Animation	1	Comedy School Seinen Slice of Life	6.85
3564	Sakigake!! Otokojuku Movie	1	Action Comedy Martial Arts School Shounen	6.85
3565	Shakugan no Shana: Friagne to Marianne no Naze Nani Shana! Nandemo Shitsumonbako!	8	Comedy Fantasy Supernatural	6.85
3566	Shiawase Sou no Okojo-san	51	Comedy	6.85
3567	Soratobu Yuureisen	1	Adventure Drama Mecha Sci-Fi	6.85
3568	Spider Riders: Yomigaeru Taiyou	26	Action Adventure Mecha	6.85
3569	Toriko: Barbarian Ivy wo Hokaku Seyo!	1	Action Adventure Comedy Shounen Super Power	6.85
3570	Transformers: Choujin Master Force	47	Adventure Mecha Sci-Fi Shounen	6.85
3571	Turn A Gundam II Movie: Moonlight Butterfly	1	Action Drama Mecha Military Sci-Fi Space	6.85
3572	Yuu☆Yuu☆Hakusho Picture Drama	1	Action Comedy Demons Martial Arts Shounen	6.85
7995	Hakken Taiken Daisuki! Shimajirou	101	Adventure Comedy Fantasy Kids Magic	6.85
9742	Tengai Makyou: Jiraiya Oboro-hen	2	Adventure Fantasy	6.85
3505	.hack//Unison	1	Adventure Comedy Fantasy Game Magic Sci-Fi	6.86
3507	Anime 80-nichikan Sekai Isshuu	26	Adventure Historical Kids Romance	6.86
3508	Anne no Nikki: Anne Frank Monogatari	1	Drama Historical	6.86
3509	Arad Senki: Slap Up Party	26	Action Adventure Comedy Fantasy	6.86
3510	Bakusou Kyoudai Let&#039;s &amp; Go	51	Adventure Cars Shounen Sports	6.86
3511	Chibi☆Devi!	75	Fantasy Shoujo Supernatural	6.86
3512	Cluster Edge Specials	3	Action Fantasy Military Sci-Fi	6.86
3513	Crayon Shin-chan Movie 20: Arashi wo Yobu! Ora to Uchuu no Princess	1	Comedy Kids Shounen	6.86
3514	Dondon Domeru to Ron	52	Comedy Kids	6.86
3515	Doraemon and Itchy the Stray	1	Comedy Kids Sci-Fi Shounen	6.86
3516	Fireball	13	Comedy Sci-Fi	6.86
3517	Gekitou! Crush Gear Turbo	68	Shounen Sports	6.86
3518	Genshiken Nidaime Specials	4	Comedy Parody Slice of Life	6.86
3519	Hiyokoi (2012)	3	Romance School Shoujo	6.86
3520	Jewelpet Sunshine	52	Fantasy Magic Shoujo	6.86
3521	Kaze wo Mita Shounen	1	Adventure Drama Fantasy	6.86
3522	Kikou Senki Dragonar	48	Adventure Mecha Sci-Fi Shounen Space	6.86
3523	Mirai Robo Daltanias	47	Comedy Mecha Shounen Space	6.86
3524	Nisoku Hokou	1	Music	6.86
3525	Persona 4 the Animation: A Brief Lesson on Izanagi &amp; Izanami	1	School	6.86
3526	Piyoko ni Omakase pyo!	8	Comedy Sci-Fi Shounen	6.86
3527	Pokemon: Pikachu no Natsuyasumi	1	Comedy Fantasy Kids	6.86
3528	Pretty Rhythm: Aurora Dream - Prism Shougekijou	51	Comedy Shoujo	6.86
3530	Saikyou Ginga Ultimate Zero: Battle Spirits	49	Shounen	6.86
3531	Senki Zesshou Symphogear G: In the Distance That Day When the Star Became Music... Specials	2	Comedy	6.86
3532	Sora no Method: Aru Shoujo no Kyuujitsu★	1	Comedy Fantasy Slice of Life	6.86
3533	Soukou Kihei Votoms: Pailsen Files the Movie	1	Mecha Military Sci-Fi Space	6.86
3534	Spirit of Wonder: China-san Tanpenshuu	3	Comedy Sci-Fi Seinen	6.86
3535	Stratos 4 OVA	2	Comedy Military Sci-Fi Shounen	6.86
3536	Tailenders	1	Action Adventure Cars Sci-Fi	6.86
3537	Toaru Kagaku no Railgun S: Daiji na Koto wa Zenbu Sentou ni Osowatta	1	Comedy	6.86
3538	Yoroiden Samurai Troopers Gaiden	2	Adventure Fantasy Samurai Shounen	6.86
3551	Itoshi no Muco	25	Comedy Slice of Life	6.86
7828	Funassyi no Funafunafuna Biyori	130	Comedy Kids Slice of Life	6.86
8055	Heli-Tako Puu-chan	42	Comedy Kids	6.86
8218	Ikkyuu-san: Haru Da! Yancha Hime	1	Comedy Historical Kids	6.86
8287	Johnny Cypher	130	Action Adventure Sci-Fi	6.86
9023	Norasco: Cinema Point Card-hen	10	Comedy Slice of Life	6.86
9379	Sanrio Christmas Fantasia	1	Fantasy Kids Magic	6.86
3475	Break Blade Picture Drama	6	Comedy Fantasy	6.87
3476	Concrete Revolutio: Choujin Gensou	13	Action Demons Drama Fantasy Mystery Sci-Fi Super Power Supernatural	6.87
3477	Dansai Bunri no Crime Edge	13	Action Fantasy Romance Seinen	6.87
3478	Fantascope: Tylostoma	1	Fantasy Supernatural	6.87
3479	Freely Tomorrow	1	Music	6.87
3481	Getter Robo G	39	Action Mecha Sci-Fi Shounen	6.87
3482	Ginga Tetsudou 999: Eternal Fantasy	1	Action Drama Sci-Fi Space	6.87
3483	Haunted Junction	12	Comedy Shounen Supernatural	6.87
3484	Hikari to Mizu no Daphne	24	Comedy Drama Mystery Police Psychological Sci-Fi	6.87
3485	Hoshizora no Violin	1	Historical Slice of Life	6.87
3486	Juusenki L-Gaim	54	Action Adventure Drama Mecha Sci-Fi Shounen Space	6.87
3487	Log Horizon Recap	1	Action Adventure Fantasy Magic Shounen	6.87
3488	Love Live! School Idol Project: μ&#039;s →NEXT LoveLive! 2014 - Endless Parade Makuai Drama	3	Comedy	6.87
3489	Mahoutsukai ni Taisetsu na Koto	12	Drama Magic Shounen Slice of Life	6.87
3490	Mobile Suit Gundam Unicorn: Episode EX - 100 Years of Solitude	1	Drama Mecha Military	6.87
3491	Moyashimon: Kin Gekijou Deluxe	4	Comedy	6.87
3492	Naruto Narutimate Hero 3: Tsuini Gekitotsu! Jounin vs. Genin!! Musabetsu Dairansen taikai Kaisai!!	1	Adventure Comedy Game Shounen	6.87
3493	One Piece: Taose! Kaizoku Ganzack	1	Action Adventure Comedy Fantasy Shounen Super Power	6.87
3494	Pokemon: Mewtwo - Kakusei e no Prologue	1	Adventure Fantasy Kids	6.87
3495	Popee the Performer	39	Comedy Dementia	6.87
3496	Senjou no Valkyria: SenVal Theater	9	Comedy	6.87
3497	Shi Xiong	41	Action Comedy Horror	6.87
3498	Sousei no Aquarion Evol	1	Mecha Romance Sci-Fi	6.87
3499	Tales of Symphonia The Animation: Kratos-sensei no Private Lesson	1	Comedy School	6.87
3500	Teekyuu 5	12	Comedy Shounen Sports	6.87
3501	The☆Doraemons: Dokidoki Kikansha Daibakusou!	1	Adventure Comedy Fantasy Kids Sci-Fi Shounen	6.87
3502	Tokusou Kihei Dorvack	36	Action Mecha Sci-Fi	6.87
3503	Viper&#039;s Creed	12	Action Military Sci-Fi	6.87
3504	Yuusha Raideen	50	Action Adventure Mecha Sci-Fi Shounen	6.87
8727	Manga Ijin Monogatari	46	Historical	6.87
3449	Blood-C: Special Edition	2	Action Horror School Supernatural Vampire	6.88
3450	Blue Drop: Tenshi-tachi no Gikyoku	13	Drama Sci-Fi Shoujo Ai	6.88
3451	Captain Tsubasa: Ayaushi! Zen Nihon Jr.	1	Action Shounen Sports	6.88
3452	Di Gi Charat Ohanami Special	4	Comedy	6.88
3453	Dog Days&#039; Specials	13	Action Adventure Fantasy Magic	6.88
3454	Dragon Drive	38	Action Adventure Comedy Fantasy School Sci-Fi Shounen	6.88
3455	Dragon Quest: Dai no Daibouken (1991)	1	Adventure Demons Fantasy Magic Shounen	6.88
3456	Eureka Seven AO	24	Action Adventure Drama Mecha Sci-Fi	6.88
3457	eX-Driver	6	Action Adventure Cars Comedy Sci-Fi Shounen	6.88
3458	Harukanaru Toki no Naka de 3: Owarinaki Unmei	1	Action Demons Fantasy Historical Military Shoujo Supernatural	6.88
3459	Hiiro no Kakera	13	Fantasy Romance Shoujo Supernatural	6.88
3460	Inaka Isha	1	Dementia Drama Historical Psychological	6.88
3461	Jewelpet Kira☆Deco!	52	Fantasy Magic Shoujo	6.88
3462	Kamen Rider Den-O: Imagin Anime 2	12	Action Adventure Comedy Kids Super Power	6.88
3463	Kobato.: Hajimete no Kobato.	8	Comedy Drama Fantasy	6.88
3464	Koihime†Musou	12	Action Adventure Fantasy Historical Martial Arts	6.88
3465	Mobile Suit Gundam 0083: The Fading Light of Zeon	1	Action Adventure Mecha Sci-Fi Space	6.88
3466	Night Head Genesis	24	Drama Horror Mystery Psychological Supernatural	6.88
3467	Patalliro Saiyuuki!	26	Adventure Comedy Fantasy Shoujo Shounen Ai	6.88
3468	Pokemon Fushigi no Dungeon: Sora no Tankentai - Toki to Yami wo Meguru Saigo no Bouken	1	Adventure Fantasy Kids	6.88
3469	Rinne no Lagrange: Kamogawa Days	1	Comedy School Sci-Fi Slice of Life	6.88
3470	Senki Zesshou Symphogear GX: Believe in Justice and Hold a Determination to Fist. Specials	4	Action Music Sci-Fi	6.88
3471	Sword Art Online: Sword Art Offline - Extra Edition	1	Comedy	6.88
3472	Teekyuu 4	12	Comedy Shounen Sports	6.88
3473	Tesagure! Bukatsumono Spin-off Purupurun Sharumu to Asobou	12	Parody School Slice of Life	6.88
3474	Uta Kata	12	Drama Magic	6.88
3480	Garo: Honoo no Kokuin - Home	1	Action Demons Fantasy Magic Supernatural	6.88
8597	Kunimatsu-sama no Otoridai	46	Comedy School Sports	6.88
8617	Kyoro-chan no Jishin Youjin Hi no Youjin	1	Drama Fantasy Kids	6.88
8916	Naniwa Yuukyouden: Kanketsu-hen	1	Action Comedy	6.88
9204	Penguin no Mondai Max	50	Comedy Kids	6.88
3422	Captain Tsubasa: Asu ni Mukatte Hashire!	1	Action Shounen Sports	6.89
3423	Dokidoki! Precure	49	Action Fantasy Magic Shoujo	6.89
3424	Dragon Ball Z Movie 02: Kono Yo de Ichiban Tsuyoi Yatsu	1	Adventure Comedy Fantasy Sci-Fi Shounen	6.89
3425	Eat-Man &#039;98	12	Action Adventure Sci-Fi Shounen Super Power	6.89
3426	Eyeshield 21: Jump Festa 2005 Special	1	Action Comedy Shounen Sports	6.89
3427	Fatal Fury 2: The New Battle	1	Action Adventure Drama Martial Arts Shounen	6.89
3428	Go! Princess Precure Movie: Go! Go!! Gouka 3-bondate!!!	1	Fantasy Kids Magic Shoujo	6.89
3429	Gundam Evolve	15	Action Mecha Military Space	6.89
3430	Happiness!: Watarase Jun no Kareinaru Ichinichi	1	Comedy Fantasy	6.89
3431	Hatsumei Boy Kanipan	31	Adventure Comedy Mecha Sci-Fi	6.89
3432	Isshuukan Friends.: Tomodachi to no Omoide	1	Comedy School Slice of Life	6.89
3433	Magical☆Star Kanon 100%	1	Magic Music Shounen	6.89
3434	Master Mosquiton	6	Action Adventure Comedy Demons Supernatural Vampire	6.89
3435	Moon Pride	1	Magic Music Romance Supernatural	6.89
3436	Overlord: Ple Ple Pleiades (OVA)	1	Action Comedy Fantasy Magic	6.89
3437	Panyo Panyo Di Gi Charat	48	Comedy	6.89
3439	Ring ni Kakero 1: Kage Dou-hen	6	Action Shounen Sports	6.89
3440	Shakunetsu no Takkyuu Musume	12	Sports	6.89
3441	Sonic★the★Hedgehog	2	Adventure Comedy Sci-Fi Shounen	6.89
3442	Souten no Ken	22	Action Historical Martial Arts	6.89
3443	Starship Troopers: Invasion	1	Action Military Sci-Fi	6.89
3444	Tales of the Abyss Special Fan Disc	2	Comedy Slice of Life	6.89
3445	Tottemo! Luckyman	50	Comedy Sci-Fi Shounen Super Power	6.89
3446	Witch Craft Works OVA	1	Action Fantasy Seinen Supernatural	6.89
3447	Yama no Susume Second Season Specials	2	Comedy Slice of Life	6.89
3448	Yousei Florence	1	Adventure Fantasy Music	6.89
7517	Boku wa Ou-sama (TV) Special	1	Kids	6.89
8360	Kamen no Ninja Akakage	23	Action Fantasy	6.89
9090	Omakase Scrappers	39	Adventure Comedy Sci-Fi	6.89
9338	RPG Densetsu Hepoi	50	Adventure Fantasy	6.89
9660	Sugai-kun to Kazoku Ishi The Movie	1	Comedy Parody	6.89
3392	Aachi wa Ssipak	1	Action Comedy	6.9
3393	Akai Koudan Zillion	31	Action Adventure Military Sci-Fi Shounen	6.9
3394	Cardfight!! Vanguard G	48	Action Game Shounen	6.9
3395	Corrector Yui	52	Adventure Comedy Magic Sci-Fi	6.9
3396	Doraemon&#039;s Time Capsule for 2001	1	Adventure Comedy Kids Sci-Fi Shounen	6.9
3397	Doujin Work	12	Comedy Slice of Life	6.9
3398	Ganbare! Kickers	23	Comedy Drama Shounen Sports	6.9
3399	Gate Keepers 21	6	Action Drama Mecha Sci-Fi Shounen	6.9
3400	Ginga Tetsudou 999: Kimi wa Haha no You ni Aiseru ka!!	1	Sci-Fi Space	6.9
3401	GR: Giant Robo	13	Adventure Mecha Military Sci-Fi Shounen	6.9
3402	Green Legend Ran	3	Adventure Drama Sci-Fi	6.9
3403	Gregory Horror Show	25	Comedy Demons Horror Mystery Supernatural Vampire	6.9
3404	Highlander: The Search for Vengeance	1	Action Horror Sci-Fi	6.9
3405	Idol Densetsu Eriko	51	Music	6.9
3406	Kanon Kazahana	1	Drama Romance Slice of Life Supernatural	6.9
3407	Kiddy GiRL-AND Pilot	1	Action Sci-Fi Super Power	6.9
3408	Kidou Senkan Nadesico: The Prince of Darkness	1	Action Comedy Drama Mecha Psychological Sci-Fi Shounen Space	6.9
3409	Kyouryuu Daisensou Aizenborg	39	Action Mecha	6.9
3410	Mahou Sensei Negima! Anime Final	1	Adventure Magic Supernatural	6.9
3411	Mai-HiME: Kuro no Mai/Saigo no Bansan	1	Comedy	6.9
3412	Makai Senki Disgaea	12	Action Comedy Demons Fantasy Magic	6.9
3413	Makiba no Shoujo Katri	49	Adventure Drama Historical Slice of Life	6.9
3414	Metal Fight Beyblade: Baku	51	Adventure Comedy Sports	6.9
3415	Mobile Suit Gundam F91	1	Drama Mecha Military Sci-Fi Space	6.9
3416	Monster Farm: Legend e no Michi	25	Action Adventure Comedy Fantasy	6.9
3417	Pupipo!	15	Comedy School Slice of Life Supernatural	6.9
3418	Soukou Kihei Votoms: Big Battle	1	Action Drama Mecha Military Sci-Fi	6.9
3419	Uchuu Koukyoushi Maetel: Ginga Tetsudou 999 Gaiden	13	Drama Sci-Fi Space	6.9
3420	Wangpai Yushi	39	Comedy Fantasy School Shounen Supernatural	6.9
3421	Yoshinaga-san&#039;chi no Gargoyle	13	Comedy Fantasy Slice of Life	6.9
3438	Pokemon Best Wishes! Season 2: Decolora Adventure - Dent to Takeshi! Gyarados no Gekirin!!	1	Action Adventure Comedy Fantasy Kids	6.9
7389	Aladdin to Mahou no Lamp no Koutsuu Anzen	1	Drama Fantasy Kids	6.9
7657	Cofun Gal no Coffy (TV)	12	Comedy Parody	6.9
8199	Ichigo Ichie: Kimi no Kotoba	13	Comedy	6.9
8782	Michitekuru Toki no Mukou ni	1	Adventure Fantasy Romance	6.9
8784	Midnight Horror School	52	Comedy	6.9
9019	Noramimi	12	Comedy	6.9
9084	Okawari-Boy Starzan S	34	Action Adventure Sci-Fi	6.9
9744	Tenjouhen: Utsunomiko	1	Adventure Demons Fantasy	6.9
3355	.hack//G.U. Returner	1	Adventure Drama Fantasy Game Magic Sci-Fi	6.91
3356	Aimai Elegy	1	Music	6.91
3357	Akame ga Kill! Recap	1	Action Adventure Fantasy	6.91
3358	Asobot Senki Gokuu	52	Comedy Sci-Fi	6.91
3359	Bakuretsu Tenshi: Infinity	1	Action Comedy Mecha Sci-Fi Shounen	6.91
3360	Bubuki Buranki: Hoshi no Kyojin	12	Action Drama Mecha Sci-Fi	6.91
3361	Canvas 2: Niji-iro no Sketch	24	Comedy Drama Romance Slice of Life	6.91
3362	Chocotto Sister	24	Comedy Drama Romance	6.91
3363	Doraemon Movie 35: Nobita no Space Heroes	1	Comedy Kids Shounen Space	6.91
3364	Fortune Arterial: Akai Yakusoku	12	Comedy Romance School Supernatural Vampire	6.91
3365	Fuuma no Kojirou: Seiken Sensou-hen	6	Action	6.91
3366	Galaxy Angel Specials	2	Comedy Sci-Fi	6.91
3367	Happiness Charge Precure!	49	Action Fantasy Magic Shoujo	6.91
3368	Harlock Saga: Nibelung no Yubiwa	6	Action Adventure Drama Sci-Fi Seinen Space	6.91
3369	Hitohira	12	Drama Romance School Slice of Life	6.91
3370	Jigoku Sensei Nube: Gozen 0 toki Nube Shisu	1	Adventure Comedy Horror School Shounen Supernatural	6.91
3371	Kingyo Chuuihou!	54	Comedy Kids Shoujo	6.91
3372	Kure-nai OVA	2	Action Comedy	6.91
3373	Makai Senki Disgaea: Welcome to Netherworld	1	Action Comedy Demons Fantasy Magic	6.91
3374	Maria†Holic Alive Special	1	Comedy Parody Romance School	6.91
3375	Monster Farm: Enbanseki no Himitsu	48	Action Adventure Comedy Fantasy	6.91
3376	Nishi no Yoki Majo: Astraea Testament	13	Comedy Drama Fantasy Mystery Romance	6.91
3377	Ookami Shoujo to Kuro Ouji Recap	1	Comedy Romance School Shoujo	6.91
3378	Panda Kopanda	2	Comedy Kids	6.91
3379	Peter Pan no Bouken	41	Adventure Fantasy	6.91
3380	RESTART POiNTER	1	Music	6.91
3381	Sekai Meisaku Douwa: Wow! Maerchen Oukoku	26	Fantasy	6.91
3382	Shichinin no Nana	25	Adventure Comedy Magic Romance School	6.91
3383	Shin Koihime†Musou: Otome Tairan OVA	1	Comedy School	6.91
3384	Tansu Warashi.	1	Comedy Slice of Life Supernatural	6.91
3385	Teekyuu 2	12	Comedy School Shounen Sports	6.91
3386	Tenshi ni Narumon!	26	Comedy Fantasy Romance	6.91
3387	Terra e... (TV) Specials	3	Adventure Drama Sci-Fi	6.91
3388	Terra Formars Revenge	13	Action Drama Horror Sci-Fi Seinen Space	6.91
3389	To Heart 2 AD Plus	2	Romance	6.91
3390	Tokyo Ravens: Kon ga Oshiete Moshi Agemasu! Maru Wakari Tokyo Ravens	3	Shounen Supernatural	6.91
3391	Uchuu Kuubo Blue Noah	24	Action Drama Military Sci-Fi Space	6.91
7915	Ghost Messenger	6	Action Fantasy	6.91
8069	Hello Kitty no Match Uri Shoujo	1	Fantasy Kids	6.91
8728	Manga Jinbutsushi	365	Historical	6.91
9292	Qin Shiming Yue 3D: Dianying Longteng Wanli	1	Action Fantasy Historical Martial Arts	6.91
9470	Shin Kyojin no Hoshi II	23	Sports	6.91
3332	Andes Shounen Pepero no Bouken	26	Adventure	6.92
3333	Bakuretsu Tenshi: Infinity Specials	3	Action Mecha Sci-Fi	6.92
3334	Battle Spirits: Burning Soul	51	Action Kids	6.92
3335	Devilman Lady	26	Action Drama Horror Psychological	6.92
3336	Fuuma no Kojirou: Yasha-hen	6	Action	6.92
3337	Glass no Usagi	1	Historical	6.92
3338	Kaitou Joker	13	Adventure Comedy Mystery Shounen	6.92
3339	Kazoku no Hanashi	1	Drama Music	6.92
3340	Kono Minikuku mo Utsukushii Sekai	12	Comedy Drama Magic Romance Sci-Fi	6.92
3341	Koutetsu Tenshi Kurumi	24	Adventure Comedy Drama Historical Mecha Military Romance Shounen	6.92
3342	Kouya no Yobigoe: Hoero Buck	1	Adventure Drama	6.92
3343	Meiken Lassie	26	Adventure Kids Slice of Life	6.92
3344	Mirai Keisatsu Urashiman	50	Comedy Police Sci-Fi	6.92
3345	Mobile Police Patlabor: WXIII	1	Mecha Police Sci-Fi	6.92
3346	Ninja Hattori-kun	694	Comedy Martial Arts Slice of Life	6.92
3347	Pokemon Best Wishes!: Victini to Shiroki Eiyuu Reshiram	1	Adventure Comedy Drama Fantasy Kids	6.92
3348	Sasami: Mahou Shoujo Club 2	13	Fantasy Magic School	6.92
3349	Sasuke	29	Action Historical Martial Arts Shounen	6.92
3350	Super Robot Taisen OG: Divine Wars Special	1	Action Comedy Mecha	6.92
3351	The Kabocha Wine	95	Comedy Romance School Slice of Life	6.92
3352	Tsukiuta. The Animation	13	Music	6.92
3353	Viewtiful Joe	51	Action Comedy Sci-Fi Shounen	6.92
3354	Wonder Beat Scramble	26	Action Sci-Fi Space	6.92
7745	Doubutsu Mura Monogatari	100	Kids	6.92
9898	Ultraman Kids: Haha wo Tazunete 3000-man Kounen	26	Kids Space	6.92
10024	Yakeato no Okashi no Ki	1	Drama Kids	6.92
3294	Akakichi no Eleven	52	Sports	6.93
3295	Akihabara Dennou-gumi: 2011-nen no Natsuyasumi	1	Adventure Comedy Mecha Sci-Fi	6.93
3296	Aquarion Movie: Ippatsu Gyakuten-hen	1	Drama Fantasy Mecha	6.93
3297	Arashi no Yoru ni: Himitsu no Tomodachi	26	Adventure Drama	6.93
3298	Blade of the Immortal	13	Action Adventure Historical Samurai Supernatural	6.93
3299	Chou Denji Robo Combattler V	54	Adventure Mecha Sci-Fi Shounen	6.93
3300	Dokidoki! Precure Movie: Mana Kekkon!!? Mirai ni Tsunagu Kibou no Dress	1	Fantasy Kids Magic Shoujo	6.93
3301	Dorami &amp; Doraemons: Space Land&#039;s Critical Event	1	Adventure Comedy Fantasy Kids Sci-Fi Shounen	6.93
3302	Dragon Ball Z Movie 01: Ora no Gohan wo Kaese!!	1	Adventure Comedy Fantasy Sci-Fi Shounen	6.93
3303	Dragon Crisis!	12	Action Magic Romance School Seinen Supernatural	6.93
3304	F	31	Cars Shounen Sports	6.93
3305	Futari wa Precure: Splash☆Star Movie - Tick Tack Kiki Ippatsu!	1	Fantasy Kids Magic Shoujo	6.93
3306	Fuuma no Kojirou: Fuuma Hanran-hen	1	Action	6.93
3307	Golgo 13	1	Action Adventure Drama Military Seinen	6.93
3308	Hanasakeru Seishounen Recaps	3	Drama Romance Shoujo	6.93
3309	Heroman	26	Action Sci-Fi Shounen	6.93
3310	I My Me! Strawberry Eggs	13	Comedy Drama Romance School Slice of Life	6.93
3311	Jigoku Sensei Nube: Kyoufu no Natsu Yasumi! Asashi no Uni no Gensetsu	1	Action Horror School Shounen Supernatural	6.93
3312	Kaibutsu-kun	49	Comedy Horror	6.93
3313	Kasei Yakyoku	4	Drama Historical Josei Romance	6.93
3314	Lupin III: Russia yori Ai wo Komete	1	Action Adventure Comedy Shounen	6.93
3315	Mahou Shoujo Pretty Sammy (1996)	26	Comedy Fantasy Magic Parody Seinen	6.93
3316	Mai-Otome Zwei Special	1	Magic	6.93
3317	Mazinger Z tai Ankoku Daishougun	1	Action Mecha Shounen	6.93
3318	Metal Fight Beyblade 4D	52	Adventure Sports	6.93
3319	Mirai Shounen Conan: Tokubetsu-hen - Kyodaiki Gigant no Fukkatsu	1	Adventure Drama Sci-Fi	6.93
3320	Miyuki	37	Romance School	6.93
3321	Onegai☆Teacher: Marie Ai no Gekijou	1	Comedy Drama Romance Sci-Fi	6.93
3322	Onegai☆Teacher: Reminiscence Disc	1	Comedy Romance Sci-Fi	6.93
3323	Osomatsu-kun (1988)	86	Comedy	6.93
3324	Pokemon Advanced Generation: Nanayo no Negaiboshi Jirachi	1	Adventure Comedy Drama Fantasy Kids	6.93
3325	Pygmalio	39	Adventure Fantasy	6.93
3326	Sengoku Majin Goushougun	26	Mecha Parody Sci-Fi	6.93
3327	Shutsugeki! Machine Robo Rescue	53	Action Mecha Sci-Fi	6.93
3328	Spirit of Wonder: Shounen Kagaku Club	2	Drama Sci-Fi Seinen Space	6.93
3329	Tales of Symphonia The Animation: Kaette Kita Kratos-sensei no Private Lesson	1	Comedy School	6.93
3330	Tytania	26	Adventure Military Psychological Romance Sci-Fi Space	6.93
3331	Usavich IV	13	Comedy	6.93
7562	Carino Coni	26	Fantasy Kids	6.93
3247	Girls und Panzer der Film: Fushou - Akiyama Yukari no Sensha Kouza	2	Military School	6.94
3270	Argento Soma	25	Action Adventure Drama Mecha Military Sci-Fi	6.94
3271	Astroganger	26	Action Mecha Sci-Fi	6.94
3272	Bakuretsu Tenshi	24	Adventure Comedy Mecha Sci-Fi	6.94
3273	Denpa Kyoushi (TV)	24	Comedy Romance School Shounen	6.94
3274	El Hazard: The Alternative World	13	Adventure Comedy Fantasy	6.94
3275	Fireball Charming	13	Sci-Fi	6.94
3276	FlashBack	1	Music	6.94
3277	Furusato Japan	1	Historical	6.94
3278	Futsuu no Joshikousei ga [Locodol] Yattemita.: Nagarekawa Annai Shitemita.	1	Comedy Seinen	6.94
3279	Gakuen Heaven: Hamu Hamu Heaven	12	Comedy Drama Romance School Shounen Ai	6.94
3280	Hi no Tori 2772: Ai no CosmoZone	1	Adventure Drama Fantasy Sci-Fi	6.94
3281	Hyakujuu-Ou GoLion	52	Adventure Mecha Sci-Fi Shounen	6.94
3282	Kashimashi: Girl Meets Girl OVA	1	Comedy Drama Romance School Shoujo Ai Slice of Life	6.94
3283	Koisuru Tenshi Angelique: Kagayaki no Ashita Special	1	Fantasy Romance	6.94
3284	Mahou Shoujo-tai Arusu the Adventure	6	Adventure Comedy Fantasy Magic	6.94
3285	Majutsushi Orphen: Revenge	23	Adventure Comedy Fantasy Magic Shounen	6.94
3286	Mini Sengoku Basara: Chousokabe-kun to Mouri-kun	7	Comedy Historical	6.94
3287	Mitsume ga Tooru	48	Adventure	6.94
3288	Pokemon Best Wishes!: Victini to Kuroki Eiyuu Zekrom	1	Adventure Comedy Drama Fantasy Kids	6.94
3289	Pokemon the Movie XY: Ring no Choumajin Hoopa	1	Adventure Fantasy Kids	6.94
3290	Qin Shiming Yue Zhi: Bai Bu Fei Jian	10	Action Fantasy Historical Martial Arts	6.94
3291	Recorder to Randoseru	2	Comedy School Seinen Slice of Life	6.94
3292	Suteki Tantei Labyrinth	25	Mystery Sci-Fi	6.94
3293	Venus Senki	1	Action Adventure Sci-Fi Space	6.94
8088	Hello Kitty no Suteki na Kyoudai	1	Fantasy Kids	6.94
8282	Jinzou Konchuu Kabutoborg VxV	52	Action Comedy Fantasy Game Shounen	6.94
9490	Shippuu! Iron Leaguer: Silver no Hata no Moto ni	5	Mecha Sports	6.94
9824	Tonde Mon Pe	42	Kids	6.94
10354	Kizuna: Koi no kara Sawagi	1	Drama Romance Yaoi	6.94
3243	Ace wo Nerae! (1979)	1	Drama Romance School Shoujo Sports	6.95
3244	Agatha Christie no Meitantei Poirot to Marple	39	Historical Mystery	6.95
3245	Binbou Shimai Monogatari	10	Comedy Drama Seinen Slice of Life	6.95
3246	Dr. Rin ni Kiitemite!	51	Comedy Fantasy Magic Romance School Shoujo	6.95
3248	Grappler Baki	1	Action Shounen Sports	6.95
3249	Inari Konkon Koi Iroha.: Inari Konkon Semishigure.	1	Comedy Romance Seinen Supernatural	6.95
3250	Innocent Venus	12	Adventure Drama Mecha Military Sci-Fi	6.95
3252	Kill Me Baby	13	Comedy School Seinen	6.95
3253	Kinnikuman II Sei	51	Action Comedy Martial Arts Sci-Fi Shounen Sports	6.95
3254	Lamune	12	Drama Romance Slice of Life	6.95
3255	Mahoutsukai Tai!	13	Comedy Magic Romance Sci-Fi	6.95
3256	Mobile Suit Gundam: The 08th MS Team - Miller&#039;s Report	1	Drama Mecha Military Romance Sci-Fi	6.95
3257	Naruto Movie 3: Dai Koufun! Mikazuki Jima no Animaru Panikku Dattebayo!	1	Action Adventure	6.95
3258	Naruto: The Cross Roads	1	Action Adventure Comedy Shounen	6.95
3259	Peace Maker Kurogane Special	1	Action Comedy Drama Historical Samurai Shounen	6.95
3260	Re:Petit kara Hajimeru Isekai Seikatsu	14	Adventure Comedy Fantasy	6.95
3261	Seiken no Blacksmith	12	Action Adventure Fantasy	6.95
3262	Sengoku Basara: Judge End	12	Action Historical Martial Arts Samurai Super Power	6.95
3263	Silent Mobius	26	Action Comedy Drama Fantasy Horror Magic Romance Sci-Fi	6.95
3264	Strait Jacket	3	Action Fantasy Sci-Fi	6.95
3265	Stratos 4 Advance	6	Comedy Military Sci-Fi Shounen	6.95
3266	Suki na Mono wa Suki Dakara Shou ga Nai!!	12	Comedy Drama Romance Shoujo Shounen Ai Slice of Life	6.95
3267	Taiyou no Yuusha Fighbird	48	Action Mecha Sci-Fi	6.95
3268	Tengen Toppa Gurren Lagann: Ore no Gurren wa Pikka-Pika!!	1	Action Adventure Comedy Mecha Sci-Fi	6.95
3269	Youkai Watch	Unknown	Comedy Kids Supernatural	6.95
8528	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Ryoutsu vs. Nakimushi Aidoru!? Nihon Ikkai Dai-Sug	1	Comedy Police	6.95
9662	Sugar Bunnies Chocolate!	26	Kids	6.95
3220	Anime Tenchou x Touhou Project	1	Fantasy Magic	6.96
3221	Aoki Densetsu Shoot! (Movie)	1	Action Shounen Sports	6.96
3222	Bishoujo Senshi Sailor Moon Crystal	26	Demons Magic Romance Shoujo	6.96
3223	Dirty Pair: Bouryaku no 005-bin	1	Action Adventure Comedy Police Sci-Fi	6.96
3224	Dragon Ball Specials	2	Comedy Fantasy Shounen Super Power	6.96
3225	Gunparade March: Arata Naru Kougunka	12	Drama Mecha Military Romance Sci-Fi Shounen Slice of Life	6.96
3226	Jewelpet Happiness	52	Fantasy Magic Shoujo	6.96
3227	Love Live! School Idol Project OVA	1	Music School Slice of Life	6.96
3228	Naruto: Dai Katsugeki!! Yuki Hime Shinobu Houjou Dattebayo! Special: Konoha Annual Sports Festival	1	Action Comedy Fantasy Martial Arts Shounen Sports	6.96
3229	Otome wa Boku ni Koishiteru: Futari no Elder	3	Drama Romance School	6.96
3230	Ring ni Kakero 1: Sekai Taikai-hen	6	Sports	6.96
3231	Seton Doubutsuki	45	Adventure Fantasy	6.96
3232	Shingeki no Kyojin: Ano Hi Kara	1	Action Drama Fantasy Shounen Super Power	6.96
3233	Super Robot Taisen OG: Divine Wars	25	Action Mecha Sci-Fi	6.96
3234	Tales of Phantasia The Animation	4	Adventure Fantasy Shounen	6.96
3235	Teekyuu 3	12	Comedy School Shounen Sports	6.96
3236	Tenchi Muyou!: Galaxy Police Mihoshi Space Adventure	1	Comedy Magic Parody Police Sci-Fi Shounen Space	6.96
3237	Toaru Kagaku no Railgun: Motto Marutto Railgun	2	Comedy	6.96
3238	TWO-MIX: White Reflection	1	Music	6.96
3239	Umi ga Kikoeru	1	Drama Romance School Slice of Life	6.96
3240	ViVid Strike!	12		6.96
3241	X OVA	1	Drama Fantasy Mystery Romance Supernatural	6.96
3242	Yozakura Quartet	12	Action Comedy Magic Shounen Super Power Supernatural	6.96
3251	Keroro	23	Comedy Sci-Fi Shounen	6.96
8523	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Maguro no Notta Keikan	1	Comedy Police	6.96
10119	Zhongguo Jingqi Xiansheng	63	Comedy Supernatural Thriller	6.96
3195	3x3 Eyes	4	Action Demons Fantasy Horror Romance	6.97
3196	Arcana Famiglia: Capriccio - stile Arcana Famiglia	1	Romance Shoujo	6.97
3197	Bakumatsu no Spasibo	1	Historical	6.97
3198	Barakamon: Mijikamon	13	Comedy	6.97
3199	Brave 10	12	Action Adventure Historical Samurai Seinen Super Power	6.97
3200	Glass no Hana to Kowasu Sekai	1	Sci-Fi	6.97
3201	Inazuma Eleven: Chou Jigen Dream Match	1	Shounen Sports Super Power	6.97
3202	Juuni Senshi Bakuretsu Eto Ranger	39	Action Comedy Fantasy	6.97
3203	Kaleido Star: Good da yo! Goood!!	1	Comedy	6.97
3204	Kami nomi zo Shiru Sekai: Flag 0	1	Comedy Shounen Supernatural	6.97
3205	Karasu Tengu Kabuto	39	Action Adventure Drama Historical	6.97
3206	Koko wa Green Wood	6	Comedy Drama Romance Shoujo Slice of Life Supernatural	6.97
3207	Lupin III: Napoleon no Jisho wo Ubae	1	Action Adventure Comedy Shounen	6.97
3208	Macross Dynamite 7	4	Adventure Comedy Mecha Sci-Fi Shounen	6.97
3209	Maple Town Monogatari	52	Fantasy Slice of Life	6.97
3210	Muka Muka Paradise	51	Adventure Comedy	6.97
3211	Ontama!	5	Comedy Magic Seinen Slice of Life	6.97
3212	Osu!! Karate Bu	4	Martial Arts School Shounen	6.97
3213	Pokemon XY: Sora no Hahen	1	Adventure Fantasy Kids	6.97
3214	Shinkyoku Soukai Polyphonica	12	Drama Fantasy Music Romance School	6.97
3215	Soukou Kihei Votoms: Gen-ei Hen	6	Action Drama Mecha Military Sci-Fi	6.97
3216	Soul Eater: Late Night Show	51	Action Comedy Fantasy	6.97
3217	Uchuu Senkan Yamato: Aratanaru Tabidachi	1	Drama Military Sci-Fi	6.97
3218	Yakusoku (ONA)	1	Drama Music	6.97
3219	Yuu☆Yuu☆Hakusho (Movie)	1	Action Adventure Comedy	6.97
7753	Dr. Slump: Arale-chan Penguin Mura Eiyuu Densetsu	1	Comedy Sci-Fi Shounen	6.97
8298	Junod	1	Drama Historical	6.97
10353	Ai no Kusabi (2012)	4	Drama Romance Sci-Fi Yaoi	6.97
3174	Ai Shoujo Pollyanna Story	51	Drama Historical Slice of Life	6.98
3175	Ao no Kanata no Four Rhythm	12	Drama School Sci-Fi Sports	6.98
3176	Chikyuu Shoujo Arjuna	13	Adventure Drama Magic Sci-Fi	6.98
3177	Choujikuu Seiki Orguss 02	6	Action Adventure Mecha Romance Sci-Fi Shounen	6.98
3178	Da Yu Hai Tang	1	Adventure Supernatural	6.98
3179	Dokkoida	12	Action Adventure Comedy Parody Sci-Fi Shounen	6.98
3180	Dorami &amp; Doraemons: Robot School&#039;s Seven Mysteries	1	Fantasy	6.98
3181	Futari wa Precure: Max Heart Movie 1	1	Comedy Fantasy Magic Shoujo	6.98
3182	Futsuu no Joshikousei ga [Locodol] Yattemita.	12	Comedy Seinen	6.98
3183	Future Card Buddyfight 100	50	Game	6.98
3184	Hidan no Aria Special	1	Action Comedy Mystery Romance	6.98
3185	Hime Chen! Otogi Chikku Idol Lilpri (2011)	51	Magic Shoujo	6.98
3186	Kiddy GiRL-AND	24	Action Comedy Sci-Fi Super Power	6.98
3187	Kyoukai no Rinne (TV)	25	Comedy Romance School Shounen Supernatural	6.98
3188	Kyousou Giga	1	Action Fantasy Supernatural	6.98
3189	Macross 7 Plus	11	Mecha Music Slice of Life	6.98
3190	Mobile Suit Victory Gundam	51	Drama Mecha Military Sci-Fi Space	6.98
3191	Nekketsu Saikyou Go-Saurer	51	Action Mecha Sci-Fi	6.98
3192	Precure All Stars GoGo Dream Live!	1	Action Fantasy Magic Shoujo	6.98
3193	Pretty Rhythm: Dear My Future	51	Music Shoujo Slice of Life Sports	6.98
3194	Zettai Karen Children Gentei Kaikin!! OVA Chou Sakidori Special!!	1	Action Comedy Shounen Supernatural	6.98
7736	Dorimogu Daa!!	49	Adventure Fantasy Kids	6.98
3136	Candy Boy Episode: EX02 - Shiawase Kyouyuu Riron	1	Romance Shoujo Ai Slice of Life	6.99
3137	CLAMP in Wonderland	1	Music	6.99
3138	Dai Mahou Touge Omake	4	Comedy	6.99
3139	Dear Boys	26	Drama Shounen Sports	6.99
3140	Dragon Ball Z Movie 03: Chikyuu Marugoto Choukessen	1	Adventure Comedy Fantasy Sci-Fi Shounen	6.99
3141	El Hazard 2: The Magnificent World	4	Adventure Comedy Fantasy	6.99
3142	Fire Tripper	1	Fantasy Sci-Fi	6.99
3143	Futari wa Precure	49	Action Comedy Fantasy Magic Shoujo	6.99
3144	Ginga Tetsudou 999: Hoshizora wa Time Machine	1	Drama Sci-Fi	6.99
3145	Jungle Book Shounen Mowgli	52	Adventure Drama	6.99
3146	Juubee-chan 2: Siberia Yagyuu no Gyakushuu	13	Adventure Comedy Drama Martial Arts Samurai Shounen	6.99
3147	Juushin Enbu: Hero Tales	26	Action Fantasy Shounen	6.99
3148	Kikaider 01 The Animation	4	Action Adventure Drama Mecha Sci-Fi Shounen	6.99
3149	Kinnikuman II Sei: Ultimate Muscle	13	Action Comedy Martial Arts Sci-Fi Shounen Sports	6.99
3150	Kochira Katsushikaku Kameari Kouenmae Hashutsujo The Movie 2: UFO Shuurai! Tornado Daisakusen	1	Comedy Police	6.99
3151	Kousoku Denjin Albegus	45	Mecha	6.99
3152	Kuro no Sumika: Chronus	1	Psychological	6.99
3153	Kurokami: Tora to Tsubasa	1	Action Martial Arts Super Power	6.99
3154	Lupin III: Lupin Ikka Seizoroi	1	Adventure Comedy Shounen	6.99
3155	Mahou Shoujo Madoka★Magica: Concept Movie	1	Drama Magic Psychological Thriller	6.99
3156	Majime ni Fumajime Kaiketsu Zorori	97	Adventure Kids	6.99
3157	Mamotte! Lollipop	13	Adventure Comedy Magic Romance Shoujo	6.99
3158	Megazone 23	4	Action Mecha Music Mystery Romance Sci-Fi	6.99
3159	Naruto Movie 2: Dai Gekitotsu! Maboroshi no Chiteiiseki Dattebayo!	1	Adventure Comedy Drama Fantasy Shounen Supernatural	6.99
3160	NieA Under 7	13	Comedy Sci-Fi Slice of Life	6.99
3161	Norimono Oukoku BuBu ChaCha	26	Comedy Slice of Life	6.99
3162	Osomatsu-kun	56	Comedy	6.99
3163	Owari no Seraph: The Beginning of the End	1	Action Drama Shounen Supernatural Vampire	6.99
3164	Pokemon Housoukyoku	16	Adventure Comedy Fantasy Kids	6.99
3165	Senkou no Night Raid	13	Action Historical Military Super Power	6.99
3166	Senkou no Night Raid Specials	3	Action Historical Military Super Power	6.99
3167	Tokyo Tribe 2	13	Action Drama	6.99
3168	Touch 2: Sayonara no Okurimono	1	Drama Romance Sports	6.99
3169	Uchuusen Sagittarius	77	Adventure Sci-Fi	6.99
3170	UFO Princess Valkyrie 4: Toki to Yume to Ginga no Utage	2	Comedy Romance Sci-Fi	6.99
3171	Urusei Yatsura Movie 4: Lum The Forever	1	Action Adventure Comedy Drama Romance Sci-Fi	6.99
3172	VS Knight Lamune &amp; 40 Fire	26	Comedy Fantasy Mecha Shounen	6.99
3173	Wakakusa no Charlotte	30	Drama Historical Kids Shoujo Slice of Life	6.99
10352	Haru wo Daite Ita	2	Drama Romance Yaoi	6.99
3103	Sword Art Online: Extra Edition	1	Action Adventure Fantasy Game Romance	7
3110	Alps no Shoujo Heidi (1979)	1	Drama Historical Slice of Life	7
3111	Aoi Blink	39	Adventure Fantasy	7
3112	Binchou-tan	12	Comedy Slice of Life	7
3113	Black Jack: Sora kara Kita Kodomo	1	Drama	7
3114	Buzzer Beater 2nd Season	13	Action Sci-Fi Shounen Sports	7
3115	Captain Tsubasa: Sekai Daikessen!! Jr. World Cup	1	Action Shounen Sports	7
3116	Cheer Danshi!!	12	School Sports	7
3117	Cossette no Shouzou	3	Drama Horror Magic Psychological Romance Supernatural	7
3118	Dragon Ball Z: Zenbu Misemasu Toshi Wasure Dragon Ball Z!	1	Action Adventure Comedy Fantasy Martial Arts Shounen Slice of Life Super Power	7
3119	Fushigi Yuugi: Eikouden	4	Adventure Drama Fantasy Romance Shoujo	7
3120	Kindaichi Shounen no Jikenbo: Satsuriku no Deep Blue	1	Mystery Shounen	7
3121	Kishin Taisen Gigantic Formula	26	Mecha Sci-Fi	7
3122	Manga Sarutobi Sasuke	24	Adventure Comedy Historical Supernatural	7
3123	Minky Momo in Yume ni Kakeru Hashi	1	Drama Shoujo Slice of Life	7
3124	Mobile Suit Gundam MS IGLOO: The Hidden One Year War	3	Mecha Military Sci-Fi Space	7
3125	Monster Strike: Mermaid Rhapsody	1	Action Fantasy Game	7
3126	Overman King Gainer	26	Action Adventure Mecha Sci-Fi Shounen	7
3127	Recorder to Randoseru Re♪	13	Comedy School Seinen Slice of Life	7
3128	Samurai Flamenco	22	Action Comedy Parody	7
3129	Schwarzesmarken	12	Action Drama Historical Mecha Military Sci-Fi	7
3130	Shin Angyo Onshi	1	Action Fantasy	7
3131	Super Seisyun Brothers	14	Comedy Josei Slice of Life	7
3132	Tenpou Ibun: Ayakashi Ayashi - Ayashi Shinkyoku	5	Action Drama Historical Supernatural	7
3133	Tesagure! Bukatsumono Encore	12	Parody School Slice of Life	7
3134	Tsurupika Hagemaru-kun	59	Comedy Kids	7
3135	Wellber no Monogatari: Sisters of Wellber Zwei	13	Adventure Fantasy Historical Romance	7
7367	Aikatsu Stars! Movie	1	Music School Shoujo Slice of Life	7
7612	Chiisana Koi no Monogatari: Chichi to Sally Hatsukoi no Shiki	1	Romance Shoujo Slice of Life	7
7728	Donguri no Ie	1	Drama	7
7896	Genbaku Dome Monogatari	1	Drama Historical	7
7924	Ginga Kikoutai Majestic Prince Movie: Kakusei no Idenshi	1	Action Mecha School Sci-Fi Seinen Space	7
7952	Goman-hiki	100	Kids	7
7960	Gozonji! Gekkou Kamen-kun	25	Comedy Parody Sci-Fi	7
7981	Hachikadzuki-hime	1	Drama Fantasy Historical Kids	7
8017	Hangyodon no 007/2: Doctor Sunday Arawaru no Maki	1	Kids Parody	7
8022	Hanshin Awaji Daishinsai ni Manabu: Boku wa Ano Hi wo Wasurenai.	1	Drama Historical Kids	7
8036	Hasu no Yousei: Bonyo Bonyo	1	Fantasy Kids	7
8050	Heijoukyou: Yasukerashi Miyako	1	Historical	7
8115	Hidamari no Ie	1	Drama Kids	7
8127	Himawari no You ni	1	Drama Kids	7
8133	Himitsukessha Taka no Tsume MAX	38	Comedy Parody Super Power	7
8231	Inori no Te	1	Drama Historical Kids	7
8249	Itazura Post	1	Comedy	7
8259	Jam the Housnail	15	Adventure Kids	7
8316	Kachikachi Yama (1939)	1	Fantasy	7
8352	Kaizoku Ouji	31	Adventure Shounen	7
8483	Kiminari Dousuru? Yuukai Itazura: Sarenai Tame ni	1	Drama Kids	7
8484	Kimoshiba	Unknown	Comedy	7
8513	Kizuna: Ningen no Uta Part 2	1	Drama Kids	7
8522	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Hashire! Ryoutsu-shiki Chinchin Densha	1	Comedy Police	7
8524	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Mezase! Kameari Superstar!! Ryoutsu-shiki Aidoru h	2	Comedy Police	7
8583	Kuiba II: Dazhan Yuan Yang Jie	1	Action Adventure Fantasy Kids	7
8603	Kurumiwari Ningyou (2014)	1	Drama Fantasy Romance	7
8625	Kyubi no Kitsune to Tobimaru (Sesshoseki)	1	Demons Fantasy	7
8748	Mashin Eiyuuden Wataru: Soukaizan Eiyuu Densetsu	1	Action Adventure Comedy Fantasy Mecha Sci-Fi Shounen	7
8762	Mebuki	1	Drama Kids	7
8792	Mikan Enikki Specials	2	Comedy Shoujo Slice of Life	7
8833	Mo Jing Lieren 2nd Season	26	Adventure Fantasy	7
8886	Muku Hatojuu no Meiken Monogatari	1	Adventure Drama Kids	7
8918	Naniwa Yuukyouden: Nekketsu!! Bakushou Mankai-hen	1	Action Comedy	7
8919	Naniwabushi Daisuki	1	Drama Historical Sports	7
8962	Nezumi-kun no Chokki	4	Kids	7
8963	Nibiki no Neko to Genkina Kazoku	1	Drama Kids	7
8997	Nintama Rantarou no Shouboutai	1	Drama Kids	7
9048	Obasuteyama	1	Drama	7
9434	Shen Ming Zhi Zhou	12	Adventure Fantasy	7
9449	Shiguang Guiyu	10	Drama Supernatural	7
9450	Shika to Kanta	1	Adventure Kids	7
9453	Shima Kousaku no Asia Shinseki-den	Unknown	Cars Drama Seinen	7
9473	Shin Pro Golfer Saru	10	Kids Sports	7
9504	Shisukon Ouji	14	Adventure	7
9506	Shitamachi Alien PapiPipiPupi	13	Sci-Fi	7
9526	Shounen Tokugawa Ieyasu	20	Drama Historical Shounen	7
9558	Son Gokuu no Koutsuu Rule Shugyou Chuu	1	Drama Fantasy Kids	7
9632	Sore Ike! Zukkoke Sannin-gumi	26	Comedy Kids School	7
9668	Suijun Genten	1		7
9689	Sweet Spot	1	Comedy	7
9695	Tabi no Kisetsu	1	Drama Kids	7
9717	Tamagotchi! Miracle Friends	29	Comedy Fantasy Kids	7
9736	Teach	4	Adventure Kids Music	7
9737	Tegami	1	Drama Historical Kids	7
9741	Ten ni Yaka Reru: E ni Yoru Shougen	1	Drama Historical	7
9755	Terajima-chou Kidan: Ginnagashi	1	Historical	7
9773	The Legend of Huainanzi 2nd Season	26	Adventure Fantasy Historical	7
9888	Ukkari Pénélope (2013)	13	Kids Slice of Life	7
10036	Yanase Takashi Märchen Gekijou	30	Kids	7
10065	Yong Zhe Da Mao Xian 2nd Season	26	Adventure Fantasy	7
10073	Youtai Nuhai Zai Shanghai	1	Historical Kids Shoujo	7
10082	Yukiguni no Oujisama	1	Slice of Life	7
10085	Yume Miru Anime: on-chan	26	Comedy	7
10090	Yume Sora Takaku	1	Drama Kids	7
10116	Zettai Zetsumei Dangerous Jiisan (2005)	19	Comedy Kids	7
10134	Zumomo to Nupepe	32	Comedy	7
10351	Sex Pistols	2	Comedy Drama Supernatural Yaoi	7
3075	Aldnoah.Zero Extra Archives	1	Action Mecha Sci-Fi	7.01
3076	Aoki Ryuusei SPT Layzner OVA	3	Action Mecha Military Sci-Fi Shounen Space	7.01
3077	Armitage III: Dual-Matrix	1	Action Adventure Mecha Sci-Fi	7.01
3078	Blood: The Last Vampire	1	Horror Supernatural Vampire	7.01
3079	Captain Tsubasa: Saikyou no Teki! Holland Youth	1	Action Shounen Sports	7.01
3080	Chou Hatsumei Boy Kanipan	21	Adventure Comedy Mecha Romance	7.01
3081	Coo: Tooi Umi kara Kita Coo	1	Adventure Drama Mystery Slice of Life	7.01
3082	Crusher Joe: The Movie	1	Action Adventure Sci-Fi Space	7.01
3083	Fate/Prototype	1	Action Fantasy Magic Romance Shounen Supernatural	7.01
3084	Flag Director&#039;s Edition: Issenman no Kufura no Kiroku	1	Action	7.01
3085	Ginga Tetsudou 999: Eien no Tabibito Emeraldas	1	Sci-Fi Space	7.01
3086	Ginga Tetsudou Monogatari: Wasurerareta Toki no Wakusei	4	Drama Sci-Fi Space	7.01
3087	Gyouten Ningen Batsealer	52	Action Adventure Fantasy Magic	7.01
3088	Hakaba Kitarou	11	Horror Supernatural	7.01
3089	Harukanaru Toki no Naka de 3: Kurenai no Tsuki	1	Action Fantasy Historical Military Shoujo	7.01
3090	Harukanaru Toki no Naka de 3: Kurenai no Tsuki Special	1	Comedy Fantasy Shoujo	7.01
3091	Himouto! Umaru-chanS	12	Comedy Seinen Slice of Life	7.01
3092	Hurricane Live! 2032	6	Music	7.01
3093	Kamisama no Inai Nichiyoubi: Kioku	1	Fantasy Mystery	7.01
3094	Lupin III: Touhou Kenbunroku - Another Page	1	Action Adventure Comedy Mystery Shounen	7.01
3095	Mermaid Forest OVA	1	Drama Fantasy Horror Mystery	7.01
3096	Mizuiro Jidai	47	Shoujo Slice of Life	7.01
3097	Moshidora	10	Drama Sports	7.01
3098	Ninpuu Kamui Gaiden	26	Action Adventure Historical Martial Arts Samurai	7.01
3099	Sakura Taisen	25	Adventure Mecha Sci-Fi Shounen	7.01
3100	Sakura Taisen: Gouka Kenran	6	Adventure Mecha Sci-Fi Shounen	7.01
3101	Seigi wo Aisuru Mono Gekkou Kamen	39	Action Mystery	7.01
3102	Sirius no Densetsu	1	Drama Fantasy Romance	7.01
3104	Thermae Romae Specials	2	Comedy Historical Seinen	7.01
3105	Touch 3: Kimi ga Toorisugita Ato ni - Don&#039;t Pass Me By	1	Drama School Sports	7.01
3106	UFO Princess Valkyrie: Special	1	Comedy Romance Sci-Fi	7.01
3107	Urusei Yatsura: Haru da Tobidase!	2	Action Adventure Comedy Drama Romance Sci-Fi	7.01
3108	Wakaba*Girl	13	Comedy School Slice of Life	7.01
3109	Zetman	13	Action Drama Horror Romance Sci-Fi Seinen Supernatural	7.01
3038	1000-nen Joou: Queen Millennia	1	Adventure Drama Fantasy Sci-Fi	7.02
3039	Ani*Kuri15	15	Adventure Comedy Drama Fantasy Game Magic Martial Arts Mecha School Sci-Fi Slice of Life Super Power Supernatural	7.02
3040	Astro Boy: Tetsuwan Atom	50	Action Adventure Kids Mecha Sci-Fi Shounen Super Power	7.02
3041	Bakuman. 2nd Season Special	1	Comedy	7.02
3042	Bakuten Shoot Beyblade G Revolution	52	Action Adventure Comedy Sci-Fi Shounen Sports	7.02
3043	Battle Athletess Daiundoukai (TV)	26	Action Adventure Comedy Drama School Sci-Fi Shounen Sports	7.02
3044	Black Lagoon Omake	7	Comedy	7.02
3045	Candy☆Boy: Side Story For Archive	1	Romance School Shoujo Ai	7.02
3046	Captain Tsubasa: Europe Daikessen	1	Action Shounen Sports	7.02
3047	Clover	1	Drama Fantasy Music Sci-Fi Shoujo	7.02
3048	Crayon Shin-chan Movie 19: Arashi wo Yobu Ougon no Spy Daisakusen	1	Comedy	7.02
3049	Daikuu Maryuu Gaiking	44	Adventure Mecha Sci-Fi Shounen	7.02
3050	Detective Conan: The Fugitive Kogorou Mouri	1	Comedy Mystery	7.02
3051	Digimon Frontier: Ornismon Fukkatsu!!	1	Adventure Comedy Drama Fantasy Shounen	7.02
3052	Fate/stay night TV Reproduction	2	Action Fantasy Magic Romance Shounen Supernatural	7.02
3053	Futakoi Alternative	13	Comedy Drama Romance	7.02
3054	Garakuta-doori no Stain	13	Comedy	7.02
3055	Ginga Senpuu Braiger	39	Action Adventure Mecha Space	7.02
3056	Gregory Horror Show: The Second Guest	25	Comedy Demons Horror Mystery Supernatural Vampire	7.02
3057	Hana no Ko Lunlun	50	Drama Magic Shoujo	7.02
3058	Kakurenbo	1	Horror Psychological Supernatural	7.02
3059	Kyouryuu Boukenki Jura Tripper	39	Adventure Drama Fantasy Sci-Fi	7.02
3060	Papuwa	26	Adventure Comedy	7.02
3061	Pokemon Advanced Generation: Pokemon Ranger to Umi no Ouji Manaphy	1	Action Adventure Drama Fantasy Kids	7.02
3062	Project A-Ko	1	Action Adventure Comedy Mecha Sci-Fi Super Power	7.02
3063	Rinne no Lagrange	12	Action Comedy Mecha Sci-Fi	7.02
3064	Samurai Deeper Kyou	26	Adventure Comedy Historical Shounen Supernatural	7.02
3065	Sangokushi (1985)	1	Historical	7.02
3066	Senki Zesshou Symphogear: Meteoroid-Falling Burning and Disappear Then...	13	Action Music Sci-Fi	7.02
3067	Shakugan no Shana S Specials	4	Comedy Parody	7.02
3068	TaoTao Ehonkan Sekai Doubutsu Banashi	52	Adventure Comedy Fantasy Kids	7.02
3069	Tenpou Ibun: Ayakashi Ayashi	25	Demons Historical Supernatural	7.02
3070	Totsuzen! Neko no Kuni Banipal Witt	1	Adventure	7.02
3071	Touch: Miss Lonely Yesterday - Are kara Kimi wa...	1	Romance Shounen Sports	7.02
3072	Wakaba*Girl: Onsen Tsukaritai	1	Comedy Slice of Life	7.02
3073	Weiß Kreuz OVA	2	Action Drama	7.02
3074	Zone of the Enders: Idolo	1	Action Drama Mecha Military Romance Sci-Fi Space	7.02
8696	Mak Dau Goo Si	1	Comedy	7.02
10350	Kirepapa.	2	Comedy Drama Romance Yaoi	7.02
3011	Accel World: Infinite∞Burst	1	Action Game Romance School Sci-Fi	7.03
3012	Arslan Senki	6	Action Adventure Drama Fantasy Historical	7.03
3013	Baka to Test to Shoukanjuu: Matsuri - Sentaku ni Yotte Tenkai ga Kawaru &quot;LIPS Eizou&quot;	1	Comedy Parody	7.03
3014	Code:Breaker	13	Action Comedy School Shounen Super Power Supernatural	7.03
3015	Dragon Ball Movie 2: Majinjou no Nemuri Hime	1	Action Adventure Comedy Fantasy Sci-Fi Shounen Super Power	7.03
3016	Dwaejiui Wang	1	Drama Psychological Seinen Thriller	7.03
2942	Hakaima Sadamitsu	10	Action Mecha School Sci-Fi Seinen	7.05
3017	Futari wa Precure: Max Heart	47	Action Comedy Fantasy Magic Shoujo	7.03
3018	Iron Kid	26	Action Adventure Comedy Sci-Fi	7.03
3019	Keroro Gunsou: Mushakero Ohirome Sengoku Ranstar Dai Battle	1	Action Comedy Mecha Parody Samurai Shounen	7.03
3020	Kinnikuman II Sei: Ultimate Muscle 2	13	Action Comedy Martial Arts Sci-Fi Shounen Sports	7.03
3021	Koi to Senkyo to Chocolate Special	1	Drama Romance School	7.03
3022	Koisuru Tenshi Angelique: Kokoro no Mezameru Toki	13	Adventure Comedy Drama Fantasy Magic Romance Sci-Fi Shoujo	7.03
3023	Kumo no You ni Kaze no You ni	1	Adventure Drama Historical Romance	7.03
3024	Lostorage Incited WIXOSS	12	Game Psychological	7.03
3025	Lupin III: Bye Bye Liberty - Kiki Ippatsu!	1	Action Adventure Comedy Shounen	7.03
3026	Mini Sengoku Basara Two: Tsukiyo no Katakura-kun	7	Comedy Historical	7.03
3027	Mirai Shounen Conan 2: Taiga Daibouken	24	Adventure Drama Sci-Fi	7.03
3028	Mizu no Kotoba	1	Drama Psychological Sci-Fi	7.03
3029	Munto	1	Fantasy Magic Romance	7.03
3030	Musaigen no Phantom World	13	Action Comedy Fantasy Slice of Life Supernatural	7.03
3031	Ninin ga Shinobuden	12	Comedy Martial Arts Parody	7.03
3033	Rayearth	3	Action Adventure Fantasy	7.03
3034	Rocket Girls	12	Adventure Sci-Fi	7.03
3035	Shirobako Specials	2	Adventure Comedy	7.03
3036	Shounen Maid Special	1	Comedy Shoujo Slice of Life	7.03
3037	Tottoko Hamtarou	296	Adventure Comedy Kids	7.03
9289	Pyuu to Fuku! Jaguar: Ima Fuki ni Yukimasu	1	Comedy Music	7.03
9376	Sangokushi Dainibu Choukou Moyu	1	Action Historical	7.03
2966	Aa! Megami-sama!: Chichaitte Koto wa Benri da ne	48	Comedy Magic Supernatural	7.04
2967	Ai Yori Aoshi: Enishi - Miyuki	1	Comedy Drama Romance	7.04
2968	Amatsuki	13	Action Fantasy Historical Shoujo Supernatural	7.04
2969	Animal Yokochou	51	Adventure Comedy Fantasy Shoujo	7.04
2970	Animation Seisaku Shinkou Kuromi-chan	1	Comedy Drama Parody	7.04
2971	Candy Boy Episode: EX01 - Mirai Yohouzu	1	School Shoujo Ai Slice of Life	7.04
2972	Crayon Shin-chan Movie 23: Ora no Hikkoshi Monogatari - Saboten Daisuugeki	1	Comedy Kids Shounen	7.04
2973	Digimon Xros Wars	30	Action Adventure Comedy Fantasy Shounen	7.04
2974	Etotama	12	Action Comedy Fantasy	7.04
2975	Genji Monogatari Sennenki	11	Drama Historical Romance	7.04
2976	Gintama x Mameshiba	6	Comedy Parody	7.04
2977	Girls und Panzer: Fushou - Akiyama Yukari no Sensha Kouza	6	Military School	7.04
2978	Hare Tokidoki Buta (TV)	61	Comedy	7.04
2979	Hi no Tori: Yamato-hen	1	Drama Historical	7.04
2980	Kantai Collection: KanColle	12	Action Military School Sci-Fi Slice of Life	7.04
2981	Kindaichi Shounen no Jikenbo Returns 2nd Season: Akechi Keibu no Jikenbo	1	Mystery Shounen	7.04
2982	Kindaichi Shounen no Jikenbo: Kuromajutsu Satsujin Jiken-hen	2	Mystery Shounen	7.04
2983	Kogepan	10	Comedy	7.04
2984	Kowarekake no Orgel Special	1	Drama Music Sci-Fi Seinen Slice of Life	7.04
2985	Lupin III: Ai no Da Capo - Fujiko&#039;s Unlucky Days	1	Action Adventure Comedy Shounen	7.04
2986	Macross Flash Back 2012	1	Drama Mecha Military Sci-Fi	7.04
2987	Mahoutsukai Precure!	48	Action Fantasy Magic School Shoujo Slice of Life	7.04
2988	Manie-Manie: Meikyuu Monogatari	3	Adventure Fantasy Horror Sci-Fi Supernatural	7.04
2989	Mobile Suit Gundam MS IGLOO 2: Gravity of the Battlefront	3	Mecha Sci-Fi	7.04
2990	Nisekoimonogatari	1	Music	7.04
2991	Ojamajo Doremi OVA	3	Kids Magic	7.04
2992	Okusama ga Seitokaichou!: Okusama Gekijou	12	Comedy Shounen	7.04
2993	One Piece Film: Gold Episode 0 - 711 ver.	1	Action Adventure Comedy Fantasy Shounen Super Power	7.04
2994	Pokemon Best Wishes! Season 2: Episode N	14	Action Adventure Comedy Fantasy Kids	7.04
2995	Pokemon Crystal: Raikou Ikazuchi no Densetsu	1	Action Adventure Comedy Fantasy Kids	7.04
2996	Pokemon: Pikachu to Eevee Friends	1	Adventure Comedy Fantasy Kids	7.04
2997	Precure All Stars Movie: Minna de Utau♪ - Kiseki no Mahou	1	Action Comedy Fantasy Magic Music Shoujo	7.04
2998	Prince of Stride: Alternative	12	Sports	7.04
2999	Prince of Tennis: Oshougatsu Special	1	Action Comedy Shounen Sports	7.04
3000	Shin Hokuto no Ken	3	Action Martial Arts Sci-Fi Shounen	7.04
3001	Shisha no Teikoku	1	Historical Psychological Sci-Fi	7.04
3002	Tantei Opera Milky Holmes	12	Comedy Mystery Super Power	7.04
3003	Tetsujin 28-gou (1980)	51	Action Mecha	7.04
3004	The☆Doraemons: The Mysterious Thief Dorapan The Mysterious Cartel	1	Comedy Fantasy Kids Sci-Fi Shounen	7.04
3005	Tokyo Mew Mew	52	Adventure Comedy Fantasy Magic Romance Sci-Fi Shoujo Supernatural	7.04
3006	Uchuu Senkan Yamato (Movie)	1	Drama Military Sci-Fi Space	7.04
3007	Vampire Knight: Gekiai no Portrait	1	Comedy Shoujo Vampire	7.04
3008	Vexille: 2077 Nihon Sakoku	1	Action Military Sci-Fi	7.04
3009	Wake Up Girls!	12	Drama Music	7.04
3010	Zone of the Enders: Dolores I	26	Action Adventure Comedy Mecha Military Sci-Fi Space	7.04
3032	Pokemon Omega Ruby &amp; Alpha Sapphire: Mega Special Animation	1	Action Adventure Fantasy Kids	7.04
2932	A-Channel: +A-Channel	11	Comedy School Seinen Slice of Life	7.05
2933	Ai no Senshi Rainbowman	22	Action Adventure Mecha Sci-Fi	7.05
2934	Animation Seisaku Shinkou Kuromi-chan 2	1	Comedy Drama Parody	7.05
2935	Bleach: The Sealed Sword Frenzy	1	Adventure Comedy Drama Fantasy Shounen Supernatural	7.05
2936	CB Chara Go Nagai World	3	Action Comedy Parody	7.05
2937	CLAMP Gakuen Tanteidan	26	Action Comedy Mystery	7.05
2938	Code Geass: Hangyaku no Lelouch - Kiseki no Birthday Picture Drama	1	School Supernatural	7.05
2939	Dragon Ball Movie 1: Shen Long no Densetsu	1	Action Adventure Comedy Fantasy Shounen Super Power	7.05
2940	Dragon Ball Z: Summer Vacation Special	1	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	7.05
2941	Dragon Half	2	Comedy Fantasy Parody	7.05
2943	Heisei Inu Monogatari Bow	40	Adventure Comedy	7.05
2944	Ikkyuu-san	296	Comedy Historical Kids	7.05
2945	It&#039;s a Rumic World: 50th Anniversary Weekly★Shonen Sunday	1	Comedy Sci-Fi	7.05
2946	Kannazuki no Miko	12	Drama Magic Mecha Romance Shoujo Ai Shounen Supernatural	7.05
2947	Kimi ga Nozomu Eien: Next Season	4	Drama Romance	7.05
2948	Live On Cardliver Kakeru	51	Fantasy Game	7.05
2949	Macross 7 Movie: Ginga ga Ore wo Yondeiru!	1	Action Adventure Comedy Drama Mecha Music Sci-Fi Shounen	7.05
2950	Mashin Eiyuuden Wataru 2	46	Adventure Comedy Mecha	7.05
2951	Minami no Niji no Lucy	50	Adventure Drama Slice of Life	7.05
2952	Ore no Imouto ga Konnani Kawaii Wake ga Nai.: SD Chara ni Yoru Short Movie	13	Comedy	7.05
2953	Pokemon the Movie XY&amp;Z: Volcanion to Karakuri no Magiana	1	Adventure Fantasy Kids	7.05
2954	Pokemon XY&amp;Z Specials	2	Action Adventure Comedy Fantasy Kids	7.05
2955	Pokemon: Celebi Toki wo Koeta Deai	1	Adventure Comedy Drama Fantasy Kids	7.05
2956	Queen Emeraldas	4	Action Adventure Sci-Fi	7.05
2957	Saint Seiya: Jashin Eris	1	Adventure Sci-Fi Shounen	7.05
2958	Shinigami no Ballad.	6	Drama Fantasy Psychological Supernatural	7.05
2959	Stranger: Mukou Hadan Pilot	1	Action Adventure Historical Samurai Seinen	7.05
2960	Tantei Opera Milky Holmes: Summer Special	1	Comedy Mystery Super Power	7.05
2961	Tell Your World	1	Music	7.05
2962	Touhou Niji Sousaku Doujin Anime: Musou Kakyou Special	1	Fantasy Magic	7.05
2963	Tribe Cool Crew	50	Music School	7.05
2964	Tsuyoshi Shikkari Shinasai	112	Comedy Drama Romance School Shounen Slice of Life	7.05
2965	Yu☆Gi☆Oh! (1999)	1	Adventure Comedy Fantasy Game Shounen	7.05
8401	Karaoke Senshi Mike-tarou	20	Kids Music	7.05
8527	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Ryoutsu no Asakusa Rinyuuaru Daisakusen!! - Aa Om	1	Comedy Police	7.05
8633	Larva 2nd Season	34	Comedy	7.05
2897	&quot;Bungaku Shoujo&quot; Kyou no Oyatsu: Hatsukoi	1	Comedy Fantasy School	7.06
2898	.hack//Roots	26	Adventure Drama Fantasy Game Sci-Fi	7.06
2899	A-Channel	12	Comedy School Seinen Slice of Life	7.06
2900	Beet the Vandel Buster	52	Adventure Fantasy Shounen Supernatural	7.06
2901	Cardfight!! Vanguard: Asia Circuit-hen	39	Action Adventure Demons Game Shounen	7.06
2902	Children Record	2	Music	7.06
2903	Devil Survivor 2 The Animation	13	Action Demons Supernatural	7.06
2904	Dominion	4	Comedy Mecha Police Sci-Fi	7.06
2905	Fractale	11	Adventure Fantasy Sci-Fi	7.06
2906	gdgd Fairies	12	Comedy	7.06
2907	Gegege no Kitarou (1968)	65	Adventure Comedy Fantasy Horror Supernatural	7.06
2908	Genki Bakuhatsu Ganbaruger	47	Mecha Shounen	7.06
2909	Gokujou Seitokai	26	Comedy School Slice of Life	7.06
2910	Hyper Police	25	Action Comedy Police Romance Sci-Fi	7.06
2911	Katte ni Kaizou	6	Comedy Parody School Sci-Fi Shounen	7.06
2912	Kaze to Ki no Uta Sanctus: Sei Naru Kana	1	Drama Historical Romance Shoujo Shounen Ai	7.06
2913	Kinnikuman: Kinnikusei Oui Soudatsu-hen	46	Action Comedy Shounen Sports	7.06
2914	Lupin III: Kiri no Elusive	1	Action Adventure Comedy Shounen	7.06
2915	Mai-HiME Specials	27	Comedy	7.06
2916	Maria†Holic Alive	12	Comedy Parody School Shoujo Ai	7.06
2918	Namiuchigiwa no Muromi-san	13	Comedy Fantasy Slice of Life	7.06
2919	Natsu-iro Kiseki	12	School Slice of Life Supernatural	7.06
2920	New Dominion Tank Police	6	Comedy Mecha Police Sci-Fi Shounen	7.06
2921	Nirvana	1	Music	7.06
2922	Rinne no Lagrange Season 2	12	Action Comedy Mecha Sci-Fi	7.06
2923	Rockman.EXE	56	Action Adventure Comedy Game Mecha Sci-Fi Shounen	7.06
2924	Scryed Alteration II: Quan	1	Action Adventure Sci-Fi Shounen Super Power	7.06
2925	Shingeki! Kyojin Chuugakkou	12	Comedy Parody School Shounen	7.06
2926	Shouwa Monogatari	13	Drama Historical	7.06
2927	Sola Specials	2	Comedy Romance Slice of Life Supernatural	7.06
2928	The iDOLM@STER Cinderella Girls 2nd Anniversary PV	1	Music	7.06
2929	Zettai Muteki Raijin-Oh	51	Adventure Mecha School Sci-Fi Shounen	7.06
2930	Zettai Shounen	26	Drama Fantasy Mystery Sci-Fi Shounen	7.06
2931	Zombie-Loan	11	Action Horror Shounen Supernatural	7.06
8043	Hayan Ma-eum Baeggu	13	Adventure	7.06
10349	Hyakujitsu no Bara	2	Drama Yaoi	7.06
2868	Bakusou Kyoudai Let&#039;s &amp; Go WGP	51	Cars Shounen Sports	7.07
2869	Black★Rock Shooter (TV)	8	Action Drama School Slice of Life	7.07
2870	Blassreiter	24	Action Sci-Fi	7.07
2871	Buddy Complex: Daremo Shiranai Ashita e	1	Action Mecha Sci-Fi	7.07
2872	Cardfight!! Vanguard G: GIRS Crisis-hen	26	Action Game Shounen	7.07
2873	Carnival Phantasm: Illya-jou	1	Comedy Parody	7.07
2874	Dragon Ball: Super Saiya-jin Zetsumetsu Keikaku	1	Adventure Fantasy Martial Arts Sci-Fi Shounen Super Power	7.07
2875	Gate Keepers	24	Action Comedy Fantasy Mecha Sci-Fi Shounen	7.07
2876	Gegege no Kitarou (2007)	100	Comedy Fantasy Horror	7.07
2877	Getter Robo	51	Action Mecha Sci-Fi Shounen	7.07
2878	Ghost in the Shell: Stand Alone Complex - Solid State Society 3D - Tachikoma no Hibi	3	Comedy Mecha Sci-Fi	7.07
2879	Goal FH: Field Hunter	39	Action Sports	7.07
2880	Gundam Build Fighters Try: Island Wars	1	Action Mecha Sci-Fi	7.07
2881	Ie Naki Ko Remi Specials (2001)	2	Adventure Drama Slice of Life	7.07
2882	Kimikiss Pure Rouge Special	1	Romance School	7.07
2883	Koukou Butouden Crows	2	Action School Shounen	7.07
2884	Macross 7 Encore	3	Action Comedy Drama Mecha Music Sci-Fi Shounen	7.07
2885	Miyori no Mori	1	Drama Fantasy Slice of Life	7.07
2886	Overlord: Ple Ple Pleiades	8	Action Comedy Fantasy Magic	7.07
2887	Saikyou Bushouden: Sangoku Engi	52	Historical	7.07
2836	Tengen Toppa Gurren Lagann: Parallel Works 2	7	Mecha Music	7.09
2888	Saint Seiya: Saishuu Seisen no Senshi-tachi	1	Adventure Sci-Fi Shounen	7.07
2889	Shin Maple Town Monogatari: Palm Town-hen	44	Fantasy Slice of Life	7.07
2890	Shinzou Ningen Casshern	35	Action	7.07
2891	Super Fishing Grander Musashi	25	Adventure Sports	7.07
2892	Tatsu no Ko Tarou	1	Adventure Demons Fantasy Historical	7.07
2893	Tokumu Sentai Shinesman	2	Action Comedy Sci-Fi	7.07
2894	Touhou Niji Sousaku Doujin Anime: Musou Kakyou	2	Fantasy Magic	7.07
2895	YAT Anshin! Uchuu Ryokou 2	25	Adventure Comedy Sci-Fi Shounen	7.07
2896	Yu☆Gi☆Oh! Zexal Second	73	Action Fantasy Game Shounen	7.07
7882	Gatapishi	199	Comedy Slice of Life	7.07
8145	Hiroshima ni Ichiban Densha ga Hashitta	1	Drama Historical	7.07
9297	Qin Shiming Yue Zhi: Tian Xing Jiu Ge	3	Action Fantasy Historical Martial Arts	7.07
9377	Sangokushi Daisanbu Harukanaru Taichi	1	Action Historical	7.07
9438	Shi Wan Ge Leng Xiaohua	1	Action Adventure Comedy Fantasy Parody	7.07
2802	Arslan Senki (TV) OVA	2	Adventure Fantasy Historical Shounen	7.08
2840	Ace wo Nerae!	26	Drama Romance School Shoujo Sports	7.08
2841	Anne no Nikki	1	Drama Historical	7.08
2843	Candy Boy: Nonchalant Talk of the Certain Twin Sisters in Daily Life	7	Romance School Shoujo Ai	7.08
2844	Cardfight!! Vanguard: Legion Mate-hen	33	Action Adventure Demons Game Shounen	7.08
2845	Cello Hiki no Gauche (1982)	1	Drama Fantasy Kids Music	7.08
2846	Dash! Yonkurou	25	Action Kids Shounen Sports	7.08
2847	Dragon Ball Z: Saiya-jin Zetsumetsu Keikaku	2	Adventure Comedy Fantasy Sci-Fi Shounen	7.08
2848	Eureka Seven: Navigation ray=out	1	Mecha Sci-Fi	7.08
2849	Gakkou no Kaidan: Kubinashi Rider!! Shi no Noroi	1	Horror Mystery Supernatural	7.08
2850	Hai! Akko Desu	164	Romance Slice of Life	7.08
2851	Hashire Melos!	1	Action Adventure Historical	7.08
2852	Kurozuka	12	Action Drama Historical Horror Romance Sci-Fi Vampire	7.08
2853	Lupin III: Lupin Ansatsu Shirei	1	Action Adventure Comedy Shounen	7.08
2854	Mermaid&#039;s Scar	1	Drama Fantasy Horror Mystery	7.08
2855	Nissan Serena x One Piece 3D: Mugiwara Chase - Sennyuu!! Sauzando Sanii-gou	1	Comedy Fantasy Shounen	7.08
2856	Pita Ten	26	Comedy Fantasy Kids Romance School Shounen	7.08
2857	Saibi	1	Drama Psychological Thriller	7.08
2858	Sekai Meisaku Douwa: Mori wa Ikiteiru	1	Fantasy Kids	7.08
2859	Shin Tenchi Muyou! Specials	6	Comedy Romance Sci-Fi Shounen	7.08
2860	Starmyu	12	Music School Slice of Life	7.08
2861	Starmyu OVA	2	Music School Slice of Life	7.08
2862	Stratos 4 Advance Kanketsu-hen	2	Comedy Military Sci-Fi	7.08
2863	Sumomomo Momomo: Chijou Saikyou no Yome	22	Comedy Martial Arts Romance	7.08
2864	Touch: Sebangou no Nai Ace	1	Drama Romance Sports	7.08
2865	Urusei Yatsura Movie 6: Itsudatte My Darling	1	Action Adventure Comedy Drama Romance Sci-Fi	7.08
2866	Yomigaeru Sora: Rescue Wings Special	1	Drama Military Seinen	7.08
2867	Yumekui Merry	13	Action Shounen Supernatural	7.08
2917	Monkey King: Hero Is Back	1	Adventure Fantasy Historical Martial Arts Supernatural	7.08
7412	Animentary: Ketsudan	26	Historical Military	7.08
7703	Dekoboko Shin Gachou: Meian no Shippai	1	Comedy	7.08
8921	Nano Invaders	52	Action Adventure Shounen Super Power	7.08
9440	Shi Wan Ge Leng Xiaohua Di 3rd Season	Unknown	Comedy Parody	7.08
9472	Shin Otokogi	2	Seinen	7.08
2801	Arete Hime	1	Fantasy Magic	7.09
2803	Blue Seed Omake	14	Comedy Parody	7.09
2804	Chicchana Yukitsukai Sugar Specials	2	Comedy Magic Shoujo Slice of Life	7.09
2805	Cobra The Animation: The Psycho-Gun	4	Action Adventure Mecha Sci-Fi Space	7.09
2806	Cobra The Animation: Time Drive	2	Action Adventure Sci-Fi Space	7.09
2807	Dai Mahou Touge	4	Comedy Magic Supernatural	7.09
2808	Days (TV)	24	School Shounen Sports	7.09
2809	Domo-kun	Unknown	Comedy Kids Slice of Life	7.09
2810	Dragon Ball Movie 3: Makafushigi Daibouken	1	Action Adventure Comedy Fantasy Sci-Fi Shounen Super Power	7.09
2811	Dragon Ball Z Movie 06: Gekitotsu!! 100-oku Power no Senshi-tachi	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.09
2812	Dragonaut: The Resonance Special	1	Action Mecha Romance Sci-Fi Space	7.09
2813	Furusato Saisei: Nihon no Mukashibanashi	Unknown	Historical Kids Supernatural	7.09
2814	Galaxy Angel S	1	Comedy Sci-Fi	7.09
2815	Ginga Tetsudou Monogatari: Eien e no Bunkiten	24	Action Adventure Drama Sci-Fi Space	7.09
2816	Gokukoku no Brynhildr	13	Drama Mystery Sci-Fi Seinen	7.09
2817	Heart Realize	1	Music	7.09
2818	Hitsugi no Chaika OVA	1	Action Adventure Comedy Fantasy Shounen	7.09
2819	Honoo no Alpenrose: Judy &amp; Randy	20	Drama Historical Romance Shoujo	7.09
2820	Hoshi no Oujisama Petit Prince	39	Adventure	7.09
2821	Jinzou Ningen Kikaider The Animation	13	Action Drama Mecha Sci-Fi Shounen	7.09
2822	Kaitou Joker 3rd Season	13	Adventure Comedy Mystery Shounen	7.09
2823	Key the Metal Idol	15	Action Drama Mecha Music Sci-Fi	7.09
2824	Koitabi: True Tours Nanto	6	Romance	7.09
2825	Korekuraide Utau	1	Music	7.09
2826	Kurogane no Linebarrels	24	Action Mecha Sci-Fi	7.09
2827	Lupin III: Lupin vs. Fukusei-ningen	1	Action Adventure Comedy Mystery Shounen	7.09
2828	Mokke Specials	2	Mystery Slice of Life Supernatural	7.09
2829	Net Ghost Pipopa	51	Action Adventure Comedy Kids Sci-Fi Shounen	7.09
2830	Night Walker: Mayonaka no Tantei	12	Action Comedy Horror Mystery Vampire	7.09
2831	Ookami to Koushinryou II Specials	2	Fantasy	7.09
2832	Otogi Juushi Akazukin	39	Adventure Comedy Fantasy	7.09
2833	Sekai Meisaku Douwa: Hakuchou no Ouji	1	Fantasy	7.09
2834	Sora wo Kakeru Shoujo	26	Adventure Comedy Sci-Fi Space	7.09
2835	Suite Precure♪ Movie: Torimodose! Kokoro ga Tsunaku Kiseki no Melody♪	1	Fantasy Kids Magic Shoujo	7.09
2837	Tsubasa to Hotaru	1	Romance School Shoujo	7.09
2838	Uta Kata Special	1	Drama Magic	7.09
2842	Battle Spirits: Sword Eyes	29	Action Shounen	7.09
8634	Larva 3rd Season	26	Comedy	7.09
9066	Ojamanga Yamada-kun (Movie)	1	Comedy Slice of Life	7.09
9774	The Marshmallow Times	52	Slice of Life	7.09
9858	Tsushima Maru: Sayounara Okinawa	1	Historical	7.09
2774	Asura Cryin&#039;	13	Action Mecha Supernatural	7.1
2775	Chobits: Chibits	1	Comedy Romance	7.1
2776	Code Geass: Hangyaku no Lelouch Picture Drama	9	Comedy School Slice of Life	7.1
2777	Densetsu Kyojin Ideon	39	Drama Mecha Sci-Fi Space	7.1
2778	Digimon Savers	48	Adventure Comedy Drama Fantasy Shounen	7.1
2779	Digimon Tamers: Boukensha-tachi no Tatakai	1	Adventure Drama Sci-Fi Shounen	7.1
2780	Doraemon Meets Hattori the Ninja	1	Comedy Kids Sci-Fi Shounen	7.1
2781	El Hazard: The Wanderers	26	Adventure Comedy Fantasy Romance	7.1
2782	Guilty Crown: Lost Christmas	1	Action Drama Sci-Fi Super Power	7.1
2783	Kagaku Ninja-tai Gatchaman	105	Action Adventure Sci-Fi Shounen	7.1
2784	Katekyo Hitman Reborn! x ēlDLIVE Special	1	Shounen Super Power	7.1
2785	Kono Danshi Uchuujin to Tatakaemasu.	1	Action Fantasy Shounen Ai Super Power Supernatural	7.1
2786	Lost Universe	26	Adventure Comedy Drama Sci-Fi Shounen Space	7.1
2787	Maison Ikkoku: Prelude - Meguru Haru no Sakura no you ni...	1	Comedy Drama Romance	7.1
2788	Montana Jones	52	Adventure Comedy	7.1
2789	Muumin	65	Adventure Comedy Fantasy Slice of Life	7.1
2790	Nana Recaps	3	Comedy Drama Music Romance Shoujo Slice of Life	7.1
2791	Otogizoushi	26	Adventure Drama Fantasy Historical	7.1
2792	Pokemon Advanced Generation: Rekkuu no Houmonsha Deoxys	1	Action Adventure Comedy Fantasy Kids Sci-Fi	7.1
2793	Pokemon Diamond &amp; Pearl: Giratina to Sora no Hanataba Sheimi	1	Action Adventure Fantasy Kids	7.1
2794	Prince of Tennis: The Band of Princes Film Kick the Future	1	Action Music	7.1
2795	Ranma ½: DoCo Music Video	1	Comedy Martial Arts Music Slice of Life	7.1
2796	Shingetsutan Tsukihime	12	Action Horror Mystery Romance Super Power Supernatural Vampire	7.1
2797	Starship Operators	13	Drama Military Sci-Fi Space	7.1
2798	Tistou Midori no Oyayubi	1	Historical Magic	7.1
2799	UFO Princess Valkyrie 2: Juunigatsu no Yasoukyoku	12	Comedy Romance Sci-Fi	7.1
2800	World Destruction: Sekai Bokumetsu no Rokunin	13	Adventure Fantasy	7.1
2839	Youkai Watch Movie 2: Enma Daiou to Itsutsu no Monogatari da Nyan!	1	Comedy Kids Supernatural	7.1
7546	Bunbuku Chagama	1	Kids	7.1
8200	Ichigo Ichie: Koibana Tomobana	13	Comedy	7.1
8876	Mouretsu Atarou (1990)	34	Comedy Kids Slice of Life	7.1
9354	Sabu to Ichi Torimono Hikae	52	Action Adventure Drama Historical Martial Arts Police Samurai Shounen Slice of Life	7.1
2715	Inazuma Eleven Go: Galaxy	43	Shounen Sports Super Power	7.11
2738	Anime Himitsu no Hanazono	39	Drama Historical Kids Shoujo	7.11
2739	Azumanga Daioh: Gekijou Tanpen	1	Comedy School Slice of Life	7.11
2740	Binan Koukou Chikyuu Bouei-bu LOVE!	12	Comedy Magic School Slice of Life	7.11
2741	Chibi Maruko-chan: Watashi no Suki na Uta	1	Comedy Slice of Life	7.11
2742	Chihayafuru 2: Waga Mi Yo ni Furu Nagame Seshi Ma ni	1	Comedy Josei Slice of Life	7.11
2743	Dae Jang Geum: Jang Geum&#039;s Dream 2	26	Adventure Comedy Historical	7.11
2744	Deltora Quest	65	Adventure Fantasy Kids	7.11
2745	Dr. Slump	74	Comedy Sci-Fi Shounen Slice of Life	7.11
2746	Dragon Ball Z Movie 10: Kiken na Futari! Super Senshi wa Nemurenai	1	Action Adventure Comedy Demons Fantasy Martial Arts Shounen Super Power	7.11
2747	Gatchaman Crowds Insight: Inbound	1	Adventure Sci-Fi	7.11
2748	Ghost in the Shell: Stand Alone Complex - The Laughing Man - Tachikoma no Hibi	1	Comedy Mecha Sci-Fi	7.11
2749	Gi(a)rlish Number	12	Slice of Life	7.11
2750	Gosick Recap	1	Historical Mystery Shounen	7.11
2751	Kawa no Hikari	1	Adventure Kids	7.11
2752	Koutetsushin Jeeg	13	Mecha Sci-Fi	7.11
2753	Lu Shidai	14	Action Adventure Comedy Game Parody	7.11
2754	Lupin III: Hemingway Paper no Nazo	1	Action Adventure Comedy Mystery Shounen	7.11
2755	Lupin III: Princess of the Breeze - Kakusareta Kuuchuu Toshi	1	Action Adventure Comedy Shounen	7.11
2756	Mahoujin Guru Guru Movie	1	Adventure Comedy Fantasy Magic Shounen	7.11
2757	Mashin Eiyuuden Wataru	45	Adventure Comedy Mecha Sci-Fi Shounen	7.11
2758	Mermaid Melody Pichi Pichi Pitch	52	Adventure Comedy Magic Romance Shoujo	7.11
2759	Mudazumo Naki Kaikaku: The Legend of Koizumi	3	Comedy Game Parody Seinen	7.11
2760	Naruto Soyokazeden Movie: Naruto to Mashin to Mitsu no Onegai Dattebayo!!	1	Action Comedy Martial Arts Shounen Super Power	7.11
2761	Porphy no Nagai Tabi	52	Drama Historical Kids Slice of Life	7.11
2762	Rockman.EXE Beast+	26	Action Adventure Game Mecha Sci-Fi Shounen	7.11
2763	Sekiranun Graffiti	1	Music	7.11
2764	Sousei no Onmyouji	50	Action Fantasy Shounen Supernatural	7.11
2765	Taiyou no Mokushiroku: A Spirit of the Sun	2	Drama Sci-Fi	7.11
2766	Tezuka Osamu no Buddha: Akai Sabaku yo! Utsukushiku	1	Drama Historical Military Supernatural	7.11
2767	Tezuka Osamu no Buddha: Owarinaki Tabi	1	Drama Historical Supernatural	7.11
2768	Toaru Majutsu no Index 10th Anniversary PV	1	Action Comedy Magic Sci-Fi Super Power	7.11
2769	Toaru Majutsu no Index-tan	2	Comedy Parody	7.11
2770	Tongari Boushi no Memole	50	Fantasy Magic Shoujo	7.11
2771	Uchuu Senkan Yamato: Kanketsu-hen	1	Action Adventure Drama Military Sci-Fi Space	7.11
2772	UFO Princess Valkyrie 3: Seiresetsu no Hanayome	6	Comedy Magic Romance Sci-Fi	7.11
2773	Vassalord.	1	Action Comedy Fantasy Mystery Shounen Ai Supernatural Vampire	7.11
7751	Dr. Slump: Arale-chan Ayaya!? Penguin Mura de TV Jack	1	Comedy Sci-Fi Shounen	7.11
8263	Jarinko Chie (TV)	64	Comedy Drama Slice of Life	7.11
2696	Robotica*Robotics	1	Psychological Sci-Fi Shounen Ai Slice of Life	7.12
2699	Shuumatsu no Izetta	12	Action Historical Military	7.12
2705	Batman: Gotham Knight	6	Action Adventure Martial Arts	7.12
2706	Boku no Chikyuu wo Mamotte: Alice kara Rin-kun e	1	Drama Romance Sci-Fi Shoujo	7.12
2707	Code Geass: Hangyaku no Lelouch Recaps	2	Action Mecha Military School Super Power	7.12
2708	Corpse Party: Tortured Souls - Bougyakusareta Tamashii no Jukyou	4	Horror Mystery	7.12
2709	Croket!	52	Action Adventure Comedy Fantasy	7.12
2710	Deadman Wonderland OVA	1	Action Horror Sci-Fi	7.12
2711	Dennou Boukenki Webdiver	52	Adventure Mecha Sci-Fi Shounen	7.12
2712	Futsuu no Joshikousei ga [Locodol] Yattemita. OVA	2	Comedy Seinen	7.12
2713	Gravitation: Lyrics of Love	2	Comedy Romance Shoujo Shounen Ai	7.12
2716	Iriya no Sora UFO no Natsu	6	Drama Romance Sci-Fi	7.12
2717	Kaibutsu Oujo: Konsui Oujo	1	Comedy Horror Supernatural	7.12
2718	Kaitou Joker 4th Season	Unknown	Adventure Comedy Mystery Shounen	7.12
2719	Kakutou Bijin Wulong: Rebirth	25	Action Comedy Martial Arts School Shounen	7.12
2720	Kill Me Baby: Butsuzou Kegatte Nise Halloween	1	Comedy School	7.12
2721	Kyojin no Hoshi	182	Drama Sports	7.12
2723	Maihime	1	Drama Historical Romance	7.12
2724	Mobile Suit Gundam MS IGLOO: Apocalypse 0079	3	Mecha Military Sci-Fi Space	7.12
2725	Mushrambo	32	Adventure Drama Fantasy Sci-Fi Shounen	7.12
2726	NG Knight Ramune &amp; 40	38	Adventure Comedy Fantasy Mecha Shounen	7.12
2727	Nijiiro Hotaru: Eien no Natsuyasumi	1	Fantasy Romance Slice of Life	7.12
2728	Ochame na Futago: Claire Gakuin Monogatari	26	Comedy Historical Kids School Shoujo Slice of Life	7.12
2729	Rurouni Kenshin: Review Special	1	Action Comedy Samurai Shounen	7.12
2731	Servamp	12	Action Comedy Drama Josei Supernatural Vampire	7.12
2732	Shikabane Hime: Kuro Special	1	Action Adventure Drama Horror Supernatural	7.12
2733	Stop!! Hibari-kun!	35	Comedy	7.12
2734	Switch	2	Action Mystery Police	7.12
2735	Ura Tegamibachi	25	Comedy	7.12
2736	Yu☆Gi☆Oh! 5D&#039;s: Shinkasuru Kettou! Stardust vs. Red Demon&#039;s	1	Fantasy Game Sci-Fi	7.12
2737	Yume no Crayon Oukoku	70	Adventure Comedy Fantasy Shoujo	7.12
7413	Ano Hi Bokura wa Senjou de: Shounenhei no Kokuhaku	1	Historical	7.12
8819	Miracle Psychicer Seizan	5	Action Adventure Fantasy	7.12
2674	3x3 Eyes Seima Densetsu	3	Action Adventure Demons Fantasy Horror Romance	7.13
2675	Blue Gender	26	Adventure Drama Horror Mecha Military Romance Sci-Fi Space	7.13
2676	Captain Future	52	Action Adventure Sci-Fi Shounen	7.13
2677	Daisetsusan no Yuusha Kibaou	1	Adventure Drama	7.13
2678	Galaxy Angel Z Special	1	Comedy Sci-Fi	7.13
2679	gdgd Fairies 2	12	Comedy Fantasy	7.13
2680	Generator Gawl	12	Action Adventure Comedy Drama Sci-Fi Shounen	7.13
2681	Gunslinger Girl: Il Teatrino OVA	2	Action Drama Military Sci-Fi	7.13
2682	Hi no Tori: Houou-hen	1	Drama Fantasy Historical	7.13
2683	Hidan no Aria	12	Action Comedy Romance School	7.13
2684	Karneval Specials	11	Comedy	7.13
2685	Kenyuu Densetsu Yaiba	52	Action Comedy Fantasy Martial Arts Shounen	7.13
2686	Kono Danshi Mahou ga Oshigoto Desu.	4	Fantasy Magic Shounen Ai	7.13
2687	Kyuuketsuhime Miyu	4	Action Demons Drama Horror Vampire	7.13
2688	Medarot	52	Adventure Comedy Sci-Fi Shounen	7.13
2689	Mikakunin de Shinkoukei: Mite. Are ga Watashitachi no Tomatteiru Ryokan yo.	1	Comedy Romance Slice of Life	7.13
2690	Monochrome Factor	24	Action Shounen Ai Supernatural	7.13
2691	Ochamegami Monogatari: Korokoro Pollon	46	Comedy Magic Parody	7.13
2692	Pandane to Tamago-hime	1	Adventure Fantasy	7.13
2693	Pokemon Diamond &amp; Pearl: Genei no Hasha Zoroark	1	Action Adventure Fantasy Kids	7.13
2694	Prince of Tennis: Mini Theater	3	Comedy	7.13
2695	Ranma ½: Tendou-ke no Oyobidenai Yatsura!	1	Comedy Martial Arts Slice of Life	7.13
2697	Saint Seiya: Kamigami no Atsuki Tatakai	1	Adventure Sci-Fi Shounen	7.13
2700	Sky Girls	26	Mecha Military Sci-Fi	7.13
2701	Thermae Romae	3	Comedy Historical Seinen	7.13
2702	Toriko: Jump Super Anime Tour 2009 Special	1	Action Adventure Comedy Shounen Super Power	7.13
2703	Virtua Fighter	35	Action Adventure Comedy Martial Arts Shounen	7.13
2704	Yamato Takeru	37	Action Adventure Fantasy Magic Mecha Sci-Fi Shounen Space	7.13
2714	Houkago no Ouji-sama	5	Comedy School Shounen Sports	7.13
2722	Love Live! School Idol Project: μ&#039;s →NEXT LoveLive! 2014 - Endless Parade Encore Animation	1	Comedy	7.13
2730	Scryed Alteration I: Tao	1	Action Adventure Sci-Fi Shounen Super Power	7.13
7541	Bucket de Gohan	20	Comedy	7.13
8860	Monkey Turn V	25	Action Drama Sports	7.13
8951	Neko Pitcher	51	Comedy Kids Sports	7.13
9122	Ore wa Chokkaku	36	Comedy	7.13
9288	Pyun Pyun Maru	26	Comedy Martial Arts	7.13
9397	Scarecrowman	26	Fantasy Kids	7.13
9719	Tamagotchi! x Himitsukessha Taka no Tsume	1	Comedy Parody	7.13
9846	Tsuideni Tonchinkan	43	Comedy	7.13
9976	What&#039;s Michael? (TV)	45	Comedy	7.13
2581	Koro-sensei Q!	1	Comedy Shounen	7.14
2642	.hack//Sign	26	Adventure Fantasy Game Magic Mystery Sci-Fi	7.14
2643	30th Gundam Perfect Mission	1	Mecha Sci-Fi	7.14
2644	Air Master	27	Action Comedy Martial Arts Seinen	7.14
2645	Aura Battler Dunbine	49	Adventure Mecha Sci-Fi	7.14
2646	Cardfight!! Vanguard G: Stride Gate-hen	24	Action Game Shounen	7.14
2647	Cardfight!! Vanguard Movie: Neon Messiah	1	Action Adventure Demons Game Shounen	7.14
2648	Cyborg 009 (TV)	26	Action Adventure Mecha Sci-Fi Shounen	7.14
2649	Detective Conan OVA 12: The Miracle of Excalibur	1	Comedy Mystery Police Shounen Sports	7.14
2650	Devilman: Yochou Sirene-hen	1	Demons Horror Sci-Fi Supernatural	7.14
2651	Dragon Ball Z Movie 07: Kyokugen Battle!! Sandai Super Saiyajin	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.14
2652	Dragon Ball: Ossu! Kaettekita Son Gokuu to Nakama-tachi!!	1	Action Adventure Comedy Fantasy	7.14
2653	Galaxy Angel	24	Comedy Sci-Fi	7.14
2654	Hells	1	Adventure Comedy Horror	7.14
2655	Hotori: Tada Saiwai wo Koinegau	1	Drama Sci-Fi	7.14
2656	Kaiketsu Zorori	52	Adventure Comedy	7.14
2657	Kamisama Dolls	13	Action Seinen Supernatural	7.14
2658	Kemono no Souja Erin: Soushuuhen	10	Adventure Drama Fantasy Historical Slice of Life	7.14
2659	Last Exile: Ginyoku no Fam	21	Action Adventure Sci-Fi	7.14
2660	Mai-Otome Specials	9	Comedy Drama Fantasy Magic	7.14
2661	Murder Princess	6	Action Adventure Fantasy	7.14
2662	Nils no Fushigi na Tabi	52	Adventure Fantasy Kids	7.14
2663	Onegai My Melody Sukkiri♪	52	Comedy Fantasy Magic	7.14
2664	Onegai! Samia Don	78	Comedy Fantasy Kids Magic Slice of Life	7.14
2665	Onegai☆Twins: Natsu wa Owaranai	1	Comedy Drama Romance	7.14
2666	Papa to Odorou	16	Comedy	7.14
2667	Pokemon Diamond &amp; Pearl: Arceus Choukoku no Jikuu e	1	Action Adventure Comedy Drama Fantasy Kids	7.14
2668	Pokemon: Mewtwo! Ware wa Koko ni Ari	1	Action Adventure Comedy Drama Fantasy Kids	7.14
2669	Ryuusei no Rockman Tribe	21	Adventure	7.14
2670	Seihou Bukyou Outlaw Star Pilot	1	Action Sci-Fi Space	7.14
2671	Terra Formars	13	Action Drama Horror Sci-Fi Seinen Space	7.14
2672	Toaru Kagaku no Railgun S: Motto Marutto Railgun	2	Comedy	7.14
2673	Toaru Majutsu no Index-tan II	2	Comedy Parody	7.14
2698	Shin Atashin&#039;chi	26	Comedy Slice of Life	7.14
7509	Boku no Boukuugou	1	Drama Historical Kids	7.14
7702	Deko Boko Friends	Unknown	Comedy Kids	7.14
8120	High School Mystery: Gakuen Nanafushigi	41	Horror Mystery	7.14
8917	Naniwa Yuukyouden: Kyouretsu! Ana ga Attara Iretai-hen	1	Action Comedy	7.14
9255	Poppoya-san: Nonki Kikanshi	1	Kids	7.14
10348	Hyakujitsu no Bara: Jinginaki Nikukyuu-hen	2	Parody Yaoi	7.14
2592	Orenchi no Furo Jijou	13	Comedy Fantasy Shoujo	7.15
2611	Aldnoah.Zero 2nd Season	12	Action Mecha Sci-Fi Space	7.15
2612	Battle Spirits: Brave	50	Action Shounen	7.15
2613	Buki yo Saraba	1	Action Drama Sci-Fi	7.15
2614	Choujigen Game Neptune The Animation	12	Action Comedy Fantasy Parody Sci-Fi Supernatural	7.15
2615	Detective Conan: Happy New Year Special	1	Action Comedy Mystery Police Shounen	7.15
2616	Devil May Cry	12	Action Demons Fantasy	7.15
2617	Doraemon: The Day When I Was Born	1	Comedy Fantasy Kids Sci-Fi Shounen	7.15
2618	Doubutsu no Mori	1	Kids Slice of Life	7.15
2619	Dragon Quest: Abel Yuusha Densetsu	43	Action Adventure Fantasy Shounen	7.15
2620	Elf wo Karu Mono-tachi II	12	Adventure Comedy Fantasy	7.15
2621	Hello! Sandybell	47	Adventure Romance Shoujo	7.15
2622	Honoo no Mirage: Minagiwa no Hangyakusha	3	Action Drama Historical Romance Shoujo Shounen Ai Supernatural	7.15
2623	Iblard Jikan	1	Fantasy	7.15
2624	IS: Infinite Stratos 2 - Infinite Wedding	1		7.15
2625	Jitsu wa Watashi wa	13	Comedy Fantasy Romance School Shounen Supernatural	7.15
2626	Keroro Gunsou: KeroZero Shupattsudayo! Zeninshuugou!	1	Action Adventure Comedy Mecha Shounen Space	7.15
2627	Maison Ikkoku: Utsuriyuku Kisetsu no Naka de	1	Comedy Drama Romance	7.15
2628	MEMORiES MELODiES	1	Music	7.15
2629	Ninku	55	Adventure Shounen	7.15
2630	Oshiete! Galko-chan	12	Comedy School Slice of Life	7.15
2631	Owari no Seraph: Kyuuketsuki Shahar	1	Action Drama Shounen Supernatural Vampire	7.15
2632	Project ARMS	26	Action Martial Arts Super Power	7.15
2633	Roujin Z	1	Comedy Drama Mecha Sci-Fi	7.15
2634	Rurouni Kenshin: Meiji Kenkaku Romantan - Shin Kyoto-hen	2	Action Drama Historical Samurai Shounen	7.15
2635	Shippuu! Iron Leaguer	52	Sci-Fi Shounen Sports	7.15
2636	Sore ga Seiyuu!	13	Comedy Slice of Life	7.15
2637	Soukou Kihei Votoms: Koei Futatabi	1	Action Drama Mecha Military Sci-Fi	7.15
2638	Tom Sawyer no Bouken	49	Adventure Drama Historical Slice of Life	7.15
2639	Usavich	13	Adventure Comedy	7.15
2640	Wake Up Girls! Seishun no Kage	1	Drama Music	7.15
2641	Wata no Kuni Hoshi	1	Drama Fantasy Psychological Romance Shoujo	7.15
8028	Happy☆Lucky Bikkuriman	46	Adventure Comedy Fantasy Kids	7.15
8731	Manga Mitokoumon	46	Historical	7.15
9125	Origami Warriors	52	Action Adventure	7.15
10028	Yakyuukyou no Uta	25	Action Drama Sports	7.15
2561	All Out!!	25	School Seinen Sports	7.16
2562	Anyamal Tantei Kiruminzoo	50	Comedy Magic Shoujo	7.16
2563	Ao no 6-gou	4	Action Adventure Mecha Military Sci-Fi	7.16
2564	Asatte no Houkou.	12	Drama Supernatural	7.16
2565	Bomberman Jetters	52	Action Adventure Comedy Mystery Sci-Fi Shounen	7.16
2566	Cardfight!! Vanguard G: Next	Unknown	Action Game Shounen	7.16
2567	Chou Mashin Eiyuuden Wataru	51	Action Adventure Comedy Mecha	7.16
2568	Classroom☆Crisis	13	School Sci-Fi	7.16
2569	Daisougen no Chiisana Tenshi: Bush Baby	40	Adventure Drama	7.16
2570	Digimon Tamers: Bousou Digimon Tokkyuu	1	Adventure Comedy Sci-Fi Shounen	7.16
2571	Dirty Pair: Lovely Angels yori Ai wo Komete	2	Action Adventure Comedy Police Sci-Fi	7.16
2572	Dog Days&#039;&#039;	12	Action Adventure Fantasy Magic	7.16
2573	Gamba no Bouken	26	Adventure Kids	7.16
2574	Gensoumaden Saiyuuki: Kibou no Zaika	1	Adventure Fantasy	7.16
2575	Giant Gorg	26	Adventure Mecha Sci-Fi	7.16
2576	Hataraki Man	11	Comedy Drama Romance Seinen Slice of Life	7.16
2577	Hellsing: Psalm of Darkness	1	Action Seinen Supernatural Vampire	7.16
2578	Hinata no Aoshigure	1	Adventure Fantasy Romance	7.16
2579	Kachou Ouji	13	Adventure Comedy Music Sci-Fi Slice of Life	7.16
2580	Kaibutsu Oujo	25	Action Comedy Horror Shounen Supernatural Vampire	7.16
2582	Lupin III: Harimao no Zaihou wo Oe!!	1	Action Adventure Comedy Shounen	7.16
2583	Lupin III: The Last Job	1	Adventure Comedy Shounen	7.16
2584	Mazinkaiser SKL	3	Adventure Comedy Mecha Sci-Fi Shounen	7.16
2585	Mermaid Forest	13	Drama Fantasy Horror Mystery	7.16
2586	Mirai Shounen Conan (Movie)	1	Adventure Drama Sci-Fi	7.16
2587	Mobile Suit Gundam Seed: After-Phase Between the Stars	1	Action Drama Mecha Sci-Fi	7.16
2588	Nanatsu-iro★Drops	12	Magic Romance School	7.16
2589	Nasu: Andalusia no Natsu	1	Action Seinen Sports	7.16
2590	Onegai My Melody	52	Comedy Fantasy Magic	7.16
2591	Ore no Imouto ga Konnani Kawaii Wake ga Nai: SD Chara ni Yoru Character Commentary	16	Comedy	7.16
2593	Peach Girl	25	Drama Romance Shoujo Slice of Life	7.16
2594	Pokemon: Kesshoutou no Teiou Entei	1	Action Adventure Comedy Drama Fantasy Kids	7.16
2595	Poulette no Isu	1	Comedy Kids Slice of Life	7.16
2596	Princess Princess	12	Comedy School Shoujo	7.16
2598	RahXephon: Pluralitas Concentio	1	Action Drama Mecha Psychological Romance Sci-Fi	7.16
2599	Riding Bean	1	Action Cars Police Seinen	7.16
2600	Seikimatsu Occult Gakuin	13	Comedy Mystery School Sci-Fi Supernatural	7.16
2601	Seiyou Kottou Yougashiten: Antique	12	Comedy Shoujo Shounen Ai	7.16
2602	Shangri-La	24	Action Drama Sci-Fi	7.16
2603	SKET Dance: Demystifying Special	1	School Shounen	7.16
2604	Sousei no Aquarion OVA	2	Action Mecha Romance Sci-Fi Super Power Supernatural	7.16
2605	Street Fighter II V	29	Adventure Drama Mystery Shounen	7.16
2606	Tenjou Tenge: The Past Chapter	1	Adventure Drama Martial Arts Romance Shounen Supernatural	7.16
2607	Tonkatsu DJ Agetarou	12	Comedy Music Shounen	7.16
2608	Tsukuyomi: Moon Phase	25	Comedy Fantasy Romance Seinen Vampire	7.16
2609	Uchuu no Kishi Tekkaman Blade OVA: Twin Blood	1	Action Mecha Sci-Fi Shounen	7.16
2610	Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui!: Motenaishi Nazomeite Miru	1	Comedy School Slice of Life	7.16
8828	Mitsuami no Kamisama	1	Drama Seinen Slice of Life	7.16
9351	Sabaku no Kaizoku! Captain Kuppa	26	Action Adventure	7.16
2534	Aikatsu Stars!	Unknown	Music School Shoujo Slice of Life	7.17
2535	Anne Happy♪	12	Comedy School Slice of Life	7.17
2536	Area 88 (TV)	12	Action Drama Military Romance Shounen	7.17
2537	B&#039;T X	25	Adventure Mecha Sci-Fi Shounen	7.17
2538	Chuunibyou demo Koi ga Shitai! Ren Specials	7	Comedy	7.17
2539	Future Card Buddyfight	64	Game	7.17
2540	Geragera Boes Monogatari	52	Comedy Kids	7.17
2541	Kannagi: Moshimo Kannagi ga Attara...	1	Comedy School Shounen Supernatural	7.17
2542	Kaze no Naka no Shoujo: Kinpatsu no Jeanie	52	Drama Historical	7.17
2543	Kimi no Iru Machi	12	Drama Romance Slice of Life	7.17
2544	Lupin III: Twilight Gemini no Himitsu	1	Action Adventure Comedy Shounen	7.17
2545	Madlax	26	Drama Magic Military Mystery Psychological Shounen Supernatural	7.17
2546	Magic Tree House	1	Adventure Magic	7.17
2547	Mahou Shoujo Ikusei Keikaku	12	Action Fantasy Supernatural Thriller	7.17
2548	Naruto Movie 1: Dai Katsugeki!! Yuki Hime Shinobu Houjou Dattebayo!	1	Adventure Comedy Drama Historical Shounen Supernatural	7.17
2549	Pokemon Diamond &amp; Pearl Specials	2	Action Comedy Fantasy Kids	7.17
2550	Precure All Stars DX the Dance Live♥: Miracle Dance Stage e Youkoso	1	Fantasy Magic Music Shoujo	7.17
2551	Senyuu. Specials	4	Action Comedy Fantasy Shounen	7.17
2552	Show By Rock!!	12	Comedy Music	7.17
2553	Show By Rock!! #	12	Comedy Music	7.17
2554	Soukou Kihei Votoms: Kakuyaku taru Itan	5	Drama Mecha Military Sci-Fi	7.17
2555	Taiho Shichau zo Special	20	Action Comedy Police Shounen	7.17
2556	Taiho Shichau zo: Full Throttle Special	1	Action Adventure Comedy Police	7.17
2557	Tsurikichi Sanpei	109	Adventure Sports	7.17
2558	Urusei Yatsura Movie 3: Remember My Love	1	Action Adventure Comedy Drama Romance Sci-Fi	7.17
2560	Wonderful Days	1	Action Drama Romance Sci-Fi	7.17
2597	PriPara	Unknown	Music School Shoujo Slice of Life	7.17
7764	Ecchan no Sensou	1	Drama Historical	7.17
7895	Gekisou! Rubenkaiser	17	Cars Shounen Sports	7.17
7940	GO-GO Tamagotchi!	50	Comedy Fantasy Kids	7.17
8196	Ichi-gan Kuni	1		7.17
8328	Kagee Aesop Monogatari	26	Adventure Demons Drama Fantasy Historical Kids Magic Romance Supernatural	7.17
9018	Norakuro-kun	50	Comedy Mystery	7.17
9527	Shouri Toushu	1	Sports	7.17
9707	Takanotsume GO: Utsukushiki Elleair Shoushuu Plus	1	Comedy Parody Super Power	7.17
10121	Zinba	52	Action Adventure Comedy Demons Magic Super Power	7.17
2480	Garo Movie: Divine Flame	1	Action Demons Fantasy Magic Supernatural	7.18
2497	Armitage III: Poly-Matrix	1	Action Adventure Mecha Military Police Romance Sci-Fi	7.18
2498	Brotherhood: Final Fantasy XV	5	Action	7.18
2499	Cobra The Animation	13	Action Adventure Sci-Fi Space	7.18
2500	Cyborg Kuro-chan	66	Comedy Sci-Fi	7.18
2501	Doraemon: Doraemon Comes Back (Movie)	1	Comedy Fantasy Kids	7.18
2502	Dragon League	39	Adventure Comedy Fantasy Shounen Sports	7.18
2503	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka OVA	1	Action Adventure Comedy Fantasy Romance	7.18
2504	Gedo Senki	1	Adventure Fantasy Magic	7.18
2505	Halo Legends	9	Action Drama Military Sci-Fi	7.18
2506	Happiness Charge PreCure! Movie: Ningyou no Kuni no Ballerina	1	Fantasy Kids Magic Shoujo	7.18
2507	Harukanaru Toki no Naka de: Hachiyou Shou	26	Demons Fantasy Historical Magic Shoujo Supernatural	7.18
2508	Hime Chen! Otogi Chikku Idol Lilpri	51	Magic Shoujo	7.18
2509	Hokuto no Ken: Yuria-den	1	Action Adventure Drama Martial Arts	7.18
2510	Kazemakase Tsukikage Ran	13	Adventure Comedy Historical Martial Arts Samurai	7.18
2511	Kindaichi Shounen no Jikenbo	1	Mystery School Shounen	7.18
2512	Koukou Tekken-den Tough	3	Action Martial Arts Shounen	7.18
2513	Mahou no Stage Fancy Lala	26	Comedy Drama Magic Music Romance Shoujo	7.18
2514	Mahou no Tenshi Creamy Mami	52	Comedy Fantasy Magic Romance School Sci-Fi Shoujo	7.18
2515	Maria†Holic	12	Comedy Parody School Shoujo Ai	7.18
2516	Mermaid Melody Pichi Pichi Pitch Pure	39	Adventure Comedy Magic Romance Shoujo	7.18
2517	Nagagutsu wo Haita Neko	1	Adventure Fantasy Kids	7.18
2518	Ninja Senshi Tobikage	43	Adventure Mecha Sci-Fi Shounen Space	7.18
2519	Nintama Rantarou	Unknown	Comedy Shounen	7.18
2520	One Piece Movie 3: Chinjuu-jima no Chopper Oukoku	1	Action Adventure Comedy Fantasy Shounen Super Power	7.18
2521	Otome wa Boku ni Koishiteru	12	Comedy Drama Romance School	7.18
2522	Pokemon 3D Adventure 2: Pikachu no Kaitei Daibouken	1	Adventure Comedy Fantasy Kids	7.18
2524	Rental Magica	24	Fantasy Mystery Supernatural	7.18
2525	Sekai Seifuku: Bouryaku no Zvezda	12	Action Comedy Fantasy	7.18
2526	Shin Getter Robo tai Neo Getter Robo	4	Action Mecha Sci-Fi Shounen	7.18
2527	Solty Rei Special	1	Comedy Drama	7.18
2528	Sora no Manimani	12	Comedy Romance School Slice of Life	7.18
2529	Tenchi Muyou! Ryououki 2nd Season Picture Drama	1	Comedy Sci-Fi Shounen Space	7.18
2530	Tenjou Tenge: The Ultimate Fight	2	Adventure Drama Martial Arts Romance Shounen Supernatural	7.18
2531	Tokyo Magnitude 8.0 Recap	1	Drama	7.18
2532	Uchuu Kaizoku Captain Harlock: Arcadia-gou no Nazo	1	Action Adventure Drama Sci-Fi Space	7.18
2533	Yuusha Tokkyuu Might Gaine	47	Action Adventure Mecha Sci-Fi Shounen	7.18
2559	Wake Up Girls! Beyond the Bottom	1	Drama Music	7.18
7427	Area 88 Movie	1	Action Adventure Drama Military Romance	7.18
8531	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Washi to Ore!? - Bokura wa Asakusa Shounen Tanteid	2	Comedy Police	7.18
8694	Mak Dau BoloYao WongZi	1	Comedy	7.18
9462	Shin Dokonjou Gaeru	30	Comedy Slice of Life	7.18
9550	Sobakasu Pucchi	162	Adventure Comedy Kids	7.18
9992	Wu Geng Ji	Unknown	Action Fantasy Historical Martial Arts Supernatural	7.18
2450	Friends: Mononoke Shima no Naki	1	Comedy Fantasy Kids	7.19
2473	Biohazard: Degeneration	1	Action Horror Sci-Fi	7.19
2474	Bubblegum Crisis Tokyo 2040	26	Adventure Mecha Sci-Fi Shounen	7.19
2475	Chicchana Yukitsukai Sugar	24	Comedy Fantasy Slice of Life	7.19
2476	Devilman: Tanjou-hen	1	Demons Horror Sci-Fi Supernatural	7.19
2477	Dirty Pair: The Movie	1	Adventure Comedy Police Sci-Fi	7.19
2478	Escaflowne	1	Adventure Drama Fantasy Mecha Romance Sci-Fi Shoujo	7.19
2479	GA: Geijutsuka Art Design Class OVA	1	Comedy School Seinen Slice of Life	7.19
2481	Ghost in the Shell: Stand Alone Complex - Solid State Society - Uchikoma no Hibi	1	Comedy Mecha Sci-Fi	7.19
2482	Hi no Tori: Uchuu-hen	1	Drama Fantasy Sci-Fi	7.19
2483	Jungle Taitei: Yuuki ga Mirai wo Kaeru	1	Adventure	7.19
2484	Kyattou Ninden Teyandee	54	Action Comedy Mecha Sci-Fi Shounen Super Power	7.19
2485	Loveless	12	Action Drama Fantasy Mystery Romance Shoujo Shounen Ai Supernatural	7.19
2486	Magic-Kyun! Renaissance	13	Magic Music Romance School	7.19
2487	Mokke	24	Mystery Slice of Life Supernatural	7.19
2488	Nanbaka	13	Action Comedy Drama	7.19
2489	Ojamajo Doremi	51	Comedy Magic	7.19
2490	Sekirei: Hajimete no Otsukai	1	Comedy	7.19
2491	Tales of Symphonia The Animation: Sekai Tougou-hen Specials	3	Comedy	7.19
2492	Uchuu Senkan Yamato: Fukkatsu-hen	1	Action Adventure Drama Military Space	7.19
2493	Yakushiji Ryouko no Kaiki Jikenbo	13	Mystery Police Supernatural	7.19
2494	Yuki no Joou	36	Adventure Drama Fantasy	7.19
2495	Yuri Kuma Arashi	12	Drama Fantasy Psychological School Seinen Shoujo Ai	7.19
2496	Zombie-Loan Specials	2	Action Shounen Supernatural	7.19
7797	Feng Wei Ying Xiong	12	Action Fantasy	7.19
9429	Shaolin Wuzang	26	Action Demons Historical Martial Arts Samurai Supernatural	7.19
9491	Shirahata no Shoujo Ryuuko	1	Drama	7.19
9683	Super Zugan	21	Comedy Game Shounen	7.19
2442	Akazukin Chacha OVA	3	Comedy Fantasy Magic	7.2
2443	Armitage III	4	Action Adventure Mecha Police Romance Sci-Fi	7.2
2445	Bokura no Live Kimi to no Life	1	Music	7.2
2446	Dance in the Vampire Bund	12	Action Supernatural Vampire	7.2
2447	Doraemon Movie 06: Nobita no Little Star Wars	1	Fantasy Space	7.2
2448	Doraemon Movie 18: Nobita no Nejimaki City Boukenki	1	Adventure Fantasy Kids Shounen	7.2
2449	Fantastic Children Special	1	Slice of Life	7.2
2451	Fw:Hamatora	1	Comedy Mystery Super Power	7.2
2452	Girls und Panzer Specials	6	Military School	7.2
2453	Hiatari Ryoukou!	48	Comedy Romance School Sports	7.2
2454	Hokuto no Ken: Raoh Gaiden Ten no Haoh	13	Action Drama Martial Arts	7.2
2455	Kyoushoku Soukou Guyver II	6	Action Adventure Drama Horror Sci-Fi	7.2
2456	Lupin III: Seven Days Rhapsody	1	Action Adventure Comedy Shounen	7.2
2457	Makai Ouji: Devils and Realist	12	Comedy Demons Fantasy Historical Mystery School Shoujo Supernatural	7.2
2458	Mikakunin de Shinkoukei: Kamoniku tte Midori-ppoi Aji ga Suru no ne.	1	Comedy Romance Seinen Slice of Life	7.2
2459	Mushibugyou OVA	3	Action Fantasy Historical Martial Arts Samurai Shounen Super Power	7.2
2460	Nagagutsu wo Haita Neko: 80 Nichikan Sekai Isshuu	1	Adventure Kids	7.2
2461	One Piece: Mezase! Kaizoku Yakyuu Ou	1	Comedy Fantasy Shounen Sports	7.2
2462	Pokemon Advanced Generation	192	Action Adventure Comedy Fantasy Kids	7.2
2463	PopoloCrois	26	Adventure Fantasy	7.2
2312	Momokuri	26	Comedy Romance Slice of Life	7.25
2464	PriPara Movie: Mi~nna no Akogare♪ Let&#039;s Go☆Prix Paris	1	Music School Shoujo Slice of Life	7.2
2465	Reikenzan: Hoshikuzu-tachi no Utage	12	Comedy Fantasy Magic	7.2
2466	Sakura Trick	12	Comedy Romance School Seinen Shoujo Ai Slice of Life	7.2
2467	Sousei no Aquarion	26	Action Mecha Romance Sci-Fi Super Power Supernatural	7.2
2468	Space Adventure Cobra	1	Action Adventure Sci-Fi Space	7.2
2469	Supernatural The Animation	22	Action Demons Horror Supernatural	7.2
2470	The iDOLM@STER Cinderella Girls	13	Comedy Drama Music	7.2
2471	Toaru Majutsu no Index: Endymion no Kiseki Special	1	Action Magic Sci-Fi Super Power	7.2
2472	Uchuu Densetsu Ulysses 31	26	Action Adventure Sci-Fi Space	7.2
7512	Boku to Gaku: Ano Natsu no Monogatari	1	Drama Historical Kids	7.2
7609	Chiisai Sensuikan ni Koi wo Shita Dekasugiru Kujira no Hanashi	1	Fantasy Kids Military	7.2
7632	Choegang Top Plate	26	Action Comedy Kids Sports	7.2
8529	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Shiiron Tankentai! Sumidagawa no Chikai - Omoide n	2	Comedy Police	7.2
8638	Legend of the Moles: The Treasure of Scylla	1	Adventure Fantasy Kids	7.2
9143	Otoko Ippiki Gaki Daishou	156	Action Drama Shounen	7.2
9301	Rainbow Sea	26	Adventure Fantasy Sci-Fi	7.2
9375	Sangokushi Daiichibu Eiyuu-tachi no Yoake	1	Historical	7.2
9514	Shoukoushi Cedie Specials	2	Drama Shoujo Slice of Life	7.2
9984	Wo Jiao Bai Xiaofei	39	Action Comedy Horror	7.2
2410	Aki no Kanade	1	Music School Slice of Life	7.21
2411	Appleseed (Movie)	1	Action Drama Mecha Military Police Sci-Fi Shounen	7.21
2412	Bleach: Memories in the Rain	1	Action Adventure Drama Shounen Supernatural	7.21
2413	Cat&#039;s Eye	73	Action Adventure Comedy Mystery Romance	7.21
2414	Chikyuu Bouei Kigyou Dai-Guard	26	Adventure Comedy Mecha Military Sci-Fi	7.21
2415	Dog Days	13	Action Adventure Fantasy Magic	7.21
2416	Eikoku Koi Monogatari Emma: Intermission	1	Drama Historical Romance Seinen Slice of Life	7.21
2417	Harmony	1	Psychological Sci-Fi	7.21
2418	Ichigo Mashimaro Episode 0	1	Comedy	7.21
2419	Iria: Zeiram The Animation	6	Action Adventure Sci-Fi Space	7.21
2420	Joker Game	12	Drama Historical Military	7.21
2421	Kaibutsu Oujo (OVA)	3	Action Comedy Horror Shounen Supernatural	7.21
2422	Kiddy Grade: Ignition	1	Action Mecha Sci-Fi Super Power	7.21
2423	Kimi no Iru Machi OVA	2	Drama Romance Slice of Life	7.21
2424	Love Live! School Idol Project Recap	1	Music School Slice of Life	7.21
2425	Mamoru-kun ni Megami no Shukufuku wo!	24	Comedy Romance School	7.21
2426	Marco: Haha wo Tazunete Sanzenri	1	Adventure Drama	7.21
2427	Mekakucity Actors	12	Comedy Romance Sci-Fi Super Power Supernatural	7.21
2428	Munto: Toki no Kabe wo Koete	1	Action Fantasy Magic Super Power	7.21
2429	Muteki Choujin Zanbot 3	23	Action Drama Mecha Sci-Fi Shounen	7.21
2430	Muv-Luv Alternative: Total Eclipse	24	Action Mecha Military Sci-Fi	7.21
2431	Precure All Stars Movie New Stage: Mirai no Tomodachi	1	Fantasy Magic Shoujo	7.21
2432	Saishuu Heiki Kanojo: Another Love Song	2	Drama Romance Sci-Fi	7.21
2433	Sasameki Koto	13	Comedy Romance School Shoujo Ai	7.21
2434	Shin Captain Tsubasa	13	Action Shounen Sports	7.21
2435	Tenchi Muyou! Manatsu no Eve	1	Action Comedy Sci-Fi Shounen Space	7.21
2436	The TV Show	1	Music	7.21
2437	Touch: Cross Road - Kaze no Yukue	1	Romance Shounen Sports	7.21
2438	Yami Shibai	13	Dementia Horror Supernatural	7.21
2439	Yoroiden Samurai Troopers	39	Adventure Samurai Sci-Fi Shounen	7.21
2440	Yu☆Gi☆Oh! Duel Monsters: Battle City Special	1	Adventure Fantasy Game Shounen	7.21
2441	Yuusha Shirei Dagwon	48	Action Adventure Martial Arts Mecha School Super Power	7.21
2444	Battle Spirits: Sword Eyes Gekitouden	21	Shounen	7.21
2523	Pokemon Generations	18	Action Adventure Fantasy Game Kids	7.21
2377	Uchuu Kyoudai: Number Zero	1	Comedy Sci-Fi Seinen Slice of Life Space	7.22
2382	A-Channel+smile	2	Comedy School Seinen Slice of Life	7.22
2383	Aku no Hana	13	Drama Psychological Romance School	7.22
2384	Aoki Ryuusei SPT Layzner	38	Mecha Military Sci-Fi Shounen Space	7.22
2385	Appleseed Alpha	1	Action Adventure Mecha Military Police Sci-Fi	7.22
2386	Bakuman. 3rd Season Specials	2	Comedy	7.22
2387	Bakumatsu Kikansetsu Irohanihoheto	26	Action Drama Historical Samurai	7.22
2388	Bishoujo Senshi Sailor Moon R: Make Up! Sailor Senshi	1	Shoujo	7.22
2389	Bonobono (TV)	48	Comedy	7.22
2390	Cat Shit One	1	Action Fantasy Military	7.22
2391	Chirin no Suzu	1	Adventure Drama Fantasy	7.22
2392	Chuunibyou demo Koi ga Shitai! Ren Lite	6	Comedy School	7.22
2393	Dirty Pair	24	Adventure Comedy Police Sci-Fi	7.22
2394	Ghost in the Shell: Stand Alone Complex 2nd GIG - Individual Eleven - Tachikoma no Hibi	1	Comedy Mecha Sci-Fi	7.22
2395	Higepiyo	39	Comedy	7.22
2396	JoJo no Kimyou na Bouken: Adventure	7	Adventure Drama Fantasy Horror Shounen Supernatural Vampire	7.22
2397	Kaguya-hime	1	Historical Kids	7.22
2398	Kyoro-chan	91	Adventure Comedy Fantasy	7.22
2399	Muteki Kanban Musume	12	Action Comedy Martial Arts Parody Shounen	7.22
2400	Offside (TV)	39	Action Drama Sports	7.22
2401	Otaku no Video	2	Comedy Drama Historical Magic Mecha Sci-Fi	7.22
2402	Ranma ½: Totteoki Talk Best of Memories	1	Comedy Martial Arts Slice of Life	7.22
2403	Red Garden	22	Drama Mystery	7.22
2404	Rekka no Honoo: Final Burning	1	Action Adventure Magic Martial Arts School Sci-Fi Super Power	7.22
2405	Seto no Hanayome Fan Disc	2	Comedy Parody School	7.22
2406	Shakugan no Shana Specials	4	Comedy Parody	7.22
2407	Tetsuwan Birdy	4	Action Comedy Sci-Fi Shounen	7.22
2408	Witch Craft Works	12	Action Fantasy Magic Seinen Supernatural	7.22
7539	Bubaga	8	Adventure Kids	7.6
2409	Yoake Mae yori Ruriiro na: Crescent Love	12	Comedy Romance School Sci-Fi	7.22
7955	Gongitsune	1	Adventure	7.22
8227	Indie Anibox: Selma Danbaekjil Coffee	1	Comedy Drama Romance Samurai Sci-Fi	7.22
9802	Tobidasu PriPara: Mi~nna de Mezase! Idol☆Grand Prix	1	Music School Shoujo Slice of Life	7.22
2349	Pokemon Sun &amp; Moon	Unknown	Action Game Kids School	7.23
2359	Asura	1	Drama Historical	7.23
2360	Bokura wa Minna Kawaisou Specials	14	Comedy	7.23
2361	Concrete Revolutio: Choujin Gensou - The Last Song	11	Action Demons Drama Fantasy Mystery Sci-Fi Super Power Supernatural	7.23
2362	Cyborg 009 (1979)	50	Action Adventure Mecha Sci-Fi Shounen	7.23
2363	Digimon Adventure 02 Movies	2	Adventure Fantasy Kids Sci-Fi	7.23
2364	Dirty Pair OVA	10	Adventure Comedy Police Sci-Fi	7.23
2365	Doraemon Movie 16: Nobita no Sousei Nikki	1	Adventure Comedy Fantasy Kids Sci-Fi Shounen	7.23
2366	GA: Geijutsuka Art Design Class	12	Comedy School Seinen Slice of Life	7.23
2367	Gingitsune	12	Seinen Slice of Life Supernatural	7.23
2368	Grimm Douwa: Kin no Tori	1	Adventure Fantasy	7.23
2369	Guilty Crown: 4-koma Gekijou	11	Comedy	7.23
2370	Macross 7	49	Action Adventure Comedy Drama Mecha Military Music Romance Sci-Fi Shounen	7.23
2371	Maison Ikkoku: Ikkokujima Nanpa Shimatsuki	1	Comedy Drama Romance	7.23
2372	Mobile Suit Gundam Seed C.E.73: Stargazer	3	Mecha Military Sci-Fi Space	7.23
2373	Oda Nobuna no Yabou Soushuuhen	1	Comedy Historical Romance	7.23
2374	Pokemon Diamond &amp; Pearl	191	Action Adventure Comedy Fantasy Kids	7.23
2375	Sansha Sanyou	12	Comedy School Slice of Life	7.23
2376	Tamayura	4	Comedy Drama Slice of Life	7.23
2378	Ushio to Tora	10	Action Comedy Horror	7.23
2379	Wake Up Girls! Shichinin no Idol	1	Drama Music	7.23
2380	Yami no Matsuei	13	Comedy Drama Fantasy Horror Magic Shoujo Shounen Ai Vampire	7.23
2381	Yu☆Gi☆Oh!: Duel Monsters GX	180	Action Comedy Fantasy Game Shounen	7.23
8216	Ikkyuu-san (1978)	26	Action School Sports	7.23
8488	Kiniro Mosaic: Pretty Days	1	Comedy School Slice of Life	7.23
2327	Suisei no Gargantia Specials	2	Action Mecha Sci-Fi	7.24
2329	Black★Rock Shooter (OVA)	1	Action Drama School Slice of Life	7.24
2330	Bosco Daibouken	26	Adventure Fantasy Kids	7.24
2331	Code Geass: Boukoku no Akito 3 - Kagayaku Mono Ten yori Otsu Picture Drama	1	Comedy Military	7.24
2332	Dae Jang Geum: Jang Geum&#039;s Dream	26	Adventure Comedy Historical	7.24
2333	Dantalian no Shoka: Ibarahime	1	Action Historical Mystery	7.24
2334	Dragon Ball Z Movie 05: Tobikkiri no Saikyou tai Saikyou	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.24
2335	Final Fantasy VII: On the Way to a Smile - Episode: Denzel	1	Action Fantasy Super Power	7.24
2336	Gakuen Senki Muryou	26	Adventure Mecha Sci-Fi Shounen Space Supernatural	7.24
2337	Gakuen Utopia Manabi Straight! Special	1	Comedy School Sci-Fi Slice of Life	7.24
2338	Ibara no Ou	1	Action Mystery Sci-Fi Thriller	7.24
2339	IGPX: Immortal Grand Prix (2005)	13	Drama Mecha Sci-Fi Shounen Sports	7.24
2340	Kodomo no Omocha	1	Comedy Drama School Shoujo	7.24
2341	Konjiki no Gash Bell!!: Mecha Vulkan no Raishuu	1	Adventure Shounen Supernatural	7.24
2342	Kono Danshi Sekika ni Nayandemasu.	1	Drama School Shounen Ai	7.24
2343	Kyuuketsuhime Miyu (TV)	26	Action Demons Drama Horror Vampire	7.24
2344	Mahou Senshi Louie	24	Adventure Comedy Fantasy Magic Shounen	7.24
2345	Mahou Shoujo-tai Arusu	40	Adventure Comedy Fantasy Magic	7.24
2346	Mobile Suit Gundam: The 08th MS Team - A Battle with the Third Dimension	1	Action Mecha Military	7.24
2347	Mouretsu Pirates	26	Sci-Fi Space	7.24
2348	Mudai	1	Drama Music Romance Slice of Life	7.24
2350	Qin Shiming Yue Zhi: Ye Jin Tianming	18	Action Fantasy Historical Martial Arts	7.24
2351	RD Sennou Chousashitsu	26	Action Sci-Fi	7.24
2352	Shadow Skill: Eigi	26	Adventure Drama Fantasy Magic Martial Arts Shounen Super Power	7.24
2353	Toaru Hikuushi e no Koiuta	13	Adventure Drama Romance	7.24
2354	Unico: Mahou no Shima e	1	Adventure Fantasy Kids	7.24
2355	Urayasu Tekkin Kazoku	33	Comedy Shounen	7.24
2356	Wasurenagumo	1	Comedy Supernatural	7.24
2357	YAT Anshin! Uchuu Ryokou	50	Adventure Comedy Sci-Fi Shounen	7.24
2358	Yuugo: Koushounin	13	Action Drama Military Mystery Psychological Seinen	7.24
9207	PePePePengiin	Unknown	Comedy	7.24
2228	Diamond no Ace: Second Season OVA	2	Comedy School Shounen Sports	7.25
2277	Fushigi Yuugi Special: Nakago Shikkari Shinasai!	2	Comedy	7.25
2295	Boku wa Tomodachi ga Sukunai: Relay Shousetsu wa Ketsumatsu ga Hanpanai	1	Comedy Romance School Seinen	7.25
2296	Cardfight!! Vanguard	65	Action Adventure Demons Game Shounen	7.25
2297	Digimon Frontier	50	Action Adventure Comedy Drama Fantasy Shounen	7.25
2298	Doraemon Movie 02: Nobita no Uchuu Kaitakushi	1	Adventure Comedy Fantasy Kids Shounen	7.25
2299	Doraemon Movie 19: Nobita no Nankai Daibouken	1	Adventure Comedy Fantasy Kids Sci-Fi Shounen	7.25
2300	Dororo to Hyakkimaru	26	Action Adventure Supernatural	7.25
2301	Eureka Seven: Pocket ga Niji de Ippai	1	Adventure Mecha Romance Sci-Fi	7.25
2302	Futari wa Precure: Splash☆Star	49	Action Comedy Fantasy Magic Shoujo	7.25
2303	Guilty Crown Kiseki: Reassortment	1	Action Sci-Fi Super Power	7.25
2304	Haiyore! Nyaruko-san	12	Comedy Parody Sci-Fi	7.25
2305	Jungle Taitei Movie (1997)	1	Adventure Fantasy	7.25
2306	Kaitou Joker 2nd Season	13	Adventure Comedy Mystery Shounen	7.25
2307	Karneval	1	Fantasy Sci-Fi Shoujo	7.25
2308	Kikou Ryohei Mellowlink	12	Action Mecha Military Sci-Fi	7.25
2309	Kyousou Giga (2012)	5	Action Fantasy Supernatural	7.25
2310	Lodoss-tou Senki: Eiyuu Kishi Den	27	Action Adventure Drama Fantasy Magic Romance	7.25
2311	Lupin III: Moeyo Zantetsuken!	1	Action Adventure Comedy Shounen	7.25
2313	Moyashimon Returns	11	Comedy School Supernatural	7.25
2314	Muteki Koujin Daitarn 3	40	Mecha Sci-Fi	7.25
2315	One Piece Movie 1	1	Action Adventure Comedy Fantasy Shounen Super Power	7.25
2316	Ougon Yuusha Goldran	48	Action Adventure Fantasy Mecha Sci-Fi Shounen	7.25
2317	Project ARMS: The 2nd Chapter	26	Action Fantasy Martial Arts School Super Power	7.25
2318	Pumpkin Scissors	24	Action Comedy Drama Military	7.25
2319	Re Boot	1	Drama Music School Slice of Life	7.25
2320	Robin Hood no Daibouken	52	Adventure Historical Romance	7.25
2321	Rockman.EXE Stream	51	Action Adventure Game Mecha School Sci-Fi Shounen	7.25
2322	Rose of Versailles Movie	1	Drama Historical Romance Shoujo	7.25
2323	Sanzoku no Musume Ronja	26	Adventure	7.25
2324	Shakugan no Shana III (Final) Specials	2	Comedy Parody	7.25
2325	Shakugan no Shana Movie Special	1	Adventure Comedy Fantasy Parody	7.25
2326	Shin Hakkenden	26	Action Adventure Martial Arts Sci-Fi	7.25
2328	Tales of Symphonia The Animation: Tethe&#039;alla-hen Specials	4	Comedy	7.25
7488	Bero-dashi Chonma	1	Historical Kids	7.25
7595	Chibikko Kamu no Bouken	1	Adventure Kids	7.25
8002	Hana Ichi Monme	3	Adventure Kids	7.25
8008	Hana to Shounen	1	Fantasy	7.25
8333	Kagirinaki Rakuen	1	Slice of Life	7.25
8461	Kick no Oni	26	Shounen Sports	7.25
8466	Kii-chan Watashi Umarete Kite Yokatta!	1	Drama Kids	7.25
8772	Meikyoku to Dai Sakkyokka Monogatari	9	Historical Music	7.25
8834	Mo Jing Lieren 3rd Season	Unknown	Adventure Fantasy	7.25
8873	Mother Teresa	1	Drama Historical Kids	7.25
8938	Negibouzu no Asatarou	48	Adventure Comedy Historical	7.25
9299	Qui Shui Yi Yun	12	Horror Mystery Supernatural	7.25
9606	Sore Ike! Anpanman: Omocha no Hoshi no Nanda to Runda	1	Comedy Fantasy Kids	7.25
10058	Ying Xiong Bie Nao	13	Action Fantasy	7.25
10347	Ikoku Irokoi Romantan	2	Comedy Romance Yaoi	7.25
2264	Aikatsu! Music Award: Minna de Shou wo MoracchaimaShow!	1	Music Shoujo	7.26
2265	Alps no Shoujo Heidi	52	Drama Historical Slice of Life	7.26
2266	Ao no Exorcist: Ura Ex	10	Action Fantasy Shounen Supernatural	7.26
2267	Arabian Nights: Sindbad no Bouken (TV)	52	Adventure Fantasy Magic Romance	7.26
2269	Be-Bop Highschool	7	Comedy School Seinen	7.26
2270	Binan Koukou Chikyuu Bouei-bu LOVE! LOVE!	12	Comedy Magic School Slice of Life	7.26
2271	Daisuki! BuBu ChaCha	26	Kids	7.26
2272	Doraemon Movie 14: Nobita to Buriki no Labyrinth	1	Fantasy	7.26
2273	Druaga no Tou: The Aegis of Uruk - Jil no Bouken	1	Adventure Fantasy	7.26
2274	ef: A Tale of Memories. - Prologue	1	Drama Music	7.26
2275	Fate/Zero Remix	2	Action Fantasy Supernatural	7.26
2276	Fushigi Yuugi OVA	3	Adventure Comedy Fantasy Historical Romance Shoujo	7.26
2278	Gravitation	13	Comedy Music Romance Shoujo Shounen Ai	7.26
2279	Gunnm	2	Drama Mecha Sci-Fi Shounen	7.26
2280	Jarinko Chie	1	Comedy Drama Slice of Life	7.26
2281	Kyoukai no Rinne (TV) 2nd Season	25	Comedy Romance School Shounen Supernatural	7.26
2282	Mahoutsukai Tai! OVA	6	Comedy Fantasy Magic Romance Sci-Fi	7.26
2283	Mouretsu Pirates: Abyss of Hyperspace	1	Sci-Fi Space	7.26
2284	Naruto SD: Rock Lee no Seishun Full-Power Ninden	51	Action Comedy Parody	7.26
2285	Naruto Shippuuden: Sunny Side Battle	1	Action Comedy Martial Arts Shounen Super Power	7.26
2286	Popolocrois Monogatari	25	Adventure Fantasy	7.26
2287	Puchimas!: Petit iDOLM@STER	64	Comedy Slice of Life	7.26
2288	Rockman.EXE Beast	25	Action Adventure Game Mecha Sci-Fi Shounen	7.26
2289	Seimei no Kagaku: Micro Patrol	26	Adventure	7.26
2290	Takanashi Rikka Kai: Chuunibyou demo Koi ga Shitai! Movie Lite	1	Comedy	7.26
2291	Tanaka-kun wa Kyou mo Kedaruge	35	Comedy School	7.26
2292	Tetsuwan Atom (1980)	52	Action Adventure Mecha Sci-Fi Shounen	7.26
2293	Toushou Daimos	44	Adventure Drama Mecha Romance Sci-Fi Shounen	7.26
2294	Vampire Hunter D	1	Action Horror Sci-Fi Supernatural Vampire	7.26
8786	Midoriyama Koukou Koushien-hen	10	Comedy School Sports	7.26
2224	Aria The Origination Picture Drama	7	Fantasy Sci-Fi Shounen Slice of Life	7.27
2225	Boogiepop wa Warawanai: Boogiepop Phantom	12	Dementia Drama Horror Mystery Psychological Supernatural	7.27
2226	Cosmic Baton Girl Comet-san	43	Adventure Comedy Drama Magic Sci-Fi	7.27
2227	Cyber City Oedo 808	3	Action Adventure Police Sci-Fi	7.27
2229	Doraemon Movie 08: Nobita to Ryuu no Kishi	1	Adventure Comedy Fantasy Kids Shounen	7.27
2230	Doraemon Movie 36: Shin Nobita no Nippon Tanjou	1	Adventure Comedy Fantasy Kids Shounen	7.27
2231	Fullmetal Alchemist: The Sacred Star of Milos Specials	4	Comedy Fantasy Magic	7.27
2232	Gaiking: Legend of Daiku-Maryu	39	Action Mecha Sci-Fi	7.27
2233	Gantz	13	Action Drama Horror Psychological Sci-Fi Supernatural	7.27
2234	Ghost Sweeper GS Mikami	45	Comedy Supernatural	7.27
2235	Grander Musashi RV	39	Adventure Sports	7.27
2236	Gunsmith Cats	3	Action Comedy Police Seinen	7.27
2237	Haiyore! Nyaruko-san: Yasashii Teki no Shitome-kata	1	Comedy Parody Sci-Fi	7.27
2238	Kamisama Kazoku	13	Comedy Drama Fantasy Romance	7.27
2239	Kanon	13	Drama Romance Slice of Life Supernatural	7.27
2240	Kaze no Youjinbou	25	Action Drama Mystery Shounen	7.27
2241	Kenran Butou Sai: The Mars Daybreak	26	Adventure Comedy Mecha Military Romance Sci-Fi Shounen	7.27
2242	Kikou Souseiki Mospeada	25	Action Mecha Military	7.27
2243	Kimi ni Todoke 2nd Season: Kataomoi	1	Romance Shoujo	7.27
2244	Koutetsu Jeeg	46	Action Demons Mecha Sci-Fi Shounen	7.27
2245	Kyoto Animation: Suiei-hen	1	Sports	7.27
2246	Kyougoku Natsuhiko: Kousetsu Hyaku Monogatari	13	Fantasy Historical Horror Mystery Psychological Supernatural	7.27
7866	Ganbare Swimmy	1	Adventure	7.6
2247	Lupin III: Sweet Lost Night - Mahou no Lamp wa Akumu no Yokan	1	Adventure Comedy Shounen	7.27
2248	Mobile Suit Zeta Gundam: A New Translation II - Lovers	1	Drama Mecha Military Romance Sci-Fi Space	7.27
2249	Moonlight Mile 1st Season: Lift Off	12	Adventure Drama Sci-Fi Space	7.27
2250	Naruto: Honoo no Chuunin Shiken! Naruto vs. Konohamaru!!	1	Action Adventure Martial Arts Shounen Super Power	7.27
2251	Persona 5 the Animation: The Day Breakers	1	Action Fantasy Seinen Supernatural	7.27
2252	Pikmin Short Movies	3	Fantasy Kids	7.27
2253	Red Baron	49	Action Mecha Sci-Fi Shounen	7.27
2254	SF Saiyuuki Starzinger	73	Adventure Mecha Sci-Fi Shounen Space	7.27
2255	Sora wo Miageru Shoujo no Hitomi ni Utsuru Sekai	9	Action Fantasy Magic Romance Super Power	7.27
2256	Taiho Shichau zo: Nagisa no Koutsuu Yuudou	1	Action Comedy Police Seinen	7.27
2257	Tenchi Muyou! in Love 2: Haruka Naru Omoi	1	Drama Romance Sci-Fi Shounen	7.27
2258	Tengen Toppa Gurren Lagann: Parallel Works	8	Music	7.27
2259	Terra Formars: Bugs 2-hen	2	Action Horror Sci-Fi Space	7.27
2260	Tonari no Kaibutsu-kun: Tonari no Gokudou-kun	1	Comedy Historical Romance Shoujo	7.27
2261	Toriko Movie: Bishokushin no Special Menu	1	Action Adventure Fantasy Shounen	7.27
2262	Urusei Yatsura: The Shougaibutsu Suieitaikai	1	Action Comedy Romance School Sci-Fi	7.27
2263	Usavich II	13	Adventure Comedy	7.27
2268	Baka to Test to Shoukanjuu: Matsuri - Sentakushi Ikou nomi	6	Comedy School	7.27
2194	Ansatsu Kyoushitsu	1	Action Comedy Shounen	7.28
2195	Black Blood Brothers	12	Action Comedy Fantasy Shounen Supernatural Vampire	7.28
2196	Code Geass: Boukoku no Akito Final - Itoshiki Monotachi e	1	Action Mecha Military	7.28
2197	Dead Leaves	1	Adventure Comedy Psychological Sci-Fi	7.28
2198	Denki-gai no Honya-san	12	Comedy Seinen Slice of Life	7.28
2199	Dr. Slump: Arale-chan	243	Comedy Sci-Fi Shounen Slice of Life	7.28
2200	Fate/kaleid liner Prisma☆Illya	10	Action Comedy Fantasy Magic	7.28
2201	Genshiken Nidaime OVA	1	Comedy Parody Slice of Life	7.28
2202	Giniro no Kami no Agito	1	Adventure Drama Fantasy Romance Sci-Fi	7.28
2203	Hoshi wo Katta Hi	1	Kids Sci-Fi	7.28
2204	Inari Konkon Koi Iroha.	10	Comedy Romance School Seinen Supernatural	7.28
2205	Inazuma Eleven: Outer Code	Unknown	Sports	7.28
2206	Lady Georgie	45	Drama Historical Romance Shoujo	7.28
2207	Lupin III: Tenshi no Tactics - Yume no Kakera wa Koroshi no Kaori	1	Action Adventure Comedy Shounen	7.28
2208	Miracle☆Girls	51	Drama Magic Shoujo	7.28
2210	Nasu: Suitcase no Wataridori	1	Drama Seinen Sports	7.28
2211	Nerawareta Gakuen	1	Romance School Sci-Fi	7.28
2212	Onmyou Taisenki	52	Adventure Fantasy Shounen Supernatural	7.28
2213	Papa no Iukoto wo Kikinasai!: Pokkapoka	1	Comedy Romance Slice of Life	7.28
2214	Precure All Stars Movie DX2: Kibou no Hikari☆Rainbow Jewel wo Mamore!	1	Action Fantasy Magic Shoujo	7.28
2215	Saint Seiya: Soul of Gold	13	Action Adventure Fantasy Sci-Fi Shounen	7.28
2216	Sarusuberi: Miss Hokusai	1	Drama Historical Supernatural	7.28
2217	Senkaiden Houshin Engi	26	Adventure Fantasy Historical Magic Shounen Supernatural	7.28
2218	Sentou Yousei Yukikaze	5	Action Drama Military Psychological Sci-Fi Space	7.28
2219	Suzumiya Haruhi no Yuuutsu (2009)	14	Comedy Mystery Parody Romance School Sci-Fi Slice of Life	7.28
2220	Tetsuwan Atom	193	Action Adventure Drama Mecha Sci-Fi Shounen	7.28
2221	Tight-rope	2	Romance Shounen Ai	7.28
2222	Usavich III	13	Comedy	7.28
2223	Yu☆Gi☆Oh!: Chou Yuugou! Toki wo Koeta Kizuna	1	Adventure Game Shounen	7.28
9529	Shouwa Ahozoushi Akanuke Ichiban!	22	Comedy Shoujo	7.28
2138	Egomama	1	Music	7.29
2150	Sakura Nagashi	1	Action Drama Mecha Music Sci-Fi	7.29
2158	Ano Natsu de Matteru: Bokutachi wa Koukou Saigo no Natsu wo Sugoshinagara Ano Natsu de Matteiru.	1	Comedy Drama Romance Sci-Fi Slice of Life	7.29
2159	Aoharu x Kikanjuu	12	Action Comedy Shounen Sports	7.29
2160	Aoi Hana	11	Romance Shoujo Ai Slice of Life	7.29
2161	B&#039;T X Neo	14	Action Adventure Shounen	7.29
2162	Black Cat Special	1	Action Comedy Shounen	7.29
2163	Black Jack (TV): Hizouban Specials	2	Adventure	7.29
2164	Black★Rock Shooter	1	Action Music	7.29
2165	Boku no Chikyuu wo Mamotte	6	Drama Sci-Fi Shoujo	7.29
2166	Buddy Complex	13	Action Mecha Sci-Fi	7.29
2167	Danball Senki	44	Action Kids Mecha	7.29
2168	Digimon X-Evolution	1	Action Adventure Fantasy Sci-Fi	7.29
2169	Doraemon Movie 20: Nobita no Uchuu Hyouryuuki	1	Adventure Comedy Fantasy Kids Shounen Space	7.29
2170	Futari wa Precure: Max Heart Movie 2 - Yukizora no Tomodachi	1	Comedy Fantasy Magic Shoujo	7.29
2171	Galaxy Angel Z	9	Comedy Sci-Fi	7.29
2172	Gantz 2nd Stage	13	Action Drama Horror Psychological Sci-Fi Supernatural	7.29
2173	Ginga Tetsudou Monogatari	26	Action Adventure Drama Sci-Fi Space	7.29
2174	Gotou ni Naritai.	1	Drama School Slice of Life	7.29
2175	Guin Saga	26	Adventure Fantasy	7.29
2176	Hi no Tori	13	Adventure Drama Historical Sci-Fi Supernatural	7.29
2177	Junkers Come Here	1	Drama Slice of Life	7.29
2178	Junketsu no Maria	12	Comedy Fantasy Historical Magic Seinen	7.29
2179	Kara no Kyoukai: Shuushou	1	Mystery	7.29
2180	Kochira Katsushikaku Kameari Kouenmae Hashutsujo The Movie	1	Action Comedy Mystery Police	7.29
2181	Kurokami The Animation	23	Action Martial Arts Super Power	7.29
2182	Kyoukaisenjou no Horizon	13	Action Fantasy	7.29
2183	Lupin III: Alcatraz Connection	1	Action Adventure Comedy Shounen	7.29
2184	Motto! Ojamajo Doremi	50	Comedy Fantasy Magic Shoujo	7.29
2185	Ojamajo Doremi Sharp Movie	1	Kids Magic Shoujo	7.29
2186	Rockman.EXE Axess	51	Action Adventure Comedy Game Mecha Sci-Fi Shounen	7.29
2187	Street Fighter II: The Movie	1	Action Martial Arts Shounen	7.29
2188	Tales of Symphonia The Animation: Sylvarant-hen	4	Action Adventure Fantasy Magic Martial Arts Shounen	7.29
2189	Utawarerumono OVA	3	Action Comedy Fantasy	7.29
2190	Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui!	12	Comedy School Shounen Slice of Life	7.29
2191	Yes! Precure 5 GoGo!	48	Action Fantasy Magic School Shoujo	7.29
2192	Yu☆Gi☆Oh!	27	Action Comedy Fantasy Game Shounen	7.29
2193	Yume-iro Pâtissière: Mune Kyun Tropical Island!	1	Kids School Shoujo	7.29
7371	AIUEO Anime Sekai no Douwa: Aesop Monogatari Anime Series	26	Adventure Fantasy Kids	7.29
8331	Kagerou Daze: In a Day&#039;s	1	Comedy Magic Romance Sci-Fi Slice of Life Supernatural	7.29
8526	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: Ryou-san to Chyuuken Rakkii Monogatari - Kameari D	1	Comedy Police	7.29
8915	Naniwa Yuukyouden: Chou Gokudou! Yoru no Bat wa Manrui-hen	1	Action Comedy	7.29
2133	Andersen Douwa: Ningyohime	1	Fantasy Romance Shoujo	7.3
2134	Anime Sanjuushi	52	Adventure Drama Historical Romance	7.3
2135	Battle Spirits: Shounen Gekiha Dan	50	Action Game Shounen	7.3
2136	Danball Senki W	58	Action Kids Mecha	7.3
2137	Detective Conan OVA 08: High School Girl Detective Sonoko Suzuki&#039;s Case Files	1	Comedy Mystery Police Shounen	7.3
2139	Gunslinger Girl: Il Teatrino	13	Action Drama Military Sci-Fi	7.3
2140	Hatenkou Yuugi	10	Adventure Comedy Drama Fantasy Romance Shoujo	7.3
2141	HeatGuy J Special	1	Action Adventure Mecha Police Sci-Fi	7.3
2142	High School Fleet	12	Action Military School	7.3
2143	Hokuto no Ken Movie	1	Adventure Sci-Fi Shounen	7.3
2144	Jigoku Sensei Nube OVA	3	Action Comedy Demons Horror School Shounen Supernatural	7.3
2145	Kimi to Boku	1	Drama Slice of Life	7.3
2146	Koi to Senkyo to Chocolate	12	Drama Romance School	7.3
2147	Majutsushi Orphen	24	Action Adventure Comedy Demons Fantasy Magic	7.3
2148	Precure All Stars Movie New Stage 2: Kokoro no Tomodachi	1	Action Kids Magic Shoujo	7.3
2149	Rec: Yurusarezarumono	1	Comedy Drama Romance	7.3
2151	Selector Destructed WIXOSS Movie	1	Game Psychological	7.3
2152	Taiho Shichau zo: Full Throttle	23	Action Comedy Police Shounen	7.3
2153	Tantei Opera Milky Holmes Dai 2 Maku	12	Comedy Mystery Super Power	7.3
2154	Tenjou-jin to Akuto-jin Saigo no Tatakai	1	Action Fantasy Magic Super Power Supernatural	7.3
2155	Ultra Maniac	26	Comedy Magic Romance School Shoujo	7.3
2156	Urusei Yatsura Movie 1: Only You	1	Action Adventure Comedy Drama Romance Sci-Fi	7.3
2157	Yes! Precure 5	49	Action Fantasy Magic School Shoujo	7.3
7674	Crayon Shin-chan Movie 24: Bakusui! Yumemi World Dai Totsugeki	1	Comedy Kids Shounen	7.3
7695	Dango San Kyoudai Attoiuma Gekijou	50	Kids Music	7.3
8125	Hikawa Maru Monogatari	1	Drama Historical	7.3
10007	Xiao Men Shen	1	Comedy Fantasy	7.3
2108	Blood Lad: Wagahai wa Neko de wa Nai	1	Action Comedy Demons Seinen Supernatural Vampire	7.31
2110	Detective Conan OVA 03: Conan and Heiji and the Vanished Boy	1	Adventure Comedy Mystery Police Shounen	7.31
2111	Dragon Nest: Warriors&#039; Dawn	1	Action Adventure Fantasy Magic	7.31
2112	Gensoumaden Saiyuuki OVA	2	Adventure Shounen Supernatural	7.31
2113	Ghost in the Shell: Stand Alone Complex - Tachikoma na Hibi	26	Comedy Mecha Sci-Fi	7.31
2114	Ginga Densetsu Weed	26	Adventure Drama Shounen	7.31
2115	Ginga Hyouryuu Vifam	46	Action Adventure Mecha Sci-Fi	7.31
2116	Jinrui wa Suitai Shimashita Specials	6	Comedy Fantasy Seinen	7.31
2117	Kaiketsu Zorro	52	Adventure Historical Shounen	7.31
2118	Kakumeiki Valvrave	12	Action Mecha Space	7.31
2119	Love Hina Haru Special: Kimi Sakura Chiru Nakare!!	1	Adventure Comedy Romance	7.31
2120	Lu Shidai 2nd Season	13	Action Adventure Comedy Game Parody	7.31
2121	Lupin III: Nusumareta Lupin	1	Action Adventure Comedy Shounen	7.31
2122	Madou King Granzort	41	Action Comedy Fantasy Magic Mecha Sci-Fi Shounen	7.31
2123	Mama wa Shougaku 4 Nensei	51	Comedy Drama Sci-Fi	7.31
2124	Manga Sekai Mukashibanashi	127	Adventure Drama Fantasy Historical	7.31
2125	Mister Ajikko	99	Comedy Shounen	7.31
2126	Prince of Tennis: Another Story - Messages From Past and Future OVA Bonus	2	Comedy Sports	7.31
2127	Ryuusei no Rockman	55	Action Game Sci-Fi Shounen	7.31
2128	Saishuu Heiki Kanojo	13	Drama Romance School Sci-Fi	7.31
2129	Sekai Meisaku Douwa: Hakuchou no Mizuumi	1	Drama Fantasy Romance	7.31
2130	Tears to Tiara	26	Action Adventure Fantasy Magic	7.31
2131	Tokyo Majin Gakuen Kenpucho: Tou	14	Action Drama Fantasy Horror Martial Arts School Supernatural	7.31
2132	Wagaya no Oinari-sama.	24	Adventure Fantasy Shounen Supernatural	7.31
7520	Bokura Mangaka: Tokiwasou Monogatari	1	Comedy Slice of Life	7.31
2073	.hack//G.U. Trilogy	1	Action Fantasy Game Sci-Fi	7.32
2074	.hack//The Movie: Sekai no Mukou ni	1	Action Adventure Fantasy Game Magic Mystery Sci-Fi	7.32
2075	Accel World EX	2	Action Game Romance School Sci-Fi	7.32
2076	Aquarion Evol	26	Action Comedy Drama Fantasy Mecha Romance Sci-Fi	7.32
2077	Ashita no Joe (Movie)	1	Action Drama Sports	7.32
2078	Bakuman.: Deraman.	2	Comedy School Shounen	7.32
2079	Chuunibyou demo Koi ga Shitai! Lite	6	Comedy School	7.32
2080	Di Gi Charat Nyo	104	Comedy Fantasy Sci-Fi	7.32
2081	Dog Days&#039;	13	Action Adventure Fantasy Magic	7.32
2082	Doraemon Movie 03: Nobita no Daimakyou	1	Adventure	7.32
2083	El Cazador de la Bruja	26	Adventure Drama Mystery	7.32
2084	Flanders no Inu Boku no Patrasche	26	Drama Historical	7.32
2085	Fushigiboshi no☆Futagohime Gyu!	52	Comedy Magic Shoujo	7.32
2086	Glass no Kamen: Sen no Kamen wo Motsu Shoujo	3	Drama Shoujo	7.32
2087	Higurashi no Naku Koro ni Special: Nekogoroshi-hen	1	Comedy Mystery	7.32
2088	Inazuma Eleven Go	47	Shounen Sports Super Power	7.32
2089	Inferno Cop	13	Action Police	7.32
2090	Joukamachi no Dandelion	12	Comedy Seinen Slice of Life Super Power	7.32
2091	Kidou Tenshi Angelic Layer	26	Comedy Drama Sci-Fi Shounen Sports	7.32
2092	Kuroshitsuji Recap	1	Action Demons Fantasy Shounen Supernatural	7.32
2093	Kyoushoku Soukou Guyver (1989)	6	Action Horror Sci-Fi Super Power	7.32
2094	Lupin III: Dead or Alive	1	Action Adventure Comedy Shounen	7.32
2095	Mo Gyutto Love de Sekkinchuu!	1	Music	7.32
2096	Ojamajo Doremi Sharp	49	Comedy Magic Shoujo	7.32
2097	One Piece 3D: Gekisou! Trap Coaster	1	Action Adventure Comedy Fantasy Shounen	7.32
2098	Phi Brain: Kami no Puzzle	25	Action Game Mystery Shounen	7.32
2099	Pokemon: Mizu no Miyako no Mamorigami Latias to Latios	1	Adventure Comedy Drama Fantasy Kids	7.32
2100	Seikai no Danshou: Tanjou	1	Military Romance Sci-Fi Space	7.32
2101	Sengoku Basara: Setonai no Gekitotsu! Hi wo Fuku Umi no Daiyousai - Fugaku!!	1	Action Historical Martial Arts Samurai	7.32
2102	Slayers Premium	1	Adventure Comedy Fantasy Magic Shounen	7.32
2103	Soukou Kihei Votoms: The Last Red Shoulder	1	Action Drama Mecha Military Sci-Fi	7.32
2105	Tamayura: Hitotose	12	Comedy Drama Slice of Life	7.32
2106	The iDOLM@STER Shiny Festa	3	Comedy Drama Music	7.32
2107	Young Black Jack	12	Drama Historical Seinen	7.32
2109	Boku no Hero Academia: Jump Festa 2016 Special	1	Action Comedy School Shounen Super Power	7.32
9206	Penguin&#039;s Memory: Shiawase Monogatari	1	Drama Military Seinen	7.32
2035	11-nin Iru!	1	Action Adventure Drama Mystery Romance Sci-Fi Shoujo Space	7.33
2036	Amagami SS+ Plus Specials	6	Romance	7.33
2037	Aoharu x Kikanjuu: Kemono-tachi no Senjou da na!	1	Action Comedy Shounen	7.33
2038	Aru Tabibito no Nikki	6	Adventure Fantasy	7.33
2039	Blood-C: The Last Dark	1	Action Horror Supernatural Vampire	7.33
2040	Buddy Complex: Kanketsu-hen - Ano Sora ni Kaeru Mirai de	2	Action Mecha Sci-Fi	7.33
2041	Daze	1	Music	7.33
2042	Denpa Onna to Seishun Otoko	12	Comedy Sci-Fi Seinen Slice of Life	7.33
2043	Doraemon Movie 04: Nobita no Kaitei Kiganjou	1	Fantasy	7.33
2044	Doraemon Movie 10: Nobita no Nippon Tanjou	1	Adventure Comedy Fantasy Kids Shounen	7.33
2045	Doraemon Movie 23: Nobita to Robot Kingdom	1	Adventure Comedy Fantasy Kids Shounen	7.33
2046	Dragon Ball Movie 4: Saikyou e no Michi	1	Action Adventure Comedy Fantasy Sci-Fi Shounen Super Power	7.33
2047	Flag	13	Mecha Military	7.33
2048	Ghost in the Shell: Arise - Alternative Architecture	10	Mecha Police Psychological Sci-Fi	7.33
2049	Hitsugi no Chaika: Avenging Battle	10	Action Adventure Comedy Fantasy Romance Shounen	7.33
2051	Karin	24	Comedy Romance School Shounen Vampire	7.33
2052	Kiddy Grade: Maelstrom	1	Action Mecha Sci-Fi Super Power	7.33
2053	Kimi no Iru Machi: Tasogare Kousaten	2	Drama Romance School Shounen	7.33
2054	Lupin III: $1 Money Wars	1	Action Adventure Comedy Shounen	7.33
2055	Mai Mai Shinko to Sennen no Mahou	1	Adventure Drama	7.33
2056	Mameshiba	24	Comedy	7.33
2057	Mobile Suit Gundam 00: Tenshitachi no Kiseki	1	Action Mecha Sci-Fi	7.33
2058	Motto! Ojamajo Doremi: Kaeru Ishi no Himitsu	1	Kids Magic Shoujo	7.33
2059	Mouryou no Hako	13	Mystery Seinen Supernatural Thriller	7.33
2060	Musekinin Kanchou Tylor OVA	10	Adventure Comedy Drama Military Sci-Fi Space	7.33
2061	Music S.T.A.R.T!!	1	Music	7.33
2062	One Piece Movie 2: Nejimaki-jima no Daibouken	1	Action Adventure Comedy Fantasy Shounen Super Power	7.33
2063	Pokemon 3D Adventure: Mew wo Sagase!	1	Adventure Comedy Fantasy Kids	7.33
2064	Princess Nine: Kisaragi Joshikou Yakyuubu	26	Drama Romance Sports	7.33
2065	Ryuugajou Nanana no Maizoukin (TV)	11	Comedy Supernatural	7.33
2066	Sango Shou Densetsu: Aoi Umi no Elfie	1	Adventure Sci-Fi	7.33
2067	Saraba Uchuu Senkan Yamato: Ai no Senshi-tachi	1	Action Drama Military Sci-Fi Space	7.33
2068	Shakugan no Shana II (Second) Specials	3	Comedy Parody	7.33
2069	Shin Shirayuki-hime Densetsu Prétear	13	Comedy Drama Fantasy Magic Romance Shoujo Super Power	7.33
2070	Shinkyoku Soukai Polyphonica Crimson S	12	Drama Fantasy Music Romance School	7.33
2071	Smile Precure!	48	Action Fantasy Magic Shoujo	7.33
2072	Uchuu Senkan Yamato III	25	Action Adventure Drama Military Sci-Fi Space	7.33
2104	Soukyuu no Fafner: Dead Aggressor - Exodus Special	1	Action Drama Mecha Military Sci-Fi	7.33
7330	&quot;Eiyuu&quot; Kaitai	1	Fantasy Super Power	7.33
8208	Ijiwaru Baasan	39	Comedy Slice of Life	7.33
8250	Itazura Tenshi Chippo-chan	240	Comedy Kids	7.33
8274	Jigoku no Soubee	1	Comedy Demons Drama Kids	7.33
8427	Kemurigusa Monogatari	1		7.33
8541	Kokoro no Catchball	1	Kids Sports	7.33
8726	Manga Hana no Kakarichou	1	Comedy Seinen Slice of Life	7.33
8841	Moeru! Oniisan	24	Action Adventure Comedy	7.33
8897	Nagasaki no Kouma	1	Historical Kids	7.33
8906	Nanatsu no Hoshi	1	Drama Kids	7.33
8949	Neko no Kuni no Kenpou	1	Historical	7.33
8953	Neko wa Ikite Iru	1	Drama Historical Kids	7.33
9228	Pink Lady Monogatari: Eikou no Tenshitachi Recaps	2	Drama Music Slice of Life	7.33
9337	Rouge: Lady&#039;s Comic Video	2	Drama Josei Romance	7.33
9372	Sanchoume no Yuuhi	27	Comedy Slice of Life	7.33
9528	Shouta no Sushi: Kokoro ni Hibiku Shari no Aji	1	Shounen	7.33
9555	Somei-ka no Hi no Youjin: Bouka no Tebiki Katei-hen	1	Drama Kids	7.33
9642	Spheres	26	Action Fantasy Super Power	7.33
9729	Tanuki-san Ooatari	1	Kids	7.33
9758	Tetsujin 28-gou Gao!	151	Mecha Slice of Life	7.33
10038	Yancharu Moncha	80	Kids	7.33
2001	Ao no Exorcist Movie Special	1	Comedy Parody	7.34
2002	Beelzebub: Hirotta Akachan wa Daimaou!?	1	Action Comedy Demons School Shounen Supernatural	7.34
2003	Dantalian no Shoka	12	Action Historical Mystery Supernatural	7.34
2004	Densetsu no Yuusha Da Garn	46	Mecha Sci-Fi Shounen	7.34
2005	Doraemon Movie 30: Nobita no Ningyo Daikaisen	1	Adventure Comedy Fantasy Kids Shounen	7.34
2006	Doraemon Movie 32: Nobita to Kiseki no Shima - Animal Adventure	1	Adventure Comedy Fantasy Kids Shounen	7.34
2007	Figure 17: Tsubasa &amp; Hikaru	13	Sci-Fi Slice of Life	7.34
2008	Fuujin Monogatari	13	Drama Fantasy School Slice of Life Supernatural	7.34
2009	GJ-bu@	1	Comedy School Slice of Life	7.34
2010	Great Mazinger	56	Action Mecha Sci-Fi Shounen	7.34
2011	Gugure! Kokkuri-san Specials	11	Comedy Romance Shounen Supernatural	7.34
2012	HeatGuy J	25	Action Adventure Mecha Police Sci-Fi	7.34
2013	Hyakko	13	Comedy School Slice of Life	7.34
2014	Inou-Battle wa Nichijou-kei no Naka de	12	Comedy Romance School Slice of Life Supernatural	7.34
2015	Kiddy Grade: Truth Dawn	1	Action Mecha Sci-Fi Super Power	7.34
2016	Koi Kaze	13	Drama Psychological Romance Seinen	7.34
2017	Lupin III (2015) Specials	2	Action Adventure Comedy Shounen	7.34
2018	Lupin III: Honoo no Kioku - Tokyo Crisis	1	Action Adventure Comedy Mystery Shounen	7.34
2019	Macross Δ	26	Action Mecha Military Music Romance Sci-Fi Space	7.34
2020	Mini Van	37	Comedy Game Parody Slice of Life	7.34
2021	Mojakou	74	Comedy Fantasy Sci-Fi	7.34
2022	Natsu-iro Egao de 1 2 Jump!	1	Music	7.34
2023	Neppuu Kairiku Bushi Road	1	Action Fantasy Mecha Sci-Fi	7.34
2024	One Piece 3D: Mugiwara Chase	1	Action Adventure Comedy Fantasy Shounen	7.34
2025	One Piece Recap	1	Action Adventure Comedy Fantasy Shounen Super Power	7.34
2026	One Piece: Yume no Soccer Ou!	1	Comedy Fantasy Shounen Sports	7.34
2027	Ou Dorobou Jing	13	Adventure Comedy Fantasy Sci-Fi Shounen	7.34
2028	Pokemon Diamond &amp; Pearl: Dialga vs. Palkia vs. Darkrai	1	Action Adventure Comedy Drama Fantasy Kids	7.34
2029	Sei Juushi Bismarck	51	Action Mecha Sci-Fi Space	7.34
2030	Sidonia no Kishi Movie	1	Action Mecha Sci-Fi Seinen Space	7.34
2031	Tactics	25	Comedy Drama Fantasy Mystery Shounen Super Power	7.34
2032	The Animatrix	9	Action Drama Sci-Fi	7.34
2033	Umineko no Naku Koro ni	26	Horror Mystery Psychological Supernatural	7.34
2034	Yuu☆Yuu☆Hakusho: Meikai Shitou-hen - Honoo no Kizuna	1	Action Comedy	7.34
2050	Inazuma Eleven Go vs. Danball Senki W Movie	1	Action Kids Mecha Sports	7.34
1946	Kimi no Kokoro wa Kagayaiteru kai?	1	Music	7.35
1966	All Alone With You	1	Fantasy Music	7.35
1967	Amagami SS: Tachibana Miya-hen - Imouto	1	School	7.35
1968	Amagi Brilliant Park: Nonbirishiteiru Hima ga Nai!	1	Comedy	7.35
1969	Captain Tsubasa	128	Action Shounen Sports	7.35
1970	Clannad Movie	1	Drama Fantasy Romance School	7.35
1971	D.N.Angel	26	Action Comedy Fantasy Magic Romance School Shoujo	7.35
1973	Druaga no Tou: The Aegis of Uruk	12	Adventure Comedy Fantasy	7.35
1974	Gear Fighter Dendoh	38	Action Adventure Mecha School Sci-Fi Space	7.35
1975	Hunter x Hunter Movie: The Last Mission	1	Action Adventure Shounen Super Power	7.35
1976	Jungle no Ouja Taa-chan	50	Action Comedy Parody	7.35
1977	Kazoku Robinson Hyouryuuki: Fushigi na Shima no Flone	50	Adventure Drama Historical Slice of Life	7.35
1978	Kindaichi Shounen no Jikenbo Specials	2	Mystery Shounen	7.35
1979	Kinnikuman	137	Adventure Comedy Shounen Sports	7.35
1980	Kirarin☆Revolution	153	Comedy Drama Romance Shoujo	7.35
1981	Kuromukuro	26	Action Mecha Sci-Fi	7.35
1982	Lupin III: Chi no Kokuin - Eien no Mermaid	1	Action Adventure Comedy Shounen	7.35
1983	Mobile Suit Zeta Gundam: A New Translation - Heir to the Stars	1	Drama Mecha Military Sci-Fi Space	7.35
1984	Nogizaka Haruka no Himitsu	12	Comedy Romance	7.35
1985	One Piece: Glorious Island	2	Action Adventure Comedy Fantasy Shounen Super Power	7.35
1986	One Piece: Jango no Dance Carnival	1	Comedy Fantasy Shounen	7.35
1987	Onegai☆Teacher	12	Comedy Drama Romance School Sci-Fi	7.35
1988	Ookiku Furikabutte Special	1	Drama Sports	7.35
1989	Owari no Seraph: Owaranai Seraph	9	Comedy Police Shounen Supernatural Vampire	7.35
1990	Prince of Tennis: Another Story II - Ano Toki no Bokura OVA Bonus	2	Shounen Sports	7.35
1991	Puchimas!!: Petit Petit iDOLM@STER	74	Comedy Slice of Life	7.35
1992	Sabagebu! Specials	6	Action Comedy Military Shoujo	7.35
1993	Shijou Saikyou no Deshi Kenichi Specials	4	Action Comedy Martial Arts School Shounen	7.35
1994	Subete ga F ni Naru: The Perfect Insider	11	Mystery Psychological Sci-Fi	7.35
1995	Super Robot Taisen OG: The Inspector	26	Action Mecha Sci-Fi Space	7.35
1996	Suzuka	26	Drama Romance Sports	7.35
1997	Sword Art Online II	24	Action Adventure Fantasy Game Romance	7.35
1998	Tamako Market	12	Comedy Slice of Life	7.35
1999	The Cockpit	3	Historical Military	7.35
2000	Utawarerumono: Itsuwari no Kamen	25	Action Drama Fantasy	7.35
8404	Karate Baka Ichidai	47	Historical Martial Arts Sports	7.35
1918	Girls und Panzer der Film: Arisu War!	1	Military School	7.36
1935	.hack//Quantum	3	Action Adventure Fantasy Game Sci-Fi	7.36
1936	Bubblegum Crisis	8	Adventure Mecha Sci-Fi Shounen	7.36
1937	Cencoroll	1	Action Sci-Fi	7.36
1938	Cybersix	13	Action Adventure Romance Sci-Fi	7.36
1939	Cyborg 009: The Cyborg Soldier	52	Action Adventure Mecha Sci-Fi Shounen	7.36
1940	Danball Senki Wars	37	Action Kids Mecha	7.36
1941	Dragon Ball Z Movie 09: Ginga Girigiri!! Bucchigiri no Sugoi Yatsu	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.36
1942	Gudetama	Unknown	Comedy Kids	7.36
1943	Higurashi no Naku Koro ni Kaku: Outbreak	1	Horror Mystery Psychological Thriller	7.36
1944	Ixion Saga DT	25	Action Comedy Fantasy	7.36
1945	Karneval (TV)	13	Action Fantasy Mystery Sci-Fi Shoujo	7.36
1947	Kotoura-san	12	Comedy Drama Romance School	7.36
1949	Kyouran Kazoku Nikki	26	Comedy Sci-Fi	7.36
1950	Le Chevalier D&#039;Eon	24	Historical Magic Mystery Seinen Supernatural	7.36
1951	Love Hina: Motoko no Sentaku Koi ka Ken... &quot;Naku na&quot;	1	Drama Romance Slice of Life	7.36
1952	Mai-Otome Zwei	4	Action Magic	7.36
1953	Masuda Kousuke Gekijou Gag Manga Biyori 3	12	Comedy	7.36
1954	Mobile Suit Gundam Seed Destiny	50	Action Drama Mecha Military Romance Sci-Fi Space	7.36
1955	Natsuyuki Rendezvous	11	Drama Josei Romance Supernatural	7.36
1956	One Piece: Kinkyuu Kikaku One Piece Kanzen Kouryakuhou	1	Adventure Comedy Fantasy Shounen	7.36
1957	Owari no Seraph: Nagoya Kessen-hen - Owaranai Seraph - Nagoya Kessen-hen	4	Comedy Parody Shounen	7.36
1958	Suite Precure♪	48	Action Fantasy Magic Shoujo	7.36
1959	Sukitte Ii na yo.: Dareka ga	1	Romance School Shoujo	7.36
1960	Tatakau Shisho: The Book of Bantorra	27	Action Fantasy Seinen Super Power	7.36
1961	Tonari no Yamada-kun	1	Comedy Slice of Life	7.36
1962	Witch Hunter Robin	26	Action Drama Magic Mystery Police Supernatural	7.36
1963	Yokohama Kaidashi Kikou: Quiet Country Cafe	2	Sci-Fi Seinen Slice of Life	7.36
1964	Zettai Karen Children OVA: Aitazousei! Ubawareta Mirai?	1	Action Comedy Shounen Supernatural	7.36
1965	Ajin Part 3: Shougeki	1	Action Horror Mystery Seinen Supernatural	7.36
1972	Dimension W	12	Action Sci-Fi Seinen	7.36
9054	Oden-kun	156	Comedy	7.36
10346	Seitokaichou ni Chuukoku	2	Comedy Drama Romance School Yaoi	7.36
1904	Amagami SS OVA	6	Romance School	7.37
1905	Bishoujo Senshi Sailor Moon SuperS Gaiden: Ami-chan no Hatsukoi	1	Comedy Magic Romance Shoujo	7.37
1906	Captain Tsubasa J	47	Action Shounen Sports	7.37
1907	Chibi Maruko-chan (1995)	Unknown	Comedy Kids School Slice of Life	7.37
1908	Chiisana Ahiru no Ooki na Ai no Monogatari: Ahiru no Kwak	52	Adventure Comedy Drama Fantasy Kids	7.37
1909	Detective Conan OVA 01: Conan vs. Kid vs. Yaiba	1	Adventure Comedy Mystery Shounen	7.37
1910	Detective Conan OVA 05: The Target is Kogoro! The Detective Boys&#039; Secret Investigation	1	Adventure Comedy Mystery Police Shounen	7.37
1911	Digimon Adventure 02	50	Action Adventure Comedy Drama Fantasy Kids	7.37
1912	Doraemon Movie 12: Nobita no Dorabian Nights	1	Adventure Comedy Fantasy Kids Shounen	7.37
1913	Fushigi Yuugi OVA 2	6	Adventure Drama Fantasy Historical Martial Arts Romance Shoujo	7.37
1914	Galaxy Angel 3 Specials	2	Comedy Sci-Fi	7.37
1915	Galaxy Angel 4	13	Comedy Sci-Fi	7.37
1916	Ghost in the Shell: Nyuumon Arise	26	Comedy	7.37
1917	Ghost in the Shell: Stand Alone Complex 2nd GIG - Tachikoma na Hibi	26	Comedy Mecha Sci-Fi	7.37
1919	Hellsing: The Dawn	3	Action Horror Seinen Supernatural Vampire	7.37
1920	Hunter x Hunter Pilot	1	Action Adventure Shounen Super Power	7.37
1921	Jewelpet Twinkle☆: Hohoemi no Niji ni Dokki☆Doki!	1	Fantasy Magic School Shoujo	7.37
1922	Jormungand: Perfect Order - First Stage Soushuuhen	1	Action Adventure Seinen	7.37
1923	Keroro Gunsou Movie 5: Tanjou! Kyuukyoku Keroro Kiseki no Jikuu-jima de arimasu!!	1	Comedy	7.37
1924	Mazinkaiser: Shitou! Ankoku Dai Shogun	1	Action Mecha	7.37
1925	Mobile Suit Zeta Gundam: A New Translation III - Love Is the Pulse of the Stars	1	Drama Mecha Military Sci-Fi Space	7.37
1926	Nichijou: Nichijou no 0-wa	1	Comedy School Slice of Life	7.37
1927	One Piece: Nenmatsu Tokubetsu Kikaku! Mugiwara no Luffy Oyabun Torimonochou	1	Adventure Comedy Fantasy Shounen	7.37
1928	Shinryaku! Ika Musume Specials	2	Comedy	7.37
1929	Slayers Revolution	13	Adventure Comedy Fantasy	7.37
1930	Sola	13	Drama Romance Slice of Life Supernatural	7.37
1931	Star Driver: Kagayaki no Takuto	25	Action Mecha Romance Shounen	7.37
1932	Takanashi Rikka Kai: Chuunibyou demo Koi ga Shitai! Movie	1	Comedy Drama Romance School Slice of Life	7.37
1933	Yamada-kun to 7-nin no Majo	1	Comedy School Shounen Supernatural	7.37
1934	Yokohama Kaidashi Kikou	2	Sci-Fi Seinen Slice of Life	7.37
10345	Ai no Kusabi	2	Drama Romance Sci-Fi Yaoi	7.37
1872	Aggressive Retsuko	Unknown	Comedy Music	7.38
1873	Angel Heart	50	Action Drama Mystery Romance Seinen	7.38
1874	Area no Kishi	37	Comedy School Shounen Sports	7.38
1875	Ayashi no Ceres	24	Adventure Comedy Drama Horror Psychological Romance Shoujo Supernatural	7.38
1876	Baka to Test to Shoukanjuu Ni!: Mahou Hideyoshi Hideyoshi	1	Comedy Magic	7.38
1877	Bakemonogatari Recap	1	Mystery Romance Supernatural	7.38
1878	Black Jack the Movie	1	Drama	7.38
1879	Detective Conan OVA 07: A Challenge from Agasa! Agasa vs. Conan and the Detective Boys	1	Adventure Comedy Mystery Police Shounen	7.38
1880	Doraemon: Nobita&#039;s the Night Before a Wedding	1	Fantasy	7.38
1881	Gakuen Utopia Manabi Straight!	12	Comedy School Slice of Life	7.38
1882	Gun x Sword	26	Action Adventure Drama Mecha Sci-Fi Shounen	7.38
1883	Hiiro no Kakera Dai Ni Shou	13	Fantasy Romance Shoujo Supernatural	7.38
1884	Kuruneko Season 2	49	Comedy Slice of Life	7.38
1885	Kyoushoku Soukou Guyver (2005)	26	Adventure Sci-Fi Shounen	7.38
1886	Lupin III: Fuuma Ichizoku no Inbou	1	Action Adventure Comedy Shounen	7.38
1887	Mikan Enikki	30	Comedy Romance Shoujo Slice of Life	7.38
1888	Oh! Edo Rocket	26	Comedy Drama Fantasy Historical Sci-Fi	7.38
1889	Ookami-san to Shichinin no Nakama-tachi	12	Comedy Parody Romance	7.38
1890	Planetarian: Hoshi no Hito	1	Magic	7.38
1891	Rain Town	1	Drama	7.38
1892	Ranma ½: Battle ga Ippai 29-nin no Korinai Yatsura	1	Comedy Martial Arts Slice of Life	7.38
1893	RideBack	12	Action Drama Mecha School Sci-Fi	7.38
1894	Saki Achiga-hen: Episode of Side-A	12	Game School Slice of Life	7.38
1895	School Rumble San Gakki	2	Comedy Romance School Shounen	7.38
1896	Shikabane Hime: Aka	13	Action Horror Martial Arts	7.38
1897	Solty Rei	24	Action Sci-Fi Super Power	7.38
1898	Soukyuu no Fafner: Dead Aggressor	25	Action Drama Mecha Military Sci-Fi	7.38
1899	Spiral: Suiri no Kizuna	25	Drama Mystery Shounen	7.38
1900	The iDOLM@STER Cinderella Girls 2nd Season	12	Comedy Drama Music	7.38
1901	Tiger Mask	105	Action Drama Shounen Sports	7.38
1902	Tokyo Marble Chocolate	2	Romance Slice of Life	7.38
1903	Zoids Genesis	50	Action Adventure Comedy Mecha Military	7.38
1948	Kuroko no Basket Movie 3: Winter Cup Soushuuhen - Tobira no Mukou	1	Comedy Shounen Sports	7.38
1844	After War Gundam X	39	Adventure Drama Mecha Sci-Fi Space	7.39
1845	Air Movie	1	Drama Romance Supernatural	7.39
1846	Atashin&#039;chi	330	Comedy Slice of Life	7.39
1847	Bishoujo Senshi Sailor Moon: Sailor Stars - Hero Club	3	Adventure Comedy Drama Fantasy Magic Romance Shoujo	7.39
1848	Doraemon Movie 17: Nobita to Ginga Express	1	Fantasy	7.39
1849	Doraemon: 2112-nen Doraemon Tanjou	1	Comedy Fantasy Kids	7.39
1850	Doraemon: Doraemon Comes Back	1	Comedy Fantasy Kids Sci-Fi Shounen	7.39
1851	Druaga no Tou: The Sword of Uruk	12	Adventure Fantasy	7.39
1852	Fate/kaleid liner Prisma☆Illya 2wei Herz!	10	Action Comedy Fantasy Magic Slice of Life	7.39
1853	Fullmetal Alchemist: Reflections	1	Adventure Comedy Drama Fantasy Military Shounen	7.39
1854	Genius Party	7	Action Dementia Fantasy Mecha Music Psychological Romance Sci-Fi	7.39
1855	Genius Party Beyond	5	Dementia Fantasy Music Sci-Fi	7.39
1856	Gosenzo-sama Banbanzai!	6	Comedy Sci-Fi	7.39
1857	H2	41	Comedy Romance Shounen Sports	7.39
1858	Haha wo Tazunete Sanzenri	52	Adventure Drama Historical Slice of Life	7.39
1859	Haikara-san ga Tooru	42	Drama Historical Romance Shoujo Slice of Life	7.39
1860	Hunter x Hunter Movie: Phantom Rouge	1	Action Adventure Shounen Super Power	7.39
1861	Kaidan Restaurant	23	Horror Kids Mystery Supernatural	7.39
1862	Koutetsujou no Kabaneri	12	Action Drama Fantasy Horror	7.39
1863	Kuroshitsuji Picture Drama	1	Demons Supernatural	7.39
1864	Ookiku Furikabutte: Natsu no Scorebook	2	Comedy Sports	7.39
1865	Ranma ½: Chuugoku Nekonron Daikessen! Okite Yaburi no Gekitou-hen!!	1	Adventure Comedy Shounen	7.39
1866	Ranma ½: Nettou Uta Gassen	2	Comedy Music	7.39
1867	Rumiko Takahashi Anthology	13	Comedy Drama Romance Shounen Slice of Life Supernatural	7.39
1868	Shaman King Specials	5	Action Comedy Shounen Supernatural	7.39
1869	Slayers: The Motion Picture	1	Adventure Comedy Fantasy Magic Shounen	7.39
1870	The Rose and Women of Versailles	1	Adventure Comedy Drama Historical Romance Shoujo	7.39
1871	Tsubasa Chronicle: Tori Kago no Kuni no Himegimi	1	Action Adventure Drama Fantasy Shounen	7.39
1813	Baka to Test to Shoukanjuu: Spinout! Sore ga Bokura no Nichijou	6	Comedy Romance School Super Power	7.4
1814	Canaan	13	Action Seinen	7.4
1815	Cardfight!! Vanguard: Link Joker-hen	59	Action Adventure Demons Game Shounen	7.4
1816	Choujigen Game Neptune The Animation OVA	1	Action Comedy Fantasy Sci-Fi	7.4
1817	Crayon Shin-chan Movie 22: Gachinko! Gyakushuu no Robo To-chan	1	Comedy Kids Shounen	7.4
1818	Digimon Adventure 02: Diablomon no Gyakushuu	1	Adventure Comedy Drama Kids Sci-Fi	7.4
1819	Dimension W: W no Tobira Online	Unknown	Sci-Fi Seinen	7.4
1820	Doraemon Movie 01: Nobita no Kyouryuu	1	Adventure Comedy	7.4
1821	Dragon Ball Super	Unknown	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	7.4
1822	Dragon Ball: Episode of Bardock	1	Action Adventure Comedy Fantasy Martial Arts Sci-Fi Shounen Super Power	7.4
1823	Harukanaru Toki no Naka de: Maihitoyo	1	Drama Fantasy Historical Magic Romance Shoujo Supernatural	7.4
1824	Ihatov Gensou: Kenji no Haru	1	Drama Historical Slice of Life	7.4
1825	Irregular Hunter X: The Day of Sigma	1	Action Mecha Sci-Fi Shounen	7.4
1826	Mahoutsukai ni Taisetsu na Koto: Natsu no Sora	12	Drama Magic Shounen Slice of Life	7.4
1827	Mai-Otome	26	Comedy Drama Fantasy Magic	7.4
1828	Masuda Kousuke Gekijou Gag Manga Biyori	12	Comedy Parody	7.4
1829	Mondaiji-tachi ga Isekai kara Kuru Sou Desu yo?: Onsen Manyuuki	1	Fantasy Supernatural	7.4
1830	Musashi no Ken	72	Shounen Sports	7.4
1831	Natsu no Arashi!	13	Comedy Romance Supernatural	7.4
1832	Nogizaka Haruka no Himitsu: Finale	4	Comedy Romance	7.4
1833	Onegai My Melody: Kuru Kuru Shuffle!	52	Comedy Fantasy Magic	7.4
1834	Pokemon Advanced Generation: Mew to Hadou no Yuusha Lucario	1	Action Adventure Drama Fantasy Kids	7.4
1835	Ramayana: The Legend of Prince Rama	1	Adventure	7.4
1836	Rockman.EXE Movie: Hikari to Yami no Program	1	Action Adventure Game Kids	7.4
1837	Senjou no Valkyria 3: Tagatame no Juusou	2	Action Fantasy Military	7.4
1838	Tetsuwan Birdy Decode: The Cipher	1	Action Comedy Sci-Fi	7.4
1839	The Sky Crawlers	1	Drama Military	7.4
1840	The Third: Aoi Hitomi no Shoujo	24	Action Adventure Sci-Fi Seinen	7.4
1841	Vampire Knight	13	Drama Mystery Romance Shoujo Supernatural Vampire	7.4
1842	Witchblade	24	Action Sci-Fi Super Power	7.4
1843	Wonderful Rush	1	Music	7.4
7580	Charamaru-kun to Dokumaru-kun	1	Kids Super Power	7.4
7825	Fuku-chan no Zousan Butai	1	Comedy Historical	7.4
8181	Hulu Xiongdi	13	Action Super Power	7.4
8241	Isewan Taifuu Monogatari	1	Drama Historical	7.4
8664	Luo Xiao Hei Zhan Ji	Unknown	Comedy Supernatural	7.4
8708	Mama Ohanashi Kikasete	15	Fantasy Kids	7.4
1776	07-Ghost	25	Action Demons Fantasy Magic Military Shoujo	7.41
1777	Aa! Megami-sama!	5	Comedy Magic Romance Seinen Supernatural	7.41
1778	Afro Samurai	5	Action Adventure Samurai	7.41
1779	Allison to Lillia	26	Action Adventure Shounen	7.41
1780	Aoyama Goushou Tanpenshuu	7	Adventure Comedy Mystery Police Shounen	7.41
1781	Chibi Maruko-chan Movie	1	Comedy School Shoujo	7.41
1782	Denpa Onna to Seishun Otoko Special	1	Comedy Sci-Fi Seinen	7.41
1783	Doraemon Movie 22: Nobita to Tsubasa no Yuusha-tachi	1	Adventure Fantasy Kids Shounen	7.41
1784	Doraemon Movie 24: Nobita to Fushigi Kaze Tsukai	1	Adventure Comedy Fantasy Kids	7.41
1785	Ginga e Kickoff!!	39	Shounen Sports	7.41
1786	Grappler Baki (TV)	24	Shounen Sports	7.41
1787	Hamatora The Animation	12	Comedy Mystery Super Power	7.41
1788	Heavy Object	24	Action Mecha Military Sci-Fi	7.41
1789	IGPX: Immortal Grand Prix (2005) 2nd Season	13	Mecha Sci-Fi Shounen Sports	7.41
1790	Jyu Oh Sei	11	Action Adventure Drama Mystery Sci-Fi Shoujo	7.41
1791	Kaichou wa Maid-sama!: Goshujinsama to Asonjao♥	1	Comedy School Shoujo	7.41
1792	Kimi ga Nozomu Eien	14	Drama Romance Slice of Life	7.41
1793	Kiniro Mosaic	12	Comedy School Slice of Life	7.41
1794	Konjiki no Gash Bell!!: 101 Banme no Mamono	1	Adventure Shounen Supernatural	7.41
1795	Maria-sama ga Miteru 4th Specials	11	Comedy	7.41
1796	Masuda Kousuke Gekijou Gag Manga Biyori +	12	Comedy	7.41
1797	Minami-ke Okawari	13	Comedy School Slice of Life	7.41
1798	Mobile Suit Gundam 00 The Movie: A Wakening of the Trailblazer	1	Action Mecha Sci-Fi Space	7.41
1799	Myself; Yourself	13	Drama Romance School	7.41
1800	Noir	26	Action Drama Mystery	7.41
1801	One Piece: Episode of Alabasta - Prologue	1	Action Adventure Fantasy Shounen	7.41
1802	Petshop of Horrors	4	Horror Josei Mystery Supernatural	7.41
1803	Plastic Neesan	12	Comedy School	7.41
1804	Potemayo	12	Comedy School Seinen	7.41
1805	Precure All Stars Movie DX: Minna Tomodachi☆Kiseki no Zenin Daishuugou!	1	Action Fantasy Magic Shoujo	7.41
1806	Rail of the Star: A True Story of Children	1	Drama Historical	7.41
1807	Saiunkoku Monogatari Soushuuhen	9	Adventure Comedy Drama Fantasy Historical Romance	7.41
1808	Selector Infected WIXOSS	12	Game Psychological	7.41
1809	Slayers Great	1	Adventure Comedy Fantasy Magic Shounen	7.41
1810	Souten Kouro	26	Action Adventure Historical	7.41
1811	Tabisuru Nuigurumi: Traveling Daru	1	Kids Slice of Life	7.41
1812	The iDOLM@STER Cinderella Girls: Anytime Anywhere with Cinderella.	1	Comedy Drama Music	7.41
1742	Ansatsu Kyoushitsu (TV): Deai no Jikan	1	Action Comedy School Shounen	7.42
1743	Biohazard: Damnation	1	Action Horror Sci-Fi	7.42
1744	Black Jack: Futari no Kuroi Isha	1	Drama	7.42
1745	Cheonnyeon-yeowoo Yeowoobi	1	Drama Fantasy Sci-Fi	7.42
1746	Detroit Metal City: Birth of the Metal Devil	1	Comedy Music Parody Romance	7.42
1747	Digimon Xros Wars: Aku no Death General to Nanatsu no Oukoku	24	Action Adventure Comedy Fantasy Shounen	7.42
1748	Dokidoki Densetsu: Mahoujin Guru Guru	38	Adventure Comedy Fantasy Magic Shounen	7.42
1749	Doraemon Movie 11: Nobita to Animal Planet	1	Adventure Comedy Fantasy Kids Sci-Fi Shounen	7.42
1750	Doraemon Movie 13: Nobita to Kumo no Oukoku	1	Adventure Comedy	7.42
1751	Doraemon Movie 34: Shin Nobita no Daimakyou - Peko to 5-nin no Tankentai	1	Adventure Comedy Fantasy Kids	7.42
1752	Hanayamata	12	Comedy School Seinen Slice of Life	7.42
1753	Heisei Tanuki Gassen Ponpoko	1	Kids	7.42
1754	Hibike! Euphonium Movie: Kitauji Koukou Suisougaku-bu e Youkoso	1	Music School	7.42
1755	Himitsu: The Revelation	26	Mystery Police Psychological Sci-Fi Shoujo	7.42
1756	Ikoku Meiro no Croisée Special	1	Historical Seinen Slice of Life	7.42
1757	Kami nomi zo Shiru Sekai: 4-nin to Idol	1	Comedy Music Shounen Supernatural	7.42
1758	Kimi ni Todoke 2nd Season Specials	3	Comedy Romance Shoujo	7.42
1759	Kindaichi Shounen no Jikenbo Returns	25	Mystery Shounen	7.42
1760	Kuroko no Basket: Oshaberi Shiyokka	1	Comedy School Shounen Sports	7.42
1761	Matantei Loki Ragnarok	26	Comedy Magic Mystery Shounen Supernatural	7.42
1762	MÄR	102	Action Adventure Comedy Fantasy Shounen	7.42
1763	Mobile Suit Gundam Seed Destiny Special Edition	4	Action Drama Mecha Military Romance Sci-Fi Space	7.42
1764	Ore no Nounai Sentakushi ga Gakuen Love Comedy wo Zenryoku de Jama Shiteiru OVA	1	Comedy Romance School	7.42
1765	Phi Brain: Kami no Puzzle - Orpheus Order-hen	25	Action Game Mystery Shounen	7.42
1766	Phi Brain: Kami no Puzzle - Shukuteki! Rätsel-hen	25	Action Game Mystery Shounen	7.42
1767	Saint Seiya: Shinku no Shounen Densetsu	1	Adventure Fantasy Sci-Fi Shounen	7.42
1768	Saint Seiya: Tenkai-hen Josou - Overture	1	Adventure Sci-Fi Shounen	7.42
1769	Seikai no Monshou Special	1	Action Military Romance Sci-Fi Space	7.42
1770	Slayers Gorgeous	1	Adventure Comedy Fantasy Magic Supernatural	7.42
1771	Slayers Return	1	Adventure Comedy Fantasy Magic Shounen	7.42
1772	Taiho Shichau zo The Movie	1	Action Comedy Drama Police Shounen	7.42
1773	Taishou Yakyuu Musume.	12	Comedy Historical School Seinen Sports	7.42
1774	Tokyo Majin Gakuen Kenpucho: Tou Dai Ni Maku	12	Action Drama Fantasy Horror Martial Arts Mystery School	7.42
1775	Yes! Precure 5 Movie: Kagami no Kuni no Miracle Daibouken!	1	Fantasy Music Romance Shoujo	7.42
1703	Air Gear Special	1	Shounen Sports	7.43
1704	Ao no Exorcist: Kuro no Iede	1	Action Demons Fantasy Shounen Supernatural	7.43
1705	Break Blade	12	Action Fantasy Mecha Military Shounen	7.43
1706	Damekko Doubutsu	26	Comedy	7.43
1707	Detective Conan OVA 02: 16 Suspects	1	Adventure Comedy Mystery Police Shounen	7.43
1708	Doraemon Movie 09: Nobita no Parallel Saiyuuki	1	Adventure Fantasy Kids Sci-Fi Shounen	7.43
1709	Doraemon Movie 29: Shin Nobita no Uchuu Kaitakushi	1	Adventure Comedy Fantasy Kids	7.43
1710	ef: A Tale of Melodies. - Prologue	1	Music	7.43
1711	Ganbarist! Shun	30	Comedy Shounen Sports	7.43
1712	Ginga Tetsudou no Yoru	1	Drama Fantasy Historical Kids Mystery	7.43
1713	Haiyore! Nyaruko-san W	12	Comedy Parody Sci-Fi	7.43
1714	Himouto! Umaru-chan: Umaru-chan Mou Ikkai!	1	Comedy School Seinen Slice of Life	7.43
1715	Hori-san to Miyamura-kun	3	Comedy Romance School Shounen	7.43
1716	Hyouka: Motsubeki Mono wa	1	Slice of Life	7.43
1717	Kakumeiki Valvrave 2nd Season	12	Action Mecha Space	7.43
1718	Kannagi	13	Comedy School Shounen Supernatural	7.43
1719	Kekkai Sensen: Ousama no Restaurant no Ousama	1	Action Fantasy Shounen Super Power Supernatural Vampire	7.43
1720	Kiba	51	Adventure Fantasy Shounen	7.43
1721	Koi ni Naritai Aquarium	1	Music	7.43
1722	Mobile Suit Gundam I	1	Action Adventure Drama Mecha Military Sci-Fi Space	7.43
1723	Naruto: Shippuuden Movie 1	1	Action Adventure Comedy Fantasy Shounen	7.43
1724	Naruto: Shippuuden Movie 2 - Kizuna	1	Action Martial Arts Shounen Supernatural	7.43
1725	One Piece: Oounabara ni Hirake! Dekkai Dekkai Chichi no Yume!	1	Action Adventure Comedy Fantasy Shounen Super Power	7.43
1726	Ore no Imouto ga Konnani Kawaii Wake ga Nai.	13	Comedy Seinen Slice of Life	7.43
1727	Oseam	1	Adventure Drama	7.43
1728	Ou Dorobou Jing in Seventh Heaven	3	Adventure Comedy Fantasy Psychological Shounen	7.43
1729	Peace Maker Kurogane	24	Action Comedy Historical Samurai Shounen	7.43
1730	Pokemon	276	Action Adventure Comedy Fantasy Kids	7.43
1731	Robot Carnival	1	Fantasy Sci-Fi	7.43
1732	Robotics;Notes	22	Drama Mystery School Sci-Fi	7.43
1733	Rurouni Kenshin: Special Techniques	1	Action Comedy Samurai	7.43
1734	Shounen Maid	12	Comedy Shoujo Slice of Life	7.43
1735	Slayers Excellent	3	Adventure Comedy Demons Fantasy Magic Shounen Supernatural	7.43
1737	Tekken Chinmi	20	Action Adventure Historical Martial Arts Shounen	7.43
1738	Tenkuu Senki Shurato	38	Action Fantasy Magic Shounen	7.43
1739	Tobe! Isami	50	Action Adventure Comedy Romance Shounen	7.43
1740	Unico	1	Adventure Fantasy Kids	7.43
1741	Uragiri wa Boku no Namae wo Shitteiru	24	Adventure Drama Fantasy Shoujo Shounen Ai	7.43
7654	Clover 4/3	24	Drama School	7.43
8611	Kwaegeol Longman Narongi	52	Adventure Kids	7.43
9378	Sangokushi II: Amakakeru Otoko-tachi	1	Action Historical	7.43
1678	Beelzebub Specials	16	Action Comedy Demons School Shounen Supernatural	7.44
1679	Bishoujo Senshi Sailor Moon Memorial	5	Demons Magic Romance Shoujo	7.44
1680	Black Bullet	13	Action Mystery Sci-Fi Seinen	7.44
1681	Brigadoon: Marin to Melan	26	Adventure Comedy Drama Mecha Sci-Fi	7.44
1682	C: The Money of Soul and Possibility Control	11	Action Mystery Super Power Thriller	7.44
1683	Doraemon: Obaachan no Omoide	1	Comedy Fantasy Kids Sci-Fi Shounen	7.44
1684	El Hazard: The Magnificent World	7	Adventure Comedy Fantasy Romance	7.44
1685	Erementar Gerad	26	Adventure Comedy Fantasy Magic Romance Super Power	7.44
1686	Fate/stay night: Unlimited Blade Works 2nd Season - Sunny Day	1	Action Fantasy Magic Shounen Supernatural	7.44
1687	Galaxy Angel 3	26	Comedy Sci-Fi	7.44
1688	Love Hina Christmas Special: Silent Eve	1	Comedy Romance Slice of Life	7.44
1689	Maoyuu Maou Yuusha	12	Adventure Demons Fantasy Historical Romance	7.44
1690	Minami-ke Natsuyasumi	1	Comedy Slice of Life	7.44
1691	Nabari no Ou	26	Action Comedy Drama Fantasy Shounen Supernatural	7.44
1692	One Piece Movie 5: Norowareta Seiken	1	Action Adventure Comedy Fantasy Shounen Super Power	7.44
1693	One Piece Movie 8: Episode of Alabasta - Sabaku no Oujo to Kaizoku-tachi	1	Action Adventure Fantasy Shounen	7.44
1694	One Piece: Umi no Heso no Daibouken-hen	1	Action Adventure Comedy Fantasy Shounen Super Power	7.44
1695	Rekka no Honoo	42	Action Adventure Martial Arts Shounen Super Power	7.44
1696	Rozen Maiden (2013)	13	Action Comedy Drama Magic Seinen	7.44
1697	Soukou Kihei Votoms: Pailsen Files	12	Mecha Military Sci-Fi Space	7.44
1698	Soukyuu no Fafner: Dead Aggressor - Exodus	13	Action Drama Mecha Military Sci-Fi	7.44
1699	Tales of Zestiria the X: Saiyaku no Jidai	1	Action Fantasy	7.44
1700	Tari Tari	13	Music School Slice of Life	7.44
1701	Tegamibachi Gakuen	25	Comedy	7.44
1702	Trinity Blood	24	Action Supernatural Vampire	7.44
1736	Tamayura: Hitotose - Attakai Kaze no Omoide Nanode	1	Comedy Drama Slice of Life	7.44
7810	Fox Wood Monogatari	3	Adventure Kids	7.44
8113	Hi no Tori: Reimei-hen	1	Adventure Drama Fantasy Historical	7.44
10344	Fuyu no Semi: Tokubetsu Henshuuhan	1	Action Drama Historical Military Samurai Yaoi	7.44
1637	Aa! Megami-sama! (2011)	3	Comedy Magic Romance Seinen Supernatural	7.45
1638	Aa! Megami-sama! (TV)	24	Comedy Magic Romance Seinen Supernatural	7.45
1639	Amanchu!	12	Comedy School Shounen Slice of Life	7.45
1640	Bamboo Blade	26	Comedy School Seinen Sports	7.45
1641	Bishoujo Senshi Sailor Moon SuperS Special	3	Magic Romance Shoujo	7.45
1642	Black Jack Specials: Inochi wo Meguru Yottsu no Kiseki	4	Drama	7.45
1643	Captain Tsubasa: Road to 2002	52	Action Shounen Sports	7.45
1644	Cuticle Tantei Inaba	12	Action Comedy Mystery Shounen Supernatural	7.45
1645	Fresh Precure!	50	Action Comedy Fantasy Magic Shoujo Slice of Life	7.45
1646	Fullmetal Alchemist: Premium Collection	3	Comedy Fantasy Shounen	7.45
1647	Fushigiboshi no☆Futagohime	51	Comedy Magic Shoujo	7.45
1648	Ginga Kikoutai Majestic Prince	24	Action Mecha School Sci-Fi Seinen Space	7.45
1649	Groove Adventure Rave	51	Adventure Comedy Fantasy Romance Shounen	7.45
1651	Hanamaru Youchien	12	Comedy Seinen Slice of Life	7.45
1652	Hatsukoi Limited	12	Comedy Romance School Shounen	7.45
1653	High School! Kimengumi	86	Comedy Parody Romance School Shounen	7.45
1654	Hikaru no Go: New Year Special	1	Comedy Game Shounen Supernatural	7.45
1655	Hokuto no Ken: Toki-den	1	Action Martial Arts	7.45
1656	Inazuma Eleven Go: Chrono Stone	51	Shounen Sports Super Power	7.45
1657	Keroro Gunsou Movie 1	1	Comedy Kids Sci-Fi Shounen	7.45
1658	Mahoraba: Heartful days	26	Comedy Drama Romance Shounen	7.45
1659	Natsu no Arashi! Akinaichuu	13	Comedy Romance Supernatural	7.45
1660	Ookami Shoujo to Kuro Ouji OVA	1	Comedy Romance School Shoujo	7.45
1661	Papa no Iukoto wo Kikinasai! OVA	2	Comedy Romance Slice of Life	7.45
1662	Potemayo Specials	6	Comedy School Seinen	7.45
1663	s.CRY.ed	26	Action Adventure Drama Sci-Fi Super Power	7.45
1664	Saint Seiya: Soushuuhen	1	Adventure Fantasy Sci-Fi Shounen	7.45
1665	Sayonara Ginga Tetsudou 999: Andromeda Shuuchakueki	1	Adventure Drama Sci-Fi Space	7.45
1666	Shikabane Hime: Kuro	12	Action Horror	7.45
1667	Shin Taketori Monogatari: 1000-nen Joou	42	Drama Mystery Sci-Fi	7.45
1668	Shoukoushi Cedie	43	Drama Shoujo Slice of Life	7.45
1669	Shuangsheng Lingtan	20	Mystery Psychological	7.45
1670	Steamboy	1	Action Adventure Drama Historical Military Sci-Fi	7.45
1671	Steins;Gate: Soumei Eichi no Cognitive Computing	4	Comedy	7.45
1672	Strawberry Panic	26	Drama Romance School Shoujo Ai	7.45
1673	Tiger Mask Nisei	33	Action Drama Sports	7.45
1674	Yes! Precure 5 GoGo! Movie: Okashi no Kuni no Happy Birthday	1	Fantasy Kids Magic Romance Shoujo Super Power	7.45
1675	Yowamushi Pedal: Spare Bike	1	Comedy Drama Shounen Sports	7.45
1676	Yuyushiki	12	Comedy School Seinen Slice of Life	7.45
1677	Zoids Shinseiki/Zero	26	Adventure Comedy Mecha Sci-Fi Shounen Sports	7.45
1606	Afro Samurai: Resurrection	1	Action Adventure Samurai	7.46
1607	Cardcaptor Sakura: Leave It to Kero-chan	1	Comedy	7.46
1608	Chiisana Pengin: Lolo no Bouken	3	Adventure Drama Fantasy Kids Slice of Life	7.46
1609	Dogs: Bullets &amp; Carnage	4	Action Seinen	7.46
1610	Doraemon Movie 07: Nobita to Tetsujin Heidan	1	Adventure Comedy Fantasy Kids Shounen	7.46
1611	Doraemon Movie 15: Nobita to Mugen Sankenshi	1	Adventure Fantasy Kids Sci-Fi Shounen	7.46
1612	Final Fantasy VII: Last Order	1	Action Adventure Drama Fantasy Sci-Fi	7.46
1613	Fukigen na Mononokean	13	Comedy Supernatural	7.46
1614	Grappler Baki: Saidai Tournament-hen	24	Action Martial Arts Shounen Sports	7.46
1615	Handa-kun	12	Comedy Shounen Slice of Life	7.46
1616	Higurashi no Naku Koro ni Kai Specials	24	Comedy Parody	7.46
1617	Kurau Phantom Memory	24	Action Drama Sci-Fi Space Super Power	7.46
1618	Meitantei Holmes	26	Adventure Comedy Mystery	7.46
1619	Miracle Giants Doumu-kun	49	Sports	7.46
1620	Mobile Police Patlabor	7	Comedy Mecha Police Sci-Fi	7.46
1621	Mobile Suit Gundam Seed Special Edition	3	Action Mecha Military Sci-Fi Space	7.46
1622	Nekojiru-sou	1	Comedy Dementia Psychological	7.46
1623	One Piece Movie 7: Karakuri-jou no Mecha Kyohei	1	Adventure Comedy Fantasy Shounen	7.46
1624	Pokemon: Maboroshi no Pokemon Lugia Bakutan	1	Adventure Comedy Drama Fantasy Kids	7.46
1625	Prince of Tennis: Pairpuri	8	Comedy Drama Shounen Sports	7.46
1626	Rec	9	Comedy Drama Romance	7.46
1627	Rurouni Kenshin Recap	1	Action Adventure Comedy Historical Romance Samurai	7.46
1628	Sabagebu!	12	Action Comedy Military Shoujo	7.46
1629	Senki Zesshou Symphogear G: In the Distance That Day When the Star Became Music...	13	Action Music Sci-Fi	7.46
1630	Senki Zesshou Symphogear GX: Believe in Justice and Hold a Determination to Fist.	13	Action Music Sci-Fi	7.46
1631	Shakugan no Shana Movie	1	Action Fantasy Supernatural	7.46
1632	Smile Precure! Movie: Ehon no Naka wa Minna Chiguhagu!	1	Fantasy Kids Magic Shoujo	7.46
1633	Soukyuu no Fafner: Dead Aggressor - Heaven and Earth	1	Action Drama Mecha Military Sci-Fi	7.46
1634	Speed Grapher	24	Action Mystery Super Power	7.46
1635	Suisei no Gargantia: Meguru Kouro Haruka	2	Action Adventure Mecha Sci-Fi	7.46
1636	Yawara! Special: Zutto Kimi no Koto ga... .	1	Action Comedy Drama Martial Arts Slice of Life Sports	7.46
1650	Hakuouki Reimeiroku Tokuten Disc	2	Action Josei Supernatural	7.46
9295	Qin Shiming Yue Zhi: Junlin Tianxia	Unknown	Action Fantasy Historical Martial Arts	7.46
1549	Sengoku Basara Two: Ryuko Itadaki no Chikai! Atsuki Mirai e Kakeru Tamashii!!	1	Action Historical Samurai	7.47
1560	Air in Summer	2	Comedy Drama Historical Romance Supernatural	7.47
1561	Appleseed Saga Ex Machina	1	Action Mecha Military Sci-Fi	7.47
1562	Asura Cryin&#039; 2	13	Action Mecha Supernatural	7.47
1563	Cross Ange: Tenshi to Ryuu no Rondo	25	Action Mecha Sci-Fi	7.47
1564	D-Frag! OVA	1	Comedy Game Seinen	7.47
1565	Detective Conan Magic File 5: Niigata - Tokyo Omiyage Capriccio	1	Adventure Comedy Mystery Police Shounen	7.47
1566	Doraemon Movie 25: Nobita no Wan Nyan Jikuuden	1	Adventure Comedy Kids Sci-Fi	7.47
1567	Doraemon Movie 33: Nobita no Himitsu Dougu Museum	1	Adventure Comedy Fantasy Kids Shounen	7.47
1568	Fate/kaleid liner Prisma☆Illya 2wei!	10	Action Comedy Fantasy Magic	7.47
1569	Futatsu no Spica	20	Drama School Sci-Fi Supernatural	7.47
1570	Gatchaman Crowds	12	Adventure Sci-Fi	7.47
1571	Gatchaman Crowds Insight	12	Adventure Sci-Fi	7.47
1572	Hakushaku to Yousei	12	Adventure Fantasy Historical Magic	7.47
1573	Hana to Alice: Satsujin Jiken	1	Drama Mystery Slice of Life	7.47
1574	Hetalia Axis Powers Movie: Paint it White	1	Comedy Historical Parody	7.47
1575	Hitsugi no Chaika	12	Action Adventure Comedy Fantasy Romance Shounen	7.47
1576	JoJo no Kimyou na Bouken	6	Adventure Drama Fantasy Horror Shounen Supernatural Vampire	7.47
1577	Kuroko no Basket: Oshaberi Demo Shimasen ka	1	Comedy School Shounen Sports	7.47
1578	Legend of Basara	13	Adventure Drama Romance Shoujo	7.47
1579	Legendz: Yomigaeru Ryuuou Densetsu	50	Action Adventure Comedy Fantasy	7.47
1580	Lupin III: Walther P-38	1	Action Adventure Comedy Mystery Shounen	7.47
1581	Macross F Music Clip Shuu: Nyankuri	1	Music	7.47
1582	Mazinkaiser	7	Adventure Comedy Mecha Sci-Fi Shounen	7.47
1583	Mei to Koneko Bus	1	Adventure Fantasy	7.47
1584	Minami-ke Omatase	1	Comedy Slice of Life	7.47
1585	Mobile Suit Gundam 0083: Stardust Memory	13	Adventure Drama Mecha Military Sci-Fi Space	7.47
1586	Mushibugyou	26	Action Fantasy Historical Martial Arts Samurai Shounen Super Power	7.47
1587	Nerima Daikon Brothers	12	Comedy Music	7.47
1588	Ookami Shoujo to Kuro Ouji	12	Comedy Romance School Shoujo	7.47
1589	Precure All Stars Movie New Stage 3: Eien no Tomodachi	1	Kids Magic Shoujo	7.47
1590	Prince of Tennis: The Two Samurai The First Game	1	Action Shounen Sports	7.47
1591	Saiyuuki Gaiden: Tokubetsu-hen - Kouga no Shou	1	Adventure Drama Fantasy Shoujo	7.47
1592	Shinrei Tantei Yakumo	13	Horror Mystery Shoujo Supernatural	7.47
1593	Sketchbook: Full Color&#039;s	13	Comedy Slice of Life	7.47
1594	Slam Dunk (Movie)	1	Comedy Drama School Shounen Slice of Life Sports	7.47
1595	Slayers Special	3	Adventure Comedy Fantasy Magic Shounen Supernatural	7.47
1596	Space Pirate Captain Herlock: Outside Legend - The Endless Odyssey	13	Action Adventure Drama Sci-Fi Seinen Space	7.47
1597	Tales of the Abyss	26	Adventure Drama Fantasy	7.47
1598	Tengen Toppa Gurren Lagann: Mitee Mono wa Miteen da!!	1	Action Adventure Comedy Mecha Sci-Fi	7.47
1599	Tonari no Seki-kun OVA	1	Comedy School Seinen	7.47
1600	Toshokan Sensou: Koi no Shougai	1	Action Comedy Drama Military Romance	7.47
1601	Wagamama☆Fairy Mirumo de Pon!	172	Adventure Comedy Drama Fantasy Kids Magic Romance School Shoujo	7.47
1602	Yozakura Quartet: Hoshi no Umi	3	Action Comedy Magic Shounen Super Power Supernatural	7.47
1603	Zegapain	26	Action Mecha Romance Sci-Fi	7.47
1604	Zettai Karen Children	51	Action Comedy Shounen Supernatural	7.47
1605	Zutto Mae kara Suki deshita.: Kokuhaku Jikkou Iinkai	1	Romance School	7.47
1526	Ai no Wakakusa Monogatari	48	Drama Historical Slice of Life	7.48
1527	Air	13	Drama Romance Slice of Life Supernatural	7.48
1528	Akazukin Chacha	74	Adventure Comedy Fantasy Magic Romance Shoujo	7.48
1529	Carnival Phantasm: HibiChika Special	1	Comedy Supernatural	7.48
1530	Crayon Shin-chan Movie 10: Arashi wo Yobu Appare! Sengoku Daikassen	1	Drama Historical Kids Romance Samurai	7.48
1531	Deadman Wonderland	12	Action Horror Sci-Fi	7.48
1532	Gensoumaden Saiyuuki Movie: Requiem - Erabarezaru Mono e no Chinkonka	1	Adventure Shounen Supernatural	7.48
1533	Ginban Kaleidoscope	12	Drama Romance Sports	7.48
1534	GJ-bu	12	Comedy School Slice of Life	7.48
1535	Gokusen	13	Comedy Drama Josei School Slice of Life	7.48
1536	Happy Birthday: Inochi Kagayaku Toki	1	Drama Kids Slice of Life	7.48
1537	Honobono Log	10	Romance Slice of Life	7.48
1538	Huyao Xiao Hongniang	13	Comedy Romance	7.48
1539	Ikoku Meiro no Croisée The Animation	12	Historical Seinen Slice of Life	7.48
1540	Initial D Extra Stage	2	Action Cars Drama Seinen Sports	7.48
1541	Keroro Gunsou Movie 2: Shinkai no Princess de Arimasu!	1	Action Adventure Comedy Drama Sci-Fi Shounen	7.48
1542	Kimikiss Pure Rouge	24	Drama Romance School	7.48
1543	Little Busters!: Sekai no Saitou wa Ore ga Mamoru!	1	Comedy School Slice of Life	7.48
1544	Lupin III: Kutabare! Nostradamus	1	Action Adventure Comedy Shounen	7.48
1545	Maria-sama ga Miteru	13	Drama Romance Shoujo Shoujo Ai Slice of Life	7.48
1546	Prince of Tennis: A Day on Survival Mountain	1	Adventure Comedy Shounen Sports	7.48
1547	Re:␣Hamatora	12	Comedy Mystery Super Power	7.48
1548	Ristorante Paradiso	11	Drama Josei Romance Slice of Life	7.48
1550	Shigofumi Special	1	Drama Fantasy Psychological Thriller	7.48
1551	Shin Getter Robo	13	Action Adventure Demons Horror Mecha Sci-Fi Shounen	7.48
1552	Soredemo Machi wa Mawatteiru	12	Comedy Slice of Life	7.48
1553	Tokimeki Tonight	34	Comedy Fantasy Romance Shoujo Vampire	7.48
1554	Yankee-kun na Yamada-kun to Megane-chan to Majo	1	Comedy School Shounen	7.48
1555	Youkai Watch Movie 1: Tanjou no Himitsu da Nyan!	1	Comedy Kids Supernatural	7.48
1556	Yowamushi Pedal: Re:RIDE	1	Drama Shounen Sports	7.48
1557	Yowamushi Pedal: Re:ROAD	1	Drama Shounen Sports	7.48
1558	Yuu☆Yuu☆Hakusho: Eizou Hakusho	2	Action Adventure Shounen Supernatural	7.48
1559	Zoids	67	Action Adventure Comedy Mecha Sci-Fi	7.48
7628	Chironup no Kitsune	1	Drama	7.48
1496	Baka to Test to Shoukanjuu Specials	6	Comedy Magic School	7.49
1497	Ben-To	12	Action Comedy Martial Arts	7.49
1498	Danganronpa: Kibou no Gakuen to Zetsubou no Koukousei The Animation	13	Action Horror Mystery Psychological	7.49
1499	Danna ga Nani wo Itteiru ka Wakaranai Ken 2 Sure-me	13	Comedy Seinen Slice of Life	7.49
1500	Doraemon	26	Adventure Comedy Fantasy Kids Shounen	7.49
1501	Fairy Tail Movie 1: Houou no Miko - Hajimari no Asa	1	Fantasy Magic Shounen	7.49
1502	Inazuma Eleven: Saikyou Gundan Ogre Shuurai	1	Shounen Sports Super Power	7.49
1503	Kaze no Shoujo Emily	26	Drama Historical Shoujo	7.49
1504	Kowarekake no Orgel	1	Drama Music Sci-Fi Slice of Life	7.49
1505	Love Lab	13	Comedy Romance School	7.49
1507	Mai-Otome 0: S.ifr	3	Sci-Fi	7.49
1508	Maison Ikkoku: Kanketsu-hen	1	Comedy Drama Romance	7.49
1509	Mazinger Z	92	Action Drama Mecha Sci-Fi Shounen	7.49
1510	One Piece: Mamore! Saigo no Dai Butai	1	Adventure Comedy Fantasy Shounen	7.49
1511	Ore no Imouto ga Konnani Kawaii Wake ga Nai	12	Comedy Seinen Slice of Life	7.49
1512	Pandora Hearts Specials	9	Comedy	7.49
1513	Qin Shiming Yue Zhi: Zhu Zi Bai Jia	34	Action Fantasy Historical Martial Arts	7.49
1514	Saki Zenkoku-hen	13	Game School Slice of Life	7.49
1515	Sakurako-san no Ashimoto ni wa Shitai ga Umatteiru	12	Mystery	7.49
1516	Senyuu.	13	Action Comedy Fantasy Parody Shounen	7.49
1517	Shakugan no Shana S	4	Action Drama Fantasy Romance School Supernatural	7.49
1518	Soukou Kihei Votoms: Red Shoulder Document - Yabou no Roots	1	Drama Mecha Military Sci-Fi	7.49
1519	Soukyuu no Fafner: Right of Left - Single Program	1	Action Drama Mecha Military Sci-Fi	7.49
1520	Tamayura: More Aggressive - Tsuitachi dake no Shuugakuryokou Nanode	1	Comedy Drama Slice of Life	7.49
1521	Tibet Inu Monogatari	1	Adventure	7.49
1522	Time Travel Tondekeman!	39	Action Adventure Comedy Kids	7.49
1523	Uchuu no Stellvia	26	Action Romance Sci-Fi Space	7.49
1524	Yokoyama Mitsuteru Sangokushi	47	Adventure Historical	7.49
1525	Yowamushi Pedal: Special Ride	1	Comedy Drama Shounen Sports	7.49
1466	Another: The Other - Inga	1	Horror Mystery Thriller	7.5
1467	Bartender	11	Drama Seinen Slice of Life	7.5
1468	Cheburashka	1	Comedy	7.5
1469	Chi&#039;s Sweet Home OVA	1	Comedy Kids Slice of Life	7.5
1470	Cinderella Monogatari	26	Adventure Fantasy Kids Romance	7.5
1471	Dotto Koni-chan	26	Comedy	7.5
1472	Fullmetal Alchemist: The Sacred Star of Milos	1	Action Adventure Comedy Drama Fantasy Magic Military Shounen	7.5
1473	Gangsta.	12	Action Drama Seinen	7.5
1474	Gatchaman Crowds: Embrace	1	Adventure Sci-Fi	7.5
1475	Ghost in the Shell: Stand Alone Complex - Tachikoma na Hibi (TV)	12	Comedy Mecha Sci-Fi	7.5
1476	Hadashi no Gen 2	1	Drama Historical Shounen	7.5
1477	Hetalia: The World Twinkle Specials	3	Comedy Historical Parody	7.5
1478	Hibike! Euphonium: Kakedasu Monaka	1	Drama Music School	7.5
1479	Karakuri Zoushi Ayatsuri Sakon	26	Horror Mystery Thriller	7.5
1480	Kaze no Stigma	24	Action Fantasy Magic Romance Shounen	7.5
1481	Kindaichi Shounen no Jikenbo Returns 2nd Season	22	Mystery Shounen	7.5
1482	Kono Bijutsubu ni wa Mondai ga Aru!	12	Comedy Romance School	7.5
1483	Lupin III: Part III	50	Action Adventure Comedy Shounen	7.5
1484	Mardock Scramble: The Second Combustion	1	Action Psychological Sci-Fi	7.5
1485	Marmalade Boy Movie	1	Romance Shoujo	7.5
1486	Mnemosyne: Mnemosyne no Musume-tachi	6	Action Horror Sci-Fi Shoujo Ai Supernatural	7.5
1487	Naruto: Shippuuden Movie 3 - Hi no Ishi wo Tsugu Mono	1	Action Comedy Martial Arts Shounen Super Power	7.5
1488	Nodame Cantabile Special	1	Comedy Josei Romance Slice of Life	7.5
1489	One Piece: Adventure of Nebulandia	1	Action Adventure Comedy Fantasy Shounen Super Power	7.5
1490	Ranma ½: Chou Musabetsu Kessen! Ranma Team vs. Densetsu no Houou	1	Action Adventure Comedy Martial Arts Shounen Supernatural	7.5
1491	Sakasama no Patema: Beginning of the Day	4	Sci-Fi	7.5
1492	Seikai no Senki Special	1	Action Military Romance Sci-Fi Space	7.5
1493	Tengen Toppa Gurren Lagann Movie: Lagann-hen Special - Viral no Amai Yume	1	Comedy	7.5
1494	Uchuu Show e Youkoso	1	Adventure Fantasy Space	7.5
1495	Yuu☆Yuu☆Hakusho: Eizou Hakusho II	4	Action Adventure Comedy Shounen Supernatural	7.5
1506	Love Live! School Idol Project 2nd Season Recap	1	Music School Slice of Life	7.5
7738	Dororonpa!	115	Comedy Slice of Life Supernatural	7.5
7953	Gomen ne Mii-chan	1	Drama Kids	7.5
8284	Jishin da!! Mii-chan no Bousai Kunren	1	Drama Kids	7.5
8330	Kagee Mukashibanashi	65	Adventure Demons Drama Fantasy Historical Kids Magic Romance Samurai Supernatural	7.5
8356	Kakuchou Shoujo-Kei Trinary	Unknown	Mecha	7.5
8485	Kimu no Juujika	1	Drama Historical	7.5
8543	Kokoro no Hanataba	1	Kids	7.5
8596	Kuni-chan no Ikka Ranran	1	Drama Slice of Life	7.5
8658	Long Zai Na Li	1	Adventure Comedy	7.5
8832	Mo Jing Lieren	26	Adventure Fantasy	7.5
9113	Ooi! Adacchii!	1	Historical Kids	7.5
9355	Saenggakboda Markeun	1	Drama Slice of Life	7.5
9420	Sensou ga Owatta Natsu ni 1945 Karafuto	1	Drama Historical	7.5
9467	Shin Kachikachi Yama	1	Fantasy	7.5
9819	Tomodachi de Iyou ne	26	Kids Slice of Life	7.5
9942	Wagahai wa Inu de Aru: Don Matsugorou no Seikatsu	1	Comedy Slice of Life	7.5
10059	Yocchan no Biidama	1	Drama Historical	7.5
10061	Yokohama Bakkure-tai	4	Action Comedy Romance Shounen	7.5
10068	Yooidon!	1	Drama Kids	7.5
1437	Ajin Part 2: Shoutotsu	1	Action Horror Mystery Seinen Supernatural	7.51
1438	Busou Renkin	26	Action Comedy Fantasy School Shounen Supernatural	7.51
1439	City Hunter: Bay City Wars	1	Action Comedy Mystery Shounen	7.51
1440	Detective Conan Bonus File: Fantasista Flower	1	Comedy Mystery Police Shounen Sports	7.51
1441	Detective Conan OVA 11: A Secret Order from London	1	Adventure Comedy Mystery Police Shounen	7.51
1442	Doraemon Movie 05: Nobita no Makai Daibouken	1	Fantasy	7.51
1443	Garo: Honoo no Kokuin	24	Action Demons Fantasy Magic Supernatural	7.51
1444	Hidamari Sketch	12	Comedy School Slice of Life	7.51
1445	Honoo no Toukyuuji: Dodge Danpei	47	Comedy Sports	7.51
1446	Joshiraku OVA	1	Comedy Slice of Life	7.51
1447	Kamichama Karin	26	Comedy Fantasy Magic Romance School Shoujo	7.51
1448	Kamichu!	12	Comedy Drama Slice of Life Supernatural	7.51
1449	Little Nemo	1	Adventure Fantasy	7.51
1450	Maria-sama ga Miteru 3rd Specials	5	Comedy	7.51
1451	Maria-sama ga Miteru: Haru Specials	6	Drama Romance School Shoujo Shoujo Ai Slice of Life	7.51
1452	Mirai Nikki	1	Action Shounen Supernatural	7.51
1453	Moonlight Mile 2nd Season: Touch Down	14	Adventure Drama Sci-Fi Space	7.51
1454	Neon Genesis Evangelion: Death &amp; Rebirth	1	Drama Mecha Psychological Sci-Fi	7.51
1455	Oban Star-Racers	26	Adventure Mecha Sci-Fi Shounen	7.51
1456	Papa no Iukoto wo Kikinasai!	12	Comedy Romance Slice of Life	7.51
1457	Raiyantsuuri no Uta	1	Drama Historical	7.51
1458	Rurouni Kenshin Special	1	Action Historical Romance Samurai	7.51
1459	Sakigake!! Otokojuku	34	Action Comedy Martial Arts School Shounen	7.51
1460	Sentou Mecha Xabungle	50	Mecha Military Sci-Fi Shounen	7.51
1461	Shin Chou Kyou Ryo: Condor Hero II	26	Adventure Drama Historical Romance	7.51
1462	Taiho Shichau zo	4	Action Comedy Police Seinen	7.51
1463	Winter Sonata	26	Drama Romance	7.51
1464	WWW.Working!!	13	Comedy Slice of Life	7.51
1465	Yama no Susume Second Season	24	Adventure Comedy Slice of Life	7.51
1408	Angel Densetsu	2	Action Comedy School	7.52
1409	Black Cat	23	Adventure Comedy Sci-Fi Shounen Super Power	7.52
1410	Flanders no Inu	52	Drama Historical Slice of Life	7.52
1411	Fuse: Teppou Musume no Torimonochou	1	Action Drama Historical Supernatural	7.52
1412	Future GPX Cyber Formula 11	6	Drama Sci-Fi Shounen Sports	7.52
1413	Ghost in the Shell: Arise - Border:3 Ghost Tears	1	Mecha Police Psychological Sci-Fi	7.52
1414	Glass no Kamen	23	Drama Romance Shoujo	7.52
1415	Harmonie	1	Drama School Supernatural	7.52
1416	Kamikaze Kaitou Jeanne	44	Adventure Comedy Demons Drama Fantasy Magic Mystery Romance Shoujo	7.52
1417	Kanojo to Kanojo no Neko	1	Drama Psychological Romance Slice of Life	7.52
1418	Kowarekake no Orgel (Movie)	1	Drama Music Sci-Fi Slice of Life	7.52
1419	Kure-nai	12	Comedy Drama Martial Arts	7.52
1420	Mahou Shoujo Lyrical Nanoha	13	Action Comedy Drama Magic Super Power	7.52
1421	Nijiiro Days	24	Comedy Romance School Shoujo Slice of Life	7.52
1422	Ojamajo Doremi Dokkaan!	51	Comedy Magic Shoujo	7.52
1423	Otona Joshi no Anime Time	4	Drama Josei Slice of Life	7.52
1424	Persona 4 the Animation: The Factor of Hope	1	Adventure Mystery School Super Power Supernatural	7.52
1425	Pokemon XY	93	Action Adventure Comedy Fantasy Kids	7.52
1426	Ranma ½: Kessen Tougenkyou! Hanayome wo Torimodose!	1	Adventure Comedy Shounen	7.52
1427	Sayonara Zetsubou Sensei Jo: Zetsubou Shoujo Senshuu	1	Comedy Parody School	7.52
1428	Scrapped Princess	24	Adventure Comedy Drama Fantasy Mecha Sci-Fi Shounen	7.52
1429	Selector Spread WIXOSS	12	Game Psychological	7.52
1430	Slayers Evolution-R	13	Adventure Comedy Fantasy	7.52
1431	Taiho Shichau zo: Second Season	26	Action Comedy Police Shounen	7.52
1432	Tales of Zestiria: Doushi no Yoake	1	Fantasy	7.52
1433	Tenchi Muyou! in Love	1	Action Comedy Romance School Sci-Fi Shounen Space	7.52
1434	Tokyo Ghoul √A	12	Action Drama Horror Mystery Psychological Seinen Supernatural	7.52
1435	Yu☆Gi☆Oh! 5D&#039;s	154	Action Game Shounen	7.52
1436	Yuuki Yuuna wa Yuusha de Aru	12	Drama Fantasy Magic Slice of Life	7.52
1389	Aoki Densetsu Shoot!	58	Action Comedy Drama Romance School Shounen Sports	7.53
1390	Ashita no Joe 2 (Movie)	1	Drama Sports	7.53
1391	Cowboy Bebop: Yose Atsume Blues	1	Action Adventure Comedy Drama Sci-Fi Space	7.53
1392	Gundam Build Fighters Try	25	Action Mecha Sci-Fi	7.53
1393	Hiyokoi	1	Romance School Shoujo	7.53
1394	Hoshi no Koe	1	Drama Mecha Romance Sci-Fi Space	7.53
1395	Kamisama no Inai Nichiyoubi	12	Fantasy Mystery	7.53
1396	Magic Knight Rayearth	20	Adventure Comedy Drama Fantasy Magic Mecha Romance Shoujo	7.53
1397	Naruto: Shippuuden Movie 4 - The Lost Tower	1	Action Comedy Martial Arts Shounen Super Power	7.53
1398	Nitaboh	1	Historical Music	7.53
1399	Pale Cocoon	1	Drama Sci-Fi	7.53
1400	Shin Chou Kyou Ryo: Condor Hero	26	Adventure Drama Historical Romance	7.53
1401	Towa no Quon 1: Utakata no Kaben	1	Action Super Power Supernatural	7.53
1402	Towa no Quon 2: Konton no Ranbu	1	Action Mystery Super Power Supernatural	7.53
1403	UN-GO	11	Mystery Supernatural	7.53
1404	Vampire Knight Guilty	13	Drama Mystery Romance Shoujo Supernatural Vampire	7.53
1405	Whistle!	39	School Shounen Sports	7.53
1406	Yomigaeru Sora: Rescue Wings	12	Drama Military Seinen	7.53
1407	Yu☆Gi☆Oh!: The Dark Side of Dimensions	1	Adventure Game Shounen	7.53
1365	&quot;Bungaku Shoujo&quot; Memoire	3	Drama Romance School	7.54
1366	Bobobo-bo Bo-bobo	76	Adventure Comedy Sci-Fi Shounen	7.54
1367	Bokura ga Ita	26	Drama Romance Shoujo Slice of Life	7.54
1368	Chou Denji Machine Voltes V	40	Action Adventure Drama Mecha Sci-Fi Shounen	7.54
1369	Chouyaku Hyakuninisshu: Uta Koi.	13	Historical Josei Romance	7.54
1370	Code Geass: Boukoku no Akito 2 - Hikisakareshi Yokuryuu Picture Drama	1	Action Comedy Military	7.54
1371	Doraemon Movie 28: Nobita to Midori no Kyojin Den	1	Adventure Comedy Fantasy Kids Shounen	7.54
1372	Dragon Ball Z Movie 13: Ryuuken Bakuhatsu!! Goku ga Yaraneba Dare ga Yaru	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.54
1373	Fairy Tail x Rave	1	Action Adventure Comedy Fantasy Magic Shounen	7.54
1374	Future GPX Cyber Formula	37	Adventure Sci-Fi Shounen Sports	7.54
1375	Hime-chan no Ribbon	61	Comedy Fantasy Magic Romance School Shoujo	7.54
1376	Hokuto no Ken: Raoh Gaiden Junai-hen	1	Action Adventure Martial Arts	7.54
1377	Initial D Extra Stage 2	1	Action Cars Drama Seinen Sports	7.54
1378	Karas	6	Action Fantasy Sci-Fi	7.54
1379	Nanatsu no Umi no Tico	39	Adventure Slice of Life	7.54
1380	Ookiku Furikabutte: Natsu no Taikai-hen Special	1	Comedy Sports	7.54
1381	Puchi Puri Yuushi	26	Comedy Fantasy Magic Shoujo	7.54
1382	Saiyuuki Reload	25	Action Adventure Comedy Drama Fantasy Shoujo	7.54
1383	Shigurui	12	Action Drama Historical Martial Arts Samurai Seinen	7.54
1384	Super Lovers	10	Comedy Drama Romance Shounen Ai Slice of Life	7.54
1385	Tamayura: More Aggressive	12	Comedy Drama Slice of Life	7.54
1386	Tiger &amp; Bunny Movie 1: The Beginning	1	Action Comedy Mystery Super Power	7.54
1387	Toradora!: Bentou no Gokui	1	Comedy Romance School Slice of Life	7.54
1388	Wangan Midnight	26	Action Cars Seinen Sports	7.54
1333	AKB0048	13	Music Sci-Fi	7.55
1334	Aoki Hagane no Arpeggio: Ars Nova	12	Action Sci-Fi Seinen	7.55
1335	Blood Lad	10	Action Comedy Demons Seinen Supernatural Vampire	7.55
1337	City Hunter: Hyakuman Dollar no Inbou	1	Action Comedy Mystery Shounen	7.55
1338	Code Geass: Boukoku no Akito 4 - Nikushimi no Kioku Kara	1	Action Mecha Military	7.55
1339	Danna ga Nani wo Itteiru ka Wakaranai Ken	13	Comedy Seinen Slice of Life	7.55
1340	Dragon Ball Z Movie 15: Fukkatsu no F	1	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	7.55
1341	ef: A Tale of Memories. - Recollections	1	Drama Mystery Romance	7.55
1342	Full Metal Panic! The Second Raid Episode 000	1	Action Adventure Mecha Military	7.55
1343	God Eater	13	Action Fantasy Military Sci-Fi	7.55
1344	Gunslinger Girl	13	Action Drama Military Psychological Sci-Fi	7.55
1345	Hi no Ame ga Furu	1	Drama Historical	7.55
1346	Himouto! Umaru-chan	12	Comedy School Seinen Slice of Life	7.55
1347	Hokuto no Ken Zero: Kenshirou Den	1	Martial Arts	7.55
1348	Joshiraku	13	Comedy Slice of Life	7.55
1349	Kaichou wa Maid-sama!: Omake dayo!	1	Comedy School Shoujo	7.55
1350	Kaikan Phrase	44	Drama Music Romance Shoujo	7.55
1351	Kuroshitsuji II	12	Action Comedy Demons Fantasy Shounen Supernatural	7.55
1352	Lodoss-tou Senki	13	Action Adventure Fantasy Magic Shounen Supernatural	7.55
1353	Lupin III: Otakara Henkyaku Daisakusen!!	1	Adventure Comedy Shounen	7.55
1354	Maria-sama ga Miteru Specials	7	Drama Romance School Shoujo Shoujo Ai Slice of Life	7.55
1355	Masuda Kousuke Gekijou Gag Manga Biyori 2	12	Comedy	7.55
1356	Mobile Suit Gundam Seed Destiny Final Plus: The Chosen Future	1	Drama Mecha Military Sci-Fi Space	7.55
1358	One Piece: Romance Dawn Story	1	Action Comedy Fantasy Shounen Super Power	7.55
1359	Ore no Nounai Sentakushi ga Gakuen Love Comedy wo Zenryoku de Jama Shiteiru	10	Comedy Romance School	7.55
1360	RahXephon	26	Action Drama Mecha Music Mystery Psychological Romance Sci-Fi	7.55
1361	Shinryaku!! Ika Musume	3	Comedy Shounen Slice of Life	7.55
1362	Tegamibachi: Hikari to Ao no Gensou Yawa	1	Adventure Fantasy Shounen Slice of Life Supernatural	7.55
1363	Tonari no Seki-kun Specials	2	Comedy School Seinen	7.55
1364	True Tears	13	Drama Romance School	7.55
8737	Manga Nihonshi (NHK Han)	40	Historical	7.55
9136	Osomatsu-san: Ouma de Kobanashi	1	Comedy Parody	7.55
1306	Aria The Natural: Sono Futatabi Deaeru Kiseki ni...	1	Fantasy Sci-Fi Shounen Slice of Life	7.56
1307	Carnival Phantasm EX Season	1	Comedy Supernatural	7.56
1308	Charlotte: Tsuyoi Monotachi	1	School Super Power	7.56
1309	City Hunter: The Secret Service	1	Action Comedy Mystery Shounen	7.56
1310	Detective Conan OVA 06: Follow the Vanished Diamond! Conan &amp; Heiji vs. Kid!	1	Comedy Mystery Police Shounen	7.56
1311	Doraemon Movie 26: Nobita no Kyouryuu 2006	1	Adventure Comedy Kids	7.56
1312	Genshiken Nidaime	13	Comedy Parody Slice of Life	7.56
1313	Gokinjo Monogatari	50	Comedy Drama Romance Slice of Life	7.56
1314	Hetalia Axis Powers Fan Disc	3	Comedy Historical Parody	7.56
1315	Higashi no Eden: Falling Down	1	Music	7.56
1316	Higurashi no Naku Koro ni Rei	5	Comedy Mystery Psychological Supernatural Thriller	7.56
1317	Kara no Kyoukai: Mirai Fukuin - Extra Chorus	1	Drama Mystery Seinen Supernatural	7.56
1318	Keroro Gunsou Movie 4: Gekishin Dragon Warriors de Arimasu!	1	Comedy	7.56
1319	Mobile Suit Gundam II: Soldiers of Sorrow	1	Action Drama Mecha Military Sci-Fi Space	7.56
1320	Momoko Kaeru no Uta ga Kikoeru yo.	1	Drama School Slice of Life	7.56
1321	Orange: Mirai	1	Drama Romance School Sci-Fi Shoujo	7.56
1322	Saiyuuki Reload Gunlock	26	Action Adventure Comedy Fantasy Shoujo	7.56
1323	Simoun	26	Drama Magic Military Romance Shoujo Ai	7.56
1324	Sugar Sugar Rune	51	Fantasy Magic Shoujo	7.56
1325	Tanoshii Muumin Ikka Bouken Nikki	26	Adventure Fantasy Kids Slice of Life	7.56
1326	Tasogare Otome x Amnesia: Taima Otome	1	Horror Mystery Romance School Shounen Supernatural	7.56
1327	Tenshi no Tamago	1	Dementia Drama Fantasy	7.56
1328	Tetsuwan Birdy Decode	13	Action Comedy Sci-Fi	7.56
1329	Toaru Kagaku no Railgun: Misaka-san wa Ima Chuumoku no Mato desukara	1	Action Sci-Fi Super Power	7.56
1330	Waga Seishun no Arcadia: Mugen Kidou SSX	22	Action Adventure Drama Sci-Fi Space	7.56
1331	X	24	Action Drama Fantasy Magic Romance Shoujo Super Power	7.56
1332	Zipang	26	Action Drama Historical Military Sci-Fi Seinen	7.56
1336	Captain Harlock	1	Action Drama Sci-Fi Space	7.56
1357	Mobile Suit Gundam Unicorn RE:0096	22	Action Drama Mecha Military Sci-Fi Space	7.56
8112	Hi no Tori: Kizuna-hen	1	Fantasy Kids	7.56
1286	Amagami SS	25	Comedy Romance School Slice of Life	7.57
1287	Chrome Shelled Regios	24	Action Adventure Fantasy School Sci-Fi	7.57
1288	Dareka no Manazashi	1	Drama Slice of Life	7.57
1289	Detective Conan Magic File 3: Shinichi and Ran - Memories of Mahjong Tiles and Tanabata	1	Mystery Shounen	7.57
1290	Doraemon Movie 21: Nobita no Taiyou Ou Densetsu	1	Adventure Comedy Fantasy Historical Kids Shounen	7.57
1291	Hakkenden: Touhou Hakken Ibun	13	Action Fantasy Shoujo Supernatural	7.57
1292	Hakuouki	12	Action Drama Historical Josei Samurai Supernatural	7.57
1293	Heppoko Jikken Animation Excel♥Saga	26	Comedy Parody Sci-Fi Shounen	7.57
1294	Mardock Scramble: The Third Exhaust	1	Action Psychological Sci-Fi	7.57
1295	Minami-ke Betsubara	1	Comedy Slice of Life	7.57
1296	Nodame Cantabile OVA	1	Comedy Josei Music Romance Slice of Life	7.57
1297	Paniponi Dash!	26	Comedy Parody School	7.57
1298	Rozen Maiden	12	Action Comedy Drama Magic Seinen	7.57
1299	Saki	25	Game School Slice of Life	7.57
1300	Sengoku Basara	12	Action Historical Martial Arts Samurai Super Power	7.57
1301	Shashinkan	1	Drama Historical Slice of Life	7.57
1302	Super GALS! Kotobuki Ran	52	Comedy Shoujo Slice of Life	7.57
1303	The Big O	26	Action Mecha Mystery Psychological Sci-Fi	7.57
1304	Top wo Nerae! &amp; Top wo Nerae 2! Gattai Movie!!	2	Comedy Mecha Shounen	7.57
1305	Yu☆Gi☆Oh! Duel Monsters	224	Adventure Game Shounen	7.57
8177	Hua Jianghu Zhi Ling Zhu	41	Action Drama Fantasy Historical Martial Arts	7.57
9254	Poppoya-san: Nonki Ekichou	1	Kids	7.57
1269	Aishiteruze Baby★★	26	Comedy Drama Romance Shoujo	7.58
1270	Aoki Hagane no Arpeggio: Ars Nova DC	1	Action Sci-Fi Seinen	7.58
1271	Bleach Movie 1: Memories of Nobody	1	Action Adventure Super Power	7.58
1272	Brave Story	1	Action Adventure Fantasy Kids Magic Supernatural	7.58
1273	Candy Candy	115	Drama Shoujo Slice of Life	7.58
1274	Chuunibyou demo Koi ga Shitai! Ren: The Rikka Wars	1	Comedy Drama Romance School Slice of Life	7.58
1275	Cross Road	1	School Slice of Life	7.58
1276	Fate/stay night	24	Action Fantasy Magic Romance Supernatural	7.58
1277	Fate/stay night Movie: Unlimited Blade Works	1	Action Fantasy Magic Supernatural	7.58
1278	Grimm Masterpiece Theater II	23	Adventure Comedy Fantasy Kids Magic	7.58
1279	Hetalia: The World Twinkle	15	Comedy Historical Parody	7.58
1280	Level E	13	Comedy Sci-Fi Shounen	7.58
1281	Naruto x UT	1	Action Comedy Martial Arts Shounen Super Power	7.58
1282	Shin Chou Kyou Ryo: Condor Hero III	26	Action Adventure Drama Historical Romance	7.58
1283	Taiyou no Kiba Dagram	75	Drama Mecha Military Sci-Fi Shounen	7.58
1284	The iDOLM@STER: 765 Pro to Iu Monogatari	1	Comedy Drama Music	7.58
1285	Uchuu no Kishi Tekkaman Blade	49	Action Adventure Drama Mecha Military Romance Sci-Fi Shounen Space	7.58
1244	Acchi Kocchi	1	Dementia	7.59
1245	Afro Samurai Movie	1	Action Adventure Samurai	7.59
1246	City Hunter: Ai to Shukumei no Magnum	1	Action Comedy Mystery Shounen	7.59
1247	Code Geass: Boukoku no Akito 3 - Kagayaku Mono Ten yori Otsu	1	Action Mecha Military	7.59
1248	Doraemon (2005)	Unknown	Comedy Kids Sci-Fi Shounen	7.59
1249	Hikaru no Go Special	1	Comedy Game Shounen Supernatural	7.59
1250	Katekyo Hitman Reborn!: Mr. Rebokku no Ciao Ciao Interview	3	Comedy	7.59
1251	Kemonozume	13	Action Demons Horror Romance Supernatural	7.59
1252	Kyou kara Maou! R	5	Adventure Comedy Fantasy	7.59
1253	Mai-HiME	26	Action Comedy Drama Fantasy Magic Mecha Romance School Shoujo Ai	7.59
1254	Mikakunin de Shinkoukei	12	Comedy Romance School Slice of Life	7.59
1255	Mobile Police Patlabor: The Movie	1	Drama Mecha Military Police	7.59
1256	Mugen no Ryvius	26	Drama Mecha Military Psychological Sci-Fi Space	7.59
1257	Noblesse: Pamyeol-ui Sijak	1	Action Adventure Supernatural	7.59
1258	One Piece: Straw Hat Theater	5	Adventure Fantasy Shounen	7.59
1259	Osomatsu-san Special	1	Comedy Parody	7.59
1260	Patapata Hikousen no Bouken	26	Adventure Sci-Fi	7.59
1261	Perfect Day	1	Music	7.59
1262	Rakuen Tsuihou: Expelled from Paradise	1	Action Mecha Sci-Fi	7.59
1263	Shinreigari: Ghost Hound	22	Mystery Psychological Sci-Fi Supernatural	7.59
1264	Shoujo Kakumei Utena: Adolescence Mokushiroku	1	Dementia Drama Fantasy Romance Shoujo	7.59
1265	Shugo Chara!! Doki	51	Comedy Magic School Shoujo	7.59
1266	Taiho Shichau zo (1996)	47	Action Comedy Police Seinen	7.59
1267	Tetsujin 28-gou (2004)	26	Adventure Mecha Sci-Fi Shounen	7.59
1268	Yamada-kun to 7-nin no Majo (OVA)	2	Comedy Romance School Shounen	7.59
10343	Koisuru Boukun	2	Comedy Romance Yaoi	7.59
1213	Akage no Anne	50	Drama Historical Slice of Life	7.6
1214	Bleach Movie 2: The DiamondDust Rebellion - Mou Hitotsu no Hyourinmaru	1	Action Adventure Shounen Supernatural	7.6
1215	Chuunibyou demo Koi ga Shitai! Ren	12	Comedy Drama Romance School Slice of Life	7.6
1216	Chuunibyou demo Koi ga Shitai!: Kirameki no... Slapstick Noel	1	Comedy School	7.6
1217	City Hunter: Kinkyuu Namachuukei!? Kyouakuhan Saeba Ryou no Saigo	1	Shounen	7.6
1218	Detective Conan Movie 11: Jolly Roger in the Deep Azure	1	Adventure Comedy Mystery Police Shounen	7.6
1219	Fune wo Amu	11	Drama Slice of Life	7.6
1220	Ganbare Genki	35	Action Comedy Shounen Sports	7.6
1221	Ghost in the Shell: Arise - Border:4 Ghost Stands Alone	1	Mecha Police Psychological Sci-Fi	7.6
1222	Gochuumon wa Usagi Desu ka?	12	Comedy Slice of Life	7.6
1223	Hottarake no Shima: Haruka to Mahou no Kagami	1	Fantasy	7.6
1224	Jibaku-kun	26	Adventure Comedy Fantasy	7.6
1225	Kamichu! Specials	4	Comedy Drama Slice of Life Supernatural	7.6
1226	Kidou Senkan Nadesico	26	Action Comedy Mecha Military Parody Romance Sci-Fi Shounen Space	7.6
1227	On Your Mark	1	Drama Music Sci-Fi	7.6
1228	One More Time One More Chance	1	Drama Music Romance Slice of Life	7.6
1229	One Piece: Romance Dawn	1	Action Comedy Fantasy Shounen Super Power	7.6
1230	Otome Youkai Zakuro	13	Demons Historical Military Romance Seinen Supernatural	7.6
1231	Persona 4 the Animation: No One is Alone	1	Adventure Mystery School Sci-Fi Super Power Supernatural	7.6
1232	Pretty Rhythm: Aurora Dream	51	Music Shoujo Slice of Life Sports	7.6
1233	Prince of Tennis: Eikokushiki Teikyuu Shiro Kessen!	1	Action Comedy School Shounen Sports	7.6
1234	Psycho-Pass 2	11	Action Police Psychological Sci-Fi	7.6
1235	Samurai 7	26	Historical Mecha Samurai Sci-Fi	7.6
1236	Sayonara Zetsubou Sensei Jo: Zoku Zetsubou Shoujo Senshuu	1	Comedy Parody School	7.6
1237	Shinryaku! Ika Musume	12	Comedy Shounen Slice of Life	7.6
1238	Shonan Junai Gumi!	5	Action Comedy School	7.6
1239	Shouwa Genroku Rakugo Shinjuu: Yotarou Hourou-hen	2	Drama Josei	7.6
1240	So Ra No Wo To	12	Military Music Sci-Fi Slice of Life	7.6
1241	Tales of Zestiria the X	12	Action Adventure Fantasy	7.6
1242	Tenshi na Konamaiki	50	Comedy Magic Romance Shounen	7.6
1243	Toshokan Sensou	12	Action Comedy Military Romance	7.6
7429	Ari to Hato	1	Kids	7.6
7430	Ari to Hato (1953)	1	Kids	7.6
8049	Heibai Wushang	12	Action Comedy Supernatural	7.6
8807	Minami no Niji no Lucy Specials	2	Adventure Drama Slice of Life	7.6
9426	Shakotan★Boogie	4	Action Cars Comedy School Seinen	7.6
1178	Kuroko no Basket Movie 2: Winter Cup Soushuuhen - Namida no Saki e	1	School Shounen Sports	7.61
1189	Aa! Megami-sama! (TV) Specials	3	Comedy Magic Romance Seinen Supernatural	7.61
1190	Amagami SS+ Plus	13	Comedy Romance School Slice of Life	7.61
1191	Ayakashi: Japanese Classic Horror	11	Fantasy Historical Horror	7.61
1192	Casshern Sins	24	Action Adventure Drama Psychological Sci-Fi	7.61
1193	Digimon Adventure Movie	1	Action Fantasy Kids Sci-Fi	7.61
1194	Freedom	7	Action Adventure Sci-Fi	7.61
1195	Gokudou-kun Manyuuki	26	Adventure Comedy Fantasy Magic	7.61
1196	Golgo 13 (TV)	50	Action Adventure Drama Seinen Thriller	7.61
1197	Kimagure Orange☆Road OVA	8	Comedy Drama Magic Romance School	7.61
1198	Lady Jewelpet	52	Fantasy Magic Romance Shoujo	7.61
1199	Magic Knight Rayearth II	29	Adventure Drama Fantasy Magic Mecha Romance Shoujo	7.61
1200	Mobile Police Patlabor: The New Files	16	Comedy Mecha Police Sci-Fi	7.61
1201	Planetarian: Chiisana Hoshi no Yume	5	Drama Sci-Fi	7.61
1202	Precure All Stars Movie DX3: Mirai ni Todoke! Sekai wo Tsunagu☆Nijiiro no Hana	1	Action Fantasy Magic Shoujo	7.61
1203	Salaryman Kintarou	20	Comedy Drama Seinen	7.61
1204	Senyuu. 2	13	Action Comedy Fantasy Parody Shounen	7.61
1205	Seto no Hanayome OVA Specials	2	Comedy Parody School	7.61
1206	Shugo Chara!	51	Comedy Magic School Shoujo	7.61
1207	Snow Halation	1	Music	7.61
1208	Tokyo Ghoul: &quot;Pinto&quot;	1	Action Drama Horror Mystery Psychological Supernatural	7.61
1209	Urusei Yatsura OVA	11	Adventure Comedy Sci-Fi	7.61
1210	Yahari Ore no Seishun Love Comedy wa Machigatteiru. OVA	1	Comedy Romance School	7.61
1211	Yozakura Quartet: Hana no Uta	13	Action Comedy Magic Shounen Super Power Supernatural	7.61
1212	Yu☆Gi☆Oh! Arc-V	Unknown	Action Fantasy Game Shounen	7.61
1164	Accel World	24	Action Game Romance School Sci-Fi	7.62
1165	Acchi Kocchi (TV): Place=Princess	1	Comedy Romance School Seinen Slice of Life	7.62
1166	Bishoujo Senshi Sailor Moon SuperS: Sailor 9 Senshi Shuuketsu! Black Dream Hole no Kiseki	1	Drama Magic Shoujo	7.62
1167	Cardcaptor Sakura Specials	3	Comedy	7.62
1168	Darker than Black: Ryuusei no Gemini	12	Action Mystery Sci-Fi Super Power	7.62
1169	Donten ni Warau	12	Action Historical Shoujo	7.62
1170	Dragon Ball Z Movie 08: Moetsukiro!! Nessen Ressen Chougekisen	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.62
1171	Dragon Ball Z Movie 14: Kami to Kami	1	Action Adventure Fantasy Martial Arts Shounen Super Power	7.62
1172	Fate/kaleid liner Prisma☆Illya 3rei!!	12	Action Comedy Fantasy Magic	7.62
1173	Gallery Fake	37	Mystery Seinen	7.62
1174	Grimm Masterpiece Theater	24	Adventure Comedy Fantasy Kids Magic	7.62
1176	Hidamari Sketch Specials	2	Comedy School Slice of Life	7.62
1177	InuYasha: Guren no Houraijima	1	Adventure Comedy Demons Drama Historical Romance Shounen Supernatural	7.62
1179	Metropolis	1	Adventure Drama Police Romance Sci-Fi Shounen	7.62
1180	Mobile Fighter G Gundam	49	Adventure Comedy Drama Martial Arts Mecha Romance Sci-Fi Space Sports	7.62
1181	Naruto: Shippuuden Movie 5 - Blood Prison	1	Action Adventure Martial Arts Mystery Shounen Super Power	7.62
1182	Shigofumi	12	Drama Fantasy Psychological Supernatural Thriller	7.62
1183	Shinryaku!? Ika Musume	12	Comedy Shounen Slice of Life	7.62
1184	Shoubushi Densetsu Tetsuya	20	Game Historical Shounen	7.62
1185	So Ra No Wo To Specials	2	Military Music Sci-Fi Slice of Life	7.62
1186	Sweat Punch	5	Action Fantasy Historical Mecha	7.62
1187	Yozakura Quartet: Tsuki ni Naku	3	Action Comedy Magic Shounen Super Power Supernatural	7.62
1188	Yuusha Keisatsu J-Decker	48	Action Adventure Mecha Police Sci-Fi	7.62
1142	Sayonara Zetsubou Sensei Special	1	Comedy Mystery Parody	7.63
1146	&quot;Bungaku Shoujo&quot; Movie	1	Drama Mystery Romance School	7.63
1147	Amaama to Inazuma	12	Comedy Seinen Slice of Life	7.63
1148	Angel Beats!: Another Epilogue	1	Drama School Supernatural	7.63
1149	Hakuouki Reimeiroku	12	Action Drama Historical Josei Samurai Supernatural	7.63
1150	Hokuto no Ken: Raoh Gaiden Gekitou-hen	1	Action Adventure Martial Arts Romance	7.63
1151	Initial D Battle Stage	1	Action Cars Drama Seinen Sports	7.63
1152	Konnichiwa Anne: Before Green Gables	39	Drama Historical Kids Slice of Life	7.63
1153	Kuruneko	50	Comedy Slice of Life	7.63
1154	Love Live! Sunshine!!	13	Music School Slice of Life	7.63
1155	Mardock Scramble: The First Compression	1	Action Psychological Sci-Fi	7.63
1156	Patalliro!	49	Adventure Comedy Romance Shoujo Shounen Ai	7.63
1157	Perrine Monogatari	53	Drama Historical Shoujo Slice of Life	7.63
1158	Prince of Tennis: Atobe&#039;s Gift	1	Comedy Shounen Sports	7.63
1159	Rokka no Yuusha	12	Action Adventure Fantasy Magic Mystery	7.63
1160	Saki Achiga-hen: Episode of Side-A Specials	4	Game School Slice of Life	7.63
1161	Suzumiya Haruhi-chan no Yuuutsu	25	Comedy Parody	7.63
1162	Uchuu Senkan Yamato 2	26	Action Adventure Drama Military Sci-Fi Space	7.63
1163	Yawara!	124	Action Comedy Drama Martial Arts Romance Slice of Life Sports	7.63
1175	Hello!! Kiniro Mosaic	12	Comedy School Slice of Life	7.63
9339	Rudolf to Ippaiattena	1	Adventure Kids	7.63
9797	Tobidase! Bacchiri	132	Comedy Kids Mystery	7.63
1125	Aa! Megami-sama!: Sorezore no Tsubasa Specials	2	Comedy Magic Romance Seinen Supernatural	7.64
1126	Bishoujo Senshi Sailor Moon SuperS	39	Drama Magic Romance Shoujo	7.64
1127	CLAMP in Wonderland 2	1	Action Comedy Drama Fantasy Magic Music Romance	7.64
1128	Detective Conan OVA 04: Conan and Kid and Crystal Mother	1	Adventure Mystery Police Shounen	7.64
1129	Future GPX Cyber Formula Saga	8	Drama Sci-Fi Shounen Sports	7.64
1130	Ghost in the Shell: Arise - Border:1 Ghost Pain	1	Mecha Police Psychological Sci-Fi	7.64
1131	Hakuouki OVA	2	Action Drama Historical Samurai Supernatural	7.64
1132	Hellsing	13	Action Horror Seinen Supernatural Vampire	7.64
1133	Hokuto no Ken 2	43	Action Drama Martial Arts Super Power	7.64
1134	Junjou Romantica Special	1	Comedy Romance Shounen Ai	7.64
1135	Kaitou Saint Tail	43	Adventure Magic Romance Shoujo	7.64
1136	Little Busters!	26	Comedy Drama School Slice of Life Supernatural	7.64
1137	Marmalade Boy	76	Comedy Drama Romance Shoujo	7.64
1138	Ningen Shikkaku: Director&#039;s Cut-ban	1	Drama Historical Psychological Seinen	7.64
1139	Omoide Poroporo	1	Drama Romance Slice of Life	7.64
1140	R.O.D the TV	26	Action Adventure Comedy Drama Sci-Fi Super Power	7.64
1141	Saint☆Oniisan	2	Comedy Seinen Slice of Life	7.64
1143	Suisei no Gargantia	13	Action Adventure Mecha Sci-Fi	7.64
1144	Towa no Quon 3: Mugen no Renza	1	Action Super Power Supernatural	7.64
1145	Yondemasu yo Azazel-san. (TV)	13	Comedy Demons Supernatural	7.64
9030	Nowisee	24	Music	7.64
1104	Aa! Megami-sama! Movie	1	Comedy Magic Romance Seinen Supernatural	7.65
1105	Acchi Kocchi (TV)	12	Comedy Romance School Seinen Slice of Life	7.65
1106	Area 88	3	Action Adventure Drama Military Romance	7.65
1107	Darker than Black: Kuro no Keiyakusha Special	1	Comedy Parody Sci-Fi	7.65
1108	Detective Conan: Black History 2	1	Adventure Comedy Mystery Police Shounen	7.65
1109	Digimon Tamers	51	Adventure Comedy Drama Fantasy Shounen	7.65
1110	Doraemon Movie 27: Nobita no Shin Makai Daibouken - 7-nin no Mahoutsukai	1	Adventure Comedy Fantasy	7.65
1111	Flying Witch	12	Comedy Magic Shounen Slice of Life Supernatural	7.65
1112	Fushigi no Umi no Nadia	39	Adventure Comedy Historical Romance Sci-Fi	7.65
1113	Jigoku Sensei Nube	49	Adventure Comedy Horror Romance School Shounen Supernatural	7.65
1114	Kappa no Coo to Natsuyasumi	1	Adventure Shounen	7.65
1115	Majokko Shimai no Yoyo to Nene	1	Fantasy Magic	7.65
1116	Minami-ke Okaeri	13	Comedy School Slice of Life	7.65
1117	New Prince of Tennis Specials	7	Action Comedy Shounen Sports	7.65
1118	Nijuu Mensou no Musume	22	Action Adventure Mystery	7.65
1119	Non Non Biyori: Okinawa e Ikukoto ni Natta	1	Comedy School Seinen Slice of Life	7.65
1120	One Piece Movie 9: Episode of Chopper Plus - Fuyu ni Saku Kiseki no Sakura	1	Action Adventure Comedy Fantasy Shounen Super Power	7.65
1121	Owari no Seraph	12	Action Drama Shounen Supernatural Vampire	7.65
1122	Paniponi Dash!: Danjite Okonaeba Kishin mo Kore wo Saku	1	Comedy Parody School	7.65
1123	Rurouni Kenshin: Meiji Kenkaku Romantan - Ishinshishi e no Chinkonka	1	Drama Historical Samurai Shounen	7.65
1124	Yondemasu yo Azazel-san. Z	13	Comedy Demons Supernatural	7.65
1080	Aldnoah.Zero	12	Action Mecha Sci-Fi	7.66
1081	Bleach Movie 3: Fade to Black - Kimi no Na wo Yobu	1	Action Comedy Shounen Super Power Supernatural	7.66
1082	Code Geass: Boukoku no Akito 1 - Yokuryuu wa Maiorita	1	Action Mecha Military Sci-Fi	7.66
1083	Detective Conan Magic File 2: Kudou Shinichi - The Case of the Mysterious Wall and the Black Lab	1	Adventure Comedy Mystery Police Shounen	7.66
1084	Detective Conan: Conan vs. Kid - Jet Black Sniper	1	Adventure Comedy Mystery Police Shounen	7.66
1085	Digimon Adventure tri. 1: Saikai	1	Action Adventure Comedy Drama	7.66
1086	Durarara!!x2 Ten: Onoroke Chakapoko	1	Action Mystery Supernatural	7.66
1087	Girls und Panzer	12	Military School	7.66
1088	Heroic Age	26	Action Mecha Military Sci-Fi Space	7.66
1089	Kareshi Kanojo no Jijou	26	Comedy Drama Romance School Shoujo Slice of Life	7.66
1090	Keroro Gunsou Movie 3: Tenkuu Daikessen de Arimasu!	1	Comedy Sci-Fi Shounen	7.66
1091	Konjiki no Gash Bell!!	150	Adventure Comedy Magic Shounen Supernatural	7.66
1092	Log Horizon 2nd Season	25	Action Adventure Fantasy Game Magic Shounen	7.66
1093	Mobile Suit Gundam Seed: Seed Supernova - Tanekyara Gekijou	4	Comedy Parody	7.66
1094	Mobile Suit Gundam Wing: Operation Meteor	4	Action Adventure Drama Mecha Military Psychological Sci-Fi Space	7.66
1095	Ore no Imouto ga Konnani Kawaii Wake ga Nai Specials	4	Comedy Seinen Slice of Life	7.66
1096	Plawres Sanshirou	37	Adventure Mecha School Sci-Fi Shounen Sports	7.66
1097	Pokemon: Mewtwo no Gyakushuu	1	Action Adventure Comedy Drama Fantasy Kids	7.66
1098	Shion no Ou	22	Drama Game Mystery Thriller	7.66
1099	Slam Dunk: Zenkoku Seiha Da! Sakuragi Hanamichi	1	Comedy Drama School Shounen Slice of Life Sports	7.66
1100	Tales of Symphonia The Animation: Sekai Tougou-hen	3	Action Adventure Fantasy Magic Martial Arts Shounen	7.66
1101	The iDOLM@STER Movie: Kagayaki no Mukougawa e!	1	Comedy Drama Music	7.66
1102	Udon no Kuni no Kiniro Kemari	12	Fantasy Seinen Slice of Life	7.66
1103	UFO Robo Grendizer	74	Mecha Sci-Fi Shounen	7.66
1063	Aura: Maryuuin Kouga Saigo no Tatakai	1	Comedy Drama Romance School Supernatural	7.67
1064	City Hunter: Goodbye My Sweetheart	1	Adventure Comedy Shounen	7.67
1065	Detective Conan Magic File 4: Osaka Okonomiyaki Odyssey	1	Comedy Mystery Police Shounen	7.67
1066	Fantastic Children	26	Adventure Fantasy Mystery Romance Sci-Fi	7.67
1067	Free!	12	Comedy School Slice of Life Sports	7.67
1068	Ghost in the Shell (2015)	1	Action Mecha Police Psychological Sci-Fi	7.67
1069	Haiyore! Nyaruko-san F	1	Comedy Parody Romance Sci-Fi	7.67
1070	Hetalia: The Beautiful World Extra Disc	1	Comedy Historical Parody	7.67
1071	Jewelpet Twinkle☆	52	Fantasy Magic School Shoujo	7.67
1072	Juubee Ninpuuchou	1	Adventure Fantasy Historical Horror Romance Shounen Supernatural	7.67
1073	Kiznaiver	12	Drama Sci-Fi	7.67
1074	Mitsudomoe Special	1	Comedy School Slice of Life	7.67
1075	New Prince of Tennis	13	Action Comedy Shounen Sports	7.67
1076	Sakamoto desu ga?	12	Comedy School Seinen	7.67
1077	Tales of Symphonia The Animation: Tethe&#039;alla-hen	4	Action Adventure Fantasy Magic Martial Arts Shounen	7.67
1078	Tatakae! Chou Robot Seimeitai Transformers	98	Adventure Mecha Sci-Fi Shounen	7.67
1079	Tsubasa Chronicle	26	Action Adventure Fantasy Magic Romance Shounen Supernatural	7.67
7518	Boku wa Sugu ni Nigetanda: Higashi Nihon Daishinsai kara Mananda Koto	1	Drama Kids	7.67
8029	Harbor Tale	1	Adventure Fantasy	7.67
8206	Ijime wa Zettai Warui!	1	Drama School Slice of Life	7.67
8702	Makkuro na Obentou	1	Drama Historical	7.67
8791	Miitsuketa!	1	Drama Kids	7.67
8809	Minamoto no Yoritomo to Bushi no Yononaka	1	Drama Historical Kids Samurai	7.67
8814	Minna de Tonda	1	Drama Kids	7.67
8830	Mizuki Shigeru no Toono Monogatari	1	Adventure Fantasy	7.67
8959	Nepos Napos	26	Fantasy Kids	7.67
9026	Norman the Snowman: Kita no Kuni no Aurora (Kari)	1	Fantasy Kids	7.67
9345	Rusuden Hour: Sodan Brothers	25	Comedy	7.67
9745	Tenka wo Mezashita Sannin no Bushou	1	Drama Historical Kids Samurai	7.67
1053	Ajin OVA	3	Action Horror Mystery Seinen Supernatural	7.68
1054	Amagi Brilliant Park	13	Comedy Magic	7.68
1055	Ashita no Nadja	50	Adventure Drama Historical Romance Shoujo	7.68
1056	Basilisk: Kouga Ninpou Chou	24	Action Adventure Fantasy Historical Romance Samurai Supernatural	7.68
1057	Boruto: Naruto the Movie - Naruto ga Hokage ni Natta Hi	1	Action Comedy Martial Arts Shounen Super Power	7.68
1058	Btooom!	12	Action Psychological Sci-Fi Seinen	7.68
1059	Dragon Ball Kai: Mirai ni Heiwa wo! Goku no Tamashii yo Eien ni	1	Action Comedy Fantasy Sci-Fi Shounen Super Power	7.68
1060	Kaleido Star: Aratanaru Tsubasa - Extra Stage	1	Adventure Comedy Drama Shoujo	7.68
1061	Mutsu Enmei Ryuu Gaiden: Shura no Toki	26	Action Historical Martial Arts Samurai Shounen	7.68
1062	Persona 4 the Animation	25	Adventure Mystery School Sci-Fi Super Power Supernatural	7.68
1022	Ling Qi	20	Action Comedy Magic Supernatural	7.69
1033	Aa! Megami-sama!: Sorezore no Tsubasa	22	Comedy Magic Romance Seinen Supernatural	7.69
1034	Aikatsu!	178	Music School Shoujo Slice of Life	7.69
1035	Chuuka Ichiban!	52	Action Comedy Drama Shounen	7.69
1036	Gugure! Kokkuri-san	12	Comedy Shounen Supernatural	7.69
1037	Hanbun no Tsuki ga Noboru Sora	6	Comedy Drama Romance	7.69
1038	Initial D: Project D to the Next Stage - Project D e Mukete	1	Action Cars Drama Seinen Sports	7.69
1039	Inu x Boku SS	12	Comedy Romance Shounen Supernatural	7.69
1040	InuYasha: Toki wo Koeru Omoi	1	Adventure Comedy Demons Drama Fantasy Historical Romance Shounen Super Power	7.69
1041	Kuroko no Basket Movie 1: Winter Cup Soushuuhen - Kage to Hikari	1	School Shounen Sports	7.69
1042	Kuroshitsuji Special	1	Comedy Demons Parody	7.69
1043	Layton Kyouju to Eien no Utahime	1	Mystery	7.69
1044	Love Stage!!	10	Comedy Romance Shounen Ai	7.69
1045	Macross Zero	5	Adventure Mecha Military Sci-Fi Shounen	7.69
1046	Moyashimon	11	Comedy School Supernatural	7.69
1047	Nodame Cantabile OVA 2	1	Comedy Josei Romance	7.69
1048	Slam Dunk: Shouhoku Saidai no Kiki! Moero Sakuragi Hanamichi	1	Comedy Drama School Shounen Slice of Life Sports	7.69
1049	Tamayura: Sotsugyou Shashin Part 1 - Kizashi	1	Comedy Drama Slice of Life	7.69
1050	Toaru Majutsu no Index	24	Action Magic Sci-Fi Super Power	7.69
1051	Tonari no Seki-kun	21	Comedy School Seinen	7.69
1052	Zettai Karen Children: The Unlimited - Hyoubu Kyousuke	12	Shounen Supernatural	7.69
8388	KanColle Movie	1	Action Military School Sci-Fi Slice of Life	7.69
1011	Ano Natsu de Matteru	12	Comedy Drama Romance Sci-Fi Slice of Life	7.7
1012	Arslan Senki (TV): Fuujin Ranbu	8	Action Adventure Drama Fantasy Historical Shounen Supernatural	7.7
1013	Fairy Tail Movie 1: Houou no Miko	1	Action Adventure Comedy Fantasy Magic Shounen	7.7
1014	Final Fantasy VII: Advent Children - Venice Film Festival Footage	1	Action Drama Fantasy Sci-Fi	7.7
1015	Future GPX Cyber Formula Zero	8	Drama Sci-Fi Shounen Sports	7.7
1016	Ghost in the Shell: Arise - Border:2 Ghost Whispers	1	Mecha Police Psychological Sci-Fi	7.7
1017	Hourou Musuko Specials	2	Drama School	7.7
1018	Imawa no Kuni no Alice (OVA)	3	Action Psychological Shounen Supernatural Thriller	7.7
1019	Isshuukan Friends.	12	Comedy School Shounen Slice of Life	7.7
1020	Kamisama no Memochou	12	Mystery	7.7
1021	Kimagure Orange☆Road	48	Comedy Drama Romance School Shounen Slice of Life Super Power	7.7
1023	Love Live! School Idol Project	13	Music School Slice of Life	7.7
1024	Oda Nobuna no Yabou	12	Comedy Historical Romance	7.7
1025	Pokemon XY: Mega Evolution	4	Action Adventure Comedy Fantasy Kids	7.7
1026	Ranma ½: Akumu! Shunmin Kou	1	Action Comedy Martial Arts Shounen Supernatural	7.7
1027	Shingeki no Kyojin Movie 1: Guren no Yumiya	1	Action Drama Fantasy Shounen Super Power	7.7
1028	Tsubasa Chronicle 2nd Season	26	Action Adventure Drama Fantasy Mystery Romance Shounen Supernatural	7.7
1029	Uchuu Patrol Luluco	13	Action Adventure Comedy Space	7.7
1030	Waga Seishun no Arcadia	1	Action Adventure Drama Sci-Fi Space	7.7
1031	Yondemasu yo Azazel-san.	4	Comedy Demons Supernatural	7.7
1032	Yuru Yuri	12	Comedy School Shoujo Ai Slice of Life	7.7
988	Aa! Megami-sama!: Tatakau Tsubasa	2	Comedy Magic Romance Seinen Supernatural	7.71
989	Arakawa Under the Bridge	13	Comedy Romance Seinen	7.71
990	Bishoujo Senshi Sailor Moon	46	Demons Magic Romance Shoujo	7.71
991	Evangelion: 3.0 You Can (Not) Redo	1	Action Mecha Sci-Fi	7.71
992	Fullmetal Alchemist: Brotherhood - 4-Koma Theater	16	Comedy Fantasy Military Parody	7.71
993	Gakkou no Kaidan	19	Horror Mystery Supernatural	7.71
994	Gakkougurashi!	12	Horror Mystery Psychological School Slice of Life	7.71
995	Gensoumaden Saiyuuki	50	Adventure Comedy Drama Shounen Supernatural	7.71
996	Giant Killing	26	Drama Seinen Sports	7.71
997	Hetalia: The World Twinkle Extra Disc	1	Comedy Historical Parody	7.71
998	Inazuma Eleven Go: Kyuukyoku no Kizuna Gryphon	1	Sci-Fi Shounen Sports	7.71
999	Mainichi Kaasan	142	Comedy Slice of Life	7.71
1000	Mirai Nikki Redial	1	Action Psychological Shounen Supernatural	7.71
1001	Natsume Yuujinchou: Nyanko-sensei to Hajimete no Otsukai	1	Drama Fantasy Shoujo Slice of Life Supernatural	7.71
1002	Ojiisan no Lamp	1	Drama Historical	7.71
1003	Pokemon Black and White 2: Introduction Movie	1	Action Fantasy Kids	7.71
1004	Prince of Tennis: Another Story II - Ano Toki no Bokura	4	Shounen Sports	7.71
1005	Seitokai Yakuindomo	13	Comedy School Shounen Slice of Life	7.71
1006	Shounen Onmyouji	26	Action Demons Fantasy Historical Magic Shoujo Supernatural	7.71
1007	Sukitte Ii na yo.	13	Romance School Shoujo	7.71
1008	Toaru Majutsu no Index: Endymion no Kiseki	1	Action Magic Sci-Fi Super Power	7.71
1009	Tokyo Ghoul: &quot;Jack&quot;	1	Action Drama Horror School Seinen Supernatural	7.71
1010	Ushio to Tora (TV)	26	Action Adventure Comedy Demons Shounen Supernatural	7.71
8691	Mahoutsukai Precure! Movie	1	Action Fantasy Magic School Shoujo Slice of Life	7.71
956	Diamond no Ace OVA	3	Comedy School Shounen Sports	7.72
969	Ansatsu Kyoushitsu: 365-nichi no Jikan	1	Action Comedy School Shounen	7.72
970	Daicon Opening Animations	2	Action Adventure Mecha Music Sci-Fi	7.72
971	Dragon Ball Z Movie 12: Fukkatsu no Fusion!! Gokuu to Vegeta	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.72
972	Durarara!!x2 Ketsu: Dufufufu!!	1	Action Mystery Supernatural	7.72
973	Future GPX Cyber Formula Sin	5	Drama Sci-Fi Shounen Sports	7.72
974	Ie Naki Ko Remi Specials	3	Adventure Drama	7.72
975	Inazuma Eleven	127	Shounen Sports Super Power	7.72
976	Kara no Kyoukai 6: Boukyaku Rokuon	1	Action Magic Mystery Romance Supernatural Thriller	7.72
977	Kyoukaisenjou no Horizon II	13	Action Fantasy Sci-Fi	7.72
978	Mobile Police Patlabor: On Television	47	Comedy Mecha Police Sci-Fi	7.72
979	Mujin Wakusei Survive	52	Action Adventure Fantasy Sci-Fi Slice of Life	7.72
980	New Prince of Tennis OVA vs. Genius10	10	Action Comedy Shounen Sports	7.72
981	Noblesse: Awakening	1	Action School Supernatural Vampire	7.72
982	Ouritsu Uchuugun: Honneamise no Tsubasa	1	Action Drama Military Sci-Fi Space	7.72
983	Tanaka-kun wa Itsumo Kedaruge Specials	Unknown	Comedy School Slice of Life	7.72
984	Toradora! OVA	1	Comedy Romance School Slice of Life	7.72
985	Towa no Quon 5: Souzetsu no Raifuku	1	Action Super Power Supernatural	7.72
986	Urusei Yatsura Movie 5: Final	1	Action Adventure Comedy Drama Romance Sci-Fi	7.72
987	Zhen Hun Jie	24	Action Supernatural	7.72
957	Doraemon Movie 31: Shin Nobita to Tetsujin Heidan - Habatake Tenshi-tachi	1	Adventure Comedy Fantasy Kids Shounen	7.73
958	Flip Flappers	13	Comedy Sci-Fi	7.73
959	GetBackers	49	Action Comedy Drama Mystery Shounen Super Power Supernatural	7.73
960	K	13	Action Super Power Supernatural	7.73
961	Katekyo Hitman Reborn! Special	1	Comedy Shounen	7.73
962	Kekkaishi	52	Adventure Comedy Fantasy Shounen	7.73
963	Kuroshitsuji II Specials	6	Comedy Fantasy Parody Shounen Supernatural	7.73
964	Lady Lady!!	21	Drama Historical	7.73
965	Mitsudomoe	13	Comedy School Slice of Life	7.73
966	Shakugan no Shana III (Final)	24	Action Drama Fantasy Romance Supernatural	7.73
967	Uchuu Senkan Yamato	26	Action Adventure Drama Military Sci-Fi Space	7.73
968	Wakakusa Monogatari: Nan to Jo-sensei	40	Drama Historical School Slice of Life	7.73
916	Go! Princess Precure	50	Action Comedy Fantasy Magic School Shoujo Slice of Life	7.74
932	Bishoujo Senshi Sailor Moon R	43	Demons Magic Romance Shoujo	7.74
933	Black Jack (TV)	61	Drama	7.74
934	Cardcaptor Sakura Movie 1	1	Comedy Drama Fantasy Magic Shoujo	7.74
935	Detective Conan: Black History	1	Adventure Comedy Mystery Police Shounen	7.74
936	Fullmetal Alchemist: The Conqueror of Shamballa	1	Comedy Drama Fantasy Historical Military Shounen	7.74
937	Genshiken OVA	3	Comedy Parody Slice of Life	7.74
938	Hal	1	Romance Sci-Fi Shoujo	7.74
939	Heartcatch Precure! Movie: Hana no Miyako de Fashion Show... Desu ka!?	1	Fantasy Kids Magic Shoujo	7.74
940	Higashi no Eden Movie I: The King of Eden	1	Comedy Drama Mystery Romance Slice of Life Thriller	7.74
941	Hungry Heart: Wild Striker	52	Comedy Shounen Slice of Life Sports	7.74
942	Initial D Battle Stage 2	1	Action Cars Drama Seinen Sports	7.74
943	Kekkai Sensen	12	Action Fantasy Shounen Super Power Supernatural Vampire	7.74
944	Love Stage!! OVA	1	Comedy Romance Shounen Ai	7.74
945	Mahou Shoujo Lyrical Nanoha StrikerS	26	Action Comedy Drama Magic Super Power	7.74
946	Mousou Dairinin	13	Drama Mystery Police Psychological Supernatural Thriller	7.74
947	Muumindani no Suisei	1	Adventure Comedy Fantasy Kids	7.74
948	Noein: Mou Hitori no Kimi e	24	Adventure Drama Sci-Fi Slice of Life	7.74
949	Persona 3 the Movie 3: Falling Down	1	Action Fantasy Seinen Supernatural	7.74
950	Sengoku Basara Two	12	Action Historical Martial Arts Samurai Super Power	7.74
951	Shakugan no Shana	24	Action Drama Fantasy Romance School Supernatural	7.74
952	Soukyuu no Fafner: Dead Aggressor - Exodus 2nd Season	13	Action Drama Mecha Military Sci-Fi	7.74
953	Taiyou no Ko Esteban	39	Adventure Historical Sci-Fi	7.74
954	Toriko	147	Action Adventure Comedy Fantasy Shounen	7.74
955	UN-GO: Inga-ron	1	Mystery Supernatural	7.74
10342	Fuyu no Semi	3	Drama Historical Romance Samurai Yaoi	7.74
912	Bleach Movie 4: Jigoku-hen	1	Action Comedy Shounen Super Power Supernatural	7.75
913	D-Frag!	12	Comedy Game School Seinen	7.75
914	Detective Conan Movie 09: Promo Special	1	Adventure Comedy Mystery Police Shounen	7.75
871	Rozen Maiden: Träumend	12	Action Comedy Drama Magic Seinen	7.78
915	Dragon Ball Z Special 1: Tatta Hitori no Saishuu Kessen	1	Adventure Comedy Fantasy Sci-Fi Shounen	7.75
917	InuYasha: Kagami no Naka no Mugenjo	1	Adventure Demons Drama Fantasy Historical Romance Shounen Supernatural	7.75
918	Kanojo to Kanojo no Neko: Everything Flows	4	Psychological Romance Slice of Life	7.75
919	Kara no Kyoukai Remix: Gate of Seventh Heaven	1	Action Mystery Romance Super Power Thriller	7.75
920	Kino no Tabi: The Beautiful World - Tou no Kuni	1	Adventure Fantasy Psychological	7.75
921	Kono Danshi Ningyo Hiroimashita.	1	Fantasy Shounen Ai	7.75
922	Kuroko no Basket: Baka ja Katenai no yo!	1	Comedy School Shounen Sports	7.75
923	Kyoukai no Kanata Movie: I&#039;ll Be Here - Kako-hen	1	Action Fantasy Supernatural	7.75
924	Mahoujin Guru Guru	45	Adventure Comedy Fantasy Magic Shounen	7.75
925	One Piece: Heart of Gold	1	Action Adventure Comedy Drama Fantasy Shounen	7.75
926	Shingeki no Kyojin Movie 2: Jiyuu no Tsubasa	1	Action Drama Fantasy Shounen Super Power	7.75
927	The iDOLM@STER	25	Comedy Drama Music	7.75
928	Trapp Ikka Monogatari	40	Drama Historical Music Romance	7.75
929	Utawarerumono Specials	6	Action Comedy Drama Fantasy	7.75
930	World Trigger	73	Action School Sci-Fi Shounen Supernatural	7.75
931	Yuusha-Ou GaoGaiGar Final Grand Glorious Gathering	12	Action Mecha Sci-Fi Super Power	7.75
8417	Katayoku no Khronos Gear	1	Action Sci-Fi	7.75
8610	Kuzuryuugawa to Shounen	1	Drama Historical	7.75
8825	Mirai Kara no Message	1	Drama Kids	7.75
9746	Tenki ni Naare	1	Drama Historical Kids Space	7.75
9803	Tobiuo no Boy wa Byouki Desu	1	Fantasy Historical Kids	7.75
890	Ao Haru Ride OVA	2	Romance School Shoujo Slice of Life	7.76
891	Bishoujo Senshi Sailor Moon S: Kaguya Hime no Koibito	1	Adventure Comedy Drama Fantasy Magic Romance Shoujo	7.76
892	Bokura wa Minna Kawaisou: Hajimete no	1	Comedy Romance School Slice of Life	7.76
893	Bungou Stray Dogs	12	Action Comedy Mystery Seinen Supernatural	7.76
895	Doraemon (1979)	1787	Adventure Comedy Fantasy Kids Sci-Fi Shounen	7.76
896	Genshiken	12	Comedy Parody Slice of Life	7.76
897	Ginga Tetsudou 999 (Movie)	1	Adventure Drama Fantasy Sci-Fi Space	7.76
898	Girls und Panzer: Kore ga Hontou no Anzio-sen Desu!	1	Military School	7.76
899	Hakuouki Hekketsuroku	10	Action Drama Historical Josei Samurai Supernatural	7.76
900	Hetalia Axis Powers	52	Comedy Historical Parody	7.76
901	Itazura na Kiss	25	Comedy Romance Shoujo	7.76
902	Lupin III	23	Action Adventure Comedy Shounen	7.76
903	Mahouka Koukou no Rettousei	26	Magic Romance School Sci-Fi Supernatural	7.76
904	Majin Tantei Nougami Neuro	25	Comedy Demons Mystery Shounen Supernatural	7.76
905	Master Keaton	24	Adventure Mystery	7.76
906	No.6	11	Action Sci-Fi	7.76
907	One Piece Movie 4: Dead End no Bouken	1	Action Adventure Comedy Fantasy Shounen Super Power	7.76
908	Senjou no Valkyria	26	Action Military Romance	7.76
909	Tegamibachi	25	Adventure Fantasy Shounen Supernatural	7.76
910	Towa no Quon 4: Guren no Shoushin	1	Action Super Power Supernatural	7.76
911	Turn A Gundam	50	Action Adventure Drama Mecha Military Sci-Fi Space	7.76
854	Akagami no Shirayuki-hime: Nandemonai Takaramono Kono Page	1	Drama Fantasy Romance Shoujo	7.77
877	Black Jack 21	17	Action Drama	7.77
878	Digimon Adventure tri. 2: Ketsui	1	Action Adventure Comedy Drama	7.77
879	Fushigi Yuugi	52	Adventure Comedy Drama Fantasy Historical Magic Martial Arts Romance Shoujo	7.77
880	Ichigo Mashimaro	12	Comedy Slice of Life	7.77
881	JoJo no Kimyou na Bouken: Phantom Blood	1	Action Adventure Horror Shounen Vampire	7.77
882	Koyomimonogatari	12	Comedy Mystery Supernatural	7.77
883	Mobile Suit Gundam 00 Special Edition	3	Action Drama Mecha Military Sci-Fi	7.77
884	Ojamajo Doremi Na-i-sho	13	Comedy Fantasy Magic Shoujo	7.77
885	One Piece Movie 6: Omatsuri Danshaku to Himitsu no Shima	1	Adventure Comedy Fantasy Shounen	7.77
886	Sengoku Basara Movie: The Last Party	1	Action Historical Martial Arts Samurai Super Power	7.77
887	Shingeki no Bahamut: Genesis	12	Action Adventure Demons Fantasy Magic Supernatural	7.77
888	Tenchi Muyou! Ryououki	6	Action Comedy Sci-Fi Shounen Space	7.77
889	Tonari no Kaibutsu-kun	13	Comedy Romance School Shoujo Slice of Life	7.77
894	Detective Conan Movie 19: The Hellfire Sunflowers	1	Action Mystery Police Shounen	7.77
8530	Kochira Katsushikaku Kameari Kouenmae Hashutsujo: The Final - Ryoutsu Kakichi Saigo no Hi	1	Comedy Police Shounen Slice of Life	7.77
9065	Ojamanga Yamada-kun	103	Comedy Slice of Life	7.77
853	Ajin	13	Action Horror Mystery Seinen Supernatural	7.78
855	Bishoujo Senshi Sailor Moon R: The Movie	1	Drama Magic Romance Shoujo	7.78
856	Code Geass: Hangyaku no Lelouch Special Edition Black Rebellion	1	Action Mecha Military School Super Power	7.78
857	Full Metal Panic! The Second Raid: Wari to Hima na Sentaichou no Ichinichi	1	Comedy	7.78
858	Ga-Rei: Zero	12	Action Super Power Supernatural Thriller	7.78
859	Higashi no Eden Movie II: Paradise Lost	1	Action Comedy Drama Mystery Romance Thriller	7.78
860	Jungle wa Itsumo Hare nochi Guu Final	7	Comedy Slice of Life	7.78
861	Kyoukai no Kanata: Shinonome	1	Fantasy Slice of Life Supernatural	7.78
862	Lupin III: Episode 0 &quot;First Contact&quot;	1	Action Adventure Comedy Mystery Shounen	7.78
863	Minami-ke Tadaima	13	Comedy School Slice of Life	7.78
864	Momo e no Tegami	1	Drama Supernatural	7.78
865	Nurarihyon no Mago	24	Action Demons Shounen Supernatural	7.78
866	One Piece: Episode of Sabo - 3 Kyoudai no Kizuna Kiseki no Saikai to Uketsugareru Ishi	1	Action Adventure Comedy Drama Fantasy Shounen Super Power	7.78
867	Orange	13	Drama Romance School Sci-Fi Shoujo	7.78
868	Over Drive	26	Shounen Sports	7.78
869	R.O.D OVA	3	Action Adventure Historical Magic Mystery Sci-Fi	7.78
870	Ranma ½ Specials	2	Comedy Drama Romance Shounen	7.78
872	Slam Dunk: Hoero Basketman-damashii! Hanamichi to Rukawa no Atsuki Natsu	1	Comedy Drama School Shounen Slice of Life Sports	7.78
873	Special A	24	Comedy Romance School Shoujo	7.78
874	Texhnolyze	22	Action Drama Psychological Sci-Fi	7.78
875	Urusei Yatsura	195	Action Adventure Comedy Drama Romance Sci-Fi	7.78
876	Utawarerumono	26	Action Drama Fantasy Sci-Fi	7.78
833	Aikatsu! Movie	1	Music School Shoujo Slice of Life	7.79
834	Angel Beats! Specials	2	Action Comedy School Supernatural	7.79
835	Aria The Animation	13	Fantasy Sci-Fi Shounen Slice of Life	7.79
836	Break Blade 1: Kakusei no Toki	1	Action Fantasy Mecha Military Shounen	7.79
837	Denpa-teki na Kanojo	2	Mystery School Thriller	7.79
838	Dragon Quest: Dai no Daibouken	46	Adventure Comedy Demons Fantasy Magic Martial Arts Shounen	7.79
839	Higashi no Eden Soushuuhen: Air Communication	1	Comedy Mystery Romance	7.79
840	Ichigo Mashimaro Encore	2	Comedy Slice of Life	7.79
841	Inu x Boku SS Special	1	Comedy Shounen Supernatural	7.79
842	Jigoku Shoujo	26	Horror Mystery Psychological Supernatural	7.79
843	New Initial D Movie: Legend 3 - Mugen	1	Cars Seinen Sports	7.79
844	Nobunaga Concerto	10	Historical Romance Shounen	7.79
845	Poyopoyo Kansatsu Nikki	52	Comedy Seinen Slice of Life	7.79
846	Pretty Rhythm: Rainbow Live	51	Music Shoujo Slice of Life Sports	7.79
847	Ranma ½ Super	3	Adventure Comedy Martial Arts Romance Shounen Supernatural	7.79
848	Servant x Service	13	Comedy Slice of Life	7.79
849	Shakugan no Shana II (Second)	24	Action Drama Fantasy Romance School Supernatural	7.79
850	Tales of Vesperia: The First Strike	1	Action Adventure Fantasy Magic Military	7.79
851	Toaru Hikuushi e no Tsuioku	1	Adventure Military Romance	7.79
852	Towa no Quon 6: Towa no Quon	1	Action Super Power Supernatural	7.79
819	Baka to Test to Shoukanjuu: Matsuri	2	Comedy School Super Power	7.8
820	Blood+	50	Action Drama Horror Military Mystery Supernatural Vampire	7.8
821	Chrno Crusade	24	Action Demons Historical Romance Supernatural	7.8
822	Free!: FrFr - Short Movie	7	Comedy Sports	7.8
823	Fruits Basket	26	Comedy Drama Fantasy Romance Shoujo Slice of Life	7.8
824	Gakuen Alice	26	Comedy Magic School Shoujo	7.8
826	Hourou Musuko	11	Drama School Slice of Life	7.8
827	Huyao Xiao Hongniang: Wangquan Fugui	14	Comedy Romance Supernatural	7.8
828	Shoukoujo Sara	46	Drama Historical Shoujo Slice of Life	7.8
829	Soredemo Sekai wa Utsukushii	12	Adventure Fantasy Romance Shoujo	7.8
830	Tenkuu no Escaflowne	26	Adventure Fantasy Mecha Romance Shoujo	7.8
831	The Disappearance of Conan Edogawa: The Worst Two Days in History	1	Adventure Comedy Mystery Police Shounen	7.8
832	Tokyo Ravens	24	Comedy School Shounen Super Power Supernatural	7.8
9305	Rennyo Monogatari	1	Drama Historical	7.8
801	Daa! Daa! Daa!	78	Comedy Sci-Fi Shoujo	7.81
802	Digimon Adventure: Bokura no War Game!	1	Adventure Comedy Kids Sci-Fi	7.81
803	Eikoku Koi Monogatari Emma	12	Drama Historical Romance Seinen Slice of Life	7.81
804	Full Metal Panic!	24	Action Comedy Mecha Military Sci-Fi	7.81
805	Guilty Crown	22	Action Drama Sci-Fi Super Power	7.81
806	Hoshi wo Ou Kodomo	1	Adventure Fantasy Romance	7.81
807	Ima Soko ni Iru Boku	13	Adventure Drama Fantasy Military Sci-Fi	7.81
808	Jigoku Shoujo Mitsuganae	26	Mystery Psychological Supernatural	7.81
809	Kara no Kyoukai 1: Fukan Fuukei	1	Action Mystery Supernatural Thriller	7.81
810	Kimagure Orange☆Road: Ano Hi ni Kaeritai	1	Comedy Drama Romance Shounen Slice of Life	7.81
811	Kono Subarashii Sekai ni Shukufuku wo! OVA	1	Comedy Fantasy	7.81
813	Minami-ke	13	Comedy School Slice of Life	7.81
814	Mobile Suit Gundam: Char&#039;s Counterattack	1	Drama Mecha Military Sci-Fi Space	7.81
815	Naruto	220	Action Comedy Martial Arts Shounen Super Power	7.81
816	New Game!	12	Comedy Slice of Life	7.81
817	Shigatsu wa Kimi no Uso: Moments	1	Music Shounen	7.81
818	Top wo Nerae 2! Diebuster	6	Action Comedy Mecha Sci-Fi Space	7.81
825	Haikyuu!! Movie 2: Shousha to Haisha	1	Comedy Drama School Shounen Sports	7.81
784	Bokurano	24	Drama Mecha Psychological Sci-Fi	7.82
785	Bounen no Xamdou	26	Action Military Sci-Fi	7.82
786	Break Blade 6: Doukoku no Toride	1	Action Mecha Military Shounen	7.82
787	Detective Conan: Conan vs. Kid - Shark &amp; Jewel	1	Adventure Comedy Kids Mystery Police Shounen	7.82
788	Dragon Ball Z Special 2: Zetsubou e no Hankou!! Nokosareta Chousenshi - Gohan to Trunks	1	Adventure Drama Fantasy Shounen	7.82
789	Hakkenden: Touhou Hakken Ibun 2nd Season	13	Action Fantasy Shoujo Supernatural	7.82
790	Hidamari Sketch x 365 Specials	3	Comedy School Slice of Life	7.82
791	K: Return of Kings	13	Action Super Power Supernatural	7.82
792	Kill la Kill Special	1	Action Comedy School Super Power	7.82
793	Kochira Katsushikaku Kameari Kouenmae Hashutsujo (TV)	373	Comedy Police Slice of Life	7.82
794	Macross Plus	4	Drama Mecha Military Romance Sci-Fi Space	7.82
795	Macross Plus Movie Edition	1	Action Adventure Mecha Military Romance Sci-Fi Space	7.82
796	Mitsudomoe Zouryouchuu!	8	Comedy School Slice of Life	7.82
797	Prince of Tennis: Another Story - Messages From Past and Future	4	Comedy School Shounen Sports	7.82
798	Saint Seiya: Meiou Hades Elysion-hen	6	Action Fantasy Shounen Super Power	7.82
799	Working!!	13	Comedy Slice of Life	7.82
800	Yume-iro Pâtissière SP Professional	13	Shoujo Slice of Life	7.82
812	Kubikiri Cycle: Aoiro Savant to Zaregototsukai	8	Action Drama Mystery Supernatural	7.82
771	Baka to Test to Shoukanjuu	13	Comedy Romance School Super Power	7.83
772	Chi&#039;s Sweet Home	104	Comedy Slice of Life	7.83
773	Densetsu no Yuusha no Densetsu	24	Action Adventure Fantasy Magic Shounen	7.83
774	Ichigo Mashimaro OVA	3	Comedy School Slice of Life	7.83
775	Kingsglaive: Final Fantasy XV	1	Action	7.83
776	Mobile Police Patlabor 2: The Movie	1	Drama Mecha Mystery Police Sci-Fi	7.83
777	Persona 3 the Movie 1: Spring of Birth	1	Action Fantasy Seinen Supernatural	7.83
778	Rozen Maiden: Ouvertüre	2	Action Comedy Drama Magic Seinen	7.83
779	Seikai no Monshou	13	Action Military Romance Sci-Fi Space	7.83
780	Shaman King	64	Action Adventure Comedy Drama Shounen Supernatural	7.83
781	Sword Art Online	25	Action Adventure Fantasy Game Romance	7.83
782	Tetsuwan Birdy Decode:02	12	Action Comedy Sci-Fi	7.83
783	Bishoujo Senshi Sailor Moon Crystal Season III	13	Demons Magic Romance Shoujo	7.83
7604	Chie-chan Funsenki: Jarinko Chie	39	Comedy Drama Slice of Life	7.83
752	Ajin Part 1: Shoudou	1	Action Horror Mystery Seinen Supernatural	7.84
753	Akame ga Kill!	24	Action Adventure Fantasy	7.84
754	AKB0048: Next Stage	13	Music Sci-Fi	7.84
755	Change!! Getter Robo: Sekai Saigo no Hi	13	Action Adventure Horror Mecha Psychological Sci-Fi Shounen	7.84
756	Death Note Rewrite	2	Mystery Police Psychological Supernatural Thriller	7.84
757	Detective Conan Movie 17: Private Eye in the Distant Sea	1	Adventure Comedy Mystery Police Shounen	7.84
758	Hakuouki Sekkaroku	6	Action Demons Drama Fantasy Historical Josei	7.84
759	Hoozuki no Reitetsu	13	Comedy Fantasy Supernatural	7.84
760	Kuroko no Basket NG-shuu	9	Comedy School Shounen Sports	7.84
761	Memories	3	Drama Horror Psychological Sci-Fi	7.84
762	Naruto: Shippuuden Movie 6 - Road to Ninja	1	Action Adventure Martial Arts Shounen Super Power	7.84
763	Owari no Seraph: Nagoya Kessen-hen	12	Action Drama Shounen Supernatural Vampire	7.84
764	Seikai no Senki III	2	Action Military Romance Sci-Fi Space	7.84
765	Seitokai Yakuindomo*	13	Comedy School Shounen Slice of Life	7.84
766	Space Cobra	31	Action Adventure Sci-Fi Space	7.84
767	Toaru Majutsu no Index II	24	Action Magic Sci-Fi Super Power	7.84
768	Tsuritama	12	Comedy Sci-Fi Slice of Life Sports	7.84
769	Yowamushi Pedal Movie	1	Comedy Drama Shounen Sports	7.84
770	Yuru Yuri Nachuyachumi!+	2	Comedy Shoujo Ai Slice of Life	7.84
738	Arakawa Under the Bridge x Bridge	13	Comedy Romance Seinen	7.85
739	Detective Conan Movie 10: Promo Special	1	Adventure Comedy Mystery Police Shounen	7.85
740	Elfen Lied	13	Action Drama Horror Psychological Romance Seinen Supernatural	7.85
741	Hachimitsu to Clover Specials	2	Comedy Drama Josei Romance Slice of Life	7.85
742	Hello! Lady Lynn	36	Drama	7.85
743	Kimi to Boku.	13	Comedy Drama Romance School Shounen Slice of Life	7.85
744	Maria-sama ga Miteru: Haru	13	Drama Romance School Shoujo Shoujo Ai	7.85
745	Mobile Suit Gundam 0080: War in the Pocket	6	Adventure Drama Mecha Military Sci-Fi Space	7.85
746	Mondaiji-tachi ga Isekai kara Kuru Sou Desu yo?	10	Comedy Fantasy Supernatural	7.85
747	Nanatsu no Taizai OVA	2	Action Adventure Fantasy Shounen Supernatural	7.85
748	One Punch Man: Road to Hero	1	Action Comedy Parody Sci-Fi Seinen Super Power Supernatural	7.85
749	Romeo x Juliet	24	Drama Fantasy Historical Romance	7.85
750	School Rumble Ichi Gakki Hoshuu	2	Comedy Romance School Shounen	7.85
751	Tamayura: Sotsugyou Shashin Part 2 - Hibiki	1	Comedy Drama Slice of Life	7.85
724	Break Blade 2: Ketsubetsu no Michi	1	Action Fantasy Mecha Military Shounen	7.86
725	Chibi Maruko-chan	142	Comedy Shoujo Slice of Life	7.86
726	Detective Conan Movie 16: The Eleventh Striker	1	Adventure Comedy Mystery Police Shounen Sports	7.86
727	Genshiken 2	12	Comedy Parody Slice of Life	7.86
728	Giovanni no Shima	1	Drama Historical	7.86
729	Hellsing I: Digest for Freaks	1	Action Horror Military Seinen Super Power Supernatural Vampire	7.86
730	Kuroko no Basket: Mou Ikkai Yarimasen ka	1	Comedy School Shounen Sports	7.86
731	Macross F: Close Encounter - Deculture Edition	1	Action Mecha Military Music Sci-Fi Space	7.86
732	Non Non Biyori Repeat OVA	1	Comedy School Seinen Slice of Life	7.86
733	Nurarihyon no Mago OVA	2	Action Demons Shounen Supernatural	7.86
734	One Piece: Episode of Luffy - Hand Island no Bouken	1	Action Adventure Comedy Fantasy Shounen Super Power	7.86
735	One Punch Man Specials	6	Action Comedy Parody Sci-Fi Seinen Super Power Supernatural	7.86
736	Seikai no Senki	13	Action Military Romance Sci-Fi Space	7.86
737	Space☆Dandy	13	Comedy Sci-Fi Space	7.86
9374	Sangokushi	1	Action Historical	7.86
704	Code Geass: Boukoku no Akito 2 - Hikisakareshi Yokuryuu	1	Action Mecha Military	7.87
705	Danganronpa 3: The End of Kibougamine Gakuen - Mirai-hen	12	Action Horror Mystery Psychological	7.87
706	Hai to Gensou no Grimgar	12	Action Adventure Drama Fantasy	7.87
707	Huyao Xiao Hongniang: Yue Hong	13	Comedy Romance	7.87
708	Jin-Rou	1	Drama Military Police Psychological Romance	7.87
709	K-On!	13	Comedy Music School Slice of Life	7.87
710	Kino no Tabi: The Beautiful World - Byouki no Kuni - For You	1	Adventure Drama Fantasy	7.87
711	Lucky☆Star	24	Comedy Parody School Slice of Life	7.87
712	Mobile Suit Gundam Wing	49	Action Drama Mecha Military Sci-Fi Space	7.87
713	Mobile Suit Gundam Wing: Endless Waltz	3	Action Drama Mecha Military Sci-Fi Space	7.87
714	Piano no Mori	1	Adventure Comedy Drama Music School Seinen	7.87
715	Ranma ½	161	Comedy Fantasy Martial Arts Slice of Life	7.87
716	Ranma ½ OVA	6	Comedy Martial Arts Romance Shounen	7.87
717	Sidonia no Kishi	12	Action Mecha Sci-Fi Seinen Space	7.87
718	Slayers	26	Adventure Comedy Demons Fantasy Magic	7.87
719	Soukou Kihei Votoms	52	Action Drama Mecha Military Sci-Fi Space	7.87
720	Tantei Gakuen Q	45	Comedy Drama Mystery Police Shounen	7.87
721	Toaru Kagaku no Railgun	24	Action Sci-Fi Super Power	7.87
722	Uchuu Kaizoku Captain Harlock	42	Action Adventure Drama Sci-Fi Seinen Space	7.87
723	Watashi no Ashinaga Ojisan	40	Comedy Historical Romance School Shoujo Slice of Life	7.87
685	Another	12	Horror Mystery School Supernatural Thriller	7.88
686	Ansatsu Kyoushitsu (TV) 2nd Season: Kagaijugyou-hen	8	Action Comedy School Shounen	7.88
687	Ao no Exorcist Movie	1	Action Demons Fantasy Shounen Supernatural	7.88
688	Arslan Senki (TV)	25	Action Adventure Drama Fantasy Historical Shounen	7.88
689	Binbougami ga!	13	Comedy Parody Shounen Supernatural	7.88
690	Black Jack	12	Drama	7.88
691	Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka	13	Action Adventure Comedy Fantasy Romance	7.88
692	Durarara!!x2 Shou: Watashi no Kokoro wa Nabe Moyou	1	Action Mystery Supernatural	7.88
693	Hetalia World Series Specials	4	Comedy Historical Parody	7.88
694	K-On!: Live House!	1	Comedy Music School Slice of Life	7.88
695	Kyou kara Maou!	78	Adventure Comedy Demons Fantasy Shoujo	7.88
696	Kyoukai no Kanata	12	Fantasy Slice of Life Supernatural	7.88
697	Mind Game	1	Adventure Comedy Dementia Psychological Romance	7.88
698	Oniisama e...	39	Drama School Shoujo Shoujo Ai	7.88
699	Servamp Specials	3	Comedy	7.88
700	Shingeki no Kyojin OVA	3	Action Drama Fantasy Shounen Super Power	7.88
701	Tamayura: Sotsugyou Shashin Part 3 - Akogare	1	Comedy Drama Slice of Life	7.88
702	The Last: Naruto the Movie	1	Action Martial Arts Romance Shounen Super Power	7.88
703	The Law of Ueki	51	Adventure Comedy Drama Shounen Supernatural	7.88
9175	Paradise	1	Adventure Psychological Space	7.88
668	Ao Haru Ride	12	Comedy Drama Romance School Shoujo Slice of Life	7.89
669	Bishoujo Senshi Sailor Moon S	38	Drama Magic Romance Shoujo	7.89
670	Digimon Adventure	54	Action Adventure Comedy Fantasy Kids	7.89
671	Furiko	1	Drama Music Romance Slice of Life	7.89
672	Heartcatch Precure!	49	Action Comedy Fantasy Magic School Shoujo Slice of Life	7.89
673	InuYasha	167	Action Adventure Comedy Demons Fantasy Magic Romance Shounen Supernatural	7.89
674	InuYasha: Kuroi Tessaiga	1	Adventure Comedy Demons Fantasy Magic Romance Shounen Supernatural	7.89
675	InuYasha: Tenka Hadou no Ken	1	Adventure Comedy Demons Drama Fantasy Historical Romance Shounen Supernatural	7.89
676	K-On!!: Keikaku!	1	Comedy Music School Slice of Life	7.89
677	Kumo no Mukou Yakusoku no Basho	1	Drama Military Romance Sci-Fi	7.89
678	Lupin III vs. Detective Conan	1	Action Adventure Comedy Mystery Shounen	7.89
679	Mobile Suit Gundam	43	Action Mecha Military Sci-Fi Space	7.89
680	Mobile Suit Gundam III: Encounters in Space	1	Action Adventure Drama Mecha Military Sci-Fi Space	7.89
681	Noragami OVA	2	Action Adventure Shounen	7.89
682	Seitokai Yakuindomo OVA	8	Comedy School Shounen Slice of Life	7.89
683	Urusei Yatsura Movie 2: Beautiful Dreamer	1	Action Adventure Comedy Drama Romance Sci-Fi	7.89
684	Yamato Nadeshiko Shichihenge♥	25	Comedy Shoujo	7.89
652	Aoi Bungaku Series	12	Drama Historical Psychological Seinen Thriller	7.9
653	Arashi no Yoru ni	1	Adventure Comedy Drama Fantasy	7.9
654	Bokura wa Minna Kawaisou	12	Comedy Romance School Slice of Life	7.9
655	Chi&#039;s Sweet Home: Atarashii Ouchi	104	Comedy Kids Slice of Life	7.9
656	Densetsu Kyojin Ideon: Hatsudou-hen	1	Drama Mecha Sci-Fi Space	7.9
657	Ginga Tetsudou 999	113	Adventure Drama Sci-Fi Space	7.9
658	Hana yori Dango	51	Drama Romance School Shoujo	7.9
659	Hanasakeru Seishounen	39	Drama Romance Shoujo	7.9
660	Hidamari Sketch x 365	13	Comedy School Slice of Life	7.9
661	Hidamari Sketch x SP	2	Comedy School Slice of Life	7.9
662	Ie Naki Ko	51	Adventure Drama Historical Kids Slice of Life	7.9
663	Michiko to Hatchin	22	Action Adventure	7.9
664	New Initial D Movie: Legend 2 - Tousou	1	Cars Seinen Sports	7.9
665	Persona 3 the Movie 2: Midsummer Knight&#039;s Dream	1	Action Fantasy Seinen Supernatural	7.9
666	Sexy Commando Gaiden: Sugoiyo!! Masaru-san	48	Comedy Martial Arts School Shounen	7.9
667	Tegamibachi Reverse	25	Adventure Fantasy Shounen Supernatural	7.9
9950	Wanghu Sim Cheong	1	Fantasy	7.9
633	Ghost in the Shell: Stand Alone Complex - Solid State Society 3D	1	Mecha Military Mystery Police Sci-Fi Seinen	7.91
643	Berserk: Ougon Jidai-hen I - Haou no Tamago	1	Action Adventure Demons Fantasy Military Seinen Supernatural	7.91
644	Capeta	52	Cars Shounen Sports	7.91
645	Charlotte	13	Drama School Super Power	7.91
646	City Hunter &#039;91	13	Action Comedy Mystery Shounen	7.91
647	Kino no Tabi: Nanika wo Suru Tame ni - Life Goes On.	1	Adventure Drama Fantasy	7.91
648	Lupin the IIIrd: Jigen Daisuke no Bohyou	1	Action Adventure Comedy Drama Seinen	7.91
649	Master Keaton OVA	15	Adventure Mystery	7.91
651	Pokemon XY&amp;Z	47	Action Adventure Comedy Fantasy Kids	7.91
629	Akatsuki no Yona OVA	3	Action Comedy Fantasy Shoujo	7.92
630	Ao no Exorcist	25	Action Demons Fantasy Shounen Supernatural	7.92
631	Claymore	26	Action Adventure Demons Fantasy Shounen Super Power Supernatural	7.92
634	Golden Time	24	Comedy Romance Seinen	7.92
635	Hadashi no Gen	1	Drama Historical	7.92
636	Jinrui wa Suitai Shimashita	12	Comedy Fantasy Seinen	7.92
637	Kyoukai no Kanata Movie: I&#039;ll Be Here - Kako-hen - Yakusoku no Kizuna	1	Music	7.92
638	Little Witch Academia: Mahoujikake no Parade	1	Adventure Comedy Fantasy Magic School	7.92
639	Lucky☆Star: Original na Visual to Animation	1	Comedy Parody School Slice of Life	7.92
640	New Initial D Movie: Legend 1 - Kakusei	1	Action Cars Seinen Sports	7.92
641	Pandora Hearts	25	Adventure Fantasy Mystery Shounen Supernatural	7.92
642	Rurouni Kenshin DVD-BOX Special Ending	1	Historical Romance	7.92
650	Mobile Suit Gundam Thunderbolt: December Sky	1	Action Drama Mecha Military Sci-Fi Space	7.92
607	3-gatsu no Lion	23	Drama Game Seinen Slice of Life	7.93
608	91 Days	12	Action Drama Historical	7.93
609	Akagami no Shirayuki-hime	12	Drama Fantasy Romance Shoujo	7.93
610	Drifters	12	Action Adventure Comedy Fantasy Historical Samurai Seinen	7.93
611	Gake no Ue no Ponyo	1	Adventure Fantasy	7.93
612	Ghost in the Shell 2: Innocence	1	Mecha Military Police Psychological Sci-Fi	7.93
614	Haikyuu!! OVA	2	Shounen Sports	7.93
615	Hoozuki no Reitetsu OVA	3	Comedy Fantasy Supernatural	7.93
616	Keroro Gunsou	358	Comedy Sci-Fi Shounen	7.93
617	Lupin III: Part II	155	Action Adventure Comedy Shounen	7.93
618	Macross F Movie 1: Itsuwari no Utahime	1	Action Mecha Military Music Romance Sci-Fi Space	7.93
619	Mobile Suit Gundam Seed	50	Action Drama Mecha Military Romance Sci-Fi Space	7.93
620	Nodame Cantabile Finale Special	1	Comedy Josei Music Romance	7.93
621	Paradise Kiss	12	Comedy Drama Josei Romance Slice of Life	7.93
622	Saint Seiya: The Hades Chapter Sanctuary - Yomigaerishi Gold Saint-tachi no Shinwa	2	Adventure Sci-Fi Shounen	7.93
623	Saraiya Goyou	12	Historical Samurai Seinen	7.93
624	Shiki Specials	2	Horror Mystery Supernatural Vampire	7.93
625	Slayers Try	26	Adventure Comedy Demons Fantasy Magic Shounen	7.93
626	Transformers the Movie	1	Action Mecha	7.93
627	Uchuu Senkan Yamato 2199: Hoshimeguru Hakobune	1	Action Drama Military Sci-Fi Space	7.93
628	Wolf&#039;s Rain	26	Action Adventure Drama Fantasy Mystery Sci-Fi	7.93
8682	Magical Suite Prism Nana	7	Magic	7.93
591	Break Blade 3: Kyoujin no Ato	1	Action Fantasy Mecha Military Shounen	7.94
592	Danshi Koukousei no Nichijou Specials	6	Comedy School Shounen Slice of Life	7.94
593	Detective Conan Movie 09: Strategy Above the Depths	1	Adventure Comedy Mystery Police Shounen	7.94
594	Detective Conan Movie 12: Full Score of Fear	1	Adventure Comedy Mystery Police Shounen	7.94
595	Final Fantasy VII: Advent Children	1	Action Fantasy Super Power	7.94
596	Free!: Eternal Summer	13	Comedy School Slice of Life Sports	7.94
597	Hakuouki Movie 1: Kyoto Ranbu	1	Action Drama Historical Josei Samurai Supernatural	7.94
598	Hidamari Sketch x ☆☆☆ Specials	2	Comedy School Slice of Life	7.94
599	K: Missing Kings	1	Action Super Power Supernatural	7.94
600	Last Exile	26	Action Adventure Sci-Fi	7.94
601	Little Busters!: EX	8	Comedy Drama Romance School Slice of Life Supernatural	7.94
602	Mobile Suit Gundam Wing: Endless Waltz Movie	1	Action Drama Mecha Military Sci-Fi Space	7.94
603	Naruto: Shippuuden	Unknown	Action Comedy Martial Arts Shounen Super Power	7.94
604	Pokemon: The Origin	4	Action Adventure Comedy Fantasy Kids	7.94
605	Yuru Yuri♪♪	12	Comedy School Shoujo Ai Slice of Life	7.94
606	Zan Sayonara Zetsubou Sensei Bangaichi	2	Comedy Parody School	7.94
613	Haikyuu!! Movie 1: Owari to Hajimari	1	Comedy Drama School Shounen Sports	7.94
571	Bleach	366	Action Comedy Shounen Super Power Supernatural	7.95
572	Chuunibyou demo Koi ga Shitai!	12	Comedy Drama Romance School Slice of Life	7.95
573	City Hunter 3	13	Action Comedy Mystery Shounen	7.95
574	Danganronpa 3: The End of Kibougamine Gakuen - Zetsubou-hen	11	Action Horror Mystery Psychological	7.95
575	Detective Conan Movie 08: Time Travel of the Silver Sky	1	Adventure Mystery	7.95
576	Detective Conan OVA 10: Kid in Trap Island	1	Adventure Comedy Mystery Police Shounen	7.95
577	Dragon Ball Kai	97	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	7.95
578	Hetalia World Series	48	Comedy Historical Parody	7.95
579	Jungle wa Itsumo Hare nochi Guu Deluxe	6	Comedy Slice of Life	7.95
580	Kyousou Giga (TV)	10	Action Fantasy Supernatural	7.95
581	Magic Kaito 1412	24	Adventure Comedy Romance Shounen	7.95
582	Nejimaki Seirei Senki: Tenkyou no Alderamin	13	Action Adventure Fantasy Military	7.95
583	Plastic Memories	13	Drama Romance Sci-Fi	7.95
584	Psycho-Pass Movie	1	Action Military Police Sci-Fi	7.95
585	Seto no Hanayome	26	Comedy Parody Romance School	7.95
586	Sidonia no Kishi: Daikyuu Wakusei Seneki	12	Action Mecha Sci-Fi Seinen Space	7.95
587	Tanoshii Muumin Ikka	78	Adventure Comedy Fantasy Kids Slice of Life	7.95
588	Tasogare Otome x Amnesia	12	Horror Mystery Romance School Shounen Supernatural	7.95
589	Vampire Hunter D (2000)	1	Action Drama Fantasy Horror Romance Sci-Fi Vampire	7.95
590	Yuru Yuri Nachuyachumi!	1	Comedy Shoujo Ai Slice of Life	7.95
559	Toshokan Sensou: Kakumei no Tsubasa	1	Action Comedy Military Romance	7.96
560	Uchouten Kazoku	13	Comedy Drama Fantasy Slice of Life	7.96
561	Baby Steps	25	Romance School Shounen Sports	7.96
562	Break Blade 5: Shisen no Hate	1	Action Mecha Military Shounen	7.96
563	Code Geass: Hangyaku no Lelouch R2 Special Edition Zero Requiem	1	Action Mecha Military Super Power	7.96
564	Goku Sayonara Zetsubou Sensei	3	Comedy Parody School	7.96
565	Jormungand	12	Action Adventure Seinen	7.96
566	Kindaichi Shounen no Jikenbo (TV)	148	Mystery Shounen	7.96
567	Mobile Suit Gundam: Iron-Blooded Orphans	25	Action Drama Mecha Sci-Fi Space	7.96
568	Shin Mazinger Shougeki! Z-hen	26	Action Mecha Shounen Super Power	7.96
569	Tentai Senshi Sunred	26	Comedy Parody Seinen Super Power	7.96
570	Yuusha-Ou GaoGaiGar	49	Adventure Mecha Sci-Fi Shounen	7.96
9130	Oshin	1	Drama	7.96
543	Gate: Jieitai Kanochi nite Kaku Tatakaeri	12	Action Adventure Fantasy Military	7.97
544	Gate: Jieitai Kanochi nite Kaku Tatakaeri 2nd Season	12	Action Adventure Fantasy Military	7.97
545	Ghost Hunt	25	Comedy Horror Mystery Shoujo Supernatural	7.97
546	Gungrave	26	Action Drama Sci-Fi Seinen Super Power	7.97
547	Jungle wa Itsumo Hare nochi Guu	26	Comedy School Slice of Life	7.97
548	Kuroko no Basket 2nd Season NG-shuu	9	Comedy Sports	7.97
549	Kyou kara Maou! 3rd Series	39	Adventure Comedy Fantasy Romance Shoujo	7.97
550	Lupin III (2015)	24	Action Adventure Comedy Shounen	7.97
551	Madang-Eul Naon Amtalg	1	Adventure Drama Fantasy Kids	7.97
552	Maria-sama ga Miteru 4th	13	School Shoujo Shoujo Ai Slice of Life	7.97
553	Musekinin Kanchou Tylor	26	Comedy Military Parody Sci-Fi Space	7.97
554	Ookami to Koushinryou II: Ookami to Kohakuiro no Yuuutsu	1	Fantasy Historical Romance	7.97
555	Saint Seiya: Meiou Hades Meikai-hen	12	Action Adventure Demons Fantasy Sci-Fi Shounen Super Power	7.97
556	Saint☆Oniisan (Movie)	1	Comedy Seinen Slice of Life	7.97
557	Seikai no Senki II	10	Action Military Romance Sci-Fi Space	7.97
558	Top wo Nerae! Gunbuster	6	Action Comedy Drama Mecha Military Sci-Fi Shounen Space	7.97
532	Baka to Test to Shoukanjuu Ni!	13	Comedy Romance School Super Power	7.98
533	Detective Conan Movie 01: The Timed Skyscraper	1	Adventure Comedy Mystery Police Shounen	7.98
534	Detective Conan Movie 07: Crossroad in the Ancient Capital	1	Adventure Comedy Mystery Police Shounen	7.98
535	Gundam Build Fighters	25	Action Mecha Sci-Fi	7.98
536	Hetalia: The Beautiful World	20	Comedy Historical Parody	7.98
537	Initial D Third Stage	1	Action Cars Drama Seinen Sports	7.98
538	Kuroko no Basket 3rd Season NG-shuu	9	Comedy Sports	7.98
539	Neko no Ongaeshi	1	Adventure Drama Fantasy	7.98
540	Seihou Bukyou Outlaw Star	24	Action Adventure Comedy Sci-Fi Space	7.98
541	White Album 2	13	Drama Music Romance Slice of Life	7.98
542	Working&#039;!!	13	Comedy Slice of Life	7.98
523	Bishoujo Senshi Sailor Moon: Sailor Stars	34	Adventure Comedy Drama Fantasy Magic Romance Shoujo	7.99
524	Break Blade 4: Sanka no Chi	1	Action Fantasy Mecha Military Shounen	7.99
525	Hanasaku Iroha: Home Sweet Home	1	Comedy Drama Slice of Life	7.99
526	Hidamari Sketch x Honeycomb	12	Comedy School Slice of Life	7.99
527	Hokuto no Ken	109	Action Drama Martial Arts Sci-Fi Shounen	7.99
528	Les Misérables: Shoujo Cosette	52	Drama Historical Shoujo Slice of Life	7.99
529	Serial Experiments Lain	13	Dementia Drama Mystery Psychological Sci-Fi Supernatural	7.99
530	Shiki	22	Mystery Supernatural Thriller Vampire	7.99
531	Ushiro no Shoumen Daare	1	Drama Historical	7.99
512	City Hunter	51	Action Comedy Mystery Shounen	8
513	Detective Conan Movie 02: The Fourteenth Target	1	Adventure Comedy Mystery Police Shounen	8
514	Gekkan Shoujo Nozaki-kun Specials	6	Comedy Romance School	8
515	Giant Robo the Animation: Chikyuu ga Seishi Suru Hi	7	Action Mecha Sci-Fi Shounen Super Power	8
516	Hetalia: The Beautiful World Specials	4	Comedy Historical Parody	8
517	Kaleido Star: Legend of Phoenix - Layla Hamilton Monogatari	1	Comedy Drama Shoujo	8
518	Kamisama Hajimemashita OVA	2	Comedy Demons Fantasy Shoujo Supernatural	8
519	Little Witch Academia	1	Adventure Comedy Fantasy Magic School	8
520	Maria-sama ga Miteru 3rd	5	Drama School Shoujo Ai Slice of Life	8
521	Mobile Suit Gundam Thunderbolt	4	Action Drama Mecha Military Sci-Fi Space	8
522	The Everlasting Guilty Crown	1	Music	8
7749	Douwa Mondai to Jinken: Anata wa Dou Kangaemasuka	1	Drama	8
7796	Feng Shu Zhan Jing 2	26	Adventure Kids Mecha	8
8176	Hua Jiang Hu Zhi Bu Liang Ren	54	Adventure Drama Historical Martial Arts Romance	8
8207	Ijimekko Ookami to Nana-chan	1	Drama Kids	8
8225	Inamuranohi	1	Drama Historical Kids	8
8243	Ishii Hisaichi no Nanda Kanda Gekijou	2	Comedy Martial Arts Sci-Fi Space	8
8347	Kaitei Toshi no Dekiru made	1	Sci-Fi	8
8392	Kankara Sanshin	1	Drama Historical	8
8403	Karasu no Puuta	Unknown	Kids	8
8545	Kokoroya	1	Kids Psychological Sci-Fi	8
8699	Makehen de! Roku-nen San-kumi no Hanshin Daishinsai	1	Drama Historical Kids	8
8749	Mask Masters	26	Action Adventure	8
8774	Meisaku World	39	Adventure Fantasy Historical Kids Magic Supernatural	8
8781	Michi	4	Drama	8
8930	Nar Doma Special	1	Comedy	8
8934	Nat-chan no Akai Tebukuro	1	Historical Kids	8
8983	Ningen Kakumei	20	Slice of Life	8
9052	Ocha-ken: Ryokutto Monogatari	13	Kids Slice of Life	8
9073	Ojiichan no Hanabi	1	Drama Kids	8
9080	Okaasan no Yasashii te	1	Drama Kids	8
9081	Okaasan Nakanaide	1	Drama Kids	8
9112	Ooedo Torimonochou: Nezumi Kozou	1	Historical Kids Mystery	8
9173	Paper Cranes Story: Kenta to Maiko	1	Fantasy Historical Kids	8
9398	Science Anime: Choudendou Monogatari	1	Historical Kids	8
9456	Shimajirou to Ehon no Kuni	1	Action Comedy Fantasy Kids	8
9557	Son Gokuu no Hi no Youjin	1	Drama Fantasy Kids	8
9657	Subarashii Sekai Ryokou: Alaska no Tabi &quot;Daigo Hyougaki&quot;	2	Adventure Sci-Fi	8
9658	Subarashii Sekai Ryokou: New York Tabi &quot;Computopia Seireki Nisennen no Monogatari&quot;	2	Sci-Fi	8
9959	Wareware no Heya	1		8
10064	Yong Zhe Da Mao Xian	26	Adventure Fantasy	8
10071	Youkaiden Nekome Kozou	25	Adventure Horror Psychological Seinen Supernatural	8
10084	Yume Kakeru Kougen: Kiyosato no Chichi Paul Rusch	1	Historical	8
501	Carnival Phantasm	12	Comedy Parody Supernatural	8.01
502	D.Gray-man Hallow	13	Action Demons Shounen Super Power	8.01
503	Date A Live: Encore OVA	1	Romance Slice of Life	8.01
504	Dragon Ball Kai (2014)	61	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	8.01
505	Gochuumon wa Usagi Desu ka??	12	Comedy Slice of Life	8.01
506	Hidamari Sketch x ☆☆☆	12	Comedy School Slice of Life	8.01
507	Kokoro Connect	13	Comedy Drama Romance School Slice of Life Supernatural	8.01
508	Saiyuuki Gaiden	3	Action Adventure Drama Fantasy Shoujo	8.01
509	Shirokuma Cafe	50	Comedy Josei Slice of Life	8.01
510	Tiger &amp; Bunny Movie 2: The Rising	1	Action Comedy Mystery Super Power	8.01
511	Zan Sayonara Zetsubou Sensei	13	Comedy Parody School	8.01
492	Akachan to Boku	35	Comedy Drama Shoujo	8.02
493	Clannad: After Story - Mou Hitotsu no Sekai Kyou-hen	1	Drama Romance School	8.02
495	Kara no Kyoukai 2: Satsujin Kousatsu (Zen)	1	Action Mystery Romance Supernatural Thriller	8.02
496	Macross F	25	Action Mecha Military Music Romance Sci-Fi Space	8.02
497	Magic Kaito	12	Adventure Comedy Romance Shounen	8.02
498	Sakigake!! Cromartie Koukou	26	Comedy School Shounen	8.02
499	Shijou Saikyou no Deshi Kenichi OVA	11	Action Comedy Martial Arts School Shounen	8.02
500	Touhai Densetsu Akagi: Yami ni Maiorita Tensai	26	Game Psychological Seinen Thriller	8.02
476	Boruto: Naruto the Movie	1	Action Comedy Martial Arts Shounen Super Power	8.03
477	Coquelicot-zaka kara	1	Historical Romance School Shoujo	8.03
478	Eikoku Koi Monogatari Emma: Molders-hen	12	Drama Historical Romance Seinen Slice of Life	8.03
479	Ergo Proxy	23	Mystery Psychological Sci-Fi	8.03
480	Hanasaku Iroha	26	Comedy Drama Seinen Slice of Life	8.03
481	Hataraku Maou-sama!	13	Comedy Demons Fantasy Romance Shounen	8.03
482	Hibike! Euphonium	13	Drama Music School	8.03
483	Higashi no Eden	11	Action Comedy Drama Mystery Romance Sci-Fi Thriller	8.03
484	Ie Naki Ko Remi	23	Adventure Drama Historical Slice of Life	8.03
485	Kono Subarashii Sekai ni Shukufuku wo!	10	Adventure Comedy Fantasy Supernatural	8.03
486	Kurenai no Buta	1	Action Adventure Comedy Drama Historical Military Romance	8.03
487	Mobile Suit Zeta Gundam	50	Drama Mecha Military Sci-Fi Space	8.03
488	Saint Seiya	114	Adventure Fantasy Sci-Fi Shounen	8.03
489	Sayonara Zetsubou Sensei	12	Comedy Parody School	8.03
490	Seto no Hanayome OVA	2	Comedy Parody Romance School	8.03
491	Zoku Sayonara Zetsubou Sensei	13	Comedy Parody School	8.03
494	Hakuouki Movie 2: Shikon Soukyuu	1	Action Drama Historical Josei Samurai Supernatural	8.03
466	Beelzebub	60	Action Comedy Demons School Shounen Supernatural	8.04
467	Death Billiards	1	Drama Game Mystery Psychological Thriller	8.04
468	Durarara!! Specials	2	Action Comedy Supernatural	8.04
469	Jormungand: Perfect Order	12	Action Adventure Seinen	8.04
470	Mahou Shoujo Lyrical Nanoha: The Movie 1st	1	Action Comedy Drama Magic Super Power	8.04
471	Overlord	13	Action Adventure Fantasy Game Magic Supernatural	8.04
472	Prince of Tennis	178	Action Comedy School Shounen Sports	8.04
473	Takarajima	26	Adventure Drama Historical Mystery	8.04
474	xxxHOLiC Movie: Manatsu no Yoru no Yume	1	Comedy Drama Mystery Psychological Supernatural	8.04
475	Yuru Yuri San☆Hai!	12	Comedy School Shoujo Ai Slice of Life	8.04
458	Flanders no Inu (Movie)	1	Drama Historical	8.05
459	Grisaia no Meikyuu: Caprice no Mayu 0	1	Drama	8.05
460	Kaleido Star	51	Comedy Drama Fantasy Shoujo	8.05
461	Kara no Kyoukai 4: Garan no Dou	1	Action Mystery Supernatural Thriller	8.05
462	Lupin III vs. Detective Conan: The Movie	1	Action Comedy Mystery Shounen	8.05
463	Non Non Biyori	12	Comedy School Seinen Slice of Life	8.05
464	Seitokai Yakuindomo* OVA	6	Comedy School Shounen Slice of Life	8.05
465	Yakitate!! Japan	69	Comedy Shounen	8.05
444	Azumanga Daioh	26	Comedy School Slice of Life	8.06
445	Colorful (Movie)	1	Drama Slice of Life Supernatural	8.06
446	Detective Conan OVA 09: The Stranger in 10 Years...	1	Adventure Comedy Mystery Police Shounen	8.06
447	Drifters: Special Edition	1	Action Adventure Comedy Fantasy Historical Samurai Seinen	8.06
448	FLCL	6	Action Comedy Dementia Mecha Parody Sci-Fi	8.06
449	Full Metal Panic! The Second Raid	13	Action Mecha Military	8.06
450	Kuroshitsuji	24	Action Comedy Demons Fantasy Historical Shounen Supernatural	8.06
451	Love Live! School Idol Project 2nd Season	13	Music School Slice of Life	8.06
452	Macross F Movie 2: Sayonara no Tsubasa	1	Action Mecha Military Music Romance Sci-Fi Space	8.06
453	Magi: Sinbad no Bouken	5	Action Adventure Fantasy Magic Shounen	8.06
454	Nekomonogatari: Kuro	4	Comedy Romance Supernatural	8.06
455	Saiunkoku Monogatari	39	Adventure Comedy Drama Fantasy Historical Romance	8.06
456	School Rumble	26	Comedy Romance School Shounen	8.06
457	Suzumiya Haruhi no Yuuutsu	14	Comedy Mystery Parody School Sci-Fi Slice of Life	8.06
434	Haibane Renmei	13	Drama Fantasy Mystery Psychological Slice of Life	8.07
435	Kuroko no Basket: Tip Off	1	Comedy School Shounen Sports	8.07
436	Macross	36	Action Mecha Military Music Romance Sci-Fi Space	8.07
437	Mirai Nikki (TV)	26	Action Mystery Psychological Shounen Supernatural Thriller	8.07
438	Saiyuuki Reload: Burial	3	Action Adventure Drama Fantasy Shoujo	8.07
439	Tentai Senshi Sunred 2nd Season	26	Comedy Parody Seinen Super Power	8.07
440	Terra e... (TV)	24	Action Drama Military Sci-Fi Space	8.07
441	Tokyo Ghoul	12	Action Drama Horror Mystery Psychological Seinen Supernatural	8.07
442	Usagi Drop Specials	4	Josei Slice of Life	8.07
443	Yume-iro Pâtissière	50	Kids School Shoujo	8.07
10005	Xi You Ji	52	Adventure Fantasy	8.07
426	Eyeshield 21	145	Action Comedy Shounen Sports	8.08
427	Full Moon wo Sagashite	52	Comedy Drama Music Romance Shoujo Supernatural	8.08
428	Jigoku Shoujo Futakomori	26	Horror Mystery Psychological Supernatural	8.08
429	Junjou Romantica	12	Comedy Drama Romance Shounen Ai	8.08
430	Mawaru Penguindrum	24	Comedy Drama Mystery Psychological	8.08
431	SKET Dance OVA	1	Comedy School Shounen	8.08
432	Soul Eater	51	Action Adventure Comedy Fantasy Shounen Supernatural	8.08
433	Trigun: Badlands Rumble	1	Action Comedy Sci-Fi	8.08
413	Berserk: Ougon Jidai-hen II - Doldrey Kouryaku	1	Action Adventure Demons Drama Fantasy Horror Military Seinen Supernatural	8.09
414	Darker than Black: Kuro no Keiyakusha Gaiden	4	Action Mystery Sci-Fi Super Power	8.09
416	Ginga Eiyuu Densetsu: Waga Yuku wa Hoshi no Taikai	1	Action Historical Military Sci-Fi Space	8.09
417	Hikaru no Go: Journey to the North Star Cup	1	Game Shounen	8.09
418	Hybrid Child	4	Drama Historical Romance Sci-Fi Shounen Ai	8.09
419	Junjou Romantica OVA	2	Comedy Drama Romance Shounen Ai	8.09
420	Kobato.	24	Comedy Drama Fantasy	8.09
421	Kuuchuu Buranko	11	Comedy Drama Psychological Seinen	8.09
422	Macross: Do You Remember Love?	1	Action Mecha Military Music Romance Sci-Fi Space	8.09
423	One Piece 3D2Y: Ace no shi wo Koete! Luffy Nakama Tono Chikai	1	Adventure Comedy Fantasy Shounen	8.09
424	Prince of Tennis: The National Tournament	13	Action Comedy Shounen Sports	8.09
425	Prince of Tennis: The National Tournament Semifinals	6	Action Comedy Sports	8.09
401	Tamayura: Sotsugyou Shashin Part 4 - Ashita	1	Comedy Drama Slice of Life	8.1
405	Byousoku 5 Centimeter	3	Drama Romance Slice of Life	8.1
406	Danganronpa 3: The End of Kibougamine Gakuen - Kibou-hen	1	Action Horror Mystery Psychological	8.1
407	Ginga Eiyuu Densetsu Gaiden: Rasen Meikyuu	28	Drama Military Sci-Fi Space	8.1
408	Hyouge Mono	39	Historical Samurai Seinen	8.1
409	Karigurashi no Arrietty	1	Fantasy	8.1
410	Mahou Shoujo Lyrical Nanoha A&#039;s	13	Action Comedy Drama Magic Super Power	8.1
411	Rurouni Kenshin: Meiji Kenkaku Romantan - Seisou-hen	2	Drama Historical Romance Samurai Shounen	8.1
412	Tanaka-kun wa Itsumo Kedaruge	12	Comedy School Slice of Life	8.1
632	Detective Conan: Episode One - Chiisaku Natta Meitantei	1	Adventure Comedy Mystery Police Shounen	8.1
396	Fullmetal Alchemist: Brotherhood Specials	4	Adventure Drama Fantasy Magic Military Shounen	8.11
397	Hanamonogatari	5	Comedy Mystery Supernatural	8.11
398	Kimi to Boku. 2	13	Comedy Drama Romance School Shounen Slice of Life	8.11
399	Ookiku Furikabutte	25	Comedy Sports	8.11
400	Ore Monogatari!!	24	Comedy Romance Shoujo	8.11
402	Tekkon Kinkreet	1	Action Adventure Psychological Supernatural	8.11
403	There She Is!!	5	Comedy Romance	8.11
404	xxxHOLiC	24	Comedy Drama Mystery Psychological Supernatural	8.11
415	Elsword: El Lady	12	Action Fantasy	8.11
383	Ajin 2nd Season	13	Action Horror Mystery Seinen Supernatural	8.12
384	Aoki Hagane no Arpeggio: Ars Nova Cadenza	1	Action Sci-Fi Seinen	8.12
385	City Hunter 2	63	Action Comedy Mystery Shounen	8.12
386	Durarara!!x2 Ten	12	Action Mystery Supernatural	8.12
387	ef: A Tale of Memories.	12	Drama Mystery Romance	8.12
388	Ghost in the Shell 2.0	1	Action Mecha Police Psychological Sci-Fi Seinen	8.12
389	Ghost in the Shell: Stand Alone Complex 2nd GIG - Individual Eleven	1	Action Mecha Sci-Fi	8.12
390	Ginga Sengoku Gunyuuden Rai	52	Adventure Romance Sci-Fi Shounen Space	8.12
391	Initial D Second Stage	13	Action Cars Drama Seinen Sports	8.12
392	Noragami Aragoto OVA	2	Action Adventure Shounen	8.12
393	Stand By Me Doraemon	1	Comedy Kids Sci-Fi Shounen	8.12
394	Tiger &amp; Bunny	25	Action Comedy Mystery Super Power	8.12
395	Yahari Ore no Seishun Love Comedy wa Machigatteiru.	13	Comedy Drama Romance School	8.12
372	Aria The OVA: Arietta	1	Fantasy Sci-Fi Shounen Slice of Life	8.13
373	Detective Conan Movie 15: Quarter of Silence	1	Adventure Comedy Mystery Police Shounen	8.13
374	Digimon Adventure tri. 3: Kokuhaku	1	Action Adventure Comedy Drama	8.13
375	Gintama: Nanigoto mo Saiyo ga Kanjin nano de Tasho Senobisuru Kurai ga Choudoyoi	1	Action Comedy Historical Mecha Parody Samurai Sci-Fi Shounen	8.13
376	Igano Kabamaru	24	Adventure Comedy Romance Shounen	8.13
377	Kamisama Hajimemashita	13	Comedy Demons Fantasy Romance Shoujo Supernatural	8.13
378	Kara no Kyoukai: Mirai Fukuin	1	Drama Mystery Seinen Supernatural	8.13
379	Mobile Suit Gundam: The 08th MS Team	12	Adventure Drama Mecha Military Romance Sci-Fi	8.13
380	Omae Umasou da na	1	Action Adventure Fantasy Kids	8.13
381	Ushio to Tora (TV) 2nd Season	13	Comedy Demons Shounen Supernatural	8.13
382	Wolf&#039;s Rain OVA	4	Adventure Drama Psychological Sci-Fi Supernatural	8.13
364	Akagami no Shirayuki-hime 2nd Season	12	Drama Fantasy Romance Shoujo	8.14
365	Clannad: Mou Hitotsu no Sekai Tomoyo-hen	1	Drama Romance School Slice of Life	8.14
366	Ginga Nagareboshi Gin	21	Action Adventure Drama Shounen	8.14
367	Initial D Fifth Stage	14	Action Cars Drama Seinen Sports	8.14
368	K-On!!	26	Comedy Music School Slice of Life	8.14
369	Log Horizon	25	Action Adventure Fantasy Game Magic Shounen	8.14
370	Sekaiichi Hatsukoi: Valentine-hen	1	Comedy Romance Shounen Ai	8.14
371	Slayers Next	26	Adventure Comedy Demons Fantasy Magic	8.14
8555	Kono Sekai no Katasumi ni	1	Drama Historical	8.14
9215	Petit Petit Muse	26	Cars Horror Kids	8.14
353	Akira	1	Action Adventure Horror Military Sci-Fi Supernatural	8.15
354	Black Lagoon: Roberta&#039;s Blood Trail	5	Action Seinen	8.15
355	Durarara!!x2 Shou	12	Action Mystery Supernatural	8.15
356	Gintama: Jump Festa 2015 Special	1	Action Comedy Historical Parody Samurai Shounen	8.15
357	High☆Speed!: Free! Starting Days	1	School Slice of Life Sports	8.15
358	Kyou kara Ore wa!!	10	Comedy Shounen	8.15
359	Nurarihyon no Mago: Sennen Makyou	24	Action Demons Shounen Supernatural	8.15
360	Paprika	1	Fantasy Horror Mystery Psychological Sci-Fi Thriller	8.15
361	Prince of Tennis: The National Tournament Finals	7	Comedy School Shounen Sports	8.15
362	School Rumble Ni Gakki	26	Comedy Romance School Shounen	8.15
363	Sekaiichi Hatsukoi	12	Comedy Drama Romance Shounen Ai	8.15
338	Aria The Origination: Sono Choppiri Himitsu no Basho ni...	1	Comedy Shounen Slice of Life	8.16
339	Detective Conan Movie 03: The Last Wizard of the Century	1	Adventure Comedy Mystery Police Shounen	8.16
340	Detective Conan Movie 04: Captured in Her Eyes	1	Adventure Comedy Mystery Police Shounen	8.16
341	Dragon Ball	153	Adventure Comedy Fantasy Martial Arts Shounen Super Power	8.16
342	Hanada Shounen-shi	25	Comedy Drama Slice of Life Supernatural	8.16
343	Junjou Romantica 3	12	Comedy Drama Romance Shounen Ai	8.16
344	Juuni Kokuki	45	Action Adventure Fantasy Magic Supernatural	8.16
345	Major Movie: Yuujou no Winning Shot	1	Action Shounen Sports	8.16
346	Mirai Shounen Conan	26	Adventure Drama Sci-Fi	8.16
347	One Piece Film: Strong World Episode 0	1	Action Adventure Comedy Fantasy Shounen Super Power	8.16
348	Phantom: Requiem for the Phantom	26	Action Drama Seinen Thriller	8.16
349	Tamako Love Story	1	Comedy Romance Slice of Life	8.16
350	Toaru Kagaku no Railgun S	24	Action Sci-Fi Super Power	8.16
351	Touch	101	Drama Romance School Shounen Slice of Life Sports	8.16
352	Yowamushi Pedal	38	Comedy Drama Shounen Sports	8.16
326	Black Lagoon	12	Action Seinen	8.17
327	Detective Conan Movie 18: The Sniper from Another Dimension	1	Action Mystery Police Shounen	8.17
328	Final Fantasy VII: Advent Children Complete	1	Action Fantasy Super Power	8.17
329	Higurashi no Naku Koro ni	26	Horror Mystery Psychological Supernatural Thriller	8.17
330	Hyouka	22	Mystery School Slice of Life	8.17
331	Interstella5555: The 5tory of The 5ecret 5tar 5ystem	1	Adventure Drama Music Sci-Fi	8.17
332	Kanon (2006)	24	Drama Romance Slice of Life Supernatural	8.17
333	Kimi ni Todoke 2nd Season	12	Romance School Shoujo Slice of Life	8.17
334	Noragami	12	Action Adventure Shounen Supernatural	8.17
335	Persona 3 the Movie 4: Winter of Rebirth	1	Action Fantasy Seinen Supernatural	8.17
336	xxxHOLiC Shunmuki	2	Comedy Drama Mystery Psychological Supernatural	8.17
337	Zetsuen no Tempest	24	Action Drama Fantasy Magic Mystery Psychological Shounen	8.17
7993	Hajimete no Eigo: Nippon Mukashibanashi	18	Fantasy Kids	8.17
8024	Happy Bogeys	12		8.17
317	Cardcaptor Sakura	70	Adventure Comedy Drama Fantasy Magic Romance School Shoujo	8.18
318	ef: A Tale of Melodies.	12	Drama Mystery Romance Supernatural	8.18
319	Gin no Saji	11	Comedy School Shounen Slice of Life	8.18
320	Hachimitsu to Clover	24	Comedy Drama Josei Romance	8.18
321	Kodomo no Omocha (TV)	102	Comedy Drama Romance Shoujo	8.18
322	Love Live! The School Idol Movie	1	Music School Slice of Life	8.18
323	Mahoutsukai no Yome: Hoshi Matsu Hito	3	Fantasy Magic	8.18
324	Sekaiichi Hatsukoi OVA	2	Comedy Drama Romance Shounen Ai	8.18
325	Working!!!	13	Comedy Romance Slice of Life	8.18
307	Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai. Movie	1	Drama Slice of Life Supernatural	8.19
308	Dennou Coil	26	Adventure Comedy Drama Mystery Sci-Fi	8.19
309	Eureka Seven	50	Adventure Drama Mecha Romance Sci-Fi	8.19
310	Ghost in the Shell: Stand Alone Complex - The Laughing Man	1	Action Mecha Mystery Police Psychological Sci-Fi Seinen	8.19
311	Gintama: Dai Hanseikai	1	Action Comedy Parody Samurai	8.19
312	Hidamari Sketch: Sae Hiro Sotsugyou-hen	2	Comedy School Slice of Life	8.19
313	Hikaru no Go	75	Comedy Game Shounen Supernatural	8.19
314	Kimi ni Todoke	25	Romance School Shoujo Slice of Life	8.19
315	Kokoro Connect: Michi Random	4	Comedy Drama Romance School Slice of Life Supernatural	8.19
316	Tokyo Magnitude 8.0	11	Drama	8.19
296	Ansatsu Kyoushitsu (TV)	22	Action Comedy School Shounen	8.2
297	Aria The Avvenire	3	Fantasy Sci-Fi Shounen Slice of Life	8.2
298	Baby Steps 2nd Season	25	Romance School Shounen Sports	8.2
299	D.Gray-man	103	Action Adventure Comedy Shounen	8.2
300	Ginga Eiyuu Densetsu Gaiden: Senoku no Hoshi Senoku no Hikari	24	Action Military Sci-Fi Space	8.2
301	Gintama: Jump Festa 2014 Special	1	Action Comedy Historical Parody Samurai Sci-Fi Shounen	8.2
302	Lupin III: Cagliostro no Shiro	1	Adventure Comedy Shounen	8.2
303	Mobile Suit Gundam: Iron-Blooded Orphans 2nd Season	25	Action Drama Mecha Sci-Fi Space	8.2
304	Ookiku Furikabutte: Natsu no Taikai-hen	13	Comedy Sports	8.2
305	Saiunkoku Monogatari 2nd Season	39	Adventure Comedy Drama Fantasy Historical Romance	8.2
306	Sekaiichi Hatsukoi Movie: Yokozawa Takafumi no Baai	1	Comedy Drama Romance Shounen Ai	8.2
8973	Niji no Kakehashi	1	Drama Kids	8.2
9556	Something Great Chizu ni Nai Machi	1	Slice of Life	8.2
288	Detective Conan Movie 10: Requiem of the Detectives	1	Adventure Comedy Mystery Police Shounen	8.21
289	Evangelion: 1.0 You Are (Not) Alone	1	Action Mecha Sci-Fi	8.21
290	Full Metal Panic? Fumoffu	12	Action Comedy School	8.21
291	Ginga Eiyuu Densetsu: Arata Naru Tatakai no Overture	1	Action Drama Military Sci-Fi Space	8.21
292	Kara no Kyoukai 3: Tsuukaku Zanryuu	1	Action Drama Mystery Supernatural Thriller	8.21
293	Mobile Suit Gundam 00 Second Season	25	Action Drama Mecha Military Sci-Fi Space	8.21
294	Nisemonogatari	11	Comedy Mystery Supernatural	8.21
295	Tsukimonogatari	4	Comedy Mystery Supernatural	8.21
282	Ashita no Joe	79	Drama Sports	8.22
283	Fairy Tail	175	Action Adventure Comedy Fantasy Magic Shounen	8.22
284	Ghost in the Shell: Stand Alone Complex - Solid State Society	1	Mecha Military Mystery Police Sci-Fi Seinen	8.22
285	Magi: Sinbad no Bouken (TV)	13	Action Adventure Fantasy Magic Shounen	8.22
286	Shoujo Kakumei Utena	39	Drama Fantasy Psychological Shoujo	8.22
287	Tengen Toppa Gurren Lagann Movie: Gurren-hen	1	Action Comedy Mecha	8.22
9974	Wei Qi Shao Nian 2	26	Game Historical	8.22
268	Akatsuki no Yona	24	Action Adventure Comedy Fantasy Romance Shoujo	8.23
269	Detective Conan Movie 08: Magician of the Silver Sky	1	Adventure Comedy Mystery Police Shounen	8.23
270	Durarara!!x2 Ketsu	12	Action Mystery Supernatural	8.23
271	Free!: Eternal Summer Special	1	Comedy School Slice of Life	8.23
272	Glass no Kamen (2005)	51	Drama Shoujo	8.23
273	Gosick	24	Drama Historical Mystery Romance	8.23
274	Hajime no Ippo: Boxer no Kobushi	1	Comedy Drama Shounen Sports	8.23
275	Initial D First Stage	26	Action Cars Drama Seinen Sports	8.23
276	Kill la Kill	24	Action Comedy School Super Power	8.23
277	Lovely★Complex	24	Comedy Romance Shoujo	8.23
278	Perfect Blue	1	Dementia Drama Horror Psychological	8.23
279	Princess Tutu	38	Comedy Fantasy Magic Romance	8.23
280	Sakasama no Patema	1	Sci-Fi Seinen	8.23
281	Tsubasa: Shunraiki	2	Action Adventure Drama Fantasy Magic Mystery Romance Shounen Supernatural	8.23
257	Gekkan Shoujo Nozaki-kun	12	Comedy Romance School	8.24
258	Initial D Fourth Stage	24	Action Cars Drama Seinen Sports	8.24
259	Junjou Romantica 2	12	Comedy Drama Romance Shounen Ai	8.24
260	Kaze Tachinu	1	Drama Historical Romance	8.24
261	Kingdom	38	Action Historical Military Seinen	8.24
262	Kuragehime	11	Comedy Josei Slice of Life	8.24
263	Magi: The Labyrinth of Magic	25	Action Adventure Fantasy Magic Shounen	8.24
264	Mobile Suit Gundam 00	25	Action Drama Mecha Military Sci-Fi Space	8.24
265	ReLIFE	13	Romance School Slice of Life	8.24
266	Saint Seiya: The Lost Canvas - Meiou Shinwa	13	Action Adventure Martial Arts Shounen Super Power Supernatural	8.24
267	Seirei no Moribito	26	Action Adventure Fantasy Historical	8.24
246	Darker than Black: Kuro no Keiyakusha	25	Action Mystery Sci-Fi Super Power	8.25
247	Detective Conan	Unknown	Adventure Comedy Mystery Police Shounen	8.25
248	Detective Conan Movie 05: Countdown to Heaven	1	Adventure Comedy Mystery Police Shounen	8.25
249	Diamond no Ace	75	Comedy School Shounen Sports	8.25
250	Fairy Tail (2014)	102	Action Adventure Comedy Fantasy Magic Shounen	8.25
251	Hibike! Euphonium 2	13	Drama Music School	8.25
252	JoJo no Kimyou na Bouken: Stardust Crusaders	24	Action Adventure Drama Shounen Supernatural	8.25
253	Maison Ikkoku	96	Comedy Drama Romance Slice of Life	8.25
255	Shijou Saikyou no Deshi Kenichi	50	Action Comedy Martial Arts School Shounen	8.25
256	Yuusha-Ou GaoGaiGar Final	8	Adventure Drama Mecha Sci-Fi Shounen	8.25
9390	Saru Tarou Jishin ni wa Makenai zo!: Jishin e no Sonae Dai Sakusen	1	Drama Kids	8.25
9713	Talpy	12	Fantasy Kids	8.25
240	Detroit Metal City	12	Comedy Music	8.26
241	Eve no Jikan	6	Sci-Fi Slice of Life	8.26
242	Eve no Jikan (Movie)	1	Sci-Fi Slice of Life	8.26
243	Kaichou wa Maid-sama!	26	Comedy Romance School Shoujo	8.26
244	Saint Seiya: Meiou Hades Juuni Kyuu-hen	13	Adventure Sci-Fi Shounen	8.26
245	Zankyou no Terror	11	Psychological Thriller	8.26
254	Non Non Biyori Repeat	12	Comedy School Seinen Slice of Life	8.26
233	Gankutsuou	24	Drama Mystery Sci-Fi Supernatural Thriller	8.27
234	Majo no Takkyuubin	1	Adventure Comedy Drama Fantasy Magic Romance	8.27
235	Nodame Cantabile: Paris-hen	11	Comedy Josei Music Romance Slice of Life	8.27
236	One Piece: Episode of Nami - Koukaishi no Namida to Nakama no Kizuna	1	Action Adventure Comedy Drama Fantasy Shounen Super Power	8.27
237	Osomatsu-san	25	Comedy Parody	8.27
238	Space☆Dandy 2nd Season	13	Comedy Sci-Fi Space	8.27
239	Tsumiki no Ie	1	Drama	8.27
7469	Baki	Unknown	Action Martial Arts Shounen	8.27
228	Cardcaptor Sakura Movie 2: Fuuin Sareta Card	1	Comedy Drama Fantasy Magic Romance Shoujo	8.28
229	Hajime no Ippo: Mashiba vs. Kimura	1	Comedy Shounen Sports	8.28
230	Kamisama Hajimemashita◎	12	Comedy Demons Fantasy Romance Shoujo Supernatural	8.28
231	Skip Beat!	25	Comedy Drama Romance Shoujo	8.28
232	Yowamushi Pedal: Grande Road	24	Comedy Drama Shounen Sports	8.28
221	Baccano! Specials	3	Action Comedy Historical Mystery Seinen Supernatural	8.29
222	Detective Conan Movie 14: The Lost Ship in the Sky	1	Action Mystery Police Shounen	8.29
223	Gyakkyou Burai Kaiji: Hakairoku-hen	26	Game Psychological Seinen Thriller	8.29
224	Initial D Final Stage	4	Cars Seinen Sports	8.29
225	Kaiba	12	Adventure Mystery Romance Sci-Fi	8.29
226	One Piece: Episode of Merry - Mou Hitori no Nakama no Monogatari	1	Action Adventure Comedy Drama Fantasy Shounen Super Power	8.29
227	Saiki Kusuo no Ψ-nan (TV)	120	Comedy School Shounen Supernatural	8.29
217	Aria The Natural	26	Fantasy Sci-Fi Shounen Slice of Life	8.3
218	Black Lagoon: The Second Barrage	12	Action Seinen	8.3
219	Clannad	23	Comedy Drama Romance School Slice of Life Supernatural	8.3
220	Summer Wars	1	Comedy Sci-Fi	8.3
212	Gintama: Shinyaku Benizakura-hen	1	Action Comedy Historical Parody Samurai Sci-Fi Shounen	8.31
213	Mahou Shoujo Madoka★Magica Movie 1: Hajimari no Monogatari	1	Drama Magic Psychological Thriller	8.31
214	Sekaiichi Hatsukoi 2	12	Comedy Drama Romance Shounen Ai	8.31
215	Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku	13	Comedy Drama Romance School	8.31
216	Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku OVA	1	Comedy Romance School	8.31
200	Chihayafuru	25	Drama Game Josei Slice of Life Sports	8.32
201	Detective Conan Movie 20: The Darkest Nightmare	1	Action Mystery Police Shounen	8.32
202	Dragon Ball Z	291	Action Adventure Comedy Fantasy Martial Arts Shounen Super Power	8.32
203	Fate/stay night: Unlimited Blade Works - Prologue	1	Action Fantasy Magic Shounen Supernatural	8.32
204	Kokoro ga Sakebitagatterunda.	1	Drama Romance School	8.32
205	Mimi wo Sumaseba	1	Adventure Drama Fantasy Romance Slice of Life	8.32
206	Nagi no Asukara	26	Drama Fantasy Romance	8.32
207	Neon Genesis Evangelion	26	Action Dementia Drama Mecha Psychological Sci-Fi	8.32
208	One Piece Film: Gold	1	Action Adventure Comedy Drama Fantasy Shounen	8.32
209	Tokyo Godfathers	1	Comedy Drama	8.32
210	Trigun	26	Action Comedy Sci-Fi	8.32
211	xxxHOLiC Rou	2	Mystery Supernatural	8.32
194	Berserk: Ougon Jidai-hen III - Kourin	1	Action Adventure Demons Drama Fantasy Horror Military Seinen Supernatural	8.33
195	Death Parade	12	Drama Game Mystery Psychological Thriller	8.33
196	Fullmetal Alchemist	51	Action Adventure Comedy Drama Fantasy Magic Military Shounen	8.33
197	Gyakkyou Burai Kaiji: Ultimate Survivor	26	Game Psychological Seinen Thriller	8.33
198	Hunter x Hunter: Greed Island	8	Action Adventure Shounen Super Power	8.33
199	Redline	1	Action Cars Sci-Fi Sports	8.33
8104	Henteko na Volunteer	1	Drama Slice of Life	8.33
8264	Jarujio Animal	10	Adventure Comedy Parody	8.33
8534	Koe wo Kikasete	1	Drama Kids	8.33
8761	Mebae no Ashita	1	Drama Kids	8.33
8789	Mii-chan no Tenohira	1	Drama Historical	8.33
8901	Namae... Sore wa Moeru Inochi	1	Drama Kids	8.33
9045	Obake Nagaya	1	Comedy Kids Supernatural	8.33
9087	Okori Jizou	1	Historical Kids	8.33
9157	Oz no Mahoutsukai no Koutsuu Anzen no Tabi	1	Drama Fantasy Kids	8.33
9697	Tabidachi no Hi ni	1	Drama Kids	8.33
9790	Ticonderonga no Iru Umi	1	Drama Historical Kids	8.33
9928	Utsukushii Message	1	Drama Kids	8.33
186	Working!!!: Lord of the Takanashi	1	Comedy Romance Slice of Life	8.34
187	Ghost in the Shell	1	Action Mecha Police Psychological Sci-Fi Seinen	8.34
188	K-On! Movie	1	Comedy Music Slice of Life	8.34
189	Kuroko no Basket: Saikou no Present Desu	1	Action School Shounen Sports	8.34
190	Mahou Shoujo Lyrical Nanoha: The Movie 2nd A&#039;s	1	Action Comedy Drama Magic Super Power	8.34
191	Sennen Joyuu	1	Action Adventure Drama Fantasy Historical Romance	8.34
192	Steins;Gate: Kyoukaimenjou no Missing Link - Divide By Zero	1	Sci-Fi Thriller	8.34
193	xxxHOLiC Kei	13	Comedy Drama Mystery Psychological Supernatural	8.34
180	Bakuman.	25	Comedy Romance Shounen	8.35
181	Danshi Koukousei no Nichijou	12	Comedy School Shounen Slice of Life	8.35
182	Kotonoha no Niwa	1	Drama Psychological Romance Slice of Life	8.35
183	Kyoukai no Kanata Movie: I&#039;ll Be Here - Mirai-hen	1	Fantasy Slice of Life Supernatural	8.35
184	Major S4	26	Comedy Drama Shounen Sports	8.35
185	Omoide no Marnie	1	Drama Mystery Psychological	8.35
174	Boku no Hero Academia	13	Action Comedy School Shounen Super Power	8.36
175	Gin no Saji 2nd Season	11	Comedy School Shounen Slice of Life	8.36
176	Little Busters!: Refrain	13	Comedy Drama Romance School Slice of Life Supernatural	8.36
177	Major: Message	1	Comedy Drama Sports	8.36
178	Saint Seiya: The Lost Canvas - Meiou Shinwa 2	13	Action Adventure Martial Arts Shounen Super Power Supernatural	8.36
179	SKET Dance	77	Comedy School Shounen	8.36
167	Gintama: Shiroyasha Koutan	1	Action Comedy Historical Parody Sci-Fi	8.37
168	Hachimitsu to Clover II	12	Drama Josei Romance	8.37
169	InuYasha: Kanketsu-hen	26	Action Adventure Comedy Demons Fantasy Magic Romance Shounen Supernatural	8.37
170	Kaguya-hime no Monogatari	1	Fantasy Historical	8.37
171	Katekyo Hitman Reborn!	203	Action Comedy Shounen Super Power	8.37
172	Kuroshitsuji: Book of Circus	10	Comedy Demons Fantasy Historical Shounen Supernatural	8.37
173	Ookami to Koushinryou	13	Adventure Fantasy Historical Romance	8.37
161	Detective Conan Movie 13: The Raven Chaser	1	Action Mystery Police Shounen	8.38
162	Durarara!!	24	Action Mystery Supernatural	8.38
163	Nodame Cantabile Finale	11	Comedy Josei Music Romance	8.38
164	Planetes	26	Drama Romance Sci-Fi Seinen Space	8.38
165	Shelter	1	Music Sci-Fi	8.38
166	Tenkuu no Shiro Laputa	1	Adventure Fantasy Romance Sci-Fi	8.38
156	Angel Beats!	13	Action Comedy Drama School Supernatural	8.39
157	Bakemonogatari	15	Mystery Romance Supernatural Vampire	8.39
158	Bungou Stray Dogs 2nd Season	12	Mystery Seinen Supernatural	8.39
159	Hajime no Ippo: Champion Road	1	Comedy Shounen Sports	8.39
160	One Piece Film: Z	1	Action Adventure Comedy Drama Fantasy Shounen	8.39
147	Beck	26	Comedy Drama Music Shounen Slice of Life	8.4
148	Berserk	25	Action Adventure Demons Drama Fantasy Horror Military Romance Seinen Supernatural	8.4
149	Cowboy Bebop: Tengoku no Tobira	1	Action Drama Mystery Sci-Fi Space	8.4
150	Major S3	26	Drama Shounen Sports	8.4
151	Mobile Suit Gundam Unicorn	7	Action Drama Mecha Military Sci-Fi Space	8.4
152	Natsume Yuujinchou: Itsuka Yuki no Hi ni	1	Drama Fantasy Shoujo Slice of Life Supernatural	8.4
153	NHK ni Youkoso!	24	Comedy Drama Psychological Romance	8.4
154	Rose of Versailles	40	Adventure Drama Historical Romance Shoujo	8.4
155	Sakurasou no Pet na Kanojo	24	Comedy Drama Romance School Slice of Life	8.4
7569	Chamebou Kuukijuu no Maki	1	Comedy	8.4
8110	Hi Asobi wa Kaji no Moto: Kenta to Nyanta no Hi no Youjin	1	Drama Kids	8.4
9076	Ojiichan wa Boku no Hero	1	Drama Kids	8.4
141	Higurashi no Naku Koro ni Kai	24	Mystery Psychological Supernatural Thriller	8.41
142	Hunter x Hunter OVA	8	Action Adventure Shounen Super Power	8.41
143	Hunter x Hunter: Greed Island Final	14	Action Adventure Shounen Super Power	8.41
144	Kuroshitsuji: Book of Murder	2	Comedy Demons Fantasy Historical Mystery Shounen Supernatural	8.41
145	Major S2	26	Comedy Drama Shounen Sports	8.41
146	One Outs	25	Psychological Seinen Sports	8.41
135	Detective Conan Movie 06: The Phantom of Baker Street	1	Adventure Mystery Police Shounen	8.42
136	Fate/stay night: Unlimited Blade Works	12	Action Fantasy Magic Shounen Supernatural	8.42
137	Major S1	26	Comedy Drama Shounen Sports	8.42
138	Mobile Suit Gundam: The Origin	6	Action Mecha Military Sci-Fi Shounen Space	8.42
139	Natsume Yuujinchou	13	Drama Fantasy Shoujo Slice of Life Supernatural	8.42
140	One Piece Film: Strong World	1	Action Adventure Comedy Drama Fantasy Shounen	8.42
132	Owarimonogatari	12	Comedy Mystery Supernatural	8.43
133	Rurouni Kenshin: Meiji Kenkaku Romantan	94	Action Adventure Comedy Historical Romance Samurai	8.43
134	Stranger: Mukou Hadan	1	Action Adventure Historical Samurai	8.43
9298	Qin Shiming Yue Zhi: Wanli Changcheng	37	Action Fantasy Historical Martial Arts	8.43
130	Toki wo Kakeru Shoujo	1	Adventure Drama Romance Sci-Fi	8.44
131	Tsubasa: Tokyo Revelations	3	Action Adventure Drama Fantasy Romance Shounen	8.44
123	Shingeki no Kyojin: Kuinaki Sentaku	2	Action Fantasy Shoujo Supernatural	8.45
125	Fate/stay night: Unlimited Blade Works 2nd Season	13	Action Fantasy Magic Shounen Supernatural	8.45
126	Kemono no Souja Erin	50	Drama Fantasy	8.45
127	Kizumonogatari I: Tekketsu-hen	1	Mystery Supernatural Vampire	8.45
128	Neon Genesis Evangelion: The End of Evangelion	1	Dementia Drama Mecha Psychological Sci-Fi	8.45
129	Toradora!	25	Comedy Romance School Slice of Life	8.45
119	Kino no Tabi: The Beautiful World	13	Action Adventure Slice of Life	8.46
120	Kuroko no Basket	25	Comedy School Shounen Sports	8.46
121	Nodame Cantabile	23	Comedy Drama Josei Music Romance Slice of Life	8.46
122	Ookami to Koushinryou II	12	Adventure Fantasy Historical Romance	8.46
124	Steins;Gate: Oukoubakko no Poriomania	1	Sci-Fi Thriller	8.46
115	Ghost in the Shell: Stand Alone Complex	26	Action Mecha Military Police Sci-Fi Seinen	8.47
116	Kaze no Tani no Nausicaä	1	Adventure Fantasy	8.47
117	Romeo no Aoi Sora	33	Adventure Drama Historical Slice of Life	8.47
118	Yuu☆Yuu☆Hakusho	112	Action Comedy Demons Fantasy Martial Arts School Shounen	8.47
110	Ashita no Joe 2	47	Drama Sports	8.48
111	Hunter x Hunter	62	Action Adventure Shounen Super Power	8.48
112	Noragami Aragoto	13	Action Adventure Shounen Supernatural	8.48
113	Sakamichi no Apollon	12	Drama Josei Music Romance School	8.48
114	Tonari no Totoro	1	Adventure Comedy Supernatural	8.48
105	Katanagatari	12	Action Adventure Historical Martial Arts Romance	8.49
106	Mahou Shoujo Madoka★Magica Movie 2: Eien no Monogatari	1	Drama Magic Psychological Thriller	8.49
107	Major S6	25	Comedy Drama Sports	8.49
108	Mononoke	12	Demons Fantasy Historical Horror Mystery Seinen Supernatural	8.49
109	Shirobako	24	Comedy Drama	8.49
98	Psycho-Pass	22	Action Police Psychological Sci-Fi	8.5
99	Barakamon	12	Comedy Slice of Life	8.5
100	Diamond no Ace: Second Season	51	Comedy School Shounen Sports	8.5
101	Magi: The Kingdom of Magic	25	Action Adventure Fantasy Magic Shounen	8.5
102	Mahou Shoujo Madoka★Magica Movie 3: Hangyaku no Monogatari	1	Drama Magic Psychological Thriller	8.5
103	Major: World Series	2	Comedy Drama Sports	8.5
104	Samurai Champloo	26	Action Adventure Comedy Historical Samurai Shounen	8.5
7421	Aoyo Kaette Koi: Tokyo Dai Kuushuu	1	Drama Historical	8.5
7508	Boku no Aozora	1	Drama Kids	8.5
7836	Fushigi no Yappo Shima: Pukipuki to Poi	25	Kids	8.5
7987	Haha Uzura	1	Drama Kids	8.5
8039	Hato yo: Hiroshima no Sora wo	1	Historical Kids	8.5
8272	Jidou Bungaku Library	6	Demons Drama Fantasy Historical Kids Magic Romance Samurai Supernatural	8.5
8357	Kakusensou	1	Drama Historical Kids	8.5
8823	Mirai e no Niji: Boku no Ojisan wa Hansen-byou	1	Drama Kids	8.5
9392	Satoukibibatake	1	Drama Historical	8.5
9739	Telemonster	Unknown	Adventure	8.5
9856	Tsuru no Sugomori	1	Kids	8.5
94	Fate/Zero	13	Action Fantasy Supernatural	8.51
95	JoJo no Kimyou na Bouken (TV)	26	Action Adventure Shounen Supernatural Vampire	8.51
96	Mahou Shoujo Madoka★Magica	12	Drama Magic Psychological Thriller	8.51
93	Chihayafuru 2	25	Drama Game Josei Slice of Life Sports	8.52
97	Nichijou	26	Comedy School Slice of Life	8.52
87	Bakuman. 2nd Season	25	Comedy Drama Romance Shounen	8.53
88	Cross Game	50	Comedy Drama Romance School Sports	8.53
89	Doukyuusei (Movie)	1	Romance School Shounen Ai Slice of Life	8.53
90	Evangelion: 2.0 You Can (Not) Advance	1	Action Mecha Sci-Fi	8.53
91	Shinsekai yori	25	Drama Horror Mystery Sci-Fi Supernatural	8.53
92	Uchuu Senkan Yamato 2199	26	Action Drama Military Sci-Fi Space	8.53
84	Baccano!	13	Action Comedy Historical Mystery Seinen Supernatural	8.54
85	Mushishi Zoku Shou: Odoro no Michi	1	Adventure Fantasy Historical Mystery Seinen Slice of Life Supernatural	8.54
86	Shingeki no Kyojin	25	Action Drama Fantasy Shounen Super Power	8.54
81	Girls und Panzer der Film	1	Military School	8.55
82	Mob Psycho 100	12	Action Comedy Slice of Life Supernatural	8.55
83	Nana	47	Comedy Drama Music Romance Shoujo Slice of Life	8.55
79	Slam Dunk	101	Comedy Drama School Shounen Sports	8.56
80	Usagi Drop	11	Josei Slice of Life	8.56
75	Ghost in the Shell: Stand Alone Complex 2nd GIG	26	Action Mecha Military Mystery Police Sci-Fi Seinen	8.57
76	JoJo no Kimyou na Bouken: Diamond wa Kudakenai	39	Action Adventure Comedy Drama Shounen Supernatural	8.57
77	Kara no Kyoukai 7: Satsujin Kousatsu (Kou)	1	Action Mystery Romance Supernatural Thriller	8.57
78	Kingdom 2nd Season	39	Action Historical Military Seinen	8.57
70	Bakemono no Ko	1	Adventure Supernatural	8.58
71	Hotaru no Haka	1	Drama Historical	8.58
72	Kuroko no Basket 2nd Season	25	Comedy School Shounen Sports	8.58
73	Major S5	25	Comedy Drama Romance Sports	8.58
74	One Piece	Unknown	Action Adventure Comedy Drama Fantasy Shounen Super Power	8.58
65	Gintama Movie: Shinyaku Benizakura-hen	1	Action Comedy Historical Parody Samurai Sci-Fi Shounen	8.59
66	Hellsing Ultimate	10	Action Horror Military Seinen Supernatural Vampire	8.59
67	Kiseijuu: Sei no Kakuritsu	24	Action Drama Horror Psychological Sci-Fi Seinen	8.59
68	Shouwa Genroku Rakugo Shinjuu	13	Drama Historical Josei	8.59
69	Uchuu Kyoudai	99	Comedy Sci-Fi Seinen Slice of Life Space	8.59
63	Gintama: Yorinuki Gintama-san on Theater 2D	2	Action Comedy Historical Parody Samurai Sci-Fi Shounen	8.6
64	JoJo no Kimyou na Bouken: Stardust Crusaders 2nd Season	24	Action Adventure Drama Shounen Supernatural	8.6
7502	Black Clover	1	Action Comedy Fantasy Magic Shounen	8.6
60	Steins;Gate Movie: Fuka Ryouiki no Déjà vu	1	Sci-Fi Thriller	8.61
61	Hotarubi no Mori e	1	Drama Romance Shoujo Supernatural	8.61
62	Yuri!!! on Ice	12	Comedy Sports	8.61
58	Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.	11	Drama Slice of Life Supernatural	8.62
59	Kuroko no Basket 3rd Season	25	Comedy School Shounen Sports	8.62
52	Aria The Origination	13	Fantasy Sci-Fi Shounen Slice of Life	8.64
53	Kamisama Hajimemashita: Kako-hen	4	Comedy Demons Fantasy Shoujo Supernatural	8.64
54	Rainbow: Nisha Rokubou no Shichinin	26	Drama Historical Seinen Thriller	8.64
55	Re:Zero kara Hajimeru Isekai Seikatsu	25	Drama Fantasy Psychological Thriller	8.64
56	Tengen Toppa Gurren Lagann Movie: Lagann-hen	1	Action Mecha Sci-Fi Space Super Power	8.64
57	Zoku Natsume Yuujinchou	13	Drama Fantasy Shoujo Slice of Life Supernatural	8.64
50	Boku dake ga Inai Machi	12	Mystery Psychological Seinen Supernatural	8.65
51	Yojouhan Shinwa Taikei	11	Mystery Psychological Romance	8.65
49	Mushishi Special: Hihamukage	1	Adventure Fantasy Historical Mystery Seinen Slice of Life Supernatural	8.66
47	Natsume Yuujinchou San	13	Drama Fantasy Shoujo Slice of Life Supernatural	8.67
48	Ping Pong The Animation	11	Psychological Seinen Sports	8.67
8464	Kie Saranu Kizuato: Hi no Umi Osaka	1	Historical Kids	8.67
8816	Minna no Doutoku	6	Drama Fantasy Historical Kids School	8.67
9503	Shisei Sasshin	1	Slice of Life	8.67
9958	Warera Salaryman Tou	26	Comedy Slice of Life	8.67
10033	Yamete! Writer Asobi: Doubutsu Mura no Shoubou-tai Shutsu Dou	1	Drama Kids	8.67
10087	Yume no Tsuzuki	1	Drama Kids	8.67
43	Ansatsu Kyoushitsu (TV) 2nd Season	25	Action Comedy School Shounen	8.68
44	Haikyuu!!	25	Comedy Drama School Shounen Sports	8.68
45	Hajime no Ippo: Rising	25	Comedy Drama Shounen Sports	8.68
46	Kara no Kyoukai 5: Mujun Rasen	1	Action Drama Mystery Romance Supernatural Thriller	8.68
40	Bakuman. 3rd Season	25	Comedy Drama Romance Shounen	8.71
41	Death Note	37	Mystery Police Psychological Supernatural Thriller	8.71
39	Monster	74	Drama Horror Mystery Police Psychological Seinen Thriller	8.72
37	Fate/Zero 2nd Season	12	Action Fantasy Supernatural Thriller	8.73
38	Kizumonogatari II: Nekketsu-hen	1	Action Mystery Supernatural Vampire	8.73
36	Howl no Ugoku Shiro	1	Adventure Drama Fantasy Romance	8.74
33	Hajime no Ippo: New Challenger	26	Comedy Drama Shounen Sports	8.75
34	Mushishi Zoku Shou: Suzu no Shizuku	1	Adventure Fantasy Historical Mystery Seinen Slice of Life Supernatural	8.75
35	Natsume Yuujinchou Shi	13	Drama Fantasy Shoujo Slice of Life Supernatural	8.75
8754	Maya no Isshou	1	Drama Historical Slice of Life	8.75
32	Natsume Yuujinchou Go	13	Drama Fantasy Shoujo Slice of Life Supernatural	8.76
31	Great Teacher Onizuka	43	Comedy Drama School Shounen Slice of Life	8.77
29	Mushishi	26	Adventure Fantasy Historical Mystery Seinen Slice of Life Supernatural	8.78
30	Tengen Toppa Gurren Lagann	27	Action Adventure Comedy Mecha Sci-Fi	8.78
27	Monogatari Series: Second Season	26	Comedy Mystery Romance Supernatural Vampire	8.8
28	Mushishi Zoku Shou	10	Adventure Fantasy Historical Mystery Seinen Slice of Life Supernatural	8.8
9348	Ryouma 30 Seconds	5	Historical	8.8
25	Mononoke Hime	1	Action Adventure Fantasy	8.81
26	Suzumiya Haruhi no Shoushitsu	1	Comedy Mystery Romance School Sci-Fi Supernatural	8.81
23	Cowboy Bebop	26	Action Adventure Comedy Drama Sci-Fi Space	8.82
24	One Punch Man	12	Action Comedy Parody Sci-Fi Seinen Super Power Supernatural	8.82
20	Code Geass: Hangyaku no Lelouch	25	Action Mecha Military School Sci-Fi Super Power	8.83
21	Hajime no Ippo	75	Comedy Drama Shounen Sports	8.83
22	Rurouni Kenshin: Meiji Kenkaku Romantan - Tsuioku-hen	4	Action Drama Historical Martial Arts Romance Samurai	8.83
19	Ookami Kodomo no Ame to Yuki	1	Fantasy Slice of Life	8.84
18	Mushishi Zoku Shou 2nd Season	10	Adventure Fantasy Historical Mystery Seinen Slice of Life Supernatural	8.88
17	Shigatsu wa Kimi no Uso	22	Drama Music Romance School Shounen	8.92
15	Haikyuu!! Second Season	25	Comedy Drama School Shounen Sports	8.93
16	Sen to Chihiro no Kamikakushi	1	Adventure Drama Supernatural	8.93
14	Code Geass: Hangyaku no Lelouch R2	25	Action Drama Mecha Military Sci-Fi Super Power	8.98
9078	Okaachan Gomen ne	1	Historical Kids	9
9382	Santa-san wa Dai Isogashi	1	Fantasy Kids	9
9425	Shaka no Shougai	1	Historical	9
9435	Shenmi Shijie Lixian Ji	1	Adventure Comedy Fantasy	9
13	Gintama	201	Action Comedy Historical Parody Samurai Sci-Fi Shounen	9.04
12	Koe no Katachi	1	Drama School Shounen	9.05
11	Clannad: After Story	24	Drama Fantasy Romance Slice of Life Supernatural	9.06
9	Gintama Movie: Kanketsu-hen - Yorozuya yo Eien Nare	1	Action Comedy Historical Parody Samurai Sci-Fi Shounen	9.1
8	Ginga Eiyuu Densetsu	110	Drama Military Sci-Fi Space	9.11
7	Hunter x Hunter (2011)	148	Action Adventure Shounen Super Power	9.13
6	Haikyuu!!: Karasuno Koukou VS Shiratorizawa Gakuen Koukou	10	Comedy Drama School Shounen Sports	9.15
4	Steins;Gate	24	Sci-Fi Thriller	9.17
2	Fullmetal Alchemist: Brotherhood	64	Action Adventure Drama Fantasy Magic Military Shounen	9.26
8334	Kahei no Umi	1	Historical	9.33
1	Kimi no Na wa.	1	Drama Romance School Supernatural	9.37
8844	Mogura no Motoro	1	Slice of Life	9.5
9644	Spoon-hime no Swing Kitchen	Unknown	Adventure Kids	9.6
9705	Taka no Tsume 8: Yoshida-kun no X-Files	1	Comedy Parody	10
\.


--
-- Data for Name: our_ratings; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public.our_ratings (rating_id, anime_id, rating_score) FROM stdin;
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public.reviews (user_id, anime_id, review_text) FROM stdin;
12	7	              I love this show
12	819	              Please work.
12	2	              Hey everyone this works now.
12	9	              I haven't seen this yet.
12	9	              Oop oop.
12	9	              no way bruh\n
12	9	        I can't believe this actually works.      
12	24	              Bruh
12	2	              This is a test comment.
19	1281	              I really like this anime.
12	30	              submitted a comment
12	24	              people say it's pretty good\n
12	476	              cheese\n
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public."user" (id, username, password) FROM stdin;
12	quoc	sha256$ibIC88WS$8bec2ffa0ee3d3b7733bbed1a7e764de0895dbddf33c535a335b85ba98b17564
13		sha256$KjvziAtG$b5df963a73194713bf5b4c035316e162288c461b0764f556b67fc31a33e96146
14	kevin	sha256$9oiFcEV0$8f19fdf5162225aa0b56ffb66e711d1772b59aef13f1577b0d57792e9da7bd19
15	test	sha256$pKy8ZVIi$67168d28ced8f547fe9d8080c5d6a01878e986e25c9538b9a290d78b5581c172
16	oop	sha256$WQGY3VP3$84567a5ec846b05b539941694b5b3fa4b1ea42751fce420114b8ff8b1e4c285c
17	lol	sha256$H4GsONQi$94f3ed79bbe642f8e354e2e14567b6de4b7ab6b0b4be5a9ec1b0e1259ea79d23
18	taco	sha256$4syHisxF$08e65c452f18b88029244f741870186a1ab3c2dadf7b7be50fb1724ffc9dd049
19	user	sha256$8BWrSjBe$d6ec181b508dcd7479e8590406ed7dc18c93b462f2622936f4b46acece193900
20	new	sha256$jL4iT9En$67a1ba541c437848bb9e205b0b1e8b86aeac347c1d4f37d3b8180b0eddf69bd4
21	oompa	sha256$Lc57pSDD$314c608edb6207b2fd83820578ac8ad7b0b58b1fe162485b5abff597436a3575
22	wreck	sha256$uPkE9UVL$4e939bec99ffec5675e36dc3248442f85d0396d6092ea23bca1c20b555622139
23	clock	sha256$L3cfknrs$e833b6c44e77f8d0abf562447e91fe6b34512dca6d728f8a036f586bd15ba21c
\.


--
-- Data for Name: user_ratings_link; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public.user_ratings_link (user_id, rating_id) FROM stdin;
\.


--
-- Data for Name: user_reviews_link; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public.user_reviews_link (user_id, review_id) FROM stdin;
\.


--
-- Data for Name: watchlist; Type: TABLE DATA; Schema: public; Owner: quocodile
--

COPY public.watchlist (user_id, anime_id) FROM stdin;
12	819
12	31
12	33
12	39
12	12
12	36
12	13
12	14
\.


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quocodile
--

SELECT pg_catalog.setval('public.user_id_seq', 23, true);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: quocodile
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

