CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."PAISES"(
    id_pais SERIAL NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    CONSTRAINT "pk_id_pais" PRIMARY KEY (id_pais)
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."ZONAS" (
    id_zona SERIAL NOT NULL,
    id_pais SERIAL NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_id_zona" PRIMARY KEY (id_zona),
    CONSTRAINT "fk_id_pais" FOREIGN KEY (id_pais) REFERENCES "Grupo 3 - T2"."PAISES" (id_pais) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."CIUDADES" (
    id_ciudad SERIAL NOT NULL,
    id_zona SERIAL NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_id_ciudad" PRIMARY KEY (id_ciudad),
    CONSTRAINT "fk_id_zona" FOREIGN KEY (id_zona) REFERENCES "Grupo 3 - T2"."ZONAS" (id_zona) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."USUARIOS"(
    id_usuario SERIAL NOT NULL,
    id_ciudad SERIAL NOT NULL,
    correo VARCHAR(30) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    constrasena_usuario VARCHAR(20) NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    tarjeta VARCHAR(25) NOT NULL,
    CONSTRAINT "pk_usuario" PRIMARY KEY (id_usuario),
    CONSTRAINT "fk_id_ciudad" FOREIGN KEY (id_ciudad) REFERENCES "Grupo 3 - T2"."CIUDADES" (id_ciudad) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."PERFILES"(
    id_perfil SERIAL NOT NULL,
    id_usuario SERIAL NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    edad INT NOT NULL,
    foto VARCHAR(300) NOT NULL,
    contrasena_perfil VARCHAR(30),
    fecha_nacimiento DATE NOT NULL,
    restriccion_edad INT NOT NULL,
    CONSTRAINT "pk_perfil" PRIMARY KEY (id_perfil),
    CONSTRAINT "fk_id_usuario" FOREIGN KEY (id_usuario) REFERENCES "Grupo 3 - T2"."USUARIOS" (id_usuario) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."PLANES"(
    id_plan SERIAL NOT NULL,
    precio INT NOT NULL,
    duracion INT NOT NULL,
    foto VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_plan" PRIMARY KEY (id_plan)
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."SUSCRIPCIONES"(
    id_suscripcion SERIAL NOT NULL,
    id_usuario SERIAL NOT NULL,
    id_plan SERIAL NOT NULL,
    fecha_pago DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    activo BOOLEAN NOT NULL,
    CONSTRAINT "pk_id_suscripcion" PRIMARY KEY (id_suscripcion, id_usuario, id_plan),
    CONSTRAINT "fk_id_usuario" FOREIGN KEY (id_usuario) REFERENCES "Grupo 3 - T2"."USUARIOS" (id_usuario) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_plan" FOREIGN KEY (id_plan) REFERENCES "Grupo 3 - T2"."PLANES" (id_plan) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."PELICULAS"(
    id_pelicula SERIAL NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    duracion INT NOT NULL,
    sinopsis VARCHAR(500) NOT NULL,
    ano_estreno INT NOT NULL,
    restriccion_edad INT NOT NULL,
    cartel VARCHAR(300) NOT NULL,
    archivo_trailer VARCHAR(500) NOT NULL,
    archivo_pelicula VARCHAR(500) NOT NULL,
    CONSTRAINT "pk_id_pelicula" PRIMARY KEY (id_pelicula)
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."SERIES"(
    id_serie SERIAL NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    temporadas INT NOT NULL,
    sinopsis VARCHAR(500) NOT NULL,
    ano_estreno INT NOT NULL,
    restriccion_edad INT NOT NULL,
    cartel VARCHAR(300) NOT NULL,
    archivo_trailer VARCHAR(500) NOT NULL,
    CONSTRAINT "pk_id_serie" PRIMARY KEY (id_serie)
);


CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."CAPITULOS_SERIES"(
    id_capitulo SERIAL NOT NULL,
    id_serie SERIAL NOT NULL,
    duracion INT NOT NULL,
    archivo_capitulo VARCHAR(500) NOT NULL,
    descripcion VARCHAR(500) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_id_capitulo" PRIMARY KEY (id_capitulo),
    CONSTRAINT "fk_id_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 3 - T2"."SERIES" (id_serie) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."IDIOMAS" (
    id_idioma SERIAL NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_id_idioma" PRIMARY KEY (id_idioma)
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."IDIOMAS_PELICULAS" (
    id_idioma_pelicula SERIAL NOT NULL,
    id_idioma SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_idioma_pelicula" PRIMARY KEY (id_idioma_pelicula,id_idioma,id_pelicula),
    CONSTRAINT "fk_id_idioma" FOREIGN KEY (id_idioma) REFERENCES "Grupo 3 - T2"."IDIOMAS" (id_idioma) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3 - T2"."PELICULAS" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."IDIOMAS_SERIES" (
    id_idioma_serie SERIAL NOT NULL,
    id_idioma SERIAL NOT NULL,
    id_serie SERIAL NOT NULL,
    CONSTRAINT "pk_id_idioma_serie" PRIMARY KEY (id_idioma_serie,id_idioma,id_serie),
    CONSTRAINT "fk_id_idioma" FOREIGN KEY (id_idioma) REFERENCES "Grupo 3 - T2"."IDIOMAS" (id_idioma) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 3 - T2"."SERIES" (id_serie) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."TIEMPOS_VISUALIZACION_PELICULAS" (
    id_tiempo_pelicula SERIAL NOT NULL,
    id_perfil SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    tiempo INTEGER NOT NULL,
    CONSTRAINT "pk_id_tiempo_pelicula" PRIMARY KEY (id_tiempo_pelicula,id_perfil,id_pelicula),
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3 - T2"."PERFILES" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3 - T2"."PELICULAS" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."TIEMPOS_VISUALIZACION_SERIES" (
    id_tiempo_cap_serie SERIAL NOT NULL,
    id_perfil SERIAL NOT NULL,
    id_capitulo SERIAL NOT NULL,
    tiempo INTEGER NOT NULL,
    CONSTRAINT "pk_id_tiempo_cap_serie" PRIMARY KEY (id_tiempo_cap_serie,id_perfil,id_capitulo),
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3 - T2"."PERFILES" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_capitulo" FOREIGN KEY (id_capitulo) REFERENCES "Grupo 3 - T2"."CAPITULOS_SERIES" (id_capitulo) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."CALIFICACIONES_PELICULAS" (
    id_calificacion_pelicula SERIAL NOT NULL,
    id_perfil SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    calificacion INTEGER NOT NULL,
    comentario VARCHAR(300),
    CONSTRAINT "pk_id_calificacion_pelicula" PRIMARY KEY (id_calificacion_pelicula,id_perfil,id_pelicula),
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3 - T2"."PERFILES" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3 - T2"."PELICULAS" (id_pelicula) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."CALIFICACIONES_SERIES" (
    id_calificacion_serie SERIAL NOT NULL,
    id_perfil SERIAL NOT NULL,
    id_serie SERIAL NOT NULL,
    calificacion INTEGER NOT NULL,
    comentario VARCHAR(300),
    CONSTRAINT "pk_id_calificacion_serie" PRIMARY KEY (id_calificacion_serie,id_perfil,id_serie),
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3 - T2"."PERFILES" (id_perfil) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 3 - T2"."SERIES" (id_serie) MATCH FULL
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."CATEGORIAS"(
    id_categoria SERIAL NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    CONSTRAINT "pk_id_categoria" PRIMARY KEY (id_categoria)
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."PELICULAS_CATEGORIAS"(
    id_pelicula_categoria SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    id_categoria SERIAL NOT NULL,
    CONSTRAINT "pk_id_pelicula_categoria" PRIMARY KEY (id_pelicula_categoria,id_pelicula,id_categoria),
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3 - T2"."PELICULAS" (id_pelicula) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_categoria" FOREIGN KEY (id_categoria) REFERENCES "Grupo 3 - T2"."CATEGORIAS" (id_categoria) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."SERIES_CATEGORIAS"(
    id_serie_categoria SERIAL NOT NULL,
    id_serie SERIAL NOT NULL,
    id_categoria SERIAL NOT NULL,
    CONSTRAINT "pk_id_serie_categoria" PRIMARY KEY (id_serie_categoria,id_serie,id_categoria),
    CONSTRAINT "fk_id_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 3 - T2"."SERIES" (id_serie) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_categoria" FOREIGN KEY (id_categoria) REFERENCES "Grupo 3 - T2"."CATEGORIAS" (id_categoria) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."PELICULAS_FAVORITAS"(
    id_pelicula_favorita SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    id_perfil SERIAL NOT NULL,
    CONSTRAINT "pk_id_pelicula_favorita_perfil" PRIMARY KEY (id_pelicula_favorita,id_pelicula,id_perfil),
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3 - T2"."PELICULAS" (id_pelicula) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3 - T2"."PERFILES" (id_perfil) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."SERIES_FAVORITAS"(
    id_serie_favorita SERIAL NOT NULL,
    id_serie SERIAL NOT NULL,
    id_perfil SERIAL NOT NULL,
    CONSTRAINT "pk_id_serie_favorita_perfil" PRIMARY KEY (id_serie_favorita,id_serie,id_perfil),
    CONSTRAINT "fk_id_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 3 - T2"."SERIES" (id_serie) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 3 - T2"."PERFILES" (id_perfil) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."ACTORES"(
    id_actor SERIAL NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    CONSTRAINT "pk_id_actor" PRIMARY KEY (id_actor)
);

CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."ACTORES_PELICULAS"(
    id_actor_pelicula SERIAL NOT NULL,
    id_actor SERIAL NOT NULL,
    id_pelicula SERIAL NOT NULL,
    CONSTRAINT "pk_id_actor_pelicula" PRIMARY KEY (id_actor_pelicula,id_actor,id_pelicula),
    CONSTRAINT "fk_id_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 3 - T2"."PELICULAS" (id_pelicula) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_actor" FOREIGN KEY (id_actor) REFERENCES "Grupo 3 - T2"."ACTORES" (id_actor) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS "Grupo 3 - T2"."ACTORES_SERIES"(
    id_actor_serie SERIAL NOT NULL,
    id_actor SERIAL NOT NULL,
    id_serie SERIAL NOT NULL,
    CONSTRAINT "pk_id_actor_serie" PRIMARY KEY (id_actor_serie,id_actor,id_serie),
    CONSTRAINT "fk_id_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 3 - T2"."SERIES" (id_serie) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "fk_id_actor" FOREIGN KEY (id_actor) REFERENCES "Grupo 3 - T2"."ACTORES" (id_actor) MATCH FULL
    ON DELETE CASCADE ON UPDATE CASCADE
);
