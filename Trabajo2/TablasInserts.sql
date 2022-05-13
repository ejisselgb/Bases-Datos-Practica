INSERT INTO "Grupo 3 - T2"."PELICULAS" (titulo, duracion, sinopsis, ano_estreno, restriccion_edad, archivo_pelicula, archivo_trailer, cartel) VALUES
('Chernobyl la pelicula',135,'Un bombero lucha por comenzar una nueva historia con su novia y su hijo, pero un accidente en la planta nuclear de Chernobyl lo cambia todo.',2021,13,'https://jeje','https://jeje','https://jeje'),
('Emoji la pelicula',87,'En textópolis, donde se supone que los emojis solo deben mostrar una emoción, las diversas expresiones de Gene se vuelven un problema. Su solición, volverse normal.',2017,7,'https://jeje','https://jeje','https://jeje'),
('Milagros del cielo',209,'Christy, una madre devota con una hija muy enferma, sufre una crsis de fe mientras intenta desesperadamente salvar a su pequeña y mantener unida a su familia',2016,13,'https://jeje','https://jeje','https://jeje'),
('Rambo lll',101,'Rambo se niega a ayudar a Cnel. Trautman es una operación. Pero, cuando capturan a su amigo, rambo lanza una misión de rescate... él solo.',1988,16,'https://jeje','https://jeje','https://jeje'),
('La máscara',101,'Un desafortunado empleado bancario descubre una antigua mascar que lo convierte en un bromista desenfrenado y le premite dar rienda suelta a sus desoes más profundos',1994,13,'https://jeje','https://jeje','https://jeje'),
('El hijo de Chucky',86,'Los malvados Chucky y Tiffany están de vuelta con ayuda de su hijo, quien los resucita y desata una nueva ola de asesinatos y caos.. esta vez en Hollywood',2004,16,'https://jeje','https://jeje','https://jeje'),
('Ganar o morir',94,'Un profugo condenado injustamente ayuda a su viuda y a sus  dos niños después de enterarse de que una empresa inmobiliaria amenaza con quitarles sus tierras',1993,16,'https://jeje','https://jeje','https://jeje'),
('Quieren volverme loco',94,'Para deslumbrar a una madre soltera, un audaz pretendiente se ofrece a llevar a sus hijos de viaje y se ve obligado a soportar sus desquiciantes y endiabladas travesuras',2005,13,'https://jeje','https://jeje','https://jeje');

INSERT INTO "Grupo 3 - T2"."SERIES" (titulo,temporadas,sinopsis,ano_estreno,restriccion_edad,cartel,archivo_trailer) VALUES
('The vampire diaries', 8,'Pocos meses después de que sus padres fallecieron en un accidente automovilístico, Elena Gilbert y su hermano, Jeremy tratan de mitigar la pena de su pérdida. Elena  se encuentra extasiada con un nuevo estudiante apuesto y misterioso, Stefan, desconociendo que él es un vampiro de varios siglos de edad que está tratando de hacer lo mejor para vivir en paz junto a los humanos. Su hermano, Damon por el contrario encarna, el estereotipo de un vampiro incluyendo el ser violento y brutal.', 2009, 12, 'link cartel', 'link trailer' ),
('Emily en Paris', 2, 'Emily Cooper, una joven ejecutiva de marketing de Chicago, es contratada para proporcionar una perspectiva estadounidense en una empresa de marketing en París.',2020,15,'link cartel', 'link trailer'),
('La casa de papel',5,'Un misterioso hombre conocido como «el Profesor» ha pasado toda su vida planeando el mayor de los atracos de la historia: entrar en la Fábrica Nacional de Moneda y Timbre e imprimir 2400 millones de euros. Para llevar a cabo este ambicioso plan, el Profesor recluta a un equipo de ocho personas con ciertas habilidades y que no tienen nada que perder.',2017,18,'link cartel', 'link trailer'),
('Velvet',4,'Las Galerías Velvet. Ubicadas en el número 34 de la Gran Vía madrileña, entre sus paredes se encuentran los trajes más elegantes, sofisticados y caros del momento, pero sobre todo se esconde una de las más maravillosas historias de amor que se haya contado jamás: la de Ana y Alberto. Ella, una humilde costurera que trabaja en las galerías desde que era niña. Él, un joven y apuesto muchacho destinado a heredar el majestuoso imperio de la moda que hasta ahora gobierna su padre, Don Rafael Márquez.',2014,12,'link cartel', 'link trailer'),
('Las chicas del cable',5,'La trama de la serie se centra principalmente en la vida de cuatro mujeres teleoperadoras de la Compañía de telefonía, y aunque en un inicio el oficio de operador telefónico fuese destinado a los hombres y rápidamente pasó a ser un trabajo principalmente realizado por mujeres, porque era un oficio para el que se necesitaba un alto nivel de paciencia y conllevaba mucho estrés y muchos de los antiguos trabajadores no se acabaron de adaptar a la nueva tarea.',2017,16,'link cartel', 'link trailer');

INSERT INTO "Grupo 3 - T2"."ACTORES"(nombre)
VALUES 
('Will Smith'),
('Johny Depp'),
('Adam Sandler'),
('Vin Diesel'),
('Jackie Chan'),
('Morgan freeman'),
('Brad Pitt'),
('Angelina Jolie'),
('Leonardo Di caprio'),
('Robin Williams'),
('Ian Somerhalder'), --Vampire diares
('Paul Wesley'), --Vampire diares
('Nina Dobrev'), --Vampire diares
('Lily Collins'), --Emily in paris
('Ashley Park'), --Emily in paris
('Philippine Leroy Beaulieu'),  --Emily in paris
('Lucas Bravo'), --Emily in paris
('Samuel Arnold'), --Emily in paris
('Camille Razat'), --Emily in paris
('Bruno Gouery'), --Emily in paris
('Úrsula Corberó'), --Casa de papel
('Itziar Ituño'), --Casa de papel
('Álvaro Morte'), --Casa de papel
('Paula Echevarría'), --Velvet
('Miguel Ángel Silvestre'), --Velvet
('Blanca Suárez'), --Las chicas del cable
('Yon González'), --Las chicas del cable
('Maggie Civantos'), --Las chicas del cable
('Ana Fernández'),--Las chicas del cable
('Nadia de Santiago'), --Las chicas del cable
('Martiño Rivas'), --Las chicas del cable
('Ana Polvorosa'),--Las chicas del cable
('Danila Kozlovski'), --chernobyl
('Oksana Akínshina'), --chernobyl
('Filipp Avdeyev'), --chernobyl
('Nikolái Kozak'),--chernobyl
('T. J. Miller'),--emoji
('Anna Faris'),--emoji
('James Corden'),--emoji
('Patrick Stewart'),--emoji
('Maya Rudolph'),--emoji
('Jennifer Garner'),--milagros del cielo
('Kylie Rogers'),--milagros del cielo
('Martin Henderson'),--milagros del cielo
('John Rambo'),--rambo iii
('Coronel Trautman'),--rambo iii
('Mushaf Gani'),--rambo iii
('Jim Carrey'),--la mascara
('Cameron Diaz'),--la mascara
('Jennifer Tilly'),--el hijo de chuky
('Brad Dourif'),--el hijo de chuky
('John Waters'),--el hijo de chuky
('Jean-Claude Van Damme'),--ganar o morir
('Rosanna Arquette'),--ganar o morir
('Kieran Culkin'),--ganar o morir
('Ice Cube'),--quieren volverme loco
('Aleisha Allen'),--quieren volverme loco
('Nia Long'),--quieren volverme loco
('Phillip Daniel Bolden');--quieren volverme loco

INSERT INTO "Grupo 3 - T2"."CATEGORIAS"(nombre)
VALUES
('Comedia'), --emily - casa - la mascara - quieren volverme...
('Terror'), --vampire - chuky
('Ficcion'), --vampire
('Accion'),--Rambo - la mascara - ganar o morir
('Aventura'), -- quieren volverme...
('Drama'), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
('Infantil'),--emoji - milagros - quieren volverme...
('Animacion'),--emoji
('Suspenso'), --casa 
('Romance'), --emily - velvet - chernobyl - quieren volverme...
('Telenovela'),-- chicas
('Crimen'), --casa
('Sobrenatural'), --vampire
('Historico');--chicas - chernobyl;

INSERT INTO "Grupo 3 - T2"."IDIOMAS"(nombre)
VALUES
('Ingles'),
('Chino Mandarin'),
('Hindi'),
('Español'),
('Frances'),
('Arabe'),
('Ruso'),
('Portugues'),
('Aleman'),
('Italiano'),
('Coreano'),
('Japones');

INSERT INTO "Grupo 3 - T2"."PLANES"(nombre,precio,duracion)
VALUES
('Cortesia',0,30),
('Basico',16900,30),
('Estandar',26900,30),
('Premium',38900,30);

INSERT INTO "Grupo 3 - T2"."PAISES"(nombre)
VALUES
('Colombia'),
('Ecuador'),
('Estados Unidos'),
('Suiza'),
('Venezuela');


INSERT INTO "Grupo 3 - T2"."ZONAS" (id_pais,nombre) VALUES
(1,'Antioquia'),
(1,'Cundinamarca'),
(1,'Cordoba'),
(1,'Atlantico'),
(3,'Florida'),
(3,'Alabama'),
(3,'Texas'),
(3,'Washington');

INSERT INTO "Grupo 3 - T2"."CIUDADES" (id_zona,nombre) VALUES
(1,'Medellin'),
(1,'Itagui'),
(1,'Sabaneta'),
(2,'Soacha'),
(2,'Bogota'),
(2,'Cajica'),
(5,'Miami'),
(5,'Orlando'),
(5,'Tampa'),
(6,'Auburn');

INSERT INTO "Grupo 3 - T2"."ACTORES_SERIES"(id_serie,id_actor)
VALUES
(5,11), --('Ian Somerhalder'), --Vampire diares
(5,12), --('Paul Wesley'), --Vampire diares
(5,13), --('Nina Dobrev'), --Vampire diares
(6,14), --('Lily Collins'), --Emily in paris
(6,15), --('Ashley Park'), --Emily in paris
(6,16),  --('Philippine Leroy Beaulieu'),  --Emily in paris
(6,17), --('Lucas Bravo'), --Emily in paris
(6,18), --('Samuel Arnold'), --Emily in paris
(6,19), --('Camille Razat'), --Emily in paris
(6,20), --('Bruno Gouery'), --Emily in paris
(7,21), --('Úrsula Corberó'), --Casa de papel
(7,22), --('Itziar Ituño'), --Casa de papel
(7,23), --('Álvaro Morte'), --Casa de papel
(8,24), --('Paula Echevarría'), --Velvet
(8,25), --('Miguel Ángel Silvestre'), --Velvet
(9,26),--('Blanca Suárez'), --Las chicas del cable
(9,27),--('Yon González'), --Las chicas del cable
(9,28),--('Maggie Civantos'), --Las chicas del cable
(9,29),--('Ana Fernández'),--Las chicas del cable
(9,30),--('Nadia de Santiago'), --Las chicas del cable
(9,31),--('Martiño Rivas'), --Las chicas del cable
(9,32);--('Ana Polvorosa'),--Las chicas del cable

INSERT INTO "Grupo 3 - T2"."ACTORES_PELICULAS"(id_pelicula,id_actor)
VALUES
(9,33),-- ('Danila Kozlovski'), --chernobyl
(9,34),-- ('Oksana Akínshina'), --chernobyl
(9,35),-- ('Filipp Avdeyev'), --chernobyl
(9,36),-- ('Nikolái Kozak'),--chernobyl
(10,37),-- ('T. J. Miller'),--emoji
(10,38),-- ('Anna Faris'),--emoji
(10,39),-- ('James Corden'),--emoji
(10,40),-- ('Patrick Stewart'),--emoji
(10,41),-- ('Maya Rudolph'),--emoji
(11,42),-- ('Jennifer Garner'),--milagros del cielo
(11,43),-- ('Kylie Rogers'),--milagros del cielo
(11,44),-- ('Martin Henderson'),--milagros del cielo
(12,45),-- ('John Rambo'),--rambo iii
(12,46),-- ('Coronel Trautman'),--rambo iii
(12,47),-- ('Mushaf Gani'),--rambo iii
(13,48),-- ('Jim Carrey'),--la mascara
(13,49),-- ('Cameron Diaz'),--la mascara
(14,50),-- ('Jennifer Tilly'),--el hijo de chuky
(14,51),-- ('Brad Dourif'),--el hijo de chuky
(14,52),-- ('John Waters'),--el hijo de chuky
(15,53),-- ('Jean-Claude Van Damme'),--ganar o morir
(15,54),-- ('Rosanna Arquette'),--ganar o morir
(15,55),-- ('Kieran Culkin'),--ganar o morir
(16,56),-- ('Ice Cube'),--quieren volverme loco
(16,57),-- ('Aleisha Allen'),--quieren volverme loco
(16,58),-- ('Nia Long'),--quieren volverme loco
(16,59);-- ('Phillip Daniel Bolden');--quieren volverme loco

INSERT INTO "Grupo 3 - T2"."PELICULAS_CATEGORIAS"(id_pelicula,id_categoria)
VALUES
(13,1), --emily - casa - la mascara - quieren volverme...
(16,1), --emily - casa - la mascara - quieren volverme...
(14,2), --vampire - chuky
(12,4),--Rambo - la mascara - ganar o morir
(13,4),--Rambo - la mascara - ganar o morir
(15,4),--Rambo - la mascara - ganar o morir
(16,5), -- quieren volverme...
(9,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(11,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(15,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(10,7),--emoji - milagros - quieren volverme...
(11,7),--emoji - milagros - quieren volverme...
(16,7),--emoji - milagros - quieren volverme...
(10,8),--emoji
(9,10), --emily - velvet - chernobyl - quieren volverme...
(16,10), --emily - velvet - chernobyl - quieren volverme...
(9,14);--chicas - chernobyl;

INSERT INTO "Grupo 3 - T2"."SERIES_CATEGORIAS"(id_serie,id_categoria)
VALUES
(6,1), --emily - casa - la mascara - quieren volverme...
(7,1), --emily - casa - la mascara - quieren volverme...
(5,2), --vampire - chuky
(5,3), --vampire
(5,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(7,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(8,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(9,6), --vampire - casa - velvet - chicas - chernobyl - milagros - ganar o morir
(7,9), --casa 
(6,10), --emily - velvet - chernobyl - quieren volverme...
(8,10), --emily - velvet - chernobyl - quieren volverme...
(9,11),-- chicas
(7,12), --casa
(5,13), --vampire
(9,14);--chicas - chernobyl;

--INSERTS JF

INSERT INTO "Grupo 3 - T2"."IDIOMAS_PELICULAS" (id_idioma, id_pelicula) VALUES
(1,9),
(4,9),
(1,10),
(4,10),
(1,11),
(4,11),
(1,12),
(4,12),
(1,13),
(4,13),
(1,14),
(4,14),
(1,15),
(4,15),
(1,16),
(4,16);

INSERT INTO "Grupo 3 - T2"."IDIOMAS_SERIES" (id_idioma, id_serie) VALUES
(1,5),
(4,5),
(1,6),
(5,6),
(4,6),
(1,7),
(4,7),
(1,8),
(4,8),
(1,9),
(4,9);

INSERT INTO "Grupo 3 - T2"."TIEMPOS_VISUALIZACION_PELICULAS" (id_perfil,id_pelicula,tiempo) VALUES
(5,10,32),
(3,9,101),
(9,12,56),
(7,14,83),
(4,11,109),
(1,13,101),
(6,12,5),
(1,15,80),
(7,12,10),
(4,13,101);