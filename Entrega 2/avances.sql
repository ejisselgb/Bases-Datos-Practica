CREATE TABLE "Grupo 1"."USUARIO" (
	id_usuario SERIAL PRIMARY KEY,
	nombre varchar(50),
	correo varchar(30),
	telefono varchar(10),
	pais varchar(20)
);

CREATE TABLE "Grupo 1"."PELICULAS" (
	id_pelicula SERIAL PRIMARY KEY,
	titulo varchar(100),
	fecha_lanzamiento DATE,
	genero varchar(20)
);

CREATE TABLE "Grupo 1"."CATALOGO" (
	id_catalogo SERIAL PRIMARY KEY,
	id_pelicula SERIAL,
	region varchar(30),
	CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1"."PELICULAS"(id_pelicula)
);

CREATE TABLE "Grupo 1"."PERFIL" (
	id_perfiles SERIAL PRIMARY KEY,
	id_catalogo SERIAL,
	nombre varchar(20),
	tipo varchar(15),
	avatar varchar,
	preferencias varchar(100),
	CONSTRAINT fk_id_catalogo FOREIGN KEY (id_catalogo) REFERENCES "Grupo 1"."CATALOGO"(id_catalogo)
);

CREATE TABLE "Grupo 1"."CUENTA" (
	nombre_usuario varchar(20) PRIMARY KEY,
	id_usuario SERIAL,
	id_perfiles SERIAL,
	contraseña varchar(10),
	membresia varchar(10),
	CONSTRAINT fk_id_perfiles FOREIGN KEY (id_perfiles) REFERENCES "Grupo 1"."PERFIL"(id_perfiles),
	CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES "Grupo 1"."USUARIO"(id_usuario)
);

CREATE TABLE "Grupo 1"."CALIFICACION" (
	id_pelicula SERIAL PRIMARY KEY,
	id_perfiles SERIAL, 
	likes int4,
	comentarios int2,
	CONSTRAINT fk_id_perfiles FOREIGN KEY (id_perfiles) REFERENCES "Grupo 1"."PERFIL",
	CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "Grupo 1"."PELICULAS"
);