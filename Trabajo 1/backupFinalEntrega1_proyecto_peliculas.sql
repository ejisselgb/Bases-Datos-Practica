PGDMP     2    9                z            proyecto_peliculas    14.2    14.2 h    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    16394    proyecto_peliculas    DATABASE     n   CREATE DATABASE proyecto_peliculas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 "   DROP DATABASE proyecto_peliculas;
                postgres    false            �            1259    16436 	   CATALOGOS    TABLE     �   CREATE TABLE public."CATALOGOS" (
    id_catalogo character varying(30) NOT NULL,
    nombre_catalogo character varying(30) NOT NULL,
    descripcion character varying(30) NOT NULL
);
    DROP TABLE public."CATALOGOS";
       public         heap    postgres    false            �            1259    16453 	   FAVORITOS    TABLE     F   CREATE TABLE public."FAVORITOS" (
    id_pelicula integer NOT NULL
);
    DROP TABLE public."FAVORITOS";
       public         heap    postgres    false            �            1259    16452    FAVORITOS_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."FAVORITOS_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."FAVORITOS_id_pelicula_seq";
       public          postgres    false    217            o           0    0    FAVORITOS_id_pelicula_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."FAVORITOS_id_pelicula_seq" OWNED BY public."FAVORITOS".id_pelicula;
          public          postgres    false    216            �            1259    16424 	   FEEDBACKS    TABLE     �   CREATE TABLE public."FEEDBACKS" (
    id_feedback integer NOT NULL,
    id_pelicula integer NOT NULL,
    comentario character varying(256),
    valoracion smallint
);
    DROP TABLE public."FEEDBACKS";
       public         heap    postgres    false            �            1259    16493    FEEDBACKS_ENVIADOS    TABLE     y   CREATE TABLE public."FEEDBACKS_ENVIADOS" (
    nombre_usuario character varying(10),
    id_feedback integer NOT NULL
);
 (   DROP TABLE public."FEEDBACKS_ENVIADOS";
       public         heap    postgres    false            �            1259    16492 "   FEEDBACKS_ENVIADOS_id_feedback_seq    SEQUENCE     �   CREATE SEQUENCE public."FEEDBACKS_ENVIADOS_id_feedback_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."FEEDBACKS_ENVIADOS_id_feedback_seq";
       public          postgres    false    223            p           0    0 "   FEEDBACKS_ENVIADOS_id_feedback_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."FEEDBACKS_ENVIADOS_id_feedback_seq" OWNED BY public."FEEDBACKS_ENVIADOS".id_feedback;
          public          postgres    false    222            �            1259    16422    FEEDBACK_id_feedback_seq    SEQUENCE     �   CREATE SEQUENCE public."FEEDBACK_id_feedback_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."FEEDBACK_id_feedback_seq";
       public          postgres    false    214            q           0    0    FEEDBACK_id_feedback_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."FEEDBACK_id_feedback_seq" OWNED BY public."FEEDBACKS".id_feedback;
          public          postgres    false    212            �            1259    16423    FEEDBACK_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."FEEDBACK_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."FEEDBACK_id_pelicula_seq";
       public          postgres    false    214            r           0    0    FEEDBACK_id_pelicula_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."FEEDBACK_id_pelicula_seq" OWNED BY public."FEEDBACKS".id_pelicula;
          public          postgres    false    213            �            1259    16603    GENEROS    TABLE     t   CREATE TABLE public."GENEROS" (
    id_genero integer NOT NULL,
    nombre_genero character varying(30) NOT NULL
);
    DROP TABLE public."GENEROS";
       public         heap    postgres    false            �            1259    16602    GENEROS_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE public."GENEROS_id_genero_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."GENEROS_id_genero_seq";
       public          postgres    false    225            s           0    0    GENEROS_id_genero_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."GENEROS_id_genero_seq" OWNED BY public."GENEROS".id_genero;
          public          postgres    false    224            �            1259    16612    PARTICIPANTES    TABLE     �   CREATE TABLE public."PARTICIPANTES" (
    id_participante integer NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    rol character varying(30) NOT NULL,
    biografia character varying(500)
);
 #   DROP TABLE public."PARTICIPANTES";
       public         heap    postgres    false            �            1259    16611 !   PARTICIPANTES_id_participante_seq    SEQUENCE     �   CREATE SEQUENCE public."PARTICIPANTES_id_participante_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."PARTICIPANTES_id_participante_seq";
       public          postgres    false    227            t           0    0 !   PARTICIPANTES_id_participante_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."PARTICIPANTES_id_participante_seq" OWNED BY public."PARTICIPANTES".id_participante;
          public          postgres    false    226            �            1259    16405 	   PELICULAS    TABLE     G  CREATE TABLE public."PELICULAS" (
    id_pelicula integer NOT NULL,
    nombre_pelicula character varying(40) NOT NULL,
    portada character varying(100) NOT NULL,
    restriccion_edad smallint,
    duracion time without time zone NOT NULL,
    fecha_estreno date NOT NULL,
    link_pelicula character varying(50) NOT NULL
);
    DROP TABLE public."PELICULAS";
       public         heap    postgres    false            �            1259    16463    PELICULAS_CATALOGOS    TABLE     w   CREATE TABLE public."PELICULAS_CATALOGOS" (
    id_pelicula integer NOT NULL,
    id_catalogo character varying(30)
);
 )   DROP TABLE public."PELICULAS_CATALOGOS";
       public         heap    postgres    false            �            1259    16462 "   PELICULAS_CATALOGO_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULAS_CATALOGO_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."PELICULAS_CATALOGO_id_pelicula_seq";
       public          postgres    false    219            u           0    0 "   PELICULAS_CATALOGO_id_pelicula_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public."PELICULAS_CATALOGO_id_pelicula_seq" OWNED BY public."PELICULAS_CATALOGOS".id_pelicula;
          public          postgres    false    218            �            1259    16639    PELICULAS_GENEROS    TABLE     n   CREATE TABLE public."PELICULAS_GENEROS" (
    id_pelicula integer NOT NULL,
    id_genero integer NOT NULL
);
 '   DROP TABLE public."PELICULAS_GENEROS";
       public         heap    postgres    false            �            1259    16638    PELICULAS_GENEROS_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULAS_GENEROS_id_genero_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."PELICULAS_GENEROS_id_genero_seq";
       public          postgres    false    233            v           0    0    PELICULAS_GENEROS_id_genero_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."PELICULAS_GENEROS_id_genero_seq" OWNED BY public."PELICULAS_GENEROS".id_genero;
          public          postgres    false    232            �            1259    16637 !   PELICULAS_GENEROS_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULAS_GENEROS_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."PELICULAS_GENEROS_id_pelicula_seq";
       public          postgres    false    233            w           0    0 !   PELICULAS_GENEROS_id_pelicula_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."PELICULAS_GENEROS_id_pelicula_seq" OWNED BY public."PELICULAS_GENEROS".id_pelicula;
          public          postgres    false    231            �            1259    16622    PELICULAS_PARTICIPANTES    TABLE     z   CREATE TABLE public."PELICULAS_PARTICIPANTES" (
    id_pelicula integer NOT NULL,
    id_participante integer NOT NULL
);
 -   DROP TABLE public."PELICULAS_PARTICIPANTES";
       public         heap    postgres    false            �            1259    16478    PELICULAS_VISTAS    TABLE     �   CREATE TABLE public."PELICULAS_VISTAS" (
    nombre_usuario character varying(10),
    id_pelicula integer NOT NULL,
    tiempo_visto time without time zone NOT NULL
);
 &   DROP TABLE public."PELICULAS_VISTAS";
       public         heap    postgres    false            �            1259    16477     PELICULAS_VISTAS_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULAS_VISTAS_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."PELICULAS_VISTAS_id_pelicula_seq";
       public          postgres    false    221            x           0    0     PELICULAS_VISTAS_id_pelicula_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."PELICULAS_VISTAS_id_pelicula_seq" OWNED BY public."PELICULAS_VISTAS".id_pelicula;
          public          postgres    false    220            �            1259    16404    PELICULAS_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULAS_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."PELICULAS_id_pelicula_seq";
       public          postgres    false    211            y           0    0    PELICULAS_id_pelicula_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."PELICULAS_id_pelicula_seq" OWNED BY public."PELICULAS".id_pelicula;
          public          postgres    false    210            �            1259    16621 *   PELICULA_PARTICIPANTES_id_participante_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULA_PARTICIPANTES_id_participante_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."PELICULA_PARTICIPANTES_id_participante_seq";
       public          postgres    false    230            z           0    0 *   PELICULA_PARTICIPANTES_id_participante_seq    SEQUENCE OWNED BY     ~   ALTER SEQUENCE public."PELICULA_PARTICIPANTES_id_participante_seq" OWNED BY public."PELICULAS_PARTICIPANTES".id_participante;
          public          postgres    false    229            �            1259    16620 &   PELICULA_PARTICIPANTES_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public."PELICULA_PARTICIPANTES_id_pelicula_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."PELICULA_PARTICIPANTES_id_pelicula_seq";
       public          postgres    false    230            {           0    0 &   PELICULA_PARTICIPANTES_id_pelicula_seq    SEQUENCE OWNED BY     v   ALTER SEQUENCE public."PELICULA_PARTICIPANTES_id_pelicula_seq" OWNED BY public."PELICULAS_PARTICIPANTES".id_pelicula;
          public          postgres    false    228            �            1259    16395    PERFIL    TABLE     {  CREATE TABLE public."PERFIL" (
    nombre_usuario character varying(10) NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    edad smallint NOT NULL,
    telefono character varying(10) NOT NULL,
    imagen character varying(100) NOT NULL,
    correo character varying(40) NOT NULL,
    contrasena character varying(15) NOT NULL
);
    DROP TABLE public."PERFIL";
       public         heap    postgres    false            �           2604    16456    FAVORITOS id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."FAVORITOS" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."FAVORITOS_id_pelicula_seq"'::regclass);
 F   ALTER TABLE public."FAVORITOS" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16427    FEEDBACKS id_feedback    DEFAULT     �   ALTER TABLE ONLY public."FEEDBACKS" ALTER COLUMN id_feedback SET DEFAULT nextval('public."FEEDBACK_id_feedback_seq"'::regclass);
 F   ALTER TABLE public."FEEDBACKS" ALTER COLUMN id_feedback DROP DEFAULT;
       public          postgres    false    212    214    214            �           2604    16428    FEEDBACKS id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."FEEDBACKS" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."FEEDBACK_id_pelicula_seq"'::regclass);
 F   ALTER TABLE public."FEEDBACKS" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16496    FEEDBACKS_ENVIADOS id_feedback    DEFAULT     �   ALTER TABLE ONLY public."FEEDBACKS_ENVIADOS" ALTER COLUMN id_feedback SET DEFAULT nextval('public."FEEDBACKS_ENVIADOS_id_feedback_seq"'::regclass);
 O   ALTER TABLE public."FEEDBACKS_ENVIADOS" ALTER COLUMN id_feedback DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16606    GENEROS id_genero    DEFAULT     z   ALTER TABLE ONLY public."GENEROS" ALTER COLUMN id_genero SET DEFAULT nextval('public."GENEROS_id_genero_seq"'::regclass);
 B   ALTER TABLE public."GENEROS" ALTER COLUMN id_genero DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16615    PARTICIPANTES id_participante    DEFAULT     �   ALTER TABLE ONLY public."PARTICIPANTES" ALTER COLUMN id_participante SET DEFAULT nextval('public."PARTICIPANTES_id_participante_seq"'::regclass);
 N   ALTER TABLE public."PARTICIPANTES" ALTER COLUMN id_participante DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16408    PELICULAS id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."PELICULAS_id_pelicula_seq"'::regclass);
 F   ALTER TABLE public."PELICULAS" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    16466    PELICULAS_CATALOGOS id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS_CATALOGOS" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."PELICULAS_CATALOGO_id_pelicula_seq"'::regclass);
 P   ALTER TABLE public."PELICULAS_CATALOGOS" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16642    PELICULAS_GENEROS id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS_GENEROS" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."PELICULAS_GENEROS_id_pelicula_seq"'::regclass);
 N   ALTER TABLE public."PELICULAS_GENEROS" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    231    233    233            �           2604    16643    PELICULAS_GENEROS id_genero    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS_GENEROS" ALTER COLUMN id_genero SET DEFAULT nextval('public."PELICULAS_GENEROS_id_genero_seq"'::regclass);
 L   ALTER TABLE public."PELICULAS_GENEROS" ALTER COLUMN id_genero DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16625 #   PELICULAS_PARTICIPANTES id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS_PARTICIPANTES" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."PELICULA_PARTICIPANTES_id_pelicula_seq"'::regclass);
 T   ALTER TABLE public."PELICULAS_PARTICIPANTES" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    228    230    230            �           2604    16626 '   PELICULAS_PARTICIPANTES id_participante    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS_PARTICIPANTES" ALTER COLUMN id_participante SET DEFAULT nextval('public."PELICULA_PARTICIPANTES_id_participante_seq"'::regclass);
 X   ALTER TABLE public."PELICULAS_PARTICIPANTES" ALTER COLUMN id_participante DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16481    PELICULAS_VISTAS id_pelicula    DEFAULT     �   ALTER TABLE ONLY public."PELICULAS_VISTAS" ALTER COLUMN id_pelicula SET DEFAULT nextval('public."PELICULAS_VISTAS_id_pelicula_seq"'::regclass);
 M   ALTER TABLE public."PELICULAS_VISTAS" ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    220    221    221            V          0    16436 	   CATALOGOS 
   TABLE DATA           P   COPY public."CATALOGOS" (id_catalogo, nombre_catalogo, descripcion) FROM stdin;
    public          postgres    false    215   ��       X          0    16453 	   FAVORITOS 
   TABLE DATA           2   COPY public."FAVORITOS" (id_pelicula) FROM stdin;
    public          postgres    false    217   �       U          0    16424 	   FEEDBACKS 
   TABLE DATA           W   COPY public."FEEDBACKS" (id_feedback, id_pelicula, comentario, valoracion) FROM stdin;
    public          postgres    false    214   1�       ^          0    16493    FEEDBACKS_ENVIADOS 
   TABLE DATA           K   COPY public."FEEDBACKS_ENVIADOS" (nombre_usuario, id_feedback) FROM stdin;
    public          postgres    false    223   N�       `          0    16603    GENEROS 
   TABLE DATA           =   COPY public."GENEROS" (id_genero, nombre_genero) FROM stdin;
    public          postgres    false    225   k�       b          0    16612    PARTICIPANTES 
   TABLE DATA           \   COPY public."PARTICIPANTES" (id_participante, nombre, apellido, rol, biografia) FROM stdin;
    public          postgres    false    227   ��       R          0    16405 	   PELICULAS 
   TABLE DATA           �   COPY public."PELICULAS" (id_pelicula, nombre_pelicula, portada, restriccion_edad, duracion, fecha_estreno, link_pelicula) FROM stdin;
    public          postgres    false    211   ��       Z          0    16463    PELICULAS_CATALOGOS 
   TABLE DATA           I   COPY public."PELICULAS_CATALOGOS" (id_pelicula, id_catalogo) FROM stdin;
    public          postgres    false    219          h          0    16639    PELICULAS_GENEROS 
   TABLE DATA           E   COPY public."PELICULAS_GENEROS" (id_pelicula, id_genero) FROM stdin;
    public          postgres    false    233   ߂       e          0    16622    PELICULAS_PARTICIPANTES 
   TABLE DATA           Q   COPY public."PELICULAS_PARTICIPANTES" (id_pelicula, id_participante) FROM stdin;
    public          postgres    false    230   ��       \          0    16478    PELICULAS_VISTAS 
   TABLE DATA           W   COPY public."PELICULAS_VISTAS" (nombre_usuario, id_pelicula, tiempo_visto) FROM stdin;
    public          postgres    false    221   �       P          0    16395    PERFIL 
   TABLE DATA           p   COPY public."PERFIL" (nombre_usuario, nombre, apellido, edad, telefono, imagen, correo, contrasena) FROM stdin;
    public          postgres    false    209   6�       |           0    0    FAVORITOS_id_pelicula_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."FAVORITOS_id_pelicula_seq"', 1, false);
          public          postgres    false    216            }           0    0 "   FEEDBACKS_ENVIADOS_id_feedback_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."FEEDBACKS_ENVIADOS_id_feedback_seq"', 1, false);
          public          postgres    false    222            ~           0    0    FEEDBACK_id_feedback_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."FEEDBACK_id_feedback_seq"', 1, false);
          public          postgres    false    212                       0    0    FEEDBACK_id_pelicula_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."FEEDBACK_id_pelicula_seq"', 1, false);
          public          postgres    false    213            �           0    0    GENEROS_id_genero_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."GENEROS_id_genero_seq"', 1, false);
          public          postgres    false    224            �           0    0 !   PARTICIPANTES_id_participante_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."PARTICIPANTES_id_participante_seq"', 1, false);
          public          postgres    false    226            �           0    0 "   PELICULAS_CATALOGO_id_pelicula_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."PELICULAS_CATALOGO_id_pelicula_seq"', 1, false);
          public          postgres    false    218            �           0    0    PELICULAS_GENEROS_id_genero_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."PELICULAS_GENEROS_id_genero_seq"', 1, false);
          public          postgres    false    232            �           0    0 !   PELICULAS_GENEROS_id_pelicula_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."PELICULAS_GENEROS_id_pelicula_seq"', 1, false);
          public          postgres    false    231            �           0    0     PELICULAS_VISTAS_id_pelicula_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."PELICULAS_VISTAS_id_pelicula_seq"', 1, false);
          public          postgres    false    220            �           0    0    PELICULAS_id_pelicula_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."PELICULAS_id_pelicula_seq"', 1, false);
          public          postgres    false    210            �           0    0 *   PELICULA_PARTICIPANTES_id_participante_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."PELICULA_PARTICIPANTES_id_participante_seq"', 1, false);
          public          postgres    false    229            �           0    0 &   PELICULA_PARTICIPANTES_id_pelicula_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."PELICULA_PARTICIPANTES_id_pelicula_seq"', 1, false);
          public          postgres    false    228            �           2606    16442 '   CATALOGOS CATALOGOS_nombre_catalogo_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."CATALOGOS"
    ADD CONSTRAINT "CATALOGOS_nombre_catalogo_key" UNIQUE (nombre_catalogo);
 U   ALTER TABLE ONLY public."CATALOGOS" DROP CONSTRAINT "CATALOGOS_nombre_catalogo_key";
       public            postgres    false    215            �           2606    16610 !   GENEROS GENEROS_nombre_genero_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."GENEROS"
    ADD CONSTRAINT "GENEROS_nombre_genero_key" UNIQUE (nombre_genero);
 O   ALTER TABLE ONLY public."GENEROS" DROP CONSTRAINT "GENEROS_nombre_genero_key";
       public            postgres    false    225            �           2606    16816 %   PELICULAS PELICULAS_link_pelicula_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."PELICULAS"
    ADD CONSTRAINT "PELICULAS_link_pelicula_key" UNIQUE (link_pelicula);
 S   ALTER TABLE ONLY public."PELICULAS" DROP CONSTRAINT "PELICULAS_link_pelicula_key";
       public            postgres    false    211            �           2606    16412    PELICULAS PELICULAS_portada_key 
   CONSTRAINT     a   ALTER TABLE ONLY public."PELICULAS"
    ADD CONSTRAINT "PELICULAS_portada_key" UNIQUE (portada);
 M   ALTER TABLE ONLY public."PELICULAS" DROP CONSTRAINT "PELICULAS_portada_key";
       public            postgres    false    211            �           2606    16403    PERFIL PERFIL_correo_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."PERFIL"
    ADD CONSTRAINT "PERFIL_correo_key" UNIQUE (correo);
 F   ALTER TABLE ONLY public."PERFIL" DROP CONSTRAINT "PERFIL_correo_key";
       public            postgres    false    209            �           2606    16401    PERFIL PERFIL_telefono_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."PERFIL"
    ADD CONSTRAINT "PERFIL_telefono_key" UNIQUE (telefono);
 H   ALTER TABLE ONLY public."PERFIL" DROP CONSTRAINT "PERFIL_telefono_key";
       public            postgres    false    209            �           2606    16440    CATALOGOS pk_catalogos 
   CONSTRAINT     _   ALTER TABLE ONLY public."CATALOGOS"
    ADD CONSTRAINT pk_catalogos PRIMARY KEY (id_catalogo);
 B   ALTER TABLE ONLY public."CATALOGOS" DROP CONSTRAINT pk_catalogos;
       public            postgres    false    215            �           2606    16430    FEEDBACKS pk_feedback 
   CONSTRAINT     ^   ALTER TABLE ONLY public."FEEDBACKS"
    ADD CONSTRAINT pk_feedback PRIMARY KEY (id_feedback);
 A   ALTER TABLE ONLY public."FEEDBACKS" DROP CONSTRAINT pk_feedback;
       public            postgres    false    214            �           2606    16608    GENEROS pk_generos 
   CONSTRAINT     Y   ALTER TABLE ONLY public."GENEROS"
    ADD CONSTRAINT pk_generos PRIMARY KEY (id_genero);
 >   ALTER TABLE ONLY public."GENEROS" DROP CONSTRAINT pk_generos;
       public            postgres    false    225            �           2606    16619    PARTICIPANTES pk_participantes 
   CONSTRAINT     k   ALTER TABLE ONLY public."PARTICIPANTES"
    ADD CONSTRAINT pk_participantes PRIMARY KEY (id_participante);
 J   ALTER TABLE ONLY public."PARTICIPANTES" DROP CONSTRAINT pk_participantes;
       public            postgres    false    227            �           2606    16410    PELICULAS pk_peliculas 
   CONSTRAINT     _   ALTER TABLE ONLY public."PELICULAS"
    ADD CONSTRAINT pk_peliculas PRIMARY KEY (id_pelicula);
 B   ALTER TABLE ONLY public."PELICULAS" DROP CONSTRAINT pk_peliculas;
       public            postgres    false    211            �           2606    16399    PERFIL pk_perfil 
   CONSTRAINT     \   ALTER TABLE ONLY public."PERFIL"
    ADD CONSTRAINT pk_perfil PRIMARY KEY (nombre_usuario);
 <   ALTER TABLE ONLY public."PERFIL" DROP CONSTRAINT pk_perfil;
       public            postgres    false    209            �           2606    16472 "   PELICULAS_CATALOGOS fk_id_catalogo    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_CATALOGOS"
    ADD CONSTRAINT fk_id_catalogo FOREIGN KEY (id_catalogo) REFERENCES public."CATALOGOS"(id_catalogo);
 N   ALTER TABLE ONLY public."PELICULAS_CATALOGOS" DROP CONSTRAINT fk_id_catalogo;
       public          postgres    false    3250    219    215            �           2606    16502 !   FEEDBACKS_ENVIADOS fk_id_feedback    FK CONSTRAINT     �   ALTER TABLE ONLY public."FEEDBACKS_ENVIADOS"
    ADD CONSTRAINT fk_id_feedback FOREIGN KEY (id_feedback) REFERENCES public."FEEDBACKS"(id_feedback);
 M   ALTER TABLE ONLY public."FEEDBACKS_ENVIADOS" DROP CONSTRAINT fk_id_feedback;
       public          postgres    false    214    3246    223            �           2606    16649    PELICULAS_GENEROS fk_id_genero    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_GENEROS"
    ADD CONSTRAINT fk_id_genero FOREIGN KEY (id_genero) REFERENCES public."GENEROS"(id_genero);
 J   ALTER TABLE ONLY public."PELICULAS_GENEROS" DROP CONSTRAINT fk_id_genero;
       public          postgres    false    225    3254    233            �           2606    16632 *   PELICULAS_PARTICIPANTES fk_id_participante    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_PARTICIPANTES"
    ADD CONSTRAINT fk_id_participante FOREIGN KEY (id_participante) REFERENCES public."PARTICIPANTES"(id_participante);
 V   ALTER TABLE ONLY public."PELICULAS_PARTICIPANTES" DROP CONSTRAINT fk_id_participante;
       public          postgres    false    3256    227    230            �           2606    16431    FEEDBACKS fk_id_pelicula    FK CONSTRAINT     �   ALTER TABLE ONLY public."FEEDBACKS"
    ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES public."PELICULAS"(id_pelicula);
 D   ALTER TABLE ONLY public."FEEDBACKS" DROP CONSTRAINT fk_id_pelicula;
       public          postgres    false    211    214    3244            �           2606    16457    FAVORITOS fk_id_pelicula    FK CONSTRAINT     �   ALTER TABLE ONLY public."FAVORITOS"
    ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES public."PELICULAS"(id_pelicula);
 D   ALTER TABLE ONLY public."FAVORITOS" DROP CONSTRAINT fk_id_pelicula;
       public          postgres    false    211    3244    217            �           2606    16467 "   PELICULAS_CATALOGOS fk_id_pelicula    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_CATALOGOS"
    ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES public."PELICULAS"(id_pelicula);
 N   ALTER TABLE ONLY public."PELICULAS_CATALOGOS" DROP CONSTRAINT fk_id_pelicula;
       public          postgres    false    219    211    3244            �           2606    16487    PELICULAS_VISTAS fk_id_pelicula    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_VISTAS"
    ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES public."PELICULAS"(id_pelicula);
 K   ALTER TABLE ONLY public."PELICULAS_VISTAS" DROP CONSTRAINT fk_id_pelicula;
       public          postgres    false    3244    221    211            �           2606    16644     PELICULAS_GENEROS fk_id_pelicula    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_GENEROS"
    ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES public."PELICULAS"(id_pelicula);
 L   ALTER TABLE ONLY public."PELICULAS_GENEROS" DROP CONSTRAINT fk_id_pelicula;
       public          postgres    false    233    3244    211            �           2606    16827 &   PELICULAS_PARTICIPANTES fk_id_pelicula    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_PARTICIPANTES"
    ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES public."PELICULAS"(id_pelicula);
 R   ALTER TABLE ONLY public."PELICULAS_PARTICIPANTES" DROP CONSTRAINT fk_id_pelicula;
       public          postgres    false    3244    211    230            �           2606    16482 "   PELICULAS_VISTAS fk_nombre_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."PELICULAS_VISTAS"
    ADD CONSTRAINT fk_nombre_usuario FOREIGN KEY (nombre_usuario) REFERENCES public."PERFIL"(nombre_usuario);
 N   ALTER TABLE ONLY public."PELICULAS_VISTAS" DROP CONSTRAINT fk_nombre_usuario;
       public          postgres    false    209    3238    221            �           2606    16497 $   FEEDBACKS_ENVIADOS fk_nombre_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public."FEEDBACKS_ENVIADOS"
    ADD CONSTRAINT fk_nombre_usuario FOREIGN KEY (nombre_usuario) REFERENCES public."PERFIL"(nombre_usuario);
 P   ALTER TABLE ONLY public."FEEDBACKS_ENVIADOS" DROP CONSTRAINT fk_nombre_usuario;
       public          postgres    false    223    3238    209            V      x������ � �      X      x������ � �      U      x������ � �      ^      x������ � �      `      x������ � �      b      x������ � �      R      x������ � �      Z      x������ � �      h      x������ � �      e      x������ � �      \      x������ � �      P      x������ � �     