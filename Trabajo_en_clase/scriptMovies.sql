
ALTER USER dinamita WITH PASSWORD 'HOLA1';

CREATE TABLE "Grupo 5".Usuario(
		id_usuario SERIAL, 
		correo VARCHAR(30),
		contrasena VARCHAR(10) 
);
ALTER TABLE "Usuario" ADD PRIMARY KEY (id_usario); 

CREATE TABLE "Grupo 5".Perfil(
	id_perfil SERIAL,
	id_usuario SERIAL,
	url_imagenPerfil varchar(300),
	contrasenaPerfil varchar(100)
); 
ALTER TABLE "Perfil" ADD PRIMARY KEY (id_perfil);
ALTER TABLE "PERFIL" ADD CONSTRAINT "fk_usuario" FOREIGN KEY (id_usario) REFERENCES "Usuario" (id_usario);

CREATE TABLE "Grupo 5".PeliculasFavoritas(
	listaPeliculasFavoritas varchar(100),
	id_perfil SERIAL
);
ALTER TABLE "PeliculasFavoritas" ADD PRIMARY KEY (listaPeliculasFavoritas);
ALTER TABLE "PeliculasFavoritas" ADD CONSTRAINT "fk_perfil" FOREIGN KEY (id_perfil) REFERENCES "Perfil" (id_perfil);

CREATE TABLE "Grupo 5".Listado(
	listaPeliculasFavoritas varchar(100),
	id_Pelicula SERIAL
);
ALTER TABLE "Listado" ADD CONSTRAINT "fk_peliculasFavoritas" FOREIGN KEY (PeliculasFavoritas) REFERENCES "PeliculasFavoritas" (PeliculasFavoritas);
ALTER TABLE "Listado" ADD CONSTRAINT "fk_Pelicula" FOREIGN KEY (id_Pelicula) REFERENCES "Pelicula" (id_Pelicula);

CREATE TABLE "Grupo 5".Peliculas(
	id_pelicula SERIAL,
	NombrePelicula VARCHAR(50),
	descripcion VARCHAR(200),
	FechaEstreno VARCHAR(30), 
);

CREATE TABLE "Grupo 5".ListadoCategoria (
	id_Categoria SERIAL
	id_Pelicula SERIAL
);
ALTER TABLE "ListadoCategoria" ADD CONSTRAINT "fk_Categoria" FOREIGN KEY (id_Categoria) REFERENCES "Categoria" (id_Categoria); 
ALTER TABLE "ListadoCategoria" ADD CONSTRAINT "fk_Pelicula" FOREIGN KEY (id_Pelicula) REFERENCES "Peliculas" (id_Pelicula); 

ALTER TABLE "Peliculas" ADD PRIMARY KEY (id_pelicula); 

CREATE TABLE "Grupo 5".Categoria (
	id_Categoria SERIAL,
	id_Pelicula SERIAL
); 

ALTER TABLE "Categoria" ADD PRIMARY KEY (id_categoria); 
ALTER TABLE "Categoria" ADD CONSTRAINT "fk_peliculas" FOREIGN KEY (id_Pelicula) REFERENCES "Peliculas" (id_Pelicula); 

CREATE TABLE "Grupo 5".Actores(
	id_Actor SERIAL,
	id_Pelicula SERIAL
);

ALTER TABLE "Actores" ADD CONSTRAINT "fk_actor" FOREIGN KEY (id_Actor) REFERENCES "Actor" (id_Actor);
ALTER TABLE "Actores" ADD CONSTRAINT "fk_peliculas" FOREIGN KEY (id_Pelicula) REFERENCES "Peliculas" (id_Pelicula);

CREATE TABLE "Grupo 5".Actor(
	id_Actor SERIAL,
	nombreActor varchar (30),
	Apellido varchar(30)
);

ALTER TABLE "Actor" ADD PRIMARY KEY (id_Actor); 

CREATE TABLE "Grupo 5".Directores(
	id_Director SERIAL,
	id_Pelicula SERIAL
);

ALTER TABLE "Directores" ADD CONSTRAINT "fk_Director" FOREIGN KEY (id_Director) REFERENCES "Actor" (id_Director);
ALTER TABLE "Directores" ADD CONSTRAINT "fk_peliculas" FOREIGN KEY (id_Pelicula) REFERENCES "Peliculas" (id_Pelicula);

CREATE TABLE "Grupo 5".Director(
	id_Director SERIAL,
	nombreDirector varchar (30),
	Apellido varchar(30)
);

ALTER TABLE "Director" ADD PRIMARY KEY (id_Director); 

CREATE TABLE "Grupo 5".Visualiza(
	visto boolean,
	TiempoVisualizacion int,
	id_Perfil SERIAL,
	id_Pelicula SERIAL
);

ALTER TABLE "Visualiza" ADD CONSTRAINT "fk_Perfil" FOREIGN KEY (id_Perfil) REFERENCES "Perfil" (id_Perfil);
ALTER TABLE "Visualiza" ADD CONSTRAINT "fk_peliculas" FOREIGN KEY (id_Pelicula) REFERENCES "Peliculas" (id_Pelicula);

CREATE TABLE "Grupo 5".Retroalimenta (
	like_1 boolean,
	comentarios varchar(400),
	id_Perfil SERIAL,
	id_Pelicula SERIAL
);

ALTER TABLE "Retroalimenta" ADD CONSTRAINT "fk_Perfil" FOREIGN KEY (id_Perfil) REFERENCES "Perfil" (id_Perfil);
ALTER TABLE "Retroalimneta" ADD CONSTRAINT "fk_peliculas" FOREIGN KEY (id_Pelicula) REFERENCES "Peliculas" (id_Pelicula);

--inserts para Usuario--
INSERT INTO "Usuario" (correo, contrasena) VALUES ('Juan21@gmail.com', '127d');
INSERT INTO "Usuario" (correo, contrasena) VALUES ('Rosa123@gmail.com', '124r');
INSERT INTO "Usuario" (correo, contrasena) VALUES ('Carlos123@gmail.com', '126g');
INSERT INTO "Usuario" (correo, contrasena) VALUES ('Lucas193@gmail.com', '567l');
INSERT INTO "Usuario" (correo, contrasena) VALUES ('Mario1783@gmail.com', '908m');

--Inserts para Perfil--
INSERT INTO "Perfil" (url_imagenPerfil, contrasenaPerfil) VALUES ("juan.png", "08081");
INSERT INTO "Perfil" (url_imagenPerfil, contrasenaPerfil) VALUES ("rosa.png", "bb34");
INSERT INTO "Perfil" (url_imagenPerfil, contrasenaPerfil) VALUES ("carlos.png", "cb67");
INSERT INTO "Perfil" (url_imagenPerfil, contrasenaPerfil) VALUES ("Lucas.png", "p0p0");
INSERT INTO "Perfil" (url_imagenPerfil, contrasenaPerfil) VALUES ("Mario.png", "l0l0");

--Inserts para peliculas --
INSERT INTO "Peliculas" (nombre_Pelicula,descripcion,FechaEstreno) VALUES ("Forest Gump", "Gente con suerte",  1994-06-07);
INSERT INTO "Peliculas" (nombre_Pelicula,descripcion, FechaEstreno) VALUES ("Transformers", "Maquinas de matar", 2007-03-07);
INSERT INTO "Peliculas" (nombre_Pelicula,descripcion, FechaEstreno) VALUES ("Piratas del cartibe", "Jack Sparrow y sus amigos", 2003-28-06);
INSERT INTO "Peliculas" (nombre_Pelicula,descripcion, FechaEstreno) VALUES ("Harry Potter", "Hechizos, pium pium", 2001-04-11);
INSERT INTO "Peliculas" (nombre_Pelicula,descripcion, FechaEstreno) VALUES ("Spider-man", "Hombre araña sin telaraña", 2002-29-04);


--inserts para actor--
INSERT INTO "Actor" (nombreActor, Apellido) VALUES ("Tom", "Hanks");
INSERT INTO "Actor" (nombreActor, Apellido) VALUES ("Shia", "LaBeouf");
INSERT INTO "Actor" (nombreActor, Apellido) VALUES ("Johnny", "Depp");
INSERT INTO "Actor" (nombreActor, Apellido) VALUES ("Daniel", "Radcliffe");
INSERT INTO "Actor" (nombreActor, Apellido) VALUES ("Tobey", "Maguire");

--insert para director--

INSERT INTO "Director" (nombreDirector, Apellido) VALUES ("Robert", "Zemeckis");
INSERT INTO "Director" (nombreDirector, Apellido) VALUES ("Michael", "Bay");
INSERT INTO "Director" (nombreDirector, Apellido) VALUES ("Gore", "Verbinski");
INSERT INTO "Director" (nombreDirector, Apellido) VALUES ("Chris", "Columbus");
INSERT INTO "Director" (nombreDirector, Apellido) VALUES ("Sam", "Raimi");