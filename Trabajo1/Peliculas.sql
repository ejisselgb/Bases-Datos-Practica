-- Database: peliculas

-- DROP DATABASE IF EXISTS peliculas;

CREATE DATABASE peliculas
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Colombia.1252'
    LC_CTYPE = 'Spanish_Colombia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Table: public.CALIFICACION

-- DROP TABLE IF EXISTS public."CALIFICACION";

CREATE TABLE IF NOT EXISTS public."CALIFICACION"
(
    id_pelicula character varying(10) COLLATE pg_catalog."default",
    id_perfil integer NOT NULL DEFAULT nextval('"CALIFICACION_id_perfil_seq"'::regclass),
    likes integer,
    comentarios character varying(3000) COLLATE pg_catalog."default",
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula)
        REFERENCES public."PELICULA" (id_pelicula) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil)
        REFERENCES public."PERFIL" (id_perfil) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CALIFICACION"
    OWNER to postgres;

-- Table: public.CATALOGO

-- DROP TABLE IF EXISTS public."CATALOGO";

CREATE TABLE IF NOT EXISTS public."CATALOGO"
(
    id_catalogo character varying(10) COLLATE pg_catalog."default" NOT NULL,
    id_peliculas character varying(10) COLLATE pg_catalog."default",
    mas_vistos character(1) COLLATE pg_catalog."default",
    region character varying(5) COLLATE pg_catalog."default",
    CONSTRAINT pk_id_catalogo PRIMARY KEY (id_catalogo),
    CONSTRAINT fk_id_peliculas FOREIGN KEY (id_peliculas)
        REFERENCES public."PELICULA" (id_pelicula) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CATALOGO"
    OWNER to postgres;

-- Table: public.CUENTA

-- DROP TABLE IF EXISTS public."CUENTA";

CREATE TABLE IF NOT EXISTS public."CUENTA"
(
    nombre_usuario character varying(30) COLLATE pg_catalog."default" NOT NULL,
    correo character varying(30) COLLATE pg_catalog."default",
    id_perfiles integer NOT NULL DEFAULT nextval('"CUENTA_id_perfiles_seq"'::regclass),
    "contrase¤a" character varying(8) COLLATE pg_catalog."default",
    menbresia character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT pk_nombre_usuario PRIMARY KEY (nombre_usuario),
    CONSTRAINT fk_id_perfiles FOREIGN KEY (id_perfiles)
        REFERENCES public."PERFIL" (id_perfil) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."CUENTA"
    OWNER to postgres;

-- Table: public.PELICULA

-- DROP TABLE IF EXISTS public."PELICULA";

CREATE TABLE IF NOT EXISTS public."PELICULA"
(
    id_pelicula character varying(10) COLLATE pg_catalog."default" NOT NULL,
    rating integer,
    "a¤o" integer,
    reparto character varying(500) COLLATE pg_catalog."default",
    genero character varying(30) COLLATE pg_catalog."default",
    titulo character varying(40) COLLATE pg_catalog."default",
    CONSTRAINT pk_id_pelicula PRIMARY KEY (id_pelicula)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."PELICULA"
    OWNER to postgres;

-- Table: public.PERFIL

-- DROP TABLE IF EXISTS public."PERFIL";

CREATE TABLE IF NOT EXISTS public."PERFIL"
(
    id_perfil integer NOT NULL DEFAULT nextval('"PERFIL_id_perfil_seq"'::regclass),
    id_catalogo character varying(10) COLLATE pg_catalog."default",
    nombre character varying(10) COLLATE pg_catalog."default",
    tipo character varying(10) COLLATE pg_catalog."default",
    avatar character varying(3000) COLLATE pg_catalog."default",
    preferencias character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT pk_id_perfil PRIMARY KEY (id_perfil),
    CONSTRAINT fk_id_catalogo FOREIGN KEY (id_catalogo)
        REFERENCES public."CATALOGO" (id_catalogo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."PERFIL"
    OWNER to postgres;


-- Table: public.USUARIO

-- DROP TABLE IF EXISTS public."USUARIO";

CREATE TABLE IF NOT EXISTS public."USUARIO"
(
    id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    correo character varying(30) COLLATE pg_catalog."default",
    nombre character varying(40) COLLATE pg_catalog."default",
    telefono character varying(10) COLLATE pg_catalog."default",
    pais character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT pk_id PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."USUARIO"
    OWNER to postgres;