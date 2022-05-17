------------------------ INSERTS PARA LUGARES -------------------------------------
INSERT INTO "Grupo 1 - T2"."PAIS"(nombre, id_pais)
VALUES
    ('Colombia', 170),
    ('Australia', 036),
    ('Brasil', 076),
    ('Canadá', 124),
    ('Suiza', 756),
    ('Alemania', 276),
    ('España', 724),
    ('Estados Unidos', 840);

INSERT INTO "Grupo 1 - T2"."ZONA"(id_pais, nombre)
VALUES
    (170, 'Antioquia'),
    (36, 'Victoria'),
    (76, 'Río de Janeiro'),
    (124, 'Ontario'),
    (756, 'Zúrich'),
    (276, 'Baviera'),
    (724, 'Madrid'),
    (840, 'Georgia');

INSERT INTO "Grupo 1 - T2"."CIUDAD"(id_zona, nombre)
VALUES
    (1, 'Medellín'),
    (2, 'Melbourne'),
    (3, 'Río de Janeiro'),
    (4, 'Toronto'),
    (5, 'Zúrich'),
    (6, 'Múnich'),
    (7, 'Madrid'),
    (8, 'Atlanta');

------------------------------------------ INSERTS DE USUARIO --------------------------------------------
INSERT INTO "Grupo 1 - T2"."USUARIO"(nombre_usuario, correo, contrasena, telefono, id_ciudad)
VALUES
    ('Humberto Carbonó Pedroza', 'humbertocarbono@correo.com', 'HorusyGuss123', '3043945384', 5),
    ('María José González Peláez', 'mariagonzales@correo.com', 'Ambar123', '3043945581', 2),
    ('Sara María Castrillón', 'saracastrillon@correo.com', 'Spidermanteamo', '3023742975', 3),
    ('Yineidis Carbonó Pedroza', 'yineidiscarbono@correo.com', 'GussyHorus123', '3008193892', 3),
    ('David González Idárraga', 'davidgonzalez@correo.com', 'LokyyBruno123', '3002945782', 4),
    ('Sebastián Arias Usma', 'sebastianarias@correo.com', 'Teamonacional', '3001846290', 8),
    ('Carlos Andrés Fernández Castro', 'andresfernandez@correo.com', 'Silvestre123', '3105988196', 5),
    ('Meriyarat Cano Herrera', 'meriyaratcano@correo.com', 'LukyyChispita123', '3002849038', 6),
    ('Isabela Gaviria Rúa', 'isabelagaviria@correo.com', 'Mellow123', '3048204581', 2),
    ('Luna Gil Cardona', 'lunagil@correo.com', 'Lunatupatrona123', '3023102957', 1),
    ('Dayana Giraldo Hurtado', 'dayanagiraldo@correo.com', 'DayanaYiraldó123', '3143956710', 1),
    ('Claudia Patricia Pedroza Gutierrez', 'claudiapedroza@correo.com', 'Humberbestson123', '3116319675', 7),
    ('Julio Humberto Carbonó Ahumada', 'juliocarbono@correo.com', 'Missy123', '3119483059', 7),
    ('Valeria Guerra Zapata', 'valeriaguerra@correo.com', 'Meamo123', '3046892957', 4),
    ('Guss Carbonó Pedroza', 'gusscarbono@correo.com', 'HumberyYine123', '3009730461', 1),
    ('Horus Carbonó Pedroza', 'horuscarbono@correo.com', 'YineyHumber123', '3041833940', 1);


------------------------------------------ INSERTS DE ACTORES --------------------------------------------
INSERT INTO "Grupo 1 - T2"."ACTORES" (nombre)
VALUES 
    ('Timothée Chalamet'),
    ('Jennifer Lawrence'),
    ('Will Smith'),
    ('Blanca Portillo'),
    ('Amparo Grisales'),
    ('Johnny Depp'),
    ('Gustavo Petro'),
    ('María Fernanda Cabal'),
    ('Yulieth Uribe'),
    ('Iván Duque'),
    ('Draco Rosa'),
    ('Monserrat Laferte'),
    ('Joan Alvarado')
    ('Kevin López');

------------------------------------------ CREAR TABLA REPARTO -------------------------------------------

------------------------------------------ INSERTS DE PELÍCULAS ------------------------------------------
INSERT INTO "Grupo 1 - T2"."PELICULAS"(nombre, sinopsis, fecha_lanzamiento)
VALUES
    ('Interestellar', 'Un grupo de científicos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allí.', '2014-10-26'),
    ('Jojo Rabit', 'Durante la Segunda Guerra Mundial, un niño que pertenece a las Juventudes Hitlerianas descubre que su madre está ocultando en el ático de su casa a una niña judía. La concepción del mundo que tienen el pequeño y su amigo imaginario, Hitler, cambia por completo con la irrupción en sus vidas de la joven hebrea.', '2020-01-16'),
    ('Ávatar', 'En un exuberante planeta llamado Pandora viven los Navi, seres que aparentan ser primitivos pero que en realidad son muy evolucionados. Debido a que el ambiente de Pandora es venenoso, los híbridos humanos/Navi, llamados Avatares, están relacionados con las mentes humanas, lo que les permite moverse libremente por Pandora. Jake Sully, un exinfante de marina paralítico se transforma a través de un Avatar, y se enamora de una mujer Navi.', '2009-12-17'),
    ('Dune', 'Arrakis, también denominado "Dune", se ha convertido en el planeta más importante del universo. A su alrededor comienza una gigantesca lucha por el poder que culmina en una guerra interestelar.', '2021-10-22'),
    ('The Batman', 'En su segundo año luchando contra el crimen, Batman explora la corrupción existente en la ciudad de Gotham y el vínculo de esta con su propia familia. Además, entrará en conflicto con un asesino en serie conocido como "el Acertijo".', '2022-03-04');

INSERT INTO "Grupo 1 - T2"."SERIES"(nombre, sinopsis, fecha_lanzamiento)
VALUES
    ('Peaky Blinders', 'Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan nuevas revoluciones y nacen bandas criminales en una nación agitada. En Birmingham, una pandilla de gánsters callejeros asciende hasta convertirse en los reyes de la clase obrera.', '2013-09-12'),
    ('Breaking Bad', 'El profesor calmado de química de una secundaria, Walter White cree que su vida no puede ser peor. Su salario apenas le alcanza para sostener a su familia, una situación que no mejora cuando su esposa da a luz y su hijo adolescente sufre de parálisis cerebral, pero Walter queda anonadado cuando se entera que tiene un cáncer terminal. Al concluir que su enfermedad iba a arruinar financieramente a su familia, él toma una decisión desesperada con el fin de ganar más dinero durante el tiempo que le queda y transforma un viejo vehículo de recreación en un laboratorio de matanfetaminas sobre ruedas.', '2008-01-20'),
    ('Juego de tronos', 'El libro mejor vendido de la serie "A Song of Ice and Fire" escrito por George R.R, es llevado a la pantalla chica cuando HBO decide recrear esta historia épica de fantasía. Es la descripción de dos familias poderosas, reyes y reinas, caballeros y renegados, hombres falsos y honestos, haciendo parte de un juego mortal por el control de los Siete Reinados de Westeros y por sentarse en el trono más alto. Martin es el co productor ejecutivo y uno de los escritores de la serie que fue filmada en el Norte de Irlanda y Malta.', '2011-04-17'),
    ('No te metas con los gatos: Un asesino en internet', 'Los horripilantes vídeos de un criminal pervertido llevan a un grupo de investigadores amateur a iniciar una peligrosa búsqueda en Internet para dar con él.', '2019-12-18'),
    ('Making a murderer', 'Un hombre es exonerado de su pena por unas pruebas de ADN, después de estar años en prisión. Su búsqueda de la justicia muestra el lado oscuro de las autoridades de la ciudad.', '2015-12-18');

------------------------------------------ INSERTS DE PELÍCULAS ------------------------------------------
INSERT INTO "Grupo 1 - T2"."IDIOMAS" (idioma)
VALUES
    ('Italiano'),
    ('English'),
    ('Deutch'),
    ('Español'),
    ('Français');

INSERT INTO "Grupo 1 - T2"."PERFIL" (id_usuario, nombre_perfil)
VALUES
    (1, 'Humber'),
    (1, 'Gato'),
    (1, 'Bebé'),
    (2, 'Mami'),
    (2, 'Papi'),
    (3, 'Yo'),
    (4, 'Yineidis'),
    (4, 'Humber'),
    (5, 'Loky'),
    (5, 'Bruno'),
    (6, 'Deportes'),
    (6, 'Series'),
    (7, 'Andy'),
    (8, 'Luky'),
    (8, 'Yo'),
    (8, 'Chispita'),
    (9, 'Isa'),
    (9, 'Erika'),
    (9, 'Papá'),
    (10, 'Lunix'),
    (11, 'Dayana'),
    (12, 'Luvi'),
    (12, 'Deyker'),
    (12, 'Claudia'),
    (13, 'Julio'),
    (13, 'Missy'),
    (14, 'Vale'),
    (15, 'Novia'),
    (15, 'Yo'),
    (16, 'Horus');

------------------------------------------ INSERTS DE PLANES ------------------------------------------
INSERT INTO "Grupo 1 - T2"."PLANES" (tipo, precio)
VALUES
    ('Básico', '$16.000'),
    ('Plus', '$32.000'),
    ('Élite', '$64.000')

------------------------------------------ INSERTS DE SUSCRIPCIONES --------------------------------------
INSERT INTO "Grupo 1 - T2"."SUSCRIPCIONES" (id_usuario, id_plan, fecha_vencimiento, estado)
VALUES
    (1, 3, '2023-01-01', 'Activo'),
    (2, 1, '2022-10-01', 'Activo'),
    (3, 2, '2020-01-03', 'Inactivo'),
    (4, 1, '2022-08-07', 'Activo'),
    (5, 3, '2022-08-07', 'Activo'),
    (6, 1, '2023-12-07', 'Activo'),
    (7, 2, '2019-03-19', 'Inactivo'),
    (8, 3, '2022-05-11', 'Inactivo'),
    (9, 1, '2017-11-29', 'Inactivo'),
    (10, 1, '2023-10-30', 'Activo'),
    (11, 3, '2027-09-26', 'Activo'),
    (12, 3, '2023-01-01', 'Activo'),
    (13, 3, '2024-05-09', 'Activo'),
    (14, 1, '2021-07-29', 'Inactivo'),
    (15, 2, '2022-12-12', 'Activo'),
    (16, 2, '2022-06-18', 'Activo');

INSERT INTO CREATE TABLE "Grupo 1 - T2"."CATEGORIAS" (nombre_categoria)
VALUES
    ('Drama'),
    ('Comedia'),
    ('Acción'),
    ('Bélico'),
    ('Romance'),
    ('Terror');

INSERT INTO "Grupo 1 - T2"."PELICULAS_CATEGORIAS" (id_pelicula, id_categoria)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (2, 6),
    (2, 1),
    (2, 5),
    (3, 1),
    (3, 4),
    (4, 6),
    (5, 2),
    (5, 3);

INSERT INTO "Grupo 1 - T2"."SERIES_CATEGORIAS" (id_serie, id_categoria)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (2, 6),
    (2, 1),
    (2, 5),
    (3, 1),
    (3, 4),
    (4, 6),
    (5, 2),
    (5, 3);

INSERT INTO "Grupo 1 - T2"."PELICULAS_FAVORITAS" (id_perfil, id_pelicula)
    VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (2, 5),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 4),
    (4, 2),
    (5, 2),
    (5, 3),
    (6, 2),
    (6, 3),
    (6, 5),
    (7, 5),
    (7, 1),
    (7, 2),
    (8, 1),
    (8, 4),
    (9, 2),
    (10, 2),
    (11, 2),
    (11, 3),
    (11, 5),
    (12, 5),
    (12, 1),
    (12, 2),
    (13, 1),
    (13, 4),
    (14, 2),
    (15, 2),
    (15, 3),
    (16, 2),
    (16, 3),
    (16, 5),
    (17, 5),
    (17, 1),
    (17, 2),
    (18, 1),
    (18, 4),
    (19, 2),
    (20, 2),
    (20, 3)
    (21, 5),
    (21, 1),
    (21, 2),
    (22, 1),
    (22, 4),
    (23, 2),
    (24, 2),
    (25, 2),
    (25, 3),
    (25, 5),
    (26, 5),
    (26, 1),
    (26, 2),
    (27, 1),
    (27, 4),
    (18, 2),
    (29, 2),
    (29, 3),
    (30, 2),
    (30, 3),
    (30, 5);

INSERT INTO "Grupo 1 - T2"."ACTORES_PELICULA" (id_pelicula, id_actores)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (2, 6),
    (2, 1),
    (2, 5),
    (3, 1),
    (3, 4),
    (4, 6),
    (5, 2),
    (5, 3)
    (1, 7),
    (1, 8),
    (1, 9),
    (2, 10),
    (2, 11),
    (2, 9),
    (3, 11),
    (3, 12),
    (4, 10),
    (5, 7),
    (5, 8);

INSERT INTO "Grupo 1 - T2"."IDIOMAS_PELICULAS" (id_pelicula, id_idioma)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (2, 3),
    (2, 1),
    (2, 5),
    (3, 1),
    (3, 4),
    (4, 3),
    (5, 2),
    (5, 3);

INSERT INTO "Grupo 1 - T2"."IDIOMAS_SERIES" (id_serie, id_idioma)
VALUES
    (1, 2),
    (1, 3),
    (1, 5),
    (2, 3),
    (2, 1),
    (2, 5),
    (3, 1),
    (3, 4),
    (4, 3),
    (5, 2),
    (5, 3);

INSERT INTO "Grupo 1 - T2"."TIEMPO_VISUALIZACIÓN" (id_pelicula, id_perfil, tiempo)
VALUES
    (1, 1, '00:50:26'),
    (1, 3, '01:30:50'),
    (1, 18, '00:30:30'),
    (2, 9, '01:20:00'),
    (2, 12, '00:45:59'),
    (3, 29, '02:00:50'),
    (3, 3, '00:27:29'),
    (4, 14, '02:16:49'),
    (4, 16, '01:30:50'),
    (4, 5, '00:33:29'),
    (4, 30, '02:02:10'),
    (5, 13, '01:13:25'),
    (5, 20, '02:56:20');

INSERT INTO  "Grupo 1 - T2"."CALIFICACIÓN_PELICULA" (id_pelicula, calificación)
VALUES
    (1, 2),
    (2, 5),
    (3, 4),
    (4, 3),
    (5, 3);

INSERT INTO  "Grupo 1 - T2"."CALIFICACIÓN_SERIES" (id_perfil, id_serie, calificación)
VALUES
    (5, 1, 5),
    (20, 5, 1),
    (7, 3, 2),
    (8, 4, 4),
    (2, 2, 5);

INSERT INTO "Grupo 1 - T2"."CAPITULOS_SERIE" (id_serie, temporada, num_capitulo, descripcion_capitulo, duracion, caratula)
VALUES
    (1, 6, 5, 'A la luz de unas extraordinarias revelaciones personales, Tommy adopta una estrategia que lo cambiará todo. Mientras tanto, los planes de sus enemigos empiezan a encajar', '00:57:05', 'imagen.jpg'),
    (2, 3, 2, 'A pesar de la creciente tensión entre Walt y Skyler, él se esfuerza al máximo para conseguir reconciliarse con su familia. Jesse sonsigue una fabulosa oportunidad de inversión gracias a Saul', '00:47:13', 'imagen2.jpg'),
    (3, 4, 8, 'Mientras la avanzadilla de salvajes liderados por el Magnar de Thenn se acerca cada vez más al Muro, las intenciones de Meñique en Nido de Águilas se ponen en duda. En Desembarco del Rey, el destino de Tyrion se decide según la destreza de Oberyn', '00:52:04', 'imagen3.jpg'),
    (4, 1, 1, 'Por sorpresa, un sobrecogedor video en Internet reúne a un amplio grupo de usuarios amantes de los animales que buscan justicia. Mientras, su objetivo tiene planeado más espantosos actos', '01:06:33', 'imagen4.jpg'),
    (2, 5, 12, 'Ante las amenazas de Jesse, Walter decide sacar a su familia de casa lo antes posible. Mientras tanto, Hank improvisa un nuevo plan para acercarse a Walter sin levantar sospechas', '00:59:58', 'imagen6.jpg'),
    (5, 2, 10, 'Kathleen hace dos de los mayores descubrimientos del caso; los abogados de Brendan llevan su caso al siguiente nivel', '00:35:02', 'imagen7.jpg');















