/*
✓ Usuario (información general que tienen todos los usuarios, como cuenta, contraseña)
✓ Perfil (información personalizada de cada usuario)
✓ Planes (planes que ofrece la plataforma para suscribirse y ver películas - usar de ejemplo a netflix)
✓ Suscripciones (aqui se pondrá al usuario y el plan que haya comprado, recuerden poner la fecha de vencimiento y si su suscripcion está activa o no)
✓ Peliculas
✓ Series
✓ Capitulo 
✓ Capitulos_Series
✓ Categorias
✓ Peliculas_Categorias
✓ Series_Categorias
✓ Peliculas_Favorita 
✓ Series_Favoritas 
✓ Actores
✓ Actores_Peliculas
✓ Actores_SERIES 
✓ Pais
✓ Zona (departamento) (DUDA)
✓ Ciudad
✓Idiomas
✓Idiomas_Peliculas
✓Idiomas_Series
✓Tiempo_Visualización_peliculas 
✓Tiempo_Visualización_series
✓Calificacion_Pelicula
✓Calificacion_Series 

*/

DROP TABLE IF EXISTS "Grupo 2 - T2"."USUARIO";
CREATE TABLE "Grupo 2 - T2"."USUARIO"(
id_usuario SERIAL,
email VARCHAR(30) UNIQUE,
contrasena VARCHAR(30) NOT NULL,
telefono VARCHAR(40),
tarjeta VARCHAR(60),
CONSTRAINT pk_usuario PRIMARY KEY (id_usuario)
);
----------------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."PAIS";
CREATE TABLE "Grupo 2 - T2"."PAIS"(
id_pais SERIAL,
nombre_pais VARCHAR(200) NOT NULL,
codigo_pais VARCHAR(10) UNIQUE,
CONSTRAINT pk_pais PRIMARY KEY (id_pais)
);
-----------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."ZONA";
CREATE TABLE "Grupo 2 - T2"."ZONAS"(
id_zona SERIAL,
id_pais SERIAL,
nombre_zona VARCHAR(200),
CONSTRAINT pk_zona PRIMARY KEY (id_zona),
CONSTRAINT fk_pais FOREIGN KEY(id_pais) REFERENCES "Grupo 2 - T2"."PAIS"(id_pais)
);
--------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."CIUDAD";
CREATE TABLE "Grupo 2 - T2"."CIUDAD"(
id_ciudad SERIAL,
id_zona SERIAL,
nombre_ciudad VARCHAR(200),
CONSTRAINT pk_ciudad PRIMARY KEY (id_ciudad),
CONSTRAINT fk_zona FOREIGN KEY(id_zona) REFERENCES "Grupo 2 - T2"."ZONAS"(id_zona)
);
------------------------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."PERFIL";
CREATE TABLE "Grupo 2 - T2"."PERFIL"(
id_perfil SERIAL,
id_usuario SERIAL,
id_pais SERIAL,
id_zona SERIAL,
id_ciudad SERIAL,
nombre_perfil VARCHAR(10) NOT NULL,
foto_perfil VARCHAR(10000),
edad int,
CONSTRAINT pk_perfil PRIMARY KEY (id_perfil),
CONSTRAINT fk_usuario FOREIGN KEY(id_usuario) REFERENCES "Grupo 2 - T2"."USUARIO"(id_usuario),
CONSTRAINT fk_pais_perfil FOREIGN KEY(id_pais) REFERENCES "Grupo 2 - T2"."PAIS"(id_pais),
CONSTRAINT fk_zona_perfil FOREIGN KEY(id_zona) REFERENCES "Grupo 2 - T2"."ZONAS"(id_zona),
CONSTRAINT fk_ciudad_perfil FOREIGN KEY(id_ciudad) REFERENCES "Grupo 2 - T2"."CIUDAD"(id_ciudad)
);

----------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."PLANES";
CREATE TABLE "Grupo 2 - T2"."PLANES"(
id_plan SERIAL,
nombre_plan VARCHAR(200),
descripcion_plan VARCHAR(10000),
precio FLOAT(8),
CONSTRAINT pk_planes PRIMARY KEY (id_plan)
);
-------------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."SUSCRIPCIONES";
CREATE TABLE "Grupo 2 - T2"."SUSCRIPCIONES"(
id_suscripcion SERIAL,    
id_plan SERIAL,
id_usuario SERIAL,
fecha_facturacion DATE,
activo BOOLEAN,
CONSTRAINT pk_suscripcion PRIMARY KEY (id_suscripcion),
CONSTRAINT fk_usuario FOREIGN KEY(id_usuario) REFERENCES "Grupo 2 - T2"."USUARIO"(id_usuario),
CONSTRAINT fk_plan FOREIGN KEY(id_plan) REFERENCES "Grupo 2 - T2"."PLANES"(id_plan)
);
---------------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."PELICULAS";
CREATE TABLE "Grupo 2 - T2"."PELICULAS"(
id_pelicula SERIAL,
nombre_pelicula VARCHAR(200),
trailer VARCHAR(10000),
poster VARCHAR(10000),
restriccion_edad INT,
fecha_publicacion DATE,
sinopsis VARCHAR(10000),
tiempo_total TIME,
CONSTRAINT pk_pelicula PRIMARY KEY (id_pelicula));
---------------------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."SERIES";
CREATE TABLE "Grupo 2 - T2"."SERIES"(
id_serie SERIAL,
nombre_serie VARCHAR(200),
trailer VARCHAR(10000),
poster VARCHAR(10000),
restriccion_edad INT,
fecha_publicacion DATE,
sinopsis VARCHAR(10000),
CONSTRAINT pk_serie PRIMARY KEY (id_serie));
--------------------------------------------------
DROP TABLE IF EXISTS "Grupo 2 - T2"."CAPITULOS_SERIES";
CREATE TABLE "Grupo 2 - T2"."CAPITULOS_SERIES"(
id_capitulo SERIAL,
id_serie SERIAL,
nombre_capitulo VARCHAR(200),
previewimagen VARCHAR(10000),
sinopsis VARCHAR(10000),
tiempo_total TIME,
temporada VARCHAR(1000),
CONSTRAINT pk_capitulo PRIMARY KEY (id_capitulo),
CONSTRAINT fk_serie_capitulo FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie));

----------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."CATEGORIAS"(
id_categoria SERIAL,
nombre_categoria VARCHAR(200),
CONSTRAINT pk_categorias PRIMARY KEY (id_categoria));
-----------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."PELICULAS_CATEGORIAS"(
id_pelicula SERIAL,
id_categoria SERIAL,
CONSTRAINT fk_peliculas_categorias FOREIGN KEY(id_pelicula) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula),
CONSTRAINT fk_categorias_peliculas FOREIGN KEY(id_categoria) REFERENCES "Grupo 2 - T2"."CATEGORIAS"(id_categoria));
-------------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."SERIES_CATEGORIAS"(
id_categoria SERIAL,
id_serie SERIAL,
CONSTRAINT fk_categorias_series FOREIGN KEY(id_categoria) REFERENCES "Grupo 2 - T2"."CATEGORIAS"(id_categoria),
CONSTRAINT fk_serie_categorias FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie));
------------------------------------------------

CREATE TABLE "Grupo 2 - T2"."ACTORES"(
id_actor SERIAL,
nombre_actor VARCHAR(100),
CONSTRAINT pk_actores PRIMARY KEY(id_actor));
---------------------------------------------------

CREATE TABLE "Grupo 2 - T2"."ACTORES_PELICULAS"(
id_actor SERIAL,
id_pelicula SERIAL,
CONSTRAINT fk_actores_peliculas FOREIGN KEY(id_actor) REFERENCES "Grupo 2 - T2"."ACTORES"(id_actor),
CONSTRAINT fk_peliculas_actores FOREIGN KEY(id_pelicula) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula));

---------------------------------------------------

CREATE TABLE "Grupo 2 - T2"."ACTORES_SERIES"(
id_actor SERIAL,
id_serie SERIAL,
CONSTRAINT fk_actores_series FOREIGN KEY(id_actor) REFERENCES "Grupo 2 - T2"."ACTORES"(id_actor),
CONSTRAINT fk_serires_actores FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie));

--------------------------------------------------

--------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."PELICULAS_FAVORITAS"(
id_perfil SERIAL,
id_pelicula SERIAL,
favorito BOOLEAN,
CONSTRAINT fk_perfil_peli_favorito FOREIGN KEY(id_perfil) REFERENCES "Grupo 2 - T2"."PERFIL"(id_perfil),
CONSTRAINT fk_pelicula_peli_favorito FOREIGN KEY(id_pelicula ) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula)
);
--------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."SERIES_FAVORITAS"(
id_perfil SERIAL,
id_serie SERIAL,
favorito BOOLEAN,
CONSTRAINT fk_perfil_series_favorito FOREIGN KEY(id_perfil) REFERENCES "Grupo 2 - T2"."PERFIL"(id_perfil),
CONSTRAINT fk_serie_series_favorito FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie)
);


--------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."IDIOMAS"(
id_idioma SERIAL,
nombre_nativo VARCHAR(15),
CONSTRAINT pk_idioma PRIMARY KEY (id_idioma));
-------------------------------------------
CREATE TABLE "Grupo 2 - T2"."IDIOMAS_PELICULAS"(
id_idioma SERIAL,
id_pelicula SERIAL,
CONSTRAINT fk_idioma_p FOREIGN KEY(id_idioma) REFERENCES "Grupo 2 - T2"."IDIOMAS"(id_idioma),
CONSTRAINT fk_pelicula_i FOREIGN KEY(id_pelicula) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula));
---------------------------------------------
CREATE TABLE "Grupo 2 - T2"."IDIOMAS_SERIES"(
id_idioma SERIAL,
id_serie SERIAL,
CONSTRAINT fk_idioma_p FOREIGN KEY(id_idioma) REFERENCES "Grupo 2 - T2"."IDIOMAS"(id_idioma),
CONSTRAINT fk_serie_i FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie));
--------------------------------------
--------------------------------------
CREATE TABLE "Grupo 2 - T2"."TIEMPO_VISUALIZACION_PELICULAS"(
id_perfil SERIAL,
id_pelicula SERIAL,
tiempo_visualizado TIME,
CONSTRAINT fk_perfil_visualizacion_peli FOREIGN KEY(id_perfil) REFERENCES "Grupo 2 - T2"."PERFIL"(id_perfil),
CONSTRAINT fk_pelicula_visualizacion_peli FOREIGN KEY(id_pelicula ) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula)
);
------------------------------------------
CREATE TABLE "Grupo 2 - T2"."TIEMPO_VISUALIZACION_SERIES"(
id_perfil SERIAL,
id_serie SERIAL,
tiempo_visualizado TIME,
CONSTRAINT fk_perfil_visualizacion_series FOREIGN KEY(id_perfil) REFERENCES "Grupo 2 - T2"."PERFIL"(id_perfil),
CONSTRAINT fk_serie_visualizacion_series FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie)

);
-------------------------------------------

CREATE TABLE "Grupo 2 - T2"."CALIFICACION_PELICULAS"(
id_perfil SERIAL,
id_pelicula SERIAL,
estrella INT,
comentario VARCHAR(1000),
CONSTRAINT fk_perfil_calificacion_peli FOREIGN KEY(id_perfil) REFERENCES "Grupo 2 - T2"."PERFIL"(id_perfil),
CONSTRAINT fk_pelicula_calificacion_peli FOREIGN KEY(id_pelicula ) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula)
);
-------------------------------------------
CREATE TABLE "Grupo 2 - T2"."CALIFICACION_SERIES"(
id_perfil SERIAL,
id_serie SERIAL,
estrella INT,
comentario VARCHAR(1000),
CONSTRAINT fk_perfil_calificacion_series FOREIGN KEY(id_perfil) REFERENCES "Grupo 2 - T2"."PERFIL"(id_perfil),
CONSTRAINT fk_serie_calificacion_series FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie)
);
----------------------------------------------------------


CREATE TABLE "Grupo 2 - T2"."CATALOGO"(
id_catalogo SERIAL,
id_pelicula SERIAL,
id_serie SERIAL,
CONSTRAINT pk_catalogo PRIMARY KEY (id_catalogo),
CONSTRAINT fk_catalogo_series FOREIGN KEY(id_serie) REFERENCES "Grupo 2 - T2"."SERIES"(id_serie),
CONSTRAINT fk_catalogo_peli FOREIGN KEY(id_pelicula) REFERENCES "Grupo 2 - T2"."PELICULAS"(id_pelicula)
);
-------------------------------------------------------
CREATE TABLE "Grupo 2 - T2"."CATALOGO_PAIS"(
id_catalogo SERIAL,
id_pais SERIAL,
activo BOOLEAN,
CONSTRAINT fk_catalogo_catalogo_pais FOREIGN KEY(id_catalogo) REFERENCES "Grupo 2 - T2"."CATALOGO"(id_catalogo),
CONSTRAINT fk_pais_catalogo_pais FOREIGN KEY(id_pais) REFERENCES "Grupo 2 - T2"."PAIS"(id_pais)
);
--------------------------------------------------
--INSERTS--
---USUARIO----
INSERT INTO 
    "Grupo 2 - T2"."USUARIO"(email,contrasena,telefono,tarjeta)
VALUES
    ('santiago@gmail.com','santi16900','3156879009','9890000789665478'),
    ('velez_pro12@hotmail.com','rayomcqueen01','313663666','4000001234567899'),
    ('carlis123@gmail.com','pandequeso13','3156778890','9863445111090987'),
    ('viviHyos@gmail.com','seditaGorda1','3124567789','1222330000989999'),
    ('pablitos@hotmail.com','pablo73','3108977780','1234567856665345'),
    ('julian@gmail.com','jul16900','3125667800','1122334455667788'),
    ('ivan@gmail.com','ivan6900','3178990765','678954321999083'),
    ('andrea@gmail.com','sandre','3136626339','5094934212345678'),
    ('puercoespin@gmail.com','puerco16900','4589915','8776659076433212'),
    ('zanahoria@gmail.com','saludable2000','6006987','50000134657123486');

---------------------------------------------------------
--INSERTS--
---PERFIL----
INSERT INTO
"Grupo 2 - T2"."PERFIL"(id_usuario,id_pais,id_zona,id_ciudad,nombre_perfil,foto_perfil,edad)
VALUES
    ('1','1','2','2','Santiago','fotofachera.jpg',24),
    ('4','1','2','2','Sedi','fotofachera2.jpg',8),
    ('2','1','2','2','McQueen','fotofachera3.jpg',21),
    ('3','4','6','6','Carlis','fotofachera4.jpg',26),
    ('2','4','7','7','Juan','fotofachera5.jpg',30),
    ('9','4','8','8','Vero','fotofachera6.jpg',8),
    ('10','4','9','9','zanahoria','fotofachera7.jpg',10);

--PLANES--------------------------------------------

INSERT INTO
"Grupo 2 - T2"."PLANES"(nombre_plan,descripcion_plan,precio)
VALUES
    ('Plan Tercer Mundista','Solo se puede usar 1 pantalla a la vez,
     acceso a todas las peliculas, series y documentales','16900'),
    ('Plan Normal','Se pueden usar 2 pantallas a la vez, se puede 
    descargar contenido en 2 dispositivos, acceso a todas las peliculas,
     series y documentales en HD', '26900'),
    ('Plan Gucci', 'Se pueden usar 4 pantallas a la vez, descargar contenido
     en hasta 4 dispositivos, acceso a todas las peliculas series y documentales
     en 4K', '38900');

-----SUSCRIPCIONES------------------------
INSERT INTO 
    "Grupo 2 - T2"."SUSCRIPCIONES"(id_plan,id_usuario,fecha_facturacion,activo)
VALUES
    ('1','1','2022-12-01','t'),
    ('2','2','2022-04-25','f'),
    ('3','3','2023-10-15','t'),
    ('3','4','2023-10-15','t'),
    ('1','5','2022-12-01','t'),
    ('2','6','2020-04-25','f'),
    ('3','7','2023-10-15','t'),
    ('3','6','2023-10-15','t'),
    ('1','8','2022-12-01','t'),
    ('2','9','2020-04-25','t'),
    ('3','10','2023-10-15','f')
    ('2','10','2023-10-16','t');
-----------------------
--INSERTS UBICACIONES--
INSERT INTO
"Grupo 2 - T2"."PAIS"(nombre_pais,codigo_pais)
VALUES
    ('Colombia','CO'),--1
    ('Andorra','AD'),--2
    ('Cuba','CU'),--3
    ('Venezuela','VE'),--4
    ('Estados Unidos','US');--5
INSERT INTO
"Grupo 2 - T2"."ZONAS"(id_pais,nombre_zona)
VALUES
    ('1','Cordoba'),
    ('1','Antioquia'),
    ('1','Guajira'),
    ('1','Nariño'),
    ('1','Bolivar'),
    ('4','Caracas'),---6
    ('4','Monagas'),---7
    ('4','Guarico'),--8
    ('4','Carabobo');--9
INSERT INTO
"Grupo 2 - T2"."CIUDAD"(id_zona,nombre_ciudad)
VALUES
    ('1','Monteria'),
    ('2','Medellin'),
    ('3','Rioacha'),
    ('4','Pasto'),
    ('5','Cartagena'),
    ('6','Sucre'),
    ('7','Maturin'),
    ('8','San juan de los morros'),
    ('9','Valencia');

-------------------------------------------------------------
INSERT INTO
"Grupo 2 - T2"."PELICULAS"(nombre_pelicula,trailer,poster,restriccion_edad,fecha_publicacion,sinopsis,tiempo_total)
VALUES
    ('Rapidos y furiosos','https://www.youtube.com/watch?v=oW2FUA8fjzM&ab_channel=FilmSelectEspa%C3%B1ol','https://static.wikia.nocookie.net/atodogas/images/d/d7/R%C3%A1pidos_y_furiosos_9_-_LAT-3.jpeg/revision/latest?cb=20210415055215&path-prefix=es',13,'2001-06-22','Dom Toretto y su equipo se unen para detener un complot del asesino más hábil y el conductor más exitoso que jamás hayan conocido: el hermano abandonado de Dom','1:30:0'),

    ('Shrek','https://www.youtube.com/watch?v=CwXOrWvPBPk&ab_channel=MovieclipsClassicTrailers','https://images-na.ssl-images-amazon.com/images/S/pv-target-images/6d0b08a81e519ca8b33e518b80891097fed2b4b96f0e9453a9991f846bba133d._RI_V_TTW_.jpg',10,'2001-05-22','Érase una vez un ogro verde llamado Shrek que vivía en un pantano muy lejano, feliz con sus baños de barro y su particular concepto de la higiene. Pero un buen día, su preciada soledad se ve interrumpida por la invasión de un grupo de molestos personajes salidos de cuentos clásicos','1:30:0'),
    
    ('El viaje de chihiro','https://www.youtube.com/watch?v=5Fgq4Osh6XQ&ab_channel=V%C3%A9rtigoFilms','https://static.wikia.nocookie.net/disney/images/c/c5/Spirited_Away.jpg/revision/latest?cb=20130421015528&path-prefix=es',10,'2003-11-27','En rumbo a su casa nueva, Chihiro, una niña caprichosa y nerviosa investiga con su familia un parque de diversiones abandonado. Al comer de un banquete magnifico, sus papas son transformados en cerdos. Lo que parecía ser un parque es un balneario para dioses antiguos, espíritus y seres mágicos, operado por la hechicera Yubaba. Chihiro tendrá que demostrar su valor como empleada para poder librar a su familia del hechizo antes de que sean cocinados para los clientes de Yubaba.','1:30:0'),
    
    ('El aro','https://www.youtube.com/watch?v=AiDcL8xWSqI&ab_channel=PARAMOUNTPICTURESM%C3%89XICO','https://www.eltiempo.com/files/image_640_428/uploads/2018/10/22/5bce078b4b905.jpeg',18,'2001-06-22','La historia se basa en Samara, una niña con dotes sobrenaturales que fue arrojada a un pozo y regresa desde la muerte a través de un video maldito. Si alquien ve la cinta, en siete días Samara saldrá del pozo para transportarse al mundo físico y asesinarlo','1:30:0'),
    
    ('Dr strange: Multiverso de locura','https://www.youtube.com/watch?v=aWzlQ2N6qqg&ab_channel=MarvelEntertainment','https://es.web.img3.acsta.net/pictures/22/04/07/11/43/1839314.jpg',14,'2022-05-4','El Dr. Stephen Strange abre un portal al multiverso al utilizar un hechizo prohibido. Ahora su equipo debe enfrentarse a una amenaza enorme','2:30:0'),
    
    ('Cars','https://www.youtube.com/watch?v=WGByijP0Leo&ab_channel=TheMovieChanneI','https://es.web.img2.acsta.net/pictures/14/05/28/11/24/435900.jpg',1,'2006-06-22','Rayo McQueen es una prometedora figura del automovilismo, que está a punto de conseguir su primera Copa Pistón, aun siendo un novato. Sin embargo, el día que se dirige hacia el circuito, tiene un accidente y acaba perdido en un pueblo llamado Radiador Springs, medio abandonado en el que se ve obligado a quedarse.','1:57:00'),
    
    ('Ghost in the Shell: SAC_2045','https://www.youtube.com/watch?v=5HK_l9NHBw4','https://pics.filmaffinity.com/ghost_in_the_shell_sac_2045-132733070-large.jpg',18,'2021-05-22','Ghost es un fantasma muy agropecuario','2:00:00'),
    
    ('Interestelar','https://www.youtube.com/watch?v=UoSSbmD9vqc&ab_channel=WarnerBros.PicturesEspa%C3%B1a','https://m.media-amazon.com/images/I/A1JVqNMI7UL._SL1500_.jpg',12,'2014-01-01','Al ver que la vida en la Tierra está llegando a su fin, un grupo de exploradores dirigidos por el piloto Cooper (McConaughey) y la científica Amelia (Hathaway) emprende una misión que puede ser la más importante de la historia de la humanidad: viajar más allá de nuestra galaxia para descubrir algún planeta en otra que pueda garantizar el futuro de la raza humana','2:19:00');

------------------------------------------------------------
INSERT INTO
"Grupo 2 - T2"."CATEGORIAS"(nombre_categoria)
VALUES
    ('Terror'),
    ('Romance'),
    ('Comedia'),
    ('Accion'),
    ('Aventura'),
    ('Drama'),
    ('Fantasia'),
    ('Animacion'),
    ('Documental'),
    ('Clasicas'),
    ('fe y espiritualidad'),
    ('Deporte'),
    ('investigacion'),
    ('Suspenso'),
    ('Ciencia Ficcion');


------------------------------------------------------------
INSERT INTO
"Grupo 2 - T2"."PELICULAS_CATEGORIAS"(id_pelicula,id_categoria)
VALUES
    ('1','4'),('2','8'),('2','3'),('3','8'),('3','7'),('4','1'),('4','10'),('5','4'),('5','5'),('6','8'),('6','3'),('7','15'),
    ('7','13'),('8','15'),('8','13');

---------------------------------------------------------------

INSERT INTO
"Grupo 2 - T2"."SERIES"(nombre_serie,trailer,poster,restriccion_edad,fecha_publicacion,sinopsis)
VALUES
    ('Palpito','https://www.youtube.com/watch?v=YITf1X6hNls&ab_channel=NetflixLatinoam%C3%A9rica','https://pics.filmaffinity.com/P_lpito_Serie_de_TV-187571288-large.jpg','18','2022-04-10','La esposa de Simón es asesinada para quitarle el corazón y trasplantarlo a la esposa de un poderoso millonario.'),
    ('Gambito de dama','https://www.youtube.com/watch?v=-BBgzgNgzeQ&ab_channel=javirodr%C3%ADguez','https://pics.filmaffinity.com/Gambito_de_dama_Miniserie_de_TV-906552919-large.jpg','15','2019-04-10','La huérfana y prodigio del ajedrez, Beth Harmon, lucha contra la adicción mientras busca convertirse en la mejor jugadora de ajedrez del mundo'),
    ('Kakegurui','https://www.youtube.com/watch?v=cTlHQiRNVl0&ab_channel=Netflix','https://images.justwatch.com/poster/241577596/s718/kakegurui.%7Bformat%7D','10','2017-04-10','El gran apostador Yumeko Jabami planea limpiar la casa en la academia Hyakkaou, una escuela donde los estudiantes son evaluados únicamente en sus habilidades de juego.'),
    ('You','https://www.youtube.com/watch?v=69H-vtHxbdk&ab_channel=NetflixLatinoam%C3%A9rica','https://es.web.img3.acsta.net/pictures/18/12/31/02/49/2373131.jpg','15','2019-04-10','Una historia de amor del siglo XXI sobre un obsesivo, quien utiliza la era digital hiperconectada para enamorar a la mujer de sus sueños.'),
    ('Viva el Rey Julien','https://www.youtube.com/watch?v=1OW3_TCcnjk&ab_channel=NetflixLatinoam%C3%A9rica','https://static.wikia.nocookie.net/doblaje/images/d/d8/Rey_julien.jpg/revision/latest/top-crop/width/360/height/450?cb=20141224024306&path-prefix=es','10','2014-04-10','Las aventuras de Julien, el nuevo rey de la selva, que ha decidido transformar el reino en una zona de fiesta.'),
    ('Cuerpo Humano','https://www.youtube.com/watch?v=ips6SwbZY8o&ab_channel=SanOM','https://pics.filmaffinity.com/human_the_world_within-636676542-large.jpg','15','2019-05-13','Los ultimos avances cientificos y las mas atrapapantes historias personales sobre el funcionamiento del cuerpo');

----------------------------------------------------------
INSERT INTO
"Grupo 2 - T2"."SERIES_CATEGORIAS"(id_categoria,id_serie)
VALUES
('14','1'),('2','1'),('6','2'),('6','3'),('8','3'),('2','4'),('14','4'),('8','5'),('3','5'),('9','6'),('13','6');


--------------------------------
INSERT INTO
"Grupo 2 - T2"."ACTORES"(nombre_actor)
VALUES
('Michael Brown'),
('Ana lucia'),
('Anya Taylor'),
('Bill Camp'),
('Margot Robbie'),
('Alexandra Daddario'),
('Will Smith'),
('Tom Cruise'),
('Megan Fox'),
('Emma Watson'),
('Gal Gadot'),
('Scarlett Johansson'),
('Jim Carrey'),
('Jennifer Aniston'),
('Keanu Reeves');

----------------------------

INSERT INTO
"Grupo 2 - T2"."ACTORES_PELICULAS"(id_actor,id_pelicula)
VALUES
('1','5'),('2','5'),('2','1'),('3','3'),('4','4'),('5','5'),('5','2'),('6','2'),('7','1'),('8','3'),('8','4'),('9','4'),('10','2'),('9','3');

----------------
INSERT INTO
"Grupo 2 - T2"."ACTORES_SERIES"(id_actor,id_serie)
VALUES
('1','1'),('2','1'),('3','2'),('4','2'),('4','3'),('15','3'),('10','4'),('1','4'),('2','5'),('2','5'),('8','6'),('7','6'),('10','6'),('3','1');

---------------
INSERT INTO
"Grupo 2 - T2"."IDIOMAS"(nombre_nativo)
VALUES
('English'),('Espanol'),('portugues'),('Italiano'),('Deutsch');

-------------------------------------------
INSERT INTO
"Grupo 2 - T2"."IDIOMAS_PELICULAS"(id_idioma,id_pelicula)
VALUES
('1','1'),('1','2'),('1','3'),('1','4'),('1','5'),('2','1'),('2','2'),('3','1'),('3','3'),('3','5'),('4','2'),('4','5'),('5','1'),('5','2'),('5','3'),('5','4'),('5','5'),('1','6'),('2','6'),('3','7'),('4','7');

---------------------------------------------
INSERT INTO
"Grupo 2 - T2"."IDIOMAS_SERIES"(id_idioma,id_serie)
VALUES
('1','1'),('1','2'),('1','3'),('1','4'),('2','1'),('3','1'),('3','2'),('3','5'),('4','1'),('4','2'),('5','1'),('5','2'),('5','3'),('5','5'),('2','6'),('3','6');

---------------------------------------------

INSERT INTO
"Grupo 2 - T2"."CAPITULOS_SERIES"(id_serie,nombre_capitulo,previewimagen,sinopsis,tiempo_total,temporada)
VALUES
('1','Capitulo 1','Capitulo1.jpg','Su esposo esconde un terrible scereto','00:30:00','1'),
('1','Capitulo 12','Capitulo1.2.jpg','Su corazon no es de ella','00:30:00','2'),
('2','Ajedrez','Ajedrez1.jpg','La dama, aprende a jugar ajedrez','00:20:00','1'),
('2','Caballero','Caballero.jpg','Se juega un torneo de ajedrez','00:35:00','1'),
('3','Episodio 1','PPPP.jpg','Jugadas siniestras Kakegurui','00:32:00','1'),
('3','Episodio 2','PPPP2.jpg','Perder para vencer','00:35:00','2'),
('4','You 1','you1.jpg','Detras del ultimo no hay nadie','00:37:00','3'),
('4','You 2','you1.jpg','Lagrimas de un asesinato','00:39:00','3'),
('5','Rey Julien','reyJulien1.jpg','Piloto Julien','00:20:00','1'),
('5','Rey Julein 10','reyJulien2.jpg','Julien hace nuevos amigos','00:37:00','1'),
('6','Cerebro','brain.jpg','Investigación Cerebral','00:39:00','1'),
('6','Corazon','heart.jpg','Aventura con el corazón','00:20:00','1'),
('6','Esqueleto','skeleton.jpg','Huesos y más huesos','00:37:00','2');
-----------------------------------------------------
INSERT INTO
"Grupo 2 - T2"."CALIFICACION_SERIES"(id_perfil,id_serie,estrella,comentario)
VALUES
('1','1',5,'Muy Buena'),('1','2',1,'Muy mala'),('1','2',3,'Por mejorar'),('2','3',5,'Excelente'), ('1','4',5,'Excelente contenido audiovisual'),('3','2',4,'Me gusto'),('2','1',1,'gas');
----------------------------------------
INSERT INTO
"Grupo 2 - T2"."CALIFICACION_PELICULAS"(id_perfil,id_pelicula,estrella,comentario)
VALUES
('1','1',5,'Muy rapidos y muy furiosos'),('1','2',1 ,'Muy mala'),('1','1',3,'Mucha Magia'),('2','3',2,'Puede mejorar'), ('1','4',5,'Excelente contenido audiovisual'),('3','2',4,'Me gusto'),('2','1',4,'Vin Diesel un crack');

-------------------------------------------
INSERT INTO
"Grupo 2 - T2"."PELICULAS_FAVORITAS"(id_perfil,id_pelicula,favorito)
VALUES
('1','1','t'),('2','5','t'),('1','3','t'),('3','4','t'),('1','5','t'),('2','3','t');
------------------------------------------------
INSERT INTO
"Grupo 2 - T2"."SERIES_FAVORITAS"(id_perfil,id_serie,favorito)
VALUES
('2','1','t'),('1','5','t'),('3','1','t'),('2','5','t'),('13','2','t'),('2','3','t'),('2','5','t');

--------------------------------------------------------------

INSERT INTO
"Grupo 2 - T2"."TIEMPO_VISUALIZACION_PELICULAS"(id_perfil,id_pelicula,tiempo_visualizado)
VALUES
('1','1','0:10:02'),
('1','2','0:45:05'),
('1','1','1:30:10'),
('2','5','0:01:34'),
('3','4','0:56:02');


----------------------------------------------------------
INSERT INTO "Grupo 2 - T2"."TIEMPO_VISUALIZACION_SERIES"(id_perfil,id_serie,tiempo_visualizado)
VALUES
    ('2','1','00:50:00'),
    ('2','2','00:15:00'),
    ('2','3','00:10:10'),
    ('4','4','00:18:06'),
    ('5','5','00:11:11');

-------------------------------------------------------------

INSERT INTO "Grupo 2 - T2"."CATALOGO"(id_pelicula,id_serie)
VALUES
    ('1','1'),
    ('2','2'),
    ('3','3'),
    ('4','4'),
    ('5','5'),
    ('6','6'),
    ('7','1'),
    ('8','2');

---------------------------------------------------------------
INSERT INTO "Grupo 2 - T2"."CATALOGO_PAIS"(id_catalogo,id_pais,activo)
VALUES
    ('1','1','true'),
    ('2','2','true'),
    ('3','3','true'),
    ('4','4','true'),
    ('5','5','true'),
    ('6','5','true'),
    ('7','1','false'),
    ('8','5','true');
    
