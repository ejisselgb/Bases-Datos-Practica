-- Preguntas:
--     cuando pide la información podemos usar el * o algunas en especifico?
--     punto 8 de que manera se hará ese cambio?
--     punto 12 en general o por perfil???

--Punto 1: Traer la información de un usuario por medio del nombre de usuario y contraseña.

SELECT U.nombre,U.correo,U.telefono, U.tarjeta, CIU.nombre AS Ciudad  FROM "Grupo 3 - T2"."USUARIOS" AS U
JOIN "Grupo 3 - T2"."CIUDADES" AS CIU ON U.id_ciudad = CIU.id_ciudad
WHERE U.nombre = 'Maria Paula' and U.contrasena_usuario = 'hola123';

--Punto 2: Traer películas o series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.

SELECT pel.titulo, pel.cartel, cat.nombre 
    FROM "Grupo 3 - T2"."CATEGORIAS" as cat
INNER JOIN
    "Grupo 3 - T2"."PELICULAS_CATEGORIAS" as pelcat
    ON pelcat.id_categoria = cat.id_categoria
INNER JOIN
    "Grupo 3 - T2"."PELICULAS" as pel
    ON pelcat.id_pelicula = pel.id_pelicula
WHERE cat.nombre = 'Comedia'
UNION
SELECT ser.titulo, ser.cartel, cat.nombre 
    FROM "Grupo 3 - T2"."CATEGORIAS" as cat
INNER JOIN
    "Grupo 3 - T2"."SERIES_CATEGORIAS" as sercat
    ON sercat.id_categoria = cat.id_categoria
INNER JOIN
    "Grupo 3 - T2"."SERIES" as ser
    ON sercat.id_serie = ser.id_serie
WHERE cat.nombre = 'Comedia';

--Punto 3: Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.

SELECT * FROM "Grupo 3 - T2"."PELICULAS" AS peli WHERE peli.titulo ILIKE '%La%';

--Punto 4: Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).

SELECT * FROM "Grupo 3 - T2"."PELICULAS" WHERE id_pelicula = 1;

--Punto 5: Traer toda la información de una serie cuando esta se selecciona como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).

SELECT * FROM "Grupo 3 - T2"."SERIES" WHERE id_serie = 7;

--Punto 6: Traer la información de las películas favoritas de un usuario (nombre película, poster)

SELECT peli.titulo, peli.cartel
	FROM "Grupo 3 - T2"."PELICULAS" as peli
INNER JOIN
	"Grupo 3 - T2"."PELICULAS_FAVORITAS" as fav
	ON fav.id_pelicula = peli.id_pelicula
WHERE fav.id_perfil = 10;

    --Punto 6: por si es peliculas y series
    SELECT peli.titulo, peli.cartel
        FROM "Grupo 3 - T2"."PELICULAS" as peli
    INNER JOIN
        "Grupo 3 - T2"."PELICULAS_FAVORITAS" as fav
        ON fav.id_pelicula = peli.id_pelicula
    WHERE fav.id_perfil = 5 
    UNION
    SELECT ser.titulo, ser.cartel
        FROM "Grupo 3 - T2"."SERIES" as ser
    INNER JOIN
        "Grupo 3 - T2"."SERIES_FAVORITAS" as favs
        ON favs.id_serie = ser.id_serie
    WHERE favs.id_perfil = 5;

--Punto 7: Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo
UPDATE "Grupo 3 - T2"."USUARIOS" SET correo = [valor] WHERE id_usuario = 2;
UPDATE "Grupo 3 - T2"."USUARIOS" SET nombre = [valor] WHERE id_usuario = 2;
UPDATE "Grupo 3 - T2"."USUARIOS" SET contrasena_usuario = [valor] WHERE id_usuario = 2;
UPDATE "Grupo 3 - T2"."USUARIOS" SET telefono = [valor] WHERE id_usuario = 2;
UPDATE "Grupo 3 - T2"."USUARIOS" SET tarjeta = [valor] WHERE id_usuario = 2;

--Punto 8: Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan

UPDATE "Grupo 3 - T2"."SUSCRIPCIONES" SET fecha_pago = [valor] WHERE id_usuario = 4;

--Punto 9: Permitir editar la información de una película o serie

UPDATE "Grupo 3 - T2"."SERIES" SET titulo= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."SERIES" SET temporadas= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."SERIES" SET sinopsis= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."SERIES" SET ano_estreno= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."SERIES" SET restriccion_edad= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."SERIES" SET cartel= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."SERIES" SET archivo_trailer= [newValor] WHERE id_serie= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET titulo= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET duracion= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET sinopsis= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET ano_estreno= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET restriccion_edad= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET cartel= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET archivo_trailer= [newValor] WHERE id_pelicula= [valor];
UPDATE "Grupo 3 - T2"."PELICULAS" SET archivo_pelicula= [newValor] WHERE id_pelicula= [valor];

--Punto 10: Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma

--promedio de todo
SELECT ROUND(AVG(precio),2) Avg_precio
FROM "Grupo 3 - T2"."PLANES" JOIN "Grupo 3 - T2"."SUSCRIPCIONES"
    USING (id_plan);

--promedio del mes actual
SELECT ROUND(AVG(precio),2) Avg_precio
FROM "Grupo 3 - T2"."PLANES" JOIN "Grupo 3 - T2"."SUSCRIPCIONES" AS s
    USING (id_plan)
    WHERE 
    EXTRACT(MONTH FROM s.fecha_pago)=EXTRACT(MONTH FROM CURRENT_TIMESTAMP) 
    AND 
    EXTRACT(YEAR FROM s.fecha_pago)=EXTRACT(YEAR FROM CURRENT_TIMESTAMP);
  
    

--Punto 11: Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma

SELECT COUNT(*) 
FROM (
  SELECT titulo FROM "Grupo 3 - T2"."PELICULAS"
  UNION 
  SELECT titulo FROM "Grupo 3 - T2"."SERIES"
) AS tem;

--Punto 12: Obtener la información de todas las películas que aún no han sido calificadas o valoradas

SELECT p.titulo,p.duracion,p.sinopsis,p.cartel,p.archivo_trailer FROM "Grupo 3 - T2"."PELICULAS" AS p
LEFT JOIN "Grupo 3 - T2"."CALIFICACIONES_PELICULAS" AS c
ON p.id_pelicula = c.id_pelicula
WHERE c.id_pelicula is NULL
UNION
SELECT s.titulo,s.temporadas,s.sinopsis,s.cartel,s.archivo_trailer FROM "Grupo 3 - T2"."SERIES" AS s
LEFT JOIN "Grupo 3 - T2"."CALIFICACIONES_SERIES" AS cs
ON s.id_serie = cs.id_serie
WHERE cs.id_serie is NULL;
