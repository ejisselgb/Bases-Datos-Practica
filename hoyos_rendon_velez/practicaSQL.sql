CREATE TABLE "Grupo 2".perfil(
nombre_usuario VARCHAR(10) NOT NULL,
email VARCHAR(20)NOT NULL,
idioma VARCHAR(20),
foto_perfil VARCHAR(2000),
pais VARCHAR(20));

CREATE TABLE "Grupo 2".pais(
id_pais VARCHAR(20),
nombre VARCHAR(20));
CREATE TABLE "Grupo 2".pelicula(
id_pelicula VARCHAR(10),
nombre VARCHAR(20),
trailer VARCHAR(2000),
autor VARCHAR(30),
genero VARCHAR(1),
fecha_publicacion DATE,
sipnosis VARCHAR(100),
tiempo_total TIME);

ALTER TABLE "Grupo 2".perfil ADD PRIMARY KEY (nombre_usuario);
ALTER TABLE "Grupo 2".pais ADD PRIMARY KEY (id_pais);
ALTER TABLE "Grupo 2".pelicula ADD PRIMARY KEY (id_pelicula);

