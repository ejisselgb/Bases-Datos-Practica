CREATE TABLE "Grupo 1 - T2"."USUARIO" (
    id_usuario SERIAL PRIMARY KEY,
    id_ciudad SERIAL,
    nombre_usuario varchar(30),
    correo varchar(50),
    contrasena varchar(20),
    telefono varchar(10),
    CONSTRAINT fk_id_ciudad FOREIGN KEY (id_ciudad) REFERENCES "Grupo 1 - T2"."CIUDAD"(id_ciudad)
);

CREATE TABLE "Grupo 1 - T2"."PERFIL" (
    id_perfil SERIAL PRIMARY KEY,
    id_usuario SERIAL,
    nombre_perfil varchar(15),
    avatar varchar(50),
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES "Grupo 1 - T2"."USUARIO"(id_usuario)
);

CREATE TABLE "Grupo 1 - T2"."PLANES" (
    id_plan SERIAL PRIMARY KEY,
    tipo varchar(15),
    precio varchar(30)
);

CREATE TABLE "Grupo 1 - T2"."SUSCRIPCIONES" (
    id_suscripciones PRIMARY KEY,
    id_usuario SERIAL,
    id_plan SERIAL,
    fecha_vencimiento DATE,
    estado varchar(10),
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES "Grupo 1 - T2"."USUARIO"(id_usuario),
    CONSTRAINT fk_id_plan FOREIGN KEY (id_plan) REFERENCES "Grupo 1 - T2"."PLANES"(id_plan),
);

CREATE TABLE "Grupo 1 - T2"."PELICULAS" (
    id_pelicula SERIAL PRIMARY KEY,
    nombre varchar(50),
    sinopsis varchar(150),
    fecha_lanzamiento DATE,
    poster varchar(50),
    trailer varchar(100)
    num_capitulos 
);

CREATE TABLE "Grupo 1 - T2"."SERIES"(
    id_serie SERIAL PRIMARY KEY,
    nombre varchar(50),
    sinopsis varchar(150),
    fecha_lanzamiento DATE,
    poster varchar(50)
    trailer varchar(100),
    num_capitulos int4
);

CREATE TABLE "Grupo 1 - T2"."CATEGORIAS" (
    id_categoria SERIAL PRIMARY KEY,
    nombre_categoria varchar(30)
);

CREATE TABLE "Grupo 1 - T2"."PELICULAS_CATEGORIAS" (
    id_pelicula SERIAL,
    id_categoria SERIAL,
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1 - T2"."PELICULAS"(id_pelicula),
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES "Grupo 1 - T2"."CATEGORIAS"(id_categoria)
);

CREATE TABLE "Grupo 1 - T2"."SERIES_CATEGORIAS" (
    id_serie SERIAL,
    id_categoria SERIAL,
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 1 - T2"."SERIES"(id_serie),
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES "Grupo 1 - T2"."CATEGORIAS"(id_categoria)
);

CREATE TABLE "Grupo 1 - T2"."PELICULAS_FAVORITAS" (
    id_perfil SERIAL,
    id_pelicula SERIAL,
    CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 1 - T2"."PERFIL"(id_perfil),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1 - T2"."PELICULAS"(id_pelicula)
);

CREATE TABLE "Grupo 1 - T2"."ACTORES" (
    id_actores SERIAL PRIMARY KEY,
    nombre varchar(30)
);

CREATE TABLE "Grupo 1 - T2"."ACTORES_PELICULA" (
    id_actores SERIAL,
    id_pelicula SERIAL,
    CONSTRAINT fk_id_actores FOREIGN KEY (id_actores) REFERENCES "Grupo 1 - T2"."ACTORES"(id_actores),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1 - T2"."PELICULAS"(id_pelicula)
);

CREATE TABLE "Grupo 1 - T2"."ACTORES_SERIE" (
    id_actores SERIAL,
    id_serie SERIAL,
    CONSTRAINT fk_id_actores FOREIGN KEY (id_actores) REFERENCES "Grupo 1 - T2"."ACTORES"(id_actores),
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 1 - T2"."SERIES"(id_serie)
);

CREATE TABLE "Grupo 1 - T2"."PAIS" (
    id_pais SERIAL PRIMARY KEY,
    nombre varchar(15)
);

CREATE TABLE "Grupo 1 - T2"."ZONA" (
    id_zona SERIAL PRIMARY KEY,
    id_pais SERIAL,
    nombre varchar(15),
    CONSTRAINT fk_id_pais FOREIGN KEY (id_pais) REFERENCES "Grupo 1 - T2"."PAIS"(id_pais),
);

CREATE TABLE "Grupo 1 - T2"."CIUDAD" (
    id_ciudad SERIAL PRIMARY KEY,
    id_zona SERIAL,
    nombre varchar(15),
    CONSTRAINT fk_id_zona FOREIGN KEY (id_zona) REFERENCES "Grupo 1 - T2"."ZONA"(id_zona)
);

CREATE TABLE "Grupo 1 - T2"."IDIOMAS" (
    id_idioma SERIAL PRIMARY KEY,
    idioma varchar(10)
);

CREATE TABLE "Grupo 1 - T2"."IDIOMAS_PELICULAS" (
    id_idioma SERIAL,
    id_pelicula SERIAL,
    CONSTRAINT fk_id_idioma FOREIGN KEY (id_idioma) REFERENCES "Grupo 1 - T2"."IDIOMAS"(id_idioma),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1 - T2"."PELICULAS"(id_pelicula)
);

CREATE TABLE "Grupo 1 - T2"."IDIOMAS_SERIES" (
    id_idioma SERIAL,
    id_serie SERIAL,
    CONSTRAINT fk_id_idioma FOREIGN KEY (id_idioma) REFERENCES "Grupo 1 - T2"."IDIOMAS"(id_idioma),
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 1 - T2"."SERIES"(id_serie)
);

CREATE TABLE "Grupo 1 - T2"."TIEMPO_VISUALIZACIÓN" (
    id_pelicula SERIAL,
    id_perfil SERIAL,
    tiempo varchar(5),
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1 - T2"."PELICULAS"(id_pelicula),
    CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 1 - T2"."PERFIL"(id_perfil)
);

CREATE TABLE "Grupo 1 - T2"."CALIFICACIÓN_PELICULA" (
    id_perfil
    id_pelicula SERIAL,
    calificación int4,
    CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1 - T2"."PELICULAS"(id_pelicula)
);

CREATE TABLE "Grupo 1 - T2"."CALIFICACIÓN_SERIE" (
    id_perfil SERIAL,
    id_serie SERIAL,
    calificación int4,
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 1 - T2"."SERIES"(id_serie),
    CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil) REFERENCES "Grupo 1 - T2"."PERFIL"(id_perfil)
);

CREATE TABLE "Grupo 1 - T2"."CAPITULOS_SERIE" (
    id_serie SERIAL,
    temporada int4,
    num_capitulo int4,
    descripcion_capitulo varchar(500),
    duracion int(5),
    caratula varchar(100),
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES "Grupo 1 - T2"."SERIES"(id_serie)
);