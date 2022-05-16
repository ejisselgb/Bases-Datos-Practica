--inserts para ACTORES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (1, 'Johnny', 'Depp');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (2, 'Leonardo', 'DiCaprio');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (3, 'Brad', 'Pitt');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (4, 'Morgan','Freeman');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (5, 'Tom', 'Hanks');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (6, 'Tom', 'Cruise');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (7, 'Will', 'Smith');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (8, 'Nicolas', 'Cage');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (9, 'Keanu', 'Reeves');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES" (id_actor, nombre, apellido) VALUES (10, 'Vin', 'Diesel');
 
--inserts para ACTORES_PELICULAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (6, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (10, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (3, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (7, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (2, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (1, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (7, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (4, 8);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (9, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_PELICULAS" (id_actor, id_pelicula) VALUES (8, 10);

--inserts para ACTORES_SERIES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (3, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (10, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (7, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (4, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (1, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (9, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (2, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (5, 8);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (6, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ACTORES_SERIES" (id_actor, id_serie) VALUES (8, 10);

--inserts para CALIFICACIONES_PELICULAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" (id_calificacion, id_pelicula, calificaion) VALUES (1, 4, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" (id_calificacion, id_pelicula, calificaion) VALUES (2, 5, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" (id_calificacion, id_pelicula, calificaion) VALUES (3, 7, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" (id_calificacion, id_pelicula, calificaion) VALUES (4, 8, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" (id_calificacion, id_pelicula, calificaion) VALUES (5, 9, 1);

--inserts para CALIFICACIONES_SERIES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES" (id_calificacion, id_serie, calificaion) VALUES (1, 5, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES" (id_calificacion, id_serie, calificaion) VALUES (2, 7, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES" (id_calificacion, id_serie, calificaion) VALUES (3, 10, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES" (id_calificacion, id_serie, calificaion) VALUES (4, 2, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_SERIES" (id_calificacion, id_serie, calificaion) VALUES (5, 8, 2);


--inserts para CATEGORIAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (1, 'Terror');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (2, 'Drama');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (3, 'Accion');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (4, 'Comedia');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (5, 'Ciencia ficcion');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (6, 'Animacion');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (7, 'Musical');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (8, 'Documental');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (9, 'Fantasia');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CATEGORIAS" (id_categoria, categoria) VALUES (10, 'Suspenso');

--inserts para CIUDADES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais, nombre) VALUES (1, 1, 1, 'Medellin')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (2, 2, 1, 'Armenia')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (3, 3, 1, 'Bogota')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (4, 4, 1, 'Cali')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (5, 5, 1, 'Ibague')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (6, 6, 1, 'Barranquilla')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (7, 7, 1, 'Monteria')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (8, 8, 8, 'Cuenca')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (9, 9, 8, 'Guayaquil')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CIUDADES" (id_ciudad, id_zona, id_pais,  nombre) VALUES (10, 10, 8, 'Guaranda')

--inserts para IDIOMAS 

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (1, 'Español');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (2, 'Ingles');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (3, 'Aleman');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (4, 'Frances');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (5, 'Italiano');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (6, 'Portugues');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (7, 'Arabe');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (8, 'Mandarin');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (9, 'Ruso');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS" (id_idioma, idioma) VALUES (10, 'Latin');

--inserts para IDIOMAS_PELICULAS 

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 8);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (1, 10);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (2, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (2, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES (2, 10);

--inserts para IDIOMAS_SERIES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 8);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (1, 10);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (2, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (2, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (2, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES (6, 9);

--inserts para PAISES

INSERT INTO "PAISES" (id_pais, nombre) VALUES (1, "Colombia");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (2, "España") ;
INSERT INTO "PAISES" (id_pais, nombre) VALUES (3, "Estados Unidos");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (4, "Inglaterra");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (5, "Canada");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (6, "Argentina");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (7, "Venezuela");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (8, "Ecuador");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (9, "Chile");
INSERT INTO "PAISES" (id_pais, nombre) VALUES (10, "Finlandia");

--inserts para PELICULAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (1, 'The Dark Knight', 'Inserte texto', '2008-07-14', 'dk.png', 'dk.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (2, 'El Irlandes', 'Inserte texto', '2019-11-27', 'i.png', 'i.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (3, 'El Hoyo', 'Inserte texto', '2019-11-08', 'i.png', 'i.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (4, 'El Show de Trouman', 'Inserte texto', '1998-06-01', 'S.png', 's.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (5, 'No Mires Arriba', 'Inserte texto', '2021-12-10', 'dlu.png', 'dlu.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (6, 'El Renacido', 'Inserte texto', '2016-02-05', 'r.png', 'r.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (7, 'Los Dos Papas', 'Inserte texto', '2019-12-20', 'pope.png', 'pope.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (8, 'Enola Holmes', 'Inserte texto', '2020-09-23', 'hol.png', 'hol.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (9, 'Su Ultimo Deseo', 'Inserte texto', '2020-02-21', 'des.png', 'des.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" (id_pelicula, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (10, 'Invencible', 'Inserte texto', '2014-12-25', 'invenc.png', 'inve.com')

--INSERS PARA PELICULAS_CATEGORIAS 

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (1, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (2, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (3, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (4, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (5, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (6, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (7, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (8, 8);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (9, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria) VALUES (10, 10);


--inserts para PELICULAS_FAVORITAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" (id_perfil, id_pelicula) VALUES (1, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" (id_perfil, id_pelicula) VALUES (2, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" (id_perfil, id_pelicula) VALUES (3, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" (id_perfil, id_pelicula) VALUES (4, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" (id_perfil, id_pelicula) VALUES (14, 9);


--inserts para PERFILES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (1, 37,  'Juan Ramirez', 33);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (2, 38, 'Maria Hernandez', 24);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (3, 39,  'Jaime Cardenas', 25);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (4, 40,  'Lina Maduro', 19);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (5, 41,  'Carlos Restrepo', 32);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (6, 42, 'Lola Murillo', 42);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (7, 43,  'Marta Gomez', 38);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (8, 44, 'David Gutierrez', 26);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (9, 45, 'Camila Pineda', 49);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (10, 46,  'Camilo Rendon', 18);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (11, 47,  'Juana Duran', 22);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (12, 48,  'Valeria Mercury', 36);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (13, 49, 'Oscar Garcia', 24);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (14, 50, 'Mateo Jimenez', 39);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (15, 51, 'Enrique Alvarez', 20);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PERFILES" (id_perfil, id_usuario, nombre, edad) VALUES (16, 52, 'Rodolfo Traba', 26);

--inserts para PLANES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PLANES" (id_plan, nombre, duracion, precio) VALUES (1, 'Plan pobre', 1, 5000);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PLANES" (id_plan, nombre, duracion, precio) VALUES (2, 'Plan medio', 1, 20000);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."PLANES" (id_plan, nombre, duracion, precio) VALUES (3, 'Plan rico', 1, 30000);

--inserts para SERIES 

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (1, 'The End of the F***ing world', 'Inserte texto', '2017-10-24', 'fk.png', 'fk.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (2, 'Everything Sucks', 'Inserte texto', '2018-02-16', 'es.png', 'es.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (3, 'Dark', 'Inserte texto', '2016-12-01', 'dark.png', 'dark.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (4, 'Atypical', 'Inserte texto', '2017-08-11', 'aty.png', 'aty.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (5, 'Sense8', 'Inserte texto', '2015-06-05', 'se8.png', 'se8.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (6, 'Sex Education', 'Inserte text', '2019-01-11', 'sedu.png', 'sedu.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (7, 'American Vandal', 'Inserte texto', '2017-09-15', 'av.png', 'av.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (8, 'Glow', 'Inserte texto', '2017-06-23', 'glow.png', 'glow.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (9, 'Maniac', 'Inserte texto', '2018-09-21', 'maniac.png', 'maniac.com');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" (id_serie, nombre, descripcion, fecha_estreno, poster, trailer) VALUES (10, 'Breaking Bad', 'Inserte texto', '2008-01-20', 'bd.png', 'bd.com');X|

--inserts para CAPITULOS_SERIES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (11, 1, 'Episodio 1', 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (12, 1, 'Episodio 2', 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (13, 1, 'Episodio 3', 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (14, 1, 'Episodio 4', 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (21, 2, 'Plutonium', 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (22, 2, 'Maybe Youre Gonna Be The One That Saves Me', 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (23, 2, 'All That and a Bag of Chips', 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (31, 3, 'Secrets', 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (32, 3, 'Lies', 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."CAPITULOS_SERIES" (id_serie, id_capitulo, nombre, numero) VALUES (33, 3, 'Past and Present', 3);

--INSERTS PARA SERIES_CATEGORIAS 

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (1, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (2, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (3, 10);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (4, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (5, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (6, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (7, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (8, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (9, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" (id_serie, id_categoria) VALUES (10, 3);

--inserts para SERIES_FAVORITAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" (id_perfil, id_serie) VALUES (12, 10);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" (id_perfil, id_serie) VALUES (15, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" (id_perfil, id_serie) VALUES (17, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" (id_perfil, id_serie) VALUES (21, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_FAVORITAS" (id_perfil, id_serie) VALUES (25, 9);

--inserts para SUSCRIPCIONES

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (1, 37, 2, '0', '2022-05-01');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (2, 38, 3, '0', '2022-05-04');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (3, 39, 1, '1', '2022-06-01');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (4, 40, 2, '1', '2022-05-30');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (5, 41, 1, '0', '2022-05-05');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (6, 42, 1, '1', '2022-05-15');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (7, 43, 2, '1', '2022-05-19');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (8, 44, 2, '1', '2022-05-21');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (9, 45, 1, '0', '2022-05-04');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" (id_suscripcion, id_usuario, id_plan, activo, fecha_vencimiento) VALUES (10, 46, 3, '1', '2022-05-27');

--INSERTS PARA TIEMPOS_VISUALIZACION

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" (id_tiempo, id_perfil, id_pelicula, tiempo) VALUES (1, 11, 1, '1:43:52');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" (id_tiempo, id_perfil, id_pelicula, tiempo) VALUES (2, 15, 4, '1:21:58');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" (id_tiempo, id_perfil, id_pelicula, tiempo) VALUES (3, 8, 5, '2:02:06');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" (id_tiempo, id_perfil, id_pelicula, tiempo) VALUES (4, 2, 9, '0:43:22');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."TIEMPOS_VISUALIZACION" (id_tiempo, id_perfil, id_pelicula, tiempo) VALUES (5, 1, 10, '1:28:36');

--inserts para USUARIOS--
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('Juan21@gmail.com', 'juan11', 6125,1, 1, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('Maria@gmail.com', 'maria12', 9814,1, 2, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('jaime@gmail.com', 'jaime13', 9175,3, 2, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('lina@gmail.com', 'lina14', 0214,6, 8, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('Carlos123@gmail.com', 'carlos15', 5601,2, 4, 4);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('lola@gmail.com', 'lola16', 5024,3, 3, 8);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('marta@gmail.com', 'marta17', 5120,7, 7, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('david@gmail.com', 'david18', 3201,4, 5, 1);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('camila@gmail.com', 'camila19', 0198,8, 8, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('camilo@gmail.com', 'camilo20', 2201,8, 9, 3);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('juana@gmail.com', 'juana21', 9305,5, 6, 5);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('valeria@gmail.com', 'valeria22', 3601,4, 2, 6);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('oscar@gmail.com', 'oscar23', 5017,2, 3, 7);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('mateo@gmail.com', 'mateo24', 2504,3, 1, 9);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('enrique@gmail.com', 'enrique25', 9902,1, 5, 2);
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" (correo, contrasena, tarjeta_vin,id_pais, id_zona, id_ciudad) VALUES ('rodolfo@gmail.com', 'rodolfo26', 5540,4, 2, 5);

--inserts para ZONAS

INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (1, 1, 'Antioquia');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (2, 1, 'Quindio');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (3, 1, 'Cundinamarca');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (4, 1, 'Valle del Cauca');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (5, 1, 'Tolima')
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (6, 1, 'Atlantico');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (7, 1, 'Cordoba');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (8, 8, 'Azuay');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (9, 8, 'Guayas');
INSERT INTO "Grupo 5 - nadiePasaDeEstaEsquina"."ZONAS" (id_zona, id_pais,  nombre) VALUES (10, 8, 'Bolivar');



