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
	portada varchar(100), restriccion_edad int2, 
	duracion time, 
	fecha_estreno date, 
	link_pelicula varchar(50)
	);
	
CREATE TABLE "Grupo 4"."Genero"(
	id_genero serial,
	nombre_genero varchar(30)
	);

ALTER TABLE "Grupo4"."Usuario" 
	ADD	CONSTRAINT pk_usuario PRIMARY KEY(nombre_usuario), 
	ADD CONSTRAINT telefono_correo_uq UNIQUE (telefono, correo),
	ALTER COLUMN imagen SET NOT NULL,
	ALTER COLUMN telefono SET NOT NULL,
	ALTER COLUMN edad SET NOT NULL,
	ALTER COLUMN nombre SET NOT NULL,
	ALTER COLUMN contrasena SET NOT NULL,
	ALTER COLUMN apellido SET NOT NULL,
	ALTER COLUMN correo SET NOT NULL;
	
ALTER TABLE "Grupo 4"."Pelicula"
	ADD CONSTRAINT pk_peliculas PRIMARY KEY(id_pelcula),
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