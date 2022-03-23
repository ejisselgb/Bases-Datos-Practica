CREATE TABLE "Grupo 4"."Usuario"(
	nombre_usuario varchar(10), 
	imagen varchar(100), 
	telefono varchar(10),
	edad int2,
	nombre varchar(30), 
	apellido varchar(30), 
	contrasena varchar(15), 
	correo varchar(40)
	);

CREATE TABLE "Grupo 4"."Peliculas"(
	id_pelicula serial, 
	nombre_pelicula varchar(40), 
	portada varchar(100), 
	restriccion_edad int2, 
	duracion time, 
	fecha_estreno date, 
	link_pelicula varchar(50)
	);
	
CREATE TABLE "Grupo 4"."Genero"(
	id_genero serial,
	nombre_genero varchar(30)
	);

ALTER TABLE "Grupo 4"."Usuario" 
	ADD	CONSTRAINT pk_usuario PRIMARY KEY(nombre_usuario), 
	ADD CONSTRAINT telefono_correo_uq UNIQUE (telefono, correo),
	ALTER COLUMN imagen SET NOT NULL,
	ALTER COLUMN telefono SET NOT NULL,
	ALTER COLUMN edad SET NOT NULL,
	ALTER COLUMN nombre SET NOT NULL,
	ALTER COLUMN contrasena SET NOT NULL,
	ALTER COLUMN apellido SET NOT NULL,
	ALTER COLUMN correo SET NOT NULL;
	
ALTER TABLE "Grupo 4"."Peliculas"
	ADD CONSTRAINT pk_peliculas PRIMARY KEY(id_pelicula),
	ADD CONSTRAINT link_portada_uq UNIQUE (portada, link_pelicula),
	ALTER COLUMN nombre_pelicula SET NOT NULL,
	ALTER COLUMN portada SET NOT NULL,
	ALTER COLUMN duracion SET NOT NULL,
	ALTER COLUMN fecha_estreno SET NOT NULL,
	ALTER COLUMN link_pelicula SET NOT NULL;
	
ALTER TABLE "Grupo 4"."Genero"
	ADD CONSTRAINT pk_genero PRIMARY KEY(id_genero),
	ADD CONSTRAINT nombre_genero_uq UNIQUE (nombre_genero),
	ALTER COLUMN nombre_genero SET NOT NULL;

SET DATESTYLE TO "EUROPEAN";

INSERT INTO "Grupo 4"."Usuario" VALUES ('Giansz','Imagen.JPG','3022205116',18,'Gian Paul','Sanchez','1q2w3e4r5t','Giansz@gmail.com');
INSERT INTO "Grupo 4"."Usuario" VALUES ('JuanesJara','Imagen.JPG','3032505134',18,'Juan Esteban','Jaramillo','JuanesLindo','jarami@gmail.com');
INSERT INTO "Grupo 4"."Usuario" VALUES ('PalacioJ','Imagen.JPG','3034405547',18,'Samuel','Palacio','Zetlix123456','SpalacioJ@gmail.com');

INSERT INTO "Grupo 4"."Peliculas" values(1,'El paseo 2','Portada.JPG',15,'1:05:50','23/3/2022','https://elpaseo-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(2,'A todo gas','Portada2.JPG',18,'2:15:30','22/3/2012','https://a-todo-gas-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(3,'Lobezno','Portada3.JPG',10,'5:35:27','30/3/2017','https://lobezno-mp4.com');

INSERT INTO "Grupo 4"."Genero" values (01,'Comedia');
INSERT INTO "Grupo 4"."Genero" values (02,'Accion');
INSERT INTO "Grupo 4"."Genero" values (03,'Drama');

CREATE TABLE IF NOT EXISTS "Grupo 4"."Feedback"(
	id_feedback serial,
	id_pelicula serial,
	comentario varchar(256),
	valoracion int2,
	CONSTRAINT pk_feedback PRIMARY KEY(id_feedback),
	CONSTRAINT fK_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4"."Peliculas"(id_pelicula)
	);