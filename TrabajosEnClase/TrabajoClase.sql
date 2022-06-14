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

CREATE TABLE IF NOT EXISTS "Grupo 4"."Feedback"(
	id_feedback serial,
	id_pelicula serial,
	comentario varchar(500),
	valoracion real,
	CONSTRAINT pk_feedback PRIMARY KEY(id_feedback),
	CONSTRAINT fK_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4"."Peliculas"(id_pelicula)
	);


CREATE TABLE "Grupo 4"."Peliculas_Vistas"(
	nombre_usuario varchar(10),
	id_pelicula serial,
	tiempo_visto time NOT NULL,
	CONSTRAINT fk_nombre_usuario FOREIGN KEY(nombre_usuario)REFERENCES "Grupo 4"."Usuario"(nombre_usuario),
	CONSTRAINT fk_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4"."Peliculas"(id_pelicula)
	);

CREATE TABLE "Grupo 4"."Feedbacks_Enviados"(
	nombre_usuario varchar(10),
	id_feedback serial,
	CONSTRAINT fk_nombre_usuario FOREIGN KEY(nombre_usuario)REFERENCES "Grupo 4"."Usuario"(nombre_usuario),
	CONSTRAINT fk_id_feedback FOREIGN KEY(id_feedback)REFERENCES "Grupo 4"."Feedback"(id_feedback)
	);

CREATE TABLE "Grupo 4"."Participantes"(
	id_participante serial,
	rol varchar(30) NOT NULL,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	biografia varchar(500),
	CONSTRAINT pk_participante PRIMARY KEY(id_participante)
	);

CREATE TABLE "Grupo 4"."Peliculas_Participantes"(
	id_pelicula serial,
	id_participante serial,
	CONSTRAINT fk_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4"."Peliculas"(id_pelicula),
	CONSTRAINT fk_id_participante FOREIGN KEY(id_participante)REFERENCES "Grupo 4"."Participantes"(id_participante)
	);

CREATE TABLE "Grupo 4"."Catalogos"(
	id_catalogo varchar(30),
	nombre_catalogo varchar(30) NOT NULL UNIQUE,
	descripcion varchar(50) NOT NULL,
	CONSTRAINT pk_catalogo PRIMARY KEY (id_catalogo)
	);

CREATE TABLE "Grupo 4"."Peliculas_Catalogos"(
	id_pelicula serial,
	id_catalogo varchar(30),
	CONSTRAINT fk_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4"."Peliculas"(id_pelicula),
	CONSTRAINT fk_id_catalogo FOREIGN KEY(id_catalogo)REFERENCES "Grupo 4"."Catalogos"(id_catalogo)
	);

CREATE TABLE IF NOT EXISTS "Grupo 4"."Peliculas_Genero"(
	id_pelicula serial,
	id_genero serial,
	CONSTRAINT fk_id_pelicula FOREIGN KEY(id_pelicula)REFERENCES "Grupo 4"."Peliculas",
	CONSTRAINT fk_id_genero FOREIGN KEY(id_genero)REFERENCES "Grupo 4"."Genero"
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

ALTER TABLE "Grupo 4"."Peliculas_Catalogos" 
	ADD id_genero SERIAL;
	ADD CONSTRAINT fk_id_genero FOREIGN KEY (id_genero) REFERENCES "Grupo 4"."Genero"(id_genero);

SET DATESTYLE TO "EUROPEAN";

INSERT INTO "Grupo 4"."Usuario" VALUES ('Giansz','Imagen.JPG','3022205116',18,'Gian Paul','Sanchez','1q2w3e4r5t','Giansz@gmail.com');
INSERT INTO "Grupo 4"."Usuario" VALUES ('JuanesJara','Imagen.JPG','3032505134',18,'Juan Esteban','Jaramillo','JuanesLindo','jarami@gmail.com');
INSERT INTO "Grupo 4"."Usuario" VALUES ('PalacioJ','Imagen.JPG','3034405547',18,'Samuel','Palacio','Zetlix123456','SpalacioJ@gmail.com');
INSERT INTO "Grupo 4"."Usuario" VALUES ('Sarias','Imagen.JPG','3126237819',17,'Sebastian','Arias','Sebas123','sariasu@gmail.com');
INSERT INTO "Grupo 4"."Usuario" VALUES ('Manin','Imagen.JPG','3151405086',19,'Jeronimo','Gonzales','pekka','mittanig@gmail.com');

INSERT INTO "Grupo 4"."Peliculas" values(1,'El paseo 2','Portada.JPG',15,'1:05:50','23/3/2022','https://elpaseo-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(2,'A todo gas','Portada2.JPG',18,'2:15:30','22/3/2012','https://a-todo-gas-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(3,'Lobezno','Portada3.JPG',10,'5:35:27','30/3/2017','https://lobezno-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(4,'Cars 3','Portada4.JPG',4,'01:49:00','2017/05/23','https://Cars-3-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(5,'Toy Story','Portada5.JPG',4,'01:21:00','1995/12/25','https://Toy-Story-mp4.com');
INSERT INTO "Grupo 4"."Peliculas" values(6,'Transformers','Portada6.JPG',13,'01:41:30','2007/5/25','https://Transformers-mp4.com');

INSERT INTO "Grupo 4"."Genero" values (01,'Comedia');
INSERT INTO "Grupo 4"."Genero" values (02,'Accion');
INSERT INTO "Grupo 4"."Genero" values (03,'Drama');
INSERT INTO "Grupo 4"."Genero" values (04,'Deportes');
INSERT INTO "Grupo 4"."Genero" values (05,'Infantil');

INSERT INTO "Grupo 4"."Peliculas_Participantes" values (3,2);
INSERT INTO "Grupo 4"."Peliculas_Participantes" values (1,3);
INSERT INTO "Grupo 4"."Peliculas_Participantes" values (2,1);
INSERT INTO "Grupo 4"."Peliculas_Participantes" values (4,4);
INSERT INTO "Grupo 4"."Peliculas_Participantes" values (5,5);

INSERT INTO "Grupo 4"."Feedbacks_Enviados" values ('Manin',4);
INSERT INTO "Grupo 4"."Feedbacks_Enviados" values ('Sarias',5);
INSERT INTO "Grupo 4"."Feedbacks_Enviados" values ('PalacioJ',2);
INSERT INTO "Grupo 4"."Feedbacks_Enviados" values ('JuanesJara',1);
INSERT INTO "Grupo 4"."Feedbacks_Enviados" values ('Giansz',3);

INSERT INTO "Grupo 4"."Participantes" values (5,'director', 'Jhon', 'Lasseter', 'John Alan Lasseter es un animador, director de cine y productor estadounidense. Es miembro fundador de los estudios Pixar, en donde supervisó todas las películas que produce este estudio de animación como productor ejecutivo');
INSERT INTO "Grupo 4"."Participantes" values (4,'personaje', 'Rayo', 'McQueen', 'Rayo McQueen es un automóvil de carreras prosopopéyico protagonista de las películas producidas por Pixar: Cars, Cars 2 y Cars 3, así como en los cortos de televisión Cars Toons, creado por John Lasseter para la última producción de Pixar antes de entrar a formar parte de Disney.');
INSERT INTO "Grupo 4"."Participantes" values (3,'Actor', 'Jhon', 'Leguizamo', 'John Alberto Leguizamo es un actor, comediante y productor colombiano radicado en Estados Unidos, conocido por interpretar a Luigi en la película Super Mario Bros. y al gánster Benny Blanco en Carlitos Way, además de ser la voz de Sid en Ice Age.');
INSERT INTO "Grupo 4"."Participantes" values (2,'Actor', 'Hugh', 'Jackman', 'Hugh Michael Jackman es un actor, cantante y productor de cine australiano y nacionalizado británico.​​Su papel más reconocido es Wolverine en la serie de películas de X-Men');
INSERT INTO "Grupo 4"."Participantes" values (1,'Actor', 'vin', 'diesel', 'Mark Sinclair Vincent, más conocido por el nombre artístico de Vin Diesel, es un actor, productor y director de cine estadounidense.Conocido por la interpretación de Dominic Toretto en la saga cinematográfica The Fast and the Furious y por el papel de Richard B.');

INSERT INTO "Grupo 4"."Catalogos" values (5,'Visto Recientemente', 'Retoma donde lo dejaste');
INSERT INTO "Grupo 4"."Catalogos" values (4,'Recomendadas', 'Quizas te puedan gustar');
INSERT INTO "Grupo 4"."Catalogos" values (3,'Top 10 Global', 'Las mejores peliculas del momento');
INSERT INTO "Grupo 4"."Catalogos" values (2,'From Colombia', 'Peliculas creadas en colombia');
INSERT INTO "Grupo 4"."Catalogos" values (1,'Mis favoritas', 'Peliculas que se les ha dado me gusta');

INSERT INTO "Grupo 4"."Feedback" values (05,3,'X-Men Origins Wolverine fue muy esperado ya que Wolverine era, con mucho, el personaje de X-Men más popular tanto en los cómics como en las películas. Como sugiere el título, se suponía que esta sería su película biográfica con la ventaja adicional de que incluía Sabretooth.', 4.4);
INSERT INTO "Grupo 4"."Feedback" values (04,2,'Bueno no soy un crítico de Cine en si, pero si vi esta película y es de esas que no puedes dejar se ver, ya va para 20 años y aún me causa la misma impresión como si la viera por primera Vez.', 4.7);
INSERT INTO "Grupo 4"."Feedback" values (03,1,'resulta que es una mierda. Pero es que es peor que malo. Un tipo que no tiene ninguna gracia, haciendo chistes malísimos, hablando en un intento de colombiano pésimo. Él acapara mas de la mitad del humor.', 1.5);
INSERT INTO "Grupo 4"."Feedback" values (02,5,'Es una gran película, la primera en ser animada completamente por computadora, la película que vio nacer a un gigante de la animación que es Pixar.', 4.2);
INSERT INTO "Grupo 4"."Feedback" values (01,4,'Yo como fan de esta saga animada, debo decir que es una excelente película, que logra contarnos una buena historia, acerca de los momentos que pasa El Rayo McQueen durante todo el film, y dejarnos un buen mensaje proximas generaciones.', 5);

INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('Giansz',1, '01:05:50');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('Giansz',5, '01:21:00');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('JuanesJara',2, '02:00:20');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('JuanesJara',5, '01:21:00');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('JuanesJara',3, '00:30:00');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('PalacioJ',3, '00:30:00');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('Sarias',2, '02:15:30');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('Sarias',4, '01:49:00');
INSERT INTO "Grupo 4"."Peliculas_Vistas" values ('Manin',1, '01:49:00');

INSERT INTO "Grupo 4"."Peliculas_Catalogos" values (2,3);
INSERT INTO "Grupo 4"."Peliculas_Catalogos" values (1,2);
INSERT INTO "Grupo 4"."Peliculas_Catalogos" values (4,5);
INSERT INTO "Grupo 4"."Peliculas_Catalogos" values (5,5);
INSERT INTO "Grupo 4"."Peliculas_Catalogos" values (3,1);
INSERT INTO "Grupo 4"."Peliculas_Catalogos" values (6,4);