
CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS"(
		id_usuario SERIAL PRIMARY KEY, 
		correo VARCHAR(30),
		contrasena VARCHAR(10) 
);


CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PLANES"(
		id_plan SERIAL PRIMARY KEY, 
		nombre VARCHAR(20),
		duracion INT,
		precio INT 
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (
	id_suscripcion SERIAL PRIMARY KEY,
	id_usuario INT,
	id_plan INT, 
	activo BOOLEAN,
	fecha_vencimiento DATE
); 

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES"(
	id_actor SERIAL PRIMARY KEY,
	nombre varchar (30),
	apellido varchar(30)
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS"(
	id_pelicula SERIAL PRIMARY KEY,
	nombre VARCHAR (30),
	descripcion VARCHAR(50),
    fecha_estreno DATE
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES"(
	id_serie SERIAL PRIMARY KEY,
	nombre VARCHAR (30),
	descripcion VARCHAR(50),
    fecha_estreno DATE
);


CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS"(
	id_actor INT,
	id_pelicula INT
);


CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES"(
	id_actor INT,
	id_serie INT
);


CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS"(
	id_idioma SERIAL PRIMARY KEY,
	idioma VARCHAR(20)
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS"(
	id_categoria SERIAL PRIMARY KEY,
	categoria VARCHAR(20)
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS"(
	id_idioma INT,
	id_pelicula INT
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES"(
	id_idioma INT,
	id_serie INT
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS"(
	id_calificacion SERIAL PRIMARY KEY,
	id_pelicula INT,
    calificaion INT
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES"(
	id_calificacion SERIAL PRIMARY KEY,
	id_serie INT,
    calificaion INT
);


CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS"(
	id_categoria INT,
	id_pelicula INT
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS"(
	id_categoria INT,
	id_serie INT
);



CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PAIS"(
	id_pais SERIAL PRIMARY KEY,
	nombre VARCHAR(30)
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ZONA"(
	id_zona SERIAL PRIMARY KEY,
    id_pais INT,
	nombre VARCHAR(30)
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDAD"(
	id_ciudad SERIAL PRIMARY KEY,
    id_departamento INT,
    id_pais INT,
	nombre VARCHAR(30)
);


CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PERFIL"(
	id_perfil SERIAL PRIMARY KEY,
    id_usuario INT,
    id_pais INT,
    id_departamento INT,
    id_ciudad INT, 
    edad INT,
	nombre VARCHAR (20)
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS"(
	id_perfil  INT,
	id_pelicula  INT
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS"(
	id_perfil  INT,
	id_serie  INT
);

CREATE TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION"(
	id_tiempo  SERIAL PRIMARY KEY,
	id_perfil INT,
	id_pelicula INT,
	id_serie INT,
	tiempo  TIME
);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" ADD CONSTRAINT "fk_usuario" FOREIGN KEY (id_usuario) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (id_usuario);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" ADD CONSTRAINT "fk_plan" FOREIGN KEY (id_plan) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PLANES" (id_plan);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" ADD CONSTRAINT "fk_pais" FOREIGN KEY (id_pais) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PAISES" (id_pais);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" ADD CONSTRAINT "fk_zona" FOREIGN KEY (id_zona) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona);



ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" ADD CONSTRAINT "fk_usuario" FOREIGN KEY (id_usuario) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (id_usuario);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" ADD CONSTRAINT "fk_pais" FOREIGN KEY (id_pais) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PAISES" (id_pais);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" ADD CONSTRAINT "fk_zona" FOREIGN KEY (id_zona) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" ADD CONSTRAINT "fk_ciudad" FOREIGN KEY (id_ciudad) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad);



ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" ADD CONSTRAINT "fk_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" ADD CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" ADD CONSTRAINT "fk_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie);



ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" ADD CONSTRAINT "fk_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" ADD CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" ADD CONSTRAINT "fk_perfil" FOREIGN KEY (id_perfil) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" ADD CONSTRAINT "fk_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" ADD CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES" ADD CONSTRAINT "fk_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" ADD CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" ADD CONSTRAINT "fk_actor" FOREIGN KEY (id_actor) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor);

ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" ADD CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" ADD CONSTRAINT "fk_idioma" FOREIGN KEY (id_idioma) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma);



ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES"  ADD CONSTRAINT "fk_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" ADD CONSTRAINT "fk_idioma" FOREIGN KEY (id_idioma) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma);




ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS"  ADD CONSTRAINT "fk_serie" FOREIGN KEY (id_serie) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" ADD CONSTRAINT "fk_categoria" FOREIGN KEY (id_categoria) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria);



ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" ADD CONSTRAINT "fk_pelicula" FOREIGN KEY (id_pelicula) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula);


ALTER TABLE "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" ADD CONSTRAINT "fk_categoria" FOREIGN KEY (id_categoria) REFERENCES "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria);


