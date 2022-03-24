ALTER USER dinamita WITH PASSWORD 'HOLA1';

CREATE TABLE "Grupo 5".Usuario(
	id_usuario SERIAL, 
	correo VARCHAR(30),
	contrasena VARCHAR(10) 
);
ALTER TABLE "Usuario" ADD PRIMARY KEY (id_usario); 

CREATE TABLE "Grupo 5".Peliculas(
	id_pelicula SERIAL,
	descripcion VARCHAR(200),
	FechaEstreno VARCHAR(30), 
	NombrePelicula VARCHAR(50),
	Actores VARCHAR(400)
);
ALTER TABLE "Peliculas" ADD PRIMARY KEY (id_pelicula); 

CREATE TABLE "Grupo 5".Categoria (
	id_categoria SERIAL,
	id_pelicula SERIAL
); 

ALTER TABLE "Categoria" ADD PRIMARY KEY (id_categoria); 
ALTER TABLE "Categoria" ADD CONSTRAINT "fk_peliculas" FOREIGN KEY (id_pelicula) REFERENCES "Peliculas" (id_pelicula); 
