ALTER USER sa_ma_hu WITH PASSWORD 'LOSLINDOS'

CREATE TABLE "Grupo 1"."USUARIO" (
	id SERIAL UNIQUE,
	nombre varchar(50),
	correo varchar(30),
	telefono varchar(10),
	pais varchar(20)
);

CREATE TABLE "Grupo 1"."CUENTA" (
	nombre_usuario varchar(20),
	correo varchar(30),
	id_perfil SERIAL UNIQUE,
	contraseña varchar(10),
	membresia varchar(10)
);

CREATE TABLE "Grupo 1"."PERFIL" (
	id_perfil SERIAL UNIQUE,
	id_catalogo SERIAL UNIQUE,
	nombre varchar(20)
	tipo varchar(15),
	avatar varchar,
	preferencias varchar(100)
)

CREATE TABLE "Grupo1"."CATALOGO" (
	id_catalogo SERIAL UNIQUE,
	id_pelicula SERIAL UNIQUE,
	region varchar(30) 
)

CREATE TABLE "Grupo 1"."PELICULAS" (
	id_pelicula SERIAL NOT NULL UNIQUE, #PK
	titulo varchar(100),
	rating float, //varchar(2)
	fecha_creacion date,
	reparto varchar(500),
	genero varchar(20)
)

CREATE TABLE "Grupo 1"."CALIFICACION" (
	id pelicula SERIAL UNIQUE, #fk
	id perfil SERIAL UNIQUE, #fk
	likes int,
	comentarios varchar(200)
)

ALTER TABLE "Grupo 1"."USUARIO" ADD CONSTRAINT pk_id_usuario PRIMARY KEY(id);
ALTER TABLE "Grupo 1"."CUENTA" ADD CONSTRAINT pk_nombre_usuario PRIMARY KEY(nombre_usuario);
ALTER TABLE "Grupo 1"."CUENTA" ADD CONSTRAINT fk_correo FOREIGN KEY (correo) REFERENCES "USUARIO"(correo);
ALTER TABLE "Grupo 1"."CUENTA" ADD CONSTRAINT fk_id_perfiles FOREIGN KEY (id_perfiles) REFERENCES "PERFIL"(id_perfil);
ALTER TABLE "Grupo 1"."PERFIL" ADD CONSTRAINT pk_id_perfil PRIMARY KEY (id_perfil);
ALTER TABLE "Grupo 1"."PERFIL" ADD CONSTRAINT fk_id_catalogo FOREIGN KEY (id_catalogo) REFERENCES "CATALOGO"(id_catalogo);
ALTER TABLE "Grupo 1"."CATALOGO" ADD CONSTRAINT pk_id_catalogo PRIMARY KEY (id_catalogo);
ALTER TABLE "Grupo 1"."PELICULAS" ADD CONSTRAINT pk_id_pelicula PRIMARY KEY(id_pelicula);
ALTER TABLE "Grupo 1"."CLASIFICACION" ADD CONSTRAINT fk_id_pelicula FOREIGN KEY (id_pelicula) REFERENCES "PELICULAS"(id_pelicula);
ALTER TABLE "Grupo 1"."CLASIFICACION" ADD CONSTRAINT fk_id_perfil FOREIGN KEY (id_perfil) REFERENCES "PELICULAS"(id_perfil);

INSERT INTO "USUARIO"
VALUES(1234, 'Sara', 'saritalabest@gmail.com', '320604566', 'Colombia')
INSERT INTO "USUARIO"
VALUES(4321, 'Majo', 'majo_lamejor@gmail.com', '3229344475', 'Colombia')
INSERT INTO "USUARIO"
VALUES(6547, 'Humberto', 'toñito@gmail.com', '31785679580', 'México')
INSERT INTO "USUARIO"
VALUES(5687 , 'David', 'davinci@gmail.com' , '314896465' , 'China')
INSERT INTO "USUARIO"
VALUES(2345 , 'Tobbias', 'toby@gmail.com' , '3229344476' , 'México')

INSERT INTO "PERFIL"
VALUES(111, 789, 'Sarita', 'Premium', '???', 'Acción, Romance')
INSERT INTO "PERFIL"
VALUES(222, 963, 'Majo', 'Standar', '???', 'Terror, Thriller')
INSERT INTO "PERFIL"
VALUES(333, 147, 'Bertix', 'Standar', '???', 'Comedia')
INSERT INTO "PERFIL"
VALUES(444, 485, 'Tobby', 'Premium', '???', 'Drama')

INSERT INTO "PELICULAS"
VALUES(5467, 'El hombre araña', 4.5, 2002, 'Tobbey Mcguire', 'Acción')
INSERT INTO "PELICULAS"
VALUES(3567, 'El sorprendente hombre araña', 5, 2012, 'Andrew Garfield', 'Acción')
INSERT INTO "PELICULAS"
VALUES(2575, 'El sorprendente hombre araña 2: La venganza de Electro', 5, 2014, 'Andrew Garfield', 'Acción')
INSERT INTO "PELICULAS"
VALUES(4356 , 'El hombre araña: No way home', 5, 2021, 'Tom Holland', 'Acción')
INSERT INTO "PELICULAS"
VALUES(5789 , 'Encanto ', 3, 2021, 'Bruno', 'Musical')

INSERT INTO "CUENTA"
VALUES('saritac', 'saritalabest@gmail.com', 111, 'tobeymc123', 'Full')
INSERT INTO "CUENTA"
VALUES('majotinieblas', 'majo_lamejor@gmail.com', 222, 'majog123', 'Full')
INSERT INTO "CUENTA"
VALUES('humbertoacp', 'toñito@gmail.com', 333, 'gusgus560', 'Basic')
INSERT INTO "CUENTA"
VALUES('tobbey20', 'toby@gmail.com', 444, 'soyTobey456', 'Medium')

INSERT INTO "CATALOGO"
VALUES(2345, 5467, 'Colombia')
INSERT INTO "CATALOGO"
VALUES(2345, 5467, 'Colombia')
INSERT INTO "CATALOGO"
VALUES(2345, 5789, 'Colombia')
INSERT INTO "CATALOGO"
VALUES(2345, 5789, 'Colombia')

INSERT INTO "CALIFICACION"
VALUES(5789, 111, 300, 'Genial')
INSERT INTO "CALIFICACION"
VALUES(2575, 222, 564, 'Espectacular')
INSERT INTO "CALIFICACION"
VALUES(4356, 333, 564, 'Me encantó')
INSERT INTO "CALIFICACION"
VALUES(4356, 444, 564, 'Enamorada del hombre araña')






