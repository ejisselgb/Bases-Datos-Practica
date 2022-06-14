CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."USUARIOS"(
	Id_usuario serial, 
	nombre_usuario varchar(100) NOT NULL,
	telefono varchar(10) UNIQUE NOT NULL,
	contrasena varchar(15) NOT NULL, 
	correo varchar(40) NOT NULL,
	info_tarjeta varchar(16)UNIQUE NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY(Id_usuario)
	);

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."PERFIL"(
	Id_perfil serial,
	Id_usuario serial,
	nombre varchar(30) NOT NULL,
	imagen varchar(200) NOT NULL,
	edad int NOT NULL,
	CONSTRAINT pk_perfil PRIMARY KEY(Id_perfil),
	CONSTRAINT fK_usuario FOREIGN KEY(Id_usuario)REFERENCES "Grupo 4 - T2"."USUARIOS"(Id_usuario));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CATEGORIA"(
	id_categoria serial,
	nombre_categoria varchar(30) NOT NULL UNIQUE,
	CONSTRAINT pk_catalogo PRIMARY KEY (id_categoria));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."SERIES"(
    Id_Serie serial,
    Nombre_Serie varchar(256) UNIQUE NOT NULL, 
    Capitulos int NOT NULL,
    Portada varchar(256) NOT NULL,
	Numero_Capitulos int NOT NULL,
    Restriccion_edad int NOT NULL,
    Fecha_Estreno date NOT NULL,
    trailer_serie varchar(256) UNIQUE NOT NULL,
	sinopsis varchar(500) NOT NULL,
    CONSTRAINT pk_Serie PRIMARY KEY(Id_Serie));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."PELICULAS"(
	id_pelicula serial, 
	nombre_pelicula varchar(40) NOT NULL, 
	poster varchar(200) UNIQUE NOT NULL, 
	restriccion_edad int NOT NULL, 
	duracion time NOT NULL, 
	fecha_estreno date NOT NULL, 
	trailer_pelicula varchar(100) NOT NULL,
	sinopsis varchar(500) NOT NULL,
    CONSTRAINT pk_peliculas PRIMARY KEY(id_pelicula)
	);

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CALIFICACION_PELICULA"(
	id_calificacion_pelicula serial,
	id_pelicula serial,
	valoracion int NOT NULL,
	CONSTRAINT pk_calificacion PRIMARY KEY(id_calificacion_pelicula),
	CONSTRAINT fK_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4 - T2"."PELICULAS"(id_pelicula)
	);

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CATEGORIA_SERIES"(
	Id_Serie serial,
	id_categoria serial,
	CONSTRAINT fK_serie FOREIGN KEY(Id_Serie)REFERENCES"Grupo 4 - T2"."SERIES"(Id_Serie),
	CONSTRAINT fk_categoria_serie FOREIGN KEY(id_categoria)REFERENCES "Grupo 4 - T2"."CATEGORIA"(id_categoria));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CALIFICACION_SERIE"(
	id_calificacion_serie serial,
	Id_Serie serial,
	valoracion int NOT NULL,
	CONSTRAINT pk_calificacion_serie PRIMARY KEY(id_calificacion_serie),
	CONSTRAINT fK_serie FOREIGN KEY(Id_Serie)REFERENCES "Grupo 4 - T2"."SERIES"(Id_Serie));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."TIEMPO_VISUALIZACION_PELICULA":(
	Id_visualizacion serial,
	id_pelicula serial,
	Id_perfil serial,
	tiempo time,
	CONSTRAINT pk_tiempo PRIMARY KEY(Id_visualizacion),
	CONSTRAINT fk_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4 - T2"."PELICULAS" (id_pelicula));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."TIEMPO_VISUALIZACION_SERIE":(
	Id_visualizacion_serie serial,
	id_serie serial,
	Id_perfil serial,
	tiempo time,
	CONSTRAINT pk_tiempo_serie PRIMARY KEY(Id_visualizacion_serie),
	CONSTRAINT fK_serie FOREIGN KEY(id_serie)REFERENCES "Grupo 4 - T2"."SERIES" (id_serie));


CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CAPITULOS_SERIES"(
    Id_Capitulo serial,
    Id_Serie serial,
    Nombre_Capitulo varchar(256) NOT NULL,
    Numero_Capitulo int NOT NULL,
    Duracion time NOT NULL,
    CONSTRAINT pk_capitulo PRIMARY KEY(Id_Capitulo),
	CONSTRAINT fK_serie FOREIGN KEY(Id_Serie)REFERENCES "Grupo 4 - T2"."SERIES"(Id_Serie));


CREATE TABLE "Grupo 4 - T2"."ACTORES"(
	Id_actor serial,
	rol varchar(30) NOT NULL,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	biografia varchar(500),
	CONSTRAINT pk_participante PRIMARY KEY(Id_actor)
	);

CREATE TABLE "Grupo 4 - T2"."ACTORES_PELICULAS"(
	id_pelicula serial,
	Id_actor serial,
	CONSTRAINT fk_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4 - T2"."PELICULAS"(id_pelicula),
	CONSTRAINT fk_Id_actor FOREIGN KEY(Id_actor)REFERENCES "Grupo 4 - T2"."ACTORES"(Id_actor)
	);

CREATE TABLE "Grupo 4 - T2"."ACTORES_SERIES"(
	Id_Serie serial,
	Id_actor serial,
	CONSTRAINT fk_id_serie FOREIGN KEY(Id_Serie)REFERENCES "Grupo 4 - T2"."SERIES"(Id_Serie),
	CONSTRAINT fk_Id_actor FOREIGN KEY(Id_actor)REFERENCES "Grupo 4 - T2"."ACTORES"(Id_actor)
	);

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CATEGORIAS_PELICULAS"(
	id_pelicula serial,
	id_categoria serial,
	CONSTRAINT fk_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4 - T2"."PELICULAS"(id_pelicula),
	CONSTRAINT fk_id_categoria FOREIGN KEY(id_categoria)REFERENCES "Grupo 4 - T2"."CATEGORIA"(id_categoria)
	);


CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."PLANES"(
    Id_Plan serial, 
    Nombre_Plan varchar(100) NOT NULL,
    Costo int UNIQUE NOT NULL,
    CONSTRAINT pk_planes PRIMARY KEY(Id_Plan));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."SUSCRIPCION"(
    Id_usuario serial,
    Id_Plan serial,
	estado boolean,
	fecha_facturacion date,
	CONSTRAINT fK_Id_usuario FOREIGN KEY(Id_usuario)REFERENCES "Grupo 4 - T2"."USUARIOS"(Id_usuario),
    CONSTRAINT fK_planes FOREIGN KEY(Id_Plan)REFERENCES "Grupo 4 - T2"."PLANES"(Id_Plan));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."PAIS"(
    Id_Pais serial,
    Nombre_Pais varchar(256),
    CONSTRAINT pk_pais PRIMARY KEY(Id_Pais));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."ZONA"(
    Id_Zona serial,
    Id_Pais serial,
    Nombre_Zona varchar(250) NOT NULL,
    CONSTRAINT pk_zona PRIMARY KEY(Id_Zona),
	CONSTRAINT fK_pais FOREIGN KEY(Id_Pais)REFERENCES "Grupo 4 - T2"."PAIS"(Id_Pais));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."CIUDAD"(
    Id_Ciudad serial,
    Id_Zona serial,
	Id_usuario serial,
    Nombre_Ciudad varchar(256) NOT NULL,
    CONSTRAINT pk_ciudad PRIMARY KEY(Id_Ciudad),
	CONSTRAINT fK_usuario FOREIGN KEY(Id_usuario)REFERENCES "Grupo 4 - T2"."USUARIOS"(Id_usuario),
    CONSTRAINT fK_zona FOREIGN KEY(Id_Zona)REFERENCES "Grupo 4 - T2"."ZONA"(Id_Zona));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."IDIOMAS"(
    Id_Idioma serial,
    Nombre_Idioma varchar(256) UNIQUE NOT NULL,
    CONSTRAINT pk_idioma PRIMARY KEY (Id_idioma));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."IDIOMA_PELICULA"(
    Id_Idioma serial,
    id_pelicula serial,
    CONSTRAINT fk_idioma FOREIGN KEY(Id_Idioma)REFERENCES "Grupo 4 - T2"."IDIOMAS"(Id_idioma),
    CONSTRAINT fK_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4 - T2"."PELICULAS"(id_pelicula));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."IDIOMA_SERIE"(
    Id_Idioma serial,
    Id_Serie serial,
    CONSTRAINT fk_idioma FOREIGN KEY(Id_Idioma)REFERENCES "Grupo 4 - T2"."IDIOMAS"(Id_idioma),
    CONSTRAINT fK_serie FOREIGN KEY(Id_Serie)REFERENCES "Grupo 4 - T2"."SERIES"(Id_Serie));

CREATE TABLE IF NOT EXISTS "Grupo 4 - T2"."PELICULAS_FAVORITAS"(
    Id_Favoritas serial,
    id_pelicula serial,
    Id_perfil serial,
    CONSTRAINT pk_favoritas PRIMARY KEY(Id_Favoritas),
	CONSTRAINT fK_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4 - T2"."PELICULAS"(id_pelicula),
    CONSTRAINT fK_perfil FOREIGN KEY(Id_perfil)REFERENCES "Grupo 4 - T2"."PERFIL"(Id_perfil));




