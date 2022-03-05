CREATE TABLE “USUARIO”(
	id_usuario varchar(10),
	correo varchar(30) NOT NULL,
	contraseña varchar(10) NOT NULL,
	CONSTRAINT pk_usuario PRIMARY KEY (id_usuario)
);

CREATE TABLE “PERFIL”(
	id_perfil varchar(10),
	id_usuario varchar(10),
	url_imagenPerfil varchar(100),
	contraseña_perfil varchar(10),
	CONSTRAINT pk_perfil PRIMARY KEY (id_perfil)
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES “USUARIO” (id_usuario)
);

CREATE TABLE “PELICULAS FAVORITAS”(
	listaPeliculasFavoritas varchar(300),
id_perfil varchar(10),
	CONSTRAINT pk_listaPeliculasFavoritas PRIMARY KEY (id_ listaPeliculasFavoritas)
	CONSTRAINT fk_perfil FOREIGN KEY (id_perfil) REFERENCES “PERFIL” (id_perfil)
);

CREATE TABLE “LISTADO”(
	listaPeliculasFavoritas varchar(300),
id_pelicula varchar(10),
	CONSTRAINT fk_listaPeliculasFavoritas FOREIGN KEY (listaPeliculasFavoritas) REFERENCES “PELICULAS FAVORITAS” (listaPeliculasFavoritas)
	CONSTRAINT fk_pelicula FOREIGN KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
);

CREATE TABLE “PELICULAS”(
	id_pelicula varchar(10),
	descripción varchar(200),
	fecha_estreno varchar(50),
	nombre_pelicula varchar(50) NOT NULL,
	actores varchar(400),
CONSTRAINT pk_pelicula PRIMARY KEY (id_pelicula)
);

CREATE TABLE “DIRECTOR”(
	id_director varchar(10),
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
CONSTRAINT pk_director PRIMARY KEY (id_director)
);

CREATE TABLE “DIRECTORES”(
	id_director varchar(10),
	id_pelicula varchar(10),
CONSTRAINT fk_director FOREIGN KEY (id_director) REFERENCES “DIRECTOR” (id_director)
	CONSTRAINT fk_pelicula FOREIGN KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
);

CREATE TABLE “CATEGORIA”(
	id_categoria varchar(10),
	listaPeliculasFavoritas varchar(300),
	id_pelicula varchar(10),
CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
CONSTRAINT fk_listaPeliculasFavoritas FOREIGN KEY (listaPeliculasFavoritas) REFERENCES “PELICULAS FAVORITAS” (listaPeliculasFavoritas)
	CONSTRAINT fk_pelicula FOREIGN KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
);
CREATE TABLE “LISTADO”(
	listaPeliculasFavoritas varchar(300),
	id_pelicula varchar(10),
CONSTRAINT fk_listaPeliculasFavoritas FOREIGN KEY (listaPeliculasFavoritas) REFERENCES “PELICULAS FAVORITAS” (listaPeliculasFavoritas)
	CONSTRAINT fk_pelicula FOREIGN KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
);

CREATE TABLE “ACTOR”(
	id_actor varchar(10),
	nombre varchar(30),
	apellido varchar(30),
CONSTRAINT pk_actor PRIMARY KEY (id_actor)
);

CREATE TABLE “ACTORES”(
	id_actor varchar(10),
	id_pelicula varchar(10),
CONSTRAINT fk_actor FOREIGN KEY (id_actor) REFERENCES “ACTOR” (id_actor)
	CONSTRAINT fk_pelicula FOREIGN KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
);

CREATE TABLE “RETROALIMENTA”(
	id_perfil varchar(10),
	id_pelicula varchar(10),
	like boolean,
	comentarios varchar(150)
CONSTRAINT fk_perfil FOREING KEY (id_perfil) REFERENCES “PERFIL” id_perfil)
CONSTRAINT fk_pelicula FOREING KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
);
CREATE TABLE “VISUALIZA”(
	id_perfil varchar(10),
	id_pelicula varchar(10),
	visto boolean
	tiempo_visualizacion int(8)
CONSTRAINT fk_perfil FOREING KEY (id_perfil) REFERENCES “PERFIL” (id_perfil)
CONSTRAINT fk_pelicula FOREING KEY (id_pelicula) REFERENCES “PELICULAS” (id_pelicula)
)



