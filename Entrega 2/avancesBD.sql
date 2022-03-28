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


--Inserts usuario //no se pone el serial del pk, al fk si// (id usuario PK, nombre, correo, telefono, pais)
INSERT INTO "Grupo 1"."USUARIO" (nombre, correo, telefono, pais)
VALUES
('Sara Castrillón', 'saritalabest@correo.com', '3206574895', 'Colombia'),
('María José González', 'majo_lamejor@correo.com', '3214589623', 'Colombia'),
('Humberto Carbonó', 'hmbertico25@correo.com', '3334587411', 'México'),
('David Idárraga', 'davididarr@correo.com', '4507896322', 'Ecuador'),
('Valeria Gómez', 'valeg125@correo.com', '2334521445', 'Chile')
;

--Inserts Peliculas (id pelicula PK, titulo, fecha lanzamiento, genero)
INSERT INTO "Grupo 1"."PELICULAS" (titulo, fecha_lanzamiento, genero)
VALUES
('El hombre araña', '2002/05/31', 'Acción' ),
('La isla siniestra', '2010/03/5', 'Thriller'),
('Encanto', '2021/11/25', 'Músical'),
('Sinister', '2012/11/9', 'Terror'),
('Shrek', '2001/06/22', 'Fantasía'),
('¿Qué pasó ayer?', '2009/08/14', 'Comedia'),
('Hannibal', '2001/02/16', 'Crimen'),
('A dos metros de ti', '2019/03/7', 'Romance')
;

--Inserts Catalogo (id catalogo PK, id pelicula fk de peliculas, region)
INSERT INTO "Grupo 1"."CATALOGO" (region)
VALUES
(5, 'Colombia'),
(3, 'México'),
(2,'Ecuador'),
(4, 'Chile'),
(1 ,'Colombia')
;

--Inserts Perfil (id perfiles PK, id catalogo fk de catalogo, nombre, tipo, avatar, preferencias)
INSERT INTO "Grupo 1"."PERFIL" (id_catalogo, nombre, tipo, avatar, preferencias)
VALUES
(5 ,'Saris1', 'Adulto', 'imagen1.jpg', 'Fantasía, Acción, Romance'),
(1 ,'Majotinieblas', 'Adulto', 'imagen2.jpg', 'Terror, Thriller, Crimen'),
(2, 'Humbertico25', 'Niño', 'imagen3.jpg', 'Comedia, Musical, Fantasía'),
(7, 'DavidI45', 'Adulto', 'imagen4.jpg', 'Thriller, Acción, Comedia'),
(8, 'Valeg123', 'Niño', 'imagen5.jpg', 'Comedia, Acción')
;

--Inserts Cuenta (nombre usuario PK, id usuario fk de usuario, id perfiles fk de perfil, contraseña, membresía)
INSERT INTO "Grupo 1"."CUENTA" (id_usuario, id_perfiles, nombre_usuario, contraseña, membresia)
VALUES
(1, 1, 'sarac15', 'tobbey45a7', 'Premium'),
(2, 2, 'majot', 'majotin777', 'Full'),
(3, 3, 'bertix4', 'gusGus1', 'Basic'),
(4, 4, 'david75', 'idarrdav74', 'Basic'),
(5, 5, 'valeG', 'holaV74', 'Full')
;

--Inserts Calificación (id pelicula fk de peliculas PK, id perfiles fk de perfiles, likes, comentarios)
INSERT INTO "Grupo 1"."CALIFICACION" (id_pelicula, id_perfiles, likes, comentarios)
VALUES
(1, 1, 45, 'Amo al hombre araña'),
(2, 4, 105, 'Wow no me imaginaba ese final'),
(3, 5, 35, 'Mi sobrina ama esta pelicula'),
(4, 2, 15, 'Me dió mucho miedo la pelii'),
(5, 3, 200, 'No me canso de verla nunca'),
(6, 3, 56, 'jaja muy charra'),
(7, 2, 10, 'Muy impactante omg'),
(8, 1, 5, 'Casi no me gusto pero bueno!!!')
;


