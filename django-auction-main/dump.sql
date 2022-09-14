PGDMP     4                    z         
   django_prj     14.4 (Ubuntu 14.4-1.pgdg22.04+1)     14.4 (Ubuntu 14.4-1.pgdg22.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16395 
   django_prj    DATABASE     Y   CREATE DATABASE django_prj WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_IN';
    DROP DATABASE django_prj;
                manthan    false            �            1259    16489    auctions_bid    TABLE     t   CREATE TABLE public.auctions_bid (
    id bigint NOT NULL,
    bid integer NOT NULL,
    user_id bigint NOT NULL
);
     DROP TABLE public.auctions_bid;
       public         heap    manthan    false            �            1259    16488    auctions_bid_id_seq    SEQUENCE     |   CREATE SEQUENCE public.auctions_bid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.auctions_bid_id_seq;
       public          manthan    false    226            �           0    0    auctions_bid_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.auctions_bid_id_seq OWNED BY public.auctions_bid.id;
          public          manthan    false    225            �            1259    16496    auctions_listing    TABLE     *  CREATE TABLE public.auctions_listing (
    id bigint NOT NULL,
    title character varying(32) NOT NULL,
    is_closed boolean,
    description character varying(400) NOT NULL,
    url character varying(2048),
    category character varying(400),
    bid_id bigint NOT NULL,
    owner_id bigint
);
 $   DROP TABLE public.auctions_listing;
       public         heap    manthan    false            �            1259    16495    auctions_listing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auctions_listing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auctions_listing_id_seq;
       public          manthan    false    228            �           0    0    auctions_listing_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auctions_listing_id_seq OWNED BY public.auctions_listing.id;
          public          manthan    false    227            �            1259    16505    auctions_listing_watchlist    TABLE     �   CREATE TABLE public.auctions_listing_watchlist (
    id bigint NOT NULL,
    listing_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 .   DROP TABLE public.auctions_listing_watchlist;
       public         heap    manthan    false            �            1259    16504 !   auctions_listing_watchlist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auctions_listing_watchlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auctions_listing_watchlist_id_seq;
       public          manthan    false    230            �           0    0 !   auctions_listing_watchlist_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auctions_listing_watchlist_id_seq OWNED BY public.auctions_listing_watchlist.id;
          public          manthan    false    229            �            1259    16609    auctions_myrating    TABLE     �   CREATE TABLE public.auctions_myrating (
    id bigint NOT NULL,
    rating integer NOT NULL,
    "R_listing_id" bigint NOT NULL,
    user_id bigint NOT NULL
);
 %   DROP TABLE public.auctions_myrating;
       public         heap    manthan    false            �            1259    16608    auctions_myrating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auctions_myrating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.auctions_myrating_id_seq;
       public          manthan    false    235            �           0    0    auctions_myrating_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.auctions_myrating_id_seq OWNED BY public.auctions_myrating.id;
          public          manthan    false    234            �            1259    16464    auctions_user    TABLE     �  CREATE TABLE public.auctions_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(100) NOT NULL,
    age integer NOT NULL,
    phone character varying(17) NOT NULL,
    gender character varying(1) NOT NULL
);
 !   DROP TABLE public.auctions_user;
       public         heap    manthan    false            �            1259    16475    auctions_user_groups    TABLE     �   CREATE TABLE public.auctions_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 (   DROP TABLE public.auctions_user_groups;
       public         heap    manthan    false            �            1259    16474    auctions_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auctions_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.auctions_user_groups_id_seq;
       public          manthan    false    222            �           0    0    auctions_user_groups_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.auctions_user_groups_id_seq OWNED BY public.auctions_user_groups.id;
          public          manthan    false    221            �            1259    16463    auctions_user_id_seq    SEQUENCE     }   CREATE SEQUENCE public.auctions_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.auctions_user_id_seq;
       public          manthan    false    220            �           0    0    auctions_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.auctions_user_id_seq OWNED BY public.auctions_user.id;
          public          manthan    false    219            �            1259    16482    auctions_user_user_permissions    TABLE     �   CREATE TABLE public.auctions_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 2   DROP TABLE public.auctions_user_user_permissions;
       public         heap    manthan    false            �            1259    16481 %   auctions_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auctions_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.auctions_user_user_permissions_id_seq;
       public          manthan    false    224            �           0    0 %   auctions_user_user_permissions_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.auctions_user_user_permissions_id_seq OWNED BY public.auctions_user_user_permissions.id;
          public          manthan    false    223            �            1259    16422 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    manthan    false            �            1259    16421    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          manthan    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          manthan    false    215            �            1259    16431    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    manthan    false            �            1259    16430    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          manthan    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          manthan    false    217            �            1259    16415    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    manthan    false            �            1259    16414    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          manthan    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          manthan    false    213            �            1259    16573    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    manthan    false            �            1259    16572    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          manthan    false    232            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          manthan    false    231            �            1259    16406    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    manthan    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          manthan    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          manthan    false    211            �            1259    16397    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    manthan    false            �            1259    16396    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          manthan    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          manthan    false    209            �            1259    16598    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    manthan    false            �           2604    16492    auctions_bid id    DEFAULT     r   ALTER TABLE ONLY public.auctions_bid ALTER COLUMN id SET DEFAULT nextval('public.auctions_bid_id_seq'::regclass);
 >   ALTER TABLE public.auctions_bid ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    226    225    226            �           2604    16499    auctions_listing id    DEFAULT     z   ALTER TABLE ONLY public.auctions_listing ALTER COLUMN id SET DEFAULT nextval('public.auctions_listing_id_seq'::regclass);
 B   ALTER TABLE public.auctions_listing ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    228    227    228            �           2604    16508    auctions_listing_watchlist id    DEFAULT     �   ALTER TABLE ONLY public.auctions_listing_watchlist ALTER COLUMN id SET DEFAULT nextval('public.auctions_listing_watchlist_id_seq'::regclass);
 L   ALTER TABLE public.auctions_listing_watchlist ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    230    229    230            �           2604    16612    auctions_myrating id    DEFAULT     |   ALTER TABLE ONLY public.auctions_myrating ALTER COLUMN id SET DEFAULT nextval('public.auctions_myrating_id_seq'::regclass);
 C   ALTER TABLE public.auctions_myrating ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    234    235    235            �           2604    16467    auctions_user id    DEFAULT     t   ALTER TABLE ONLY public.auctions_user ALTER COLUMN id SET DEFAULT nextval('public.auctions_user_id_seq'::regclass);
 ?   ALTER TABLE public.auctions_user ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    219    220    220            �           2604    16478    auctions_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.auctions_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auctions_user_groups_id_seq'::regclass);
 F   ALTER TABLE public.auctions_user_groups ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    222    221    222            �           2604    16485 !   auctions_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auctions_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auctions_user_user_permissions_id_seq'::regclass);
 P   ALTER TABLE public.auctions_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    224    223    224            �           2604    16425    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    216    215    216            �           2604    16434    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    217    218    218            �           2604    16418    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    214    213    214            �           2604    16576    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    231    232    232            �           2604    16409    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    211    212    212            �           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          manthan    false    210    209    210            �          0    16489    auctions_bid 
   TABLE DATA           8   COPY public.auctions_bid (id, bid, user_id) FROM stdin;
    public          manthan    false    226   ��       �          0    16496    auctions_listing 
   TABLE DATA           n   COPY public.auctions_listing (id, title, is_closed, description, url, category, bid_id, owner_id) FROM stdin;
    public          manthan    false    228   E�       �          0    16505    auctions_listing_watchlist 
   TABLE DATA           M   COPY public.auctions_listing_watchlist (id, listing_id, user_id) FROM stdin;
    public          manthan    false    230   /�       �          0    16609    auctions_myrating 
   TABLE DATA           P   COPY public.auctions_myrating (id, rating, "R_listing_id", user_id) FROM stdin;
    public          manthan    false    235   \�       �          0    16464    auctions_user 
   TABLE DATA           �   COPY public.auctions_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, name, address, age, phone, gender) FROM stdin;
    public          manthan    false    220   ��       �          0    16475    auctions_user_groups 
   TABLE DATA           E   COPY public.auctions_user_groups (id, user_id, group_id) FROM stdin;
    public          manthan    false    222   �       �          0    16482    auctions_user_user_permissions 
   TABLE DATA           T   COPY public.auctions_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          manthan    false    224   ,�       �          0    16422 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          manthan    false    216   I�       �          0    16431    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          manthan    false    218   f�       �          0    16415    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          manthan    false    214   ��       �          0    16573    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          manthan    false    232   ��       �          0    16406    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          manthan    false    212   ��       �          0    16397    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          manthan    false    210   �       �          0    16598    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          manthan    false    233   �       �           0    0    auctions_bid_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.auctions_bid_id_seq', 31, true);
          public          manthan    false    225            �           0    0    auctions_listing_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auctions_listing_id_seq', 11, true);
          public          manthan    false    227            �           0    0 !   auctions_listing_watchlist_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.auctions_listing_watchlist_id_seq', 4, true);
          public          manthan    false    229            �           0    0    auctions_myrating_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auctions_myrating_id_seq', 4, true);
          public          manthan    false    234            �           0    0    auctions_user_groups_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.auctions_user_groups_id_seq', 1, false);
          public          manthan    false    221            �           0    0    auctions_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.auctions_user_id_seq', 2, true);
          public          manthan    false    219            �           0    0 %   auctions_user_user_permissions_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.auctions_user_user_permissions_id_seq', 1, false);
          public          manthan    false    223            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          manthan    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          manthan    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          manthan    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 116, true);
          public          manthan    false    231            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          manthan    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          manthan    false    209            �           2606    16494    auctions_bid auctions_bid_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.auctions_bid
    ADD CONSTRAINT auctions_bid_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.auctions_bid DROP CONSTRAINT auctions_bid_pkey;
       public            manthan    false    226                        2606    16503 &   auctions_listing auctions_listing_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auctions_listing
    ADD CONSTRAINT auctions_listing_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auctions_listing DROP CONSTRAINT auctions_listing_pkey;
       public            manthan    false    228                       2606    16559 V   auctions_listing_watchlist auctions_listing_watchlist_listing_id_user_id_73b6031c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auctions_listing_watchlist
    ADD CONSTRAINT auctions_listing_watchlist_listing_id_user_id_73b6031c_uniq UNIQUE (listing_id, user_id);
 �   ALTER TABLE ONLY public.auctions_listing_watchlist DROP CONSTRAINT auctions_listing_watchlist_listing_id_user_id_73b6031c_uniq;
       public            manthan    false    230    230                       2606    16510 :   auctions_listing_watchlist auctions_listing_watchlist_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auctions_listing_watchlist
    ADD CONSTRAINT auctions_listing_watchlist_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auctions_listing_watchlist DROP CONSTRAINT auctions_listing_watchlist_pkey;
       public            manthan    false    230                       2606    16614 (   auctions_myrating auctions_myrating_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.auctions_myrating
    ADD CONSTRAINT auctions_myrating_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.auctions_myrating DROP CONSTRAINT auctions_myrating_pkey;
       public            manthan    false    235            �           2606    16480 .   auctions_user_groups auctions_user_groups_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.auctions_user_groups
    ADD CONSTRAINT auctions_user_groups_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.auctions_user_groups DROP CONSTRAINT auctions_user_groups_pkey;
       public            manthan    false    222            �           2606    16513 H   auctions_user_groups auctions_user_groups_user_id_group_id_1f941809_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_groups
    ADD CONSTRAINT auctions_user_groups_user_id_group_id_1f941809_uniq UNIQUE (user_id, group_id);
 r   ALTER TABLE ONLY public.auctions_user_groups DROP CONSTRAINT auctions_user_groups_user_id_group_id_1f941809_uniq;
       public            manthan    false    222    222            �           2606    16471     auctions_user auctions_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auctions_user
    ADD CONSTRAINT auctions_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auctions_user DROP CONSTRAINT auctions_user_pkey;
       public            manthan    false    220            �           2606    16527 [   auctions_user_user_permissions auctions_user_user_permi_user_id_permission_id_f092bc2e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_user_permissions
    ADD CONSTRAINT auctions_user_user_permi_user_id_permission_id_f092bc2e_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auctions_user_user_permissions DROP CONSTRAINT auctions_user_user_permi_user_id_permission_id_f092bc2e_uniq;
       public            manthan    false    224    224            �           2606    16487 B   auctions_user_user_permissions auctions_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_user_permissions
    ADD CONSTRAINT auctions_user_user_permissions_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.auctions_user_user_permissions DROP CONSTRAINT auctions_user_user_permissions_pkey;
       public            manthan    false    224            �           2606    16473 (   auctions_user auctions_user_username_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.auctions_user
    ADD CONSTRAINT auctions_user_username_key UNIQUE (username);
 R   ALTER TABLE ONLY public.auctions_user DROP CONSTRAINT auctions_user_username_key;
       public            manthan    false    220            �           2606    16461    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            manthan    false    216            �           2606    16447 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            manthan    false    218    218            �           2606    16436 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            manthan    false    218            �           2606    16427    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            manthan    false    216            �           2606    16438 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            manthan    false    214    214            �           2606    16420 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            manthan    false    214            	           2606    16581 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            manthan    false    232            �           2606    16413 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            manthan    false    212    212            �           2606    16411 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            manthan    false    212            �           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            manthan    false    210                       2606    16604 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            manthan    false    233            �           1259    16545    auctions_bid_user_id_6b863bd2    INDEX     Y   CREATE INDEX auctions_bid_user_id_6b863bd2 ON public.auctions_bid USING btree (user_id);
 1   DROP INDEX public.auctions_bid_user_id_6b863bd2;
       public            manthan    false    226            �           1259    16556     auctions_listing_bid_id_df0907b8    INDEX     _   CREATE INDEX auctions_listing_bid_id_df0907b8 ON public.auctions_listing USING btree (bid_id);
 4   DROP INDEX public.auctions_listing_bid_id_df0907b8;
       public            manthan    false    228            �           1259    16557 "   auctions_listing_owner_id_eb7d4d94    INDEX     c   CREATE INDEX auctions_listing_owner_id_eb7d4d94 ON public.auctions_listing USING btree (owner_id);
 6   DROP INDEX public.auctions_listing_owner_id_eb7d4d94;
       public            manthan    false    228                       1259    16570 .   auctions_listing_watchlist_listing_id_6747a268    INDEX     {   CREATE INDEX auctions_listing_watchlist_listing_id_6747a268 ON public.auctions_listing_watchlist USING btree (listing_id);
 B   DROP INDEX public.auctions_listing_watchlist_listing_id_6747a268;
       public            manthan    false    230                       1259    16571 +   auctions_listing_watchlist_user_id_a274eb6a    INDEX     u   CREATE INDEX auctions_listing_watchlist_user_id_a274eb6a ON public.auctions_listing_watchlist USING btree (user_id);
 ?   DROP INDEX public.auctions_listing_watchlist_user_id_a274eb6a;
       public            manthan    false    230                       1259    16625 '   auctions_myrating_R_listing_id_34391cbd    INDEX     q   CREATE INDEX "auctions_myrating_R_listing_id_34391cbd" ON public.auctions_myrating USING btree ("R_listing_id");
 =   DROP INDEX public."auctions_myrating_R_listing_id_34391cbd";
       public            manthan    false    235                       1259    16626 "   auctions_myrating_user_id_ebe96102    INDEX     c   CREATE INDEX auctions_myrating_user_id_ebe96102 ON public.auctions_myrating USING btree (user_id);
 6   DROP INDEX public.auctions_myrating_user_id_ebe96102;
       public            manthan    false    235            �           1259    16525 &   auctions_user_groups_group_id_beef25ba    INDEX     k   CREATE INDEX auctions_user_groups_group_id_beef25ba ON public.auctions_user_groups USING btree (group_id);
 :   DROP INDEX public.auctions_user_groups_group_id_beef25ba;
       public            manthan    false    222            �           1259    16524 %   auctions_user_groups_user_id_cdaa1ab3    INDEX     i   CREATE INDEX auctions_user_groups_user_id_cdaa1ab3 ON public.auctions_user_groups USING btree (user_id);
 9   DROP INDEX public.auctions_user_groups_user_id_cdaa1ab3;
       public            manthan    false    222            �           1259    16539 5   auctions_user_user_permissions_permission_id_6cab40d7    INDEX     �   CREATE INDEX auctions_user_user_permissions_permission_id_6cab40d7 ON public.auctions_user_user_permissions USING btree (permission_id);
 I   DROP INDEX public.auctions_user_user_permissions_permission_id_6cab40d7;
       public            manthan    false    224            �           1259    16538 /   auctions_user_user_permissions_user_id_fec24fe0    INDEX     }   CREATE INDEX auctions_user_user_permissions_user_id_fec24fe0 ON public.auctions_user_user_permissions USING btree (user_id);
 C   DROP INDEX public.auctions_user_user_permissions_user_id_fec24fe0;
       public            manthan    false    224            �           1259    16511 $   auctions_user_username_0a343f0a_like    INDEX     v   CREATE INDEX auctions_user_username_0a343f0a_like ON public.auctions_user USING btree (username varchar_pattern_ops);
 8   DROP INDEX public.auctions_user_username_0a343f0a_like;
       public            manthan    false    220            �           1259    16462    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            manthan    false    216            �           1259    16458 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            manthan    false    218            �           1259    16459 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            manthan    false    218            �           1259    16444 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            manthan    false    214                       1259    16592 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            manthan    false    232            
           1259    16593 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            manthan    false    232                       1259    16606 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            manthan    false    233                       1259    16605 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            manthan    false    233                       2606    16540 >   auctions_bid auctions_bid_user_id_6b863bd2_fk_auctions_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_bid
    ADD CONSTRAINT auctions_bid_user_id_6b863bd2_fk_auctions_user_id FOREIGN KEY (user_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.auctions_bid DROP CONSTRAINT auctions_bid_user_id_6b863bd2_fk_auctions_user_id;
       public          manthan    false    226    220    3306                       2606    16546 D   auctions_listing auctions_listing_bid_id_df0907b8_fk_auctions_bid_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_listing
    ADD CONSTRAINT auctions_listing_bid_id_df0907b8_fk_auctions_bid_id FOREIGN KEY (bid_id) REFERENCES public.auctions_bid(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auctions_listing DROP CONSTRAINT auctions_listing_bid_id_df0907b8_fk_auctions_bid_id;
       public          manthan    false    228    226    3323                       2606    16551 G   auctions_listing auctions_listing_owner_id_eb7d4d94_fk_auctions_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_listing
    ADD CONSTRAINT auctions_listing_owner_id_eb7d4d94_fk_auctions_user_id FOREIGN KEY (owner_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.auctions_listing DROP CONSTRAINT auctions_listing_owner_id_eb7d4d94_fk_auctions_user_id;
       public          manthan    false    228    3306    220                       2606    16560 P   auctions_listing_watchlist auctions_listing_wat_listing_id_6747a268_fk_auctions_    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_listing_watchlist
    ADD CONSTRAINT auctions_listing_wat_listing_id_6747a268_fk_auctions_ FOREIGN KEY (listing_id) REFERENCES public.auctions_listing(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auctions_listing_watchlist DROP CONSTRAINT auctions_listing_wat_listing_id_6747a268_fk_auctions_;
       public          manthan    false    3328    228    230                       2606    16565 Z   auctions_listing_watchlist auctions_listing_watchlist_user_id_a274eb6a_fk_auctions_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_listing_watchlist
    ADD CONSTRAINT auctions_listing_watchlist_user_id_a274eb6a_fk_auctions_user_id FOREIGN KEY (user_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auctions_listing_watchlist DROP CONSTRAINT auctions_listing_watchlist_user_id_a274eb6a_fk_auctions_user_id;
       public          manthan    false    3306    230    220            !           2606    16615 P   auctions_myrating auctions_myrating_R_listing_id_34391cbd_fk_auctions_listing_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_myrating
    ADD CONSTRAINT "auctions_myrating_R_listing_id_34391cbd_fk_auctions_listing_id" FOREIGN KEY ("R_listing_id") REFERENCES public.auctions_listing(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.auctions_myrating DROP CONSTRAINT "auctions_myrating_R_listing_id_34391cbd_fk_auctions_listing_id";
       public          manthan    false    235    228    3328            "           2606    16620 H   auctions_myrating auctions_myrating_user_id_ebe96102_fk_auctions_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_myrating
    ADD CONSTRAINT auctions_myrating_user_id_ebe96102_fk_auctions_user_id FOREIGN KEY (user_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.auctions_myrating DROP CONSTRAINT auctions_myrating_user_id_ebe96102_fk_auctions_user_id;
       public          manthan    false    3306    235    220                       2606    16519 L   auctions_user_groups auctions_user_groups_group_id_beef25ba_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_groups
    ADD CONSTRAINT auctions_user_groups_group_id_beef25ba_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.auctions_user_groups DROP CONSTRAINT auctions_user_groups_group_id_beef25ba_fk_auth_group_id;
       public          manthan    false    216    3298    222                       2606    16514 N   auctions_user_groups auctions_user_groups_user_id_cdaa1ab3_fk_auctions_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_groups
    ADD CONSTRAINT auctions_user_groups_user_id_cdaa1ab3_fk_auctions_user_id FOREIGN KEY (user_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.auctions_user_groups DROP CONSTRAINT auctions_user_groups_user_id_cdaa1ab3_fk_auctions_user_id;
       public          manthan    false    222    3306    220                       2606    16533 W   auctions_user_user_permissions auctions_user_user_p_permission_id_6cab40d7_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_user_permissions
    ADD CONSTRAINT auctions_user_user_p_permission_id_6cab40d7_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auctions_user_user_permissions DROP CONSTRAINT auctions_user_user_p_permission_id_6cab40d7_fk_auth_perm;
       public          manthan    false    224    214    3293                       2606    16528 Q   auctions_user_user_permissions auctions_user_user_p_user_id_fec24fe0_fk_auctions_    FK CONSTRAINT     �   ALTER TABLE ONLY public.auctions_user_user_permissions
    ADD CONSTRAINT auctions_user_user_p_user_id_fec24fe0_fk_auctions_ FOREIGN KEY (user_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.auctions_user_user_permissions DROP CONSTRAINT auctions_user_user_p_user_id_fec24fe0_fk_auctions_;
       public          manthan    false    220    3306    224                       2606    16453 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          manthan    false    3293    218    214                       2606    16448 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          manthan    false    216    3298    218                       2606    16439 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          manthan    false    214    3288    212                       2606    16582 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          manthan    false    232    212    3288                        2606    16587 F   django_admin_log django_admin_log_user_id_c564eba6_fk_auctions_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auctions_user_id FOREIGN KEY (user_id) REFERENCES public.auctions_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auctions_user_id;
       public          manthan    false    232    220    3306            �   i   x�-��0г��8?v��s��H� ��e��!v.]N�{k��u�3/b5â&�UY��n	�� O���Z�ު#�x�x�����{HD��ߏ�� �v      �   �  x�mV�r�8}V��˾�wݸ[S��ĎlK�eŲT[�H� ����S��s��m�r��Y�,��&�����;ϦT�5:W$��g�ug�*�E��!ň����42)Ceο���fJ,�%�����F�b� �n�5j�4Z�R��k#'H��|�Pj�hTq���]����A�n%�OGjN�����S�v�ý�o�Tj�o܀Lq�P��8k� ?��F)�(a,G�i��EX�2�����I�)��=�g�r1��������(�z,���ȋ� �ִ7�b����g����SYy�n���|��J#W~�n�M��U'�z��̱��G����@ffຕ�{��kp4�b��o �⨉
�sc�Hj42pD����=����b��s�]t)s����[=�2S��k@��������)�1�焝!�h���hd���==;I*ō�q"K� �)ӕT;k�DJ�O�h�'.�)+|����;OGk�e"8�LZf	8't�/��G^�{��� |���b~�v���E*����ug��y�.R�[�/�u%%��z!�
@���Wq ��9���ʚ��?�_>�?�h�.QL0��-PtHg	t����`֪�!0��zv�f�5�g�7�ҥ2߱ڞE��=�Ŋ�s��e�4���߿�v������杊�e��h��a?�.���`0�zq��n�鈵G�'��w�p:]:��0��%l�~L�AJ��#�;�����	}�;ݤ�v��g@�Qߧ�~�m��}�«V�v��U��?���δQ�����z/�UR�2�*���NUT��p�ny]
�����c�o�����9�w/����M�b�G_�`�oc�t>�d�����z�R1�yz{����F�d�t�&�d���WOo��K
��I������aӍ�ޖ�uE�d��]�ƳM�a���ۅ?>��b���{�x�"��v)Ɨ#=�b���?�`��ϩ����h[œ���� 7�>�2Q����k�0����n�1����݃�	Ȗ719��d+��_/��r��Ç��~�-���8����Q�8�����_r������.�)�N�Q��o� #<��~�o��y=���__|��:X�|^�8�𥦙�.gE�̯��soOn^���H��a$��}�>�rG�ϕ�)^]_���*��Py}>�M��s3x�h����Ag��ٗ2ˠ3��>�
�E�vA�F�E�0��6F@����Ǐ��paRR�/�cA��A����a'�w�C��&(zN�H�it�U3��"E�n�#û];�F�o�m儫�Nqvjͪ�\�c�p��`��s�Q�y+�/=�k?�����������%��nt��
VF�W�����i��w/���k=�!�}���,��LU�Y|�-�4�.�a��$&�1���γ�S������  �;SY����9�/�"=��  �� ����
�Bh��;�ƽv?YlN�M%�0Ao��,��ń �i�t�����(6���1xw���k�(��Y`[��)����H�`�d��^;�[FS���a�S��L7'��4GsNv.LmXp)�bZ��-Wj;��/��o�T>��3�<VY�Z��T�)�	5��\$�}Ӵ��!�@�4l�5�@���U���5��0!��H۩��L�,�h`�
署�BH`@���لXkN�E1l��v�K:�ZN��������0"�F��ҴDZ`����9��Y��ܻ�U�Zj�z��-�'\k	�����#3�\JG��9��)D�݊%E�eY��g8�h��FӠc�|o˳�UÌ��x�A��x��%�^�ˡ���y�fv8z|F�DA�	�"kS�V�F�J�nM2��\�g6���%
�Ny^+HIs" �\Ԭaa�RjY��Vmќ!k4O��ㄺ�)'4o��g��k�l�xq�q���Q�׍��p�l�
V�vw�0J������>�O2�      �      x�3�4�4�2�4�4�2���b���� !��      �      x�3�4�4�4�2���P�J��qqq Tc      �   v  x�u��n�0���S�;��>�'Ҥ��&�Ii�&U��q q	E���-�ڛYG:����|?���]�����>�؜��C��2ZN^�Wj��c2�?��������o��~I%�{�D��]����I��;p�=Sa����>�,p0zB�Ժ�(�UB�KU�c)Ѧ�T���+Q����̣��L,�`��{�v�c#ZT��p����:��G�c���ʕ�|����~_.g���w���&I��hV���W���z�Ժ�/��t����b�-B��6�s���"�Uf�P���2-S�m��s�ŵ=��71�4 �I���Bl����H��Y.jm���u(�Zg�-�s]�9�2����+���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   j  x�]�[n�0E��U��j�nc��E�L+v_p?���G�G�v����������:�6���ӎ��a�B�A����(S�s������Z��ΤPz�l);C��gZ�Ɛb���2�;��ڞúco2h�ɺ��e�	s��1t ,e�@�����>���&NS�u��X�"�P^��fD�BMpA����f���u��������"�PtT0J
8���B�S��L�ezϦIx�T-p�Q��A!D�G 40�M~L�v��d�go*�O���ݾ�h�x��/��B��b�"V~n�8�L]3�I���P�0q�!|�}i�hP����A
�T� @�bP���@��������      �   �  x���ݏ����鿂���;��|��4HRE�<�A����;�@�F����]rH���z�m�ogg�kgJ�k�J���Xa���4����ٖ�%�������j�������{��ANЕA�]&|\o������"yu���)�Th+��x��b��n[��f:!@� +��6"�)LR%�N�ғR��d,�Q��B��5-㘈���O�|�����ۧ�]��Y߭����տڻ��O����$ұ	���#m�R���"����W_�W߮�7m���� �qqg�X�ɐ*)Tګ*�f{h��3��hJ����b�!	��o�a�9A1i�(��J_lh��+Nm���}ys���d��hSi+�}tv|�ыQF�7
����p��d���<cjJHFX��L�E	�`:�t8l�����a.a�s�eD�������D8��o���v�~ʻC�)[cʵ�xw�1L�q��EHg1$�����ԭ�����1� �}���4c�R��!9ܯ8���Zꮆ���L:�U>�?ѱUT �vz�*�p��T��z�gM�g��P�2zY@Ldp*��Hc����<pf�$}�sE� lc��fG�Srq����z��[��a}��k�Q�CyN�]�C��l��lf��n��c�x���)=S7���yB/
M�XK����{���^�QM���u\�|�\�UR��8)�C��C\�j��#u���|״�C���\�s��˻�n�}y�Z����i�{h9XYUd@�{
MR���ȧ��w"�DT��9!���׫欺#������j�����R:��hg�����CC�Σy	T3("�����P��h=�%r0�-�*��ݥ��Ǵ8s�r\������~9�~�7��f�:���UB<R¢U�K�ħ�O�E)`2���.v�r�Kʯ���K�l���n�y\185�J�+�Fs4}|/�n8�����9>��Qr���̝�Se�*R-�gL�ytRn�(t*D�6�t�D��M�^H�P�Z�b���^�$�Ǩ���c�*=M�QgK(��B�aJ�.پ
��6Qu԰(�O�y��x5��W`�05��:��[B�=����3��C����ڡ�åK�;���EL<;kp�"����q�'����d�8��B�`��i;`�xJqJ�Z4�29�R�ƺ)Ƃl�k���~)x�~��U7/5�f���Q����O�u�$����;3Fij/$.ꋾnz�"gSK�L2k�n��v�Ψ�C(bbw�˺��n<dt�rgo���2���#�P��}��<�ݥ��ң���2n���h�\��pn��yxh�)�p:��Q����Jh�'��Q����t���g��<w����Y��ύ����73]/�g+��P<"��^X}>�ý�tW�*)�.��bu�ϛX٨�SE����}ژ���O��8 }yQ�^m��SU$�ý����]J�>[��f�(p�*�jY��Q�N}:�4#Kշ�G��Q�2�wob�+���].Wl��Ԁ�����?!�Eg�&�T�e�)�G�z�Ivo9�������*6C���i�{��р��/t��p�Z,�6u����7���o���iz7����n��:�F3=�0V��IS��՘�"�9HdB��Xi;��pc=x�E�`��`n.�7��ή�#}�����:�N��e��� ��)�i��L��J0�6?�;��\�xc��H+�D���kib�Ҟ����#�Q6�O����,Z���_o������4"��ǡyʷ]o�Uc���-�ˎI��gC�q�r�?�zY&d�0���#%	����7lɾ�D�X$#��j�c����3����~'�_��I��Kf��������v��=��_�@��R�j��� ��b<Q��x������H�      �   q   x�M�K
�0Dך��o�ҍ�W��o��ݼ�s&W'���r�e�Wf\.�&��FniI����{w�G�K����o|I5�IS��Uk��x���=�=C+n{�� �T�:,      �   �  x����n� ��������?�,+!S�6^������$j�����q�p��~�v��2ک �npљ�"@�;�w�7�'*N�R.�H�p �����_V������v�&�b�F+3�����s+5D�.ڠGz7M�뱺7ߺ�C��zS\�L�F3m��b{㺧 ʀ�T�-�*ʏqڡ�I��Bᷔ�LQw�u�ù��!��#�N��ov���zqz�o��`ƨ�YΗ�\c��6M�m>��N�i�N���$��]z�8�70,0�ˬ�h���l4�Lk���IIX�UR���1�e����&�;Vq���=��#�m�ÅW��ABQ�$�׳��7r��Ƥd7�^�����i����%�)z�͊ԙ_��L��r蕳�Ϭ��δ�����a�Q
� Cu�����Tz��(<�p)I��p�?7��56<��)S�`5���
��6��;���LtC{-oX�@�@��Ln���p8����J      �   p  x�՚YΣʖ���E��l4o`lpn�X%Y�}�3��Y�l�r ����i�����:��5�&9�$3�"6C�2�!��Y��A���s���}��@�%~�R�Z�B(}�
J|tX;}�ٽ�ŕ��ꦵ>�a<����t@�|�>�mVv[4����^s>��[fw�l^:J��%�턻g����T�v��� O�����.F���X��۝�7�9��*�u�@&�M��M$n�!?i��*ũ�0 暴�� [��?$ �`$�F ��,I���8
�C�Mi�)2�FS��K��ԦC�nH}AB�6������ۋ���F��c��GW�|����E��F�Aq�$0�!�e%�=f'�*��j�(��(��,��b�����Z�#�O���Ϥ;4ȵ�Eu]�#9U��[_���ۏ�a�����ꖽ��#՛gr��)/'�x@��9<��v<�f�:��|��~�G^!�2���Y�3r{)��S޳��;��x�zxz�oD�Wq,e�l:��zl�;�τ6��B��8E�ڼV~�������#�%	��!���YW�4��Ʒ ���d����Ԩ#g��!����ag���_��j�;�YV��/vYq̰�A��>f�-"�,)��A�"����q�iHG$h�&*S7������7��I���Rz�l�����J�Jn��İ
���ꂠ]d���!�yk� 8��,��e60���@&��j�}j҄;v�ښ>����!|'��_���N@\+Y�ӵ�G*!-g/[�I�uט=a�>�V��f�n�,�M�f/�����I�@�Y&�]�Q�3��CXd�z��*}��&$l�Q�a2j���q$�tv�
���מ-�e�6<Gd�C�pS\���H�G���B�W��/�U��z�M��nD��I#	� $��!�C5SUDq3N.KwԬ��� q��_PCj[Z\vt����j�k�IgEkR��n��Jv��x�N�-�݇f��0��%�qjܣ������A4d���1U�AQ�AH~E���Bϑ��u//�����aQ���l�ؓ�
�G>	����s�A� 0O�!��p���"����S�Ff��>�6���GH����=�Ky�8� �' *=�B�>w��5ѡ��*��ja�S��DH��Q��=f�$	�AT�D��Eڵ5S�x]Ǡ��+��#���c��רבB��w���Z�h�GN��
��wdh��Ҡp?��o�F�Ƨ���Dd�a��el�mrdִg[^P���h?� !��<�b�c�P6��9��<�Fhgb��h}~��@�����8ARK@� dqG�DƄ�W6SZ%ѵـ����+��W6��V������!�i��ѷ��������
�@̂�o"��>��1���y�79U�V�:�`�M��^�X0��?���ɯ��i
���x��b{���;��I���z�@?3<�`�g�WJ�����X��t�tܽ�����B�Y�b���h�?T��6��.���ܲf���+/�������F�7�p��	����C��B�������3śoih;hn��#2�kA]:��<I~@��6M΅s$��ԧ���CO��!��"���&����$����r���.|�8"�p�|#h=^١����H�����&�"ȷKC�#�%Ɵ0䦾�XC�)`���3�!�x�2�A���������q[��%�YHE~o��M<��TdԳ�!<�z-jn_�֚:�L�l����*]]�&]c�}|3���x��0�Ue�L�a��VS�(�@��zZ��O��d���u�ݦen�F�$/F~�v�k*q�t��g���]��;Y��nd!�Yt����6<�&��?\�Ş��%�>>�y��27�0L���.,��':�*���� r�B8��d�z,_�$u�5&jzB�tTlG7��,0d~|�2����i�^A�h��"����-n�U��8��'1����xu.��do���q&L���Sr�6�m���Z���KR�2�|N�qK���E�+%,�KĖ�]5݊[f�����P�+v^��9���J-# } \$H7v�/��C{c`�p���Pn��E-�|P�>��Df/���{Њ����"IrY,�ǑH֥uP��i���,�����{�v(�m��{�H�!vɒ���i����ƀB>m�6l+�vsN���+��J��6%���C9�"Ԥ}xb�A�R�/��R��p��n80�{vI�O��S��C���?wV�$)X���8)�GM_ѱ�1�����{'c.S��׵+U�����9�*q4jCum�h�_����d�\�D�Ǌ�	���|�,Z?��ʶ��e3Q��-�硺@�Ūq����Q�a�Ij�ݫ�Hb�_��f�
���@���3fA]M,�!KJ/������F��W�Љ�n9�R&So���RN�\m�~mLh���W���l���}V�{��o�+,5��%`>�(�E삺�Z�c#'p�܏���ae{�A����&�Ԕ��([�4��d�1�ie۬쫻�!F͂	�����л�s�`�BI[Z���p�{/����uhD����NH=GG������1�ސ2;UWIn�Q�O͝�
�|�h��#�垝���Jð�(�|ǟl?#�s7 �&�}ABk���ܵܵ ER'AY	v��y�|6�lm?���9Wc��������^��G�<�M?*3��k+�ư+�l���RUu�aZN���ߧ����/���J�ł��ٵ�̠I@U�������LD��ˢa��1�8��4}�6F4�_�Ц���;����qu�%���u��.�ּ�o��W���7!�{ ���A�v0ݓL�2c�׌�M�4s��Js�� !��W�ɦ�:�g��'�v�{����Y?��%X���]��,#�$�O}m���&�h��!����B���}��u��б�f�V
QEGn�	���g�"���E.���Ƶ�EN������<es� ��=�L�Y4�̹�q=�<L�q���Zy;�[�
T��t�h"�G��5�%2�
�,ꛫ��������'���4>y�MӁ.C�������Iu��r���[d�o'�^����8y����i�K:�[��^�y ԓ�c������q�Iҟ]��	��,�ʄ��.�:���a��������	���
{��k��֛�輰y�W���V��kT�!�}�'���~���:ƚ{$�!ϩ��r�-�N���t�b퐁�p�y�k�$�ٱ���~m�8�"v�-Q��ڼ����kݿ߃ ��/1� i�.q����Ƶ�,I*󳮜�b�81b�MOS��q�+#�k����!��mm��X�Z��[q�G1��z�{��\�FT����ͺ(QЧ)YdW���d_q�|w�d��^���)���mw-��?���Rn�n�x��S�yv%����2�'�����lM&A7�!SL��6s�sqE9ї<��D����q�h���YSǓD�׽�]��aHR䗆���?*���"������gl���	�!r��p�iHf��2<��3������?	���ǋ��à�{a��0���<~I�_O��h�Mc����Mp��ũ����{�~E2%�<��g����mW��>�]�f� Ÿ#�~-���
5�Qր�`Q�x����L�Y�Ƈ[p��&����	3��Q��e�~��'����;����v�)�>�F�&���i�4A�8��K���|l`��n6�(�w��3�Q��I��M�1.m|�:��pʓ���;��pl+�=��0u���|jTZ��F�oEim�
z��V�_���ݰ֤�Chmc�洖{�� ����������a7yys�׾8�����G�"!�*�Mϕ݊d/����_Z�W��O6	�Ux3�?!�C�<f�ʇ�a�~r��.���� \x�     