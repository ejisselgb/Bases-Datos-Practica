CREATE TABLE "USUARIO"(
	id_usuario varchar(10) NOT NULL,
	nombre_completo varchar(50),
	edad int(2) CHECK (edad >= 18),
	telefono varchar(10),
	codigo_pais varchar(4) 
	CONSTRAINT pk_usuario PRIMARY KEY (id_usuario));
	
CREATE TABLE "CUENTA"(
	id_cuenta SERIAL NOT NULL,
	id_usuario varchar(10),
	correo varchar(50),
	contraseña varchar(8),
	membresia varchar(7), 
	CONSTRAINT pk_cuenta PRIMARY KEY (id_cuenta)
	CONSTRAINT fk_cuenta FOREIGN KEY (id_usuario) REFERENCES "USUARIO" (id_usuario));
	
CREATE TABLE "PERFIL"(
	id_perfil SERIAL NOT NULL,
	nombre_perfil varchar(10),
	tipo varchar(10), 
	CONSTRAINT pk_perfil PRIMARY KEY (id_perfil)
	);
	
CREATE TABLE "CUENTA_PERFIL"(
	id_cuenta SERIAL NOT NULL,
	id_perfil SERIAL NOT NULL,
	CONSTRAINT fk_cuenta_perfil FOREIGN KEY (id_cuenta) REFERENCES "CUENTA" (id_cuenta),
	CONSTRAINT fk_cuenta_perfil FOREIGN KEY (id_perfil) REFERENCES "PERFIL" (id_perfil)
	);
	
CREATE TABLE "CATEGORIA"(
	id_categoria SERIAL NOT NULL,
	categoria varchar(10),
	CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
	);
	
CREATE TABLE "PREFERENCIA_CATEGORIA"(
	id_categoria SERIAL NOT NULL,
	id_perfil SERIAL NOT NULL,
	CONSTRAINT fk_preferencia_categoria FOREIGN KEY (id_categoria) REFERENCES "CATEGORIA" (id_categoria),
	CONSTRAINT fk_preferencia_categoria FOREIGN KEY (id_perfil) REFERENCES "PERFIL" (id_perfil)
	);
	
CREATE TABLE "PELICULAS"(
	id_pelicula SERIAL NOT NULL,
	titulo varchar(30),
	id_categoria SERIAL, 
	CONSTRAINT pk_peliculas PRIMARY KEY (id_pelicula)
	);
	
CREATE TABLE "PELICULAS_RENTADAS"(
	id_perfil SERIAL NOT NULL,
	id_pelicula SERIAL,
	fecha_prestamo date,
	fecha_devolucion date,
	estado boolean, 
	CONSTRAINT pk_peliculas_rentadas PRIMARY KEY (id_usuario),
	CONSTRAINT pk_peliculas_rentadas PRIMARY KEY (id_pelicula),
	CONSTRAINT pk_peliculas_rentadas PRIMARY KEY (fecha_prestamo),
	CONSTRAINT fk_peliculas_rentadas FOREIGN KEY (id_perfil) REFERENCES "PERFIL" (id_perfil),
	CONSTRAINT fk_peliculas_rentadas FOREIGN KEY (id_pelicula) REFERENCES "PERFIL" (id_pelicula)
	);
	
CREATE TABLE "CALIFICACION"(
	id_pelicula SERIAL NOT NULL,
	likes int4,
	comentarios int4, 
	CONSTRAINT fk_calificacion FOREIGN KEY (id_pelicula) REFERENCES "PELICULA" (id_pelicula)
	);
	
CREATE TABLE "COMENTARIOS"(
	id_comentario SERIAL NOT NULL,
	id_perfil SERIAL NOT NULL,
	comentario varchar(200), 
	CONSTRAINT fk_comentarios PRIMARY KEY (id_comentario),
	CONSTRAINT fk_comentarios FOREIGN KEY (id_perfil) REFERENCES "PERFIL" (id_perfil)
	);
	
CREATE TABLE "COMENTARIO_PELICULA"(
	id_comentario SERIAL,
	id_pelicula SERIAL,
	comentario varchar(200), 
	CONSTRAINT fk_comentarios_pelicula FOREIGN KEY (id_comentario) REFERENCES "COMENTARIOS" (id_comentario),
	CONSTRAINT fk_comentarios_pelicula FOREIGN KEY (id_pelicula) REFERENCES "PELICULA" (id_pelicula)
	);
	