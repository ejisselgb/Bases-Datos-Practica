--Traer la informacion de un usuario por medio del nombre de usuario y contraseña.
SELECT * FROM "Grupo 4 - T2"."USUARIOS" WHERE nombre_usuario 'Germanfo' AND contrasena='pasword1';

--Traer las peliculas o series segun coincidan con la categoria para mostrar banners.

SELECT DISTINCT (p.nombre_pelicula, p.poster)
    FROM "Grupo 4 - T2"."PELICULAS" AS p
        INNER JOIN "Grupo 4 - T2"."CATEGORIAS_PELICULAS" AS pc
    ON p.id_pelicula = pc.id_pelicula
        INNER JOIN "Grupo 4 - T2"."CATEGORIA" AS c
    ON c.id_categoria = pc.id_categoria
WHERE c.nombre_categoria = 'Recomendadas'
	UNION
SELECT DISTINCT (s.nombre_serie, s.portada)
    FROM "Grupo 4 - T2"."SERIES" AS s
        INNER JOIN "Grupo 4 - T2"."CATEGORIAS_SERIES" AS sc
    ON s.id_serie = sc.id_serie
        INNER JOIN "Grupo 4 - T2"."CATEGORIA" AS c
    ON c.id_categoria = sc.id_categoria
WHERE  c.nombre_categoria = 'Top 10 Global';

--Traer peliculas que coincidan con la palabra en el buscador  puede cntener cualquier cosa adelante y atras de la palabra que se ingresa.
SELECT (p.nombre_pelicula, p.poster)
    FROM "Grupo 4 - T2"."PELICULAS" AS p
WHERE p.nombre_pelicula LIKE 'E%'
    UNION
SELECT (s.nombre_serie, s.portada)
	FROM "Grupo 4 - T2"."SERIES" AS s
WHERE s.nombre_serie LIKE '%La%';


--Traer toda la informacion de una pelicula cuando esta se selecciona como sipnosis, poster, enlace trailer
SELECT (p.nombre_pelicula, p.poster, p.sinopsis, p.trailer_pelicula, p.fecha_estreno)
    FROM "Grupo 4 - T2"."PELICULAS" AS p
WHERE p.id_pelicula = 2;

SELECT (s.nombre_serie, s.portada, s.trailer_serie, s.fecha_estreno,s.sinopsis)
    FROM "Grupo 4 - T2"."SERIES" AS s
WHERE s.id_serie = 2;

--Traer toda la informacion de una serie cuando esta se selecciona como sipnosis, poster, enlace trailer
SELECT (s.nombre_serie, s.portada, s.trailer_serie, s.fecha_estreno,s.sipnosis)
    FROM "Grupo 4 - T2"."SERIES" AS s
WHERE s.nombre_serie = 'La casa de papel';

--Traer informacion de las peliculas favoritas de un usuario
SELECT (p.nombre_pelicula, p.poster)
    FROM "Grupo 4 - T2"."PELICULAS" AS p
    LEFT JOIN "Grupo 4 - T2"."PELICULAS_FAVORITAS" AS p_f
        ON p_f.id_pelicula = p.id_pelicula
    INNER JOIN "Grupo 4 - T2"."PERFIL" AS pf
        ON p_f.id_perfil = pf.id_perfil
WHERE pf.id_perfil = 2;

--Permitir al usuario editar la informacion de su perfil, como por ejemplo la tarjerta, contraseña,correo,telefono
UPDATE "Grupo 4 - T2"."USUARIOS"
    SET contrasena = 'Passwordpass'
WHERE id_usuario = 3;

UPDATE "Grupo 4 - T2"."USUARIOS"
    SET telefono = '3043946384'
WHERE id_usuario = 3;

UPDATE "Grupo 4 - T2"."USUARIOS"
    SET nombre_usuario = 'GianSZZZZZZZZ'
WHERE id_usuario = 1;

--Permitir al usuario cambiar la fecha de su planes facturacion
UPDATE "Grupo 4 - T2"."SUSCRIPCION"
    SET fecha_facturacion = '2023-05-15'
WHERE id_usuario = 5;

--Permitir editar la informacion de una pelicula o serie
UPDATE "Grupo 4 - T2"."PELICULAS"
    SET nombre_pelicula = 'El paseo 2.'
WHERE id_pelicula = 1;

UPDATE "Grupo 4 - T2"."PELICULAS"
    SET restriccion_edad = 15
WHERE id_pelicula = 1;

UPDATE "Grupo 4 - T2"."PELICULAS"
    SET poster = 'PortadaPaseo.JPG'
WHERE id_pelicula = 1;

UPDATE "Grupo 4 - T2"."PELICULAS"
    SET trailer_pelicula = 'www.trailer.com'
WHERE id_pelicula = 1;

UPDATE "Grupo 4 - T2"."SERIES"
    SET nombre_serie = 'La casa de papel'
WHERE id_serie = 1;

UPDATE "Grupo 4 - T2"."SERIES"
    SET restriccion_edad = 18
WHERE id_serie = 1;

UPDATE "Grupo 4 - T2"."SERIES"
    SET portada = 'PORTADACASA.JPG'
WHERE id_serie = 1

UPDATE "Grupo 4 - T2"."SERIES"
    SET trailer_serie = 'www.trailer.com'
WHERE id_serie = 1

--obtener el valor promedio que se debe pagar al mes segun las suscripciones de los usuarios a los planes que ofrece la plataforma
SELECT (p.costo)
FROM "Grupo 4 - T2"."PLANES" AS p
INNER JOIN "Grupo 4 - T2"."SUSCRIPCION" AS s
ON p.id_plan = s.id_plan

INNER JOIN "Grupo 4 - T2"."USUARIOS" AS u
ON u.id_usuario = s.id_usuario
WHERE u.id_usuario = 4;

--Obtener la cantidad de peliculas  que se encuentran en la base de datos de la plataforma
SELECT COUNT (*)
FROM "Grupo 4 - T2"."PELICULAS";

--Obtener la cantidad series que se encuentran en la base de datos de la plataforma
SELECT COUNT (*)
FROM "Grupo 4 - T2"."SERIES";

--obtener la informacion de todas las peliculas que aun no han sido valoradas o calificadas
SELECT DISTINCT (p.nombre_pelicula, p.poster)
FROM "Grupo 4 - T2"."PELICULAS" AS p
LEFT JOIN "Grupo 4 - T2"."CALIFICACION_PELICULA" AS c
ON c.id_pelicula = p.id_pelicula
WHERE c.id_pelicula IS NULL;