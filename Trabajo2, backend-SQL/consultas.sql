-- Traer la información de un usuario por medio del nombre de usuario y contraseña.
SELECT (u. nombre, u.correo, u.telefono, c.nombre, z.nombre, p.nombre)
FROM "Grupo 1 - T2"."USUARIO" AS u
    INNER JOIN "Grupo 1 - T2"."CIUDAD" AS c
        ON u.id_ciudad = c.id_ciudad
    INNER JOIN "Grupo 1 - T2"."ZONA" AS z
        ON z.id_zona = c.id_zona
    INNER JOIN "Grupo 1 - T2"."PAIS" AS p
        ON p.id_pais = z.id_pais
WHERE u.nombre_usuario = 'Humbertáctico123' AND u.contrasena = 'HorusyGuss123';

-- Traer películas o series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.
SELECT DISTINCT (p. nombre, p.poster)
    FROM "Grupo 1 - T2"."PELICULAS" AS p
        INNER JOIN "Grupo 1 - T2"."PELICULAS_CATEGORIAS" AS p_c
    ON p.id_pelicula = p_c.id_pelicula
        INNER JOIN "Grupo 1 - T2"."CATEGORIAS" AS c
    ON c.id_categoria = p_c.id_categoria
    WHERE c.nombre_categoria = 'Drama' OR c.nombre_categoria = 'Romance'
    UNION
SELECT DISTINCT (s. nombre, s.poster)
    FROM "Grupo 1 - T2"."SERIES" AS s
        INNER JOIN "Grupo 1 - T2"."SERIES_CATEGORIAS" AS s_c
    ON p.id_serie = s_c.id_serie
        INNER JOIN "Grupo 1 - T2"."CATEGORIAS" AS c
    ON c.id_categoria = s_c.id_categoria
    WHERE c.nombre_categoria = 'Drama' OR c.nombre_categoria = 'Romance';

-- Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.
SELECT (p.nombre, p.poster)
    FROM "Grupo 1 - T2"."PELICULAS" AS p
WHERE p.nombre LIKE '%Inter%'
    UNION
SELECT (s.nombre, s.poster)
FROM "Grupo 1 - T2"."SERIES" AS s
WHERE p.nombre LIKE '%Inter%';

-- Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).
SELECT (p.nombre, p.poster, p.sinopsis, p.trailer, p.fecha_lanzamiento, p.trailer)
    FROM "Grupo 1 - T2"."PELICULAS" AS p
WHERE p.nombre = 'Interestellar'

SELECT (s.nombre, s.poster, s.sinopsis, s.trailer, s.fecha_lanzamiento, s.trailer, s.num_capitulos)
    FROM "Grupo 1 - T2"."SERIES" AS s
WHERE s.nombre = 'Peaky Blinders';

------------ PARA CATEGORÍAS -----------------------
SELECT (c.nombre_categoria)
FROM "Grupo 1 - T2"."CATEGORIAS" AS c
LEFT JOIN "Grupo 1 - T2"."PELICULAS_CATEGORIAS" AS p_c
ON p_c.id_categoria = c.id_categoria
WHERE p_c.id_pelicula = 2;

SELECT (c.nombre_categoria)
FROM "Grupo 1 - T2"."CATEGORIAS" AS c
LEFT JOIN "Grupo 1 - T2"."SERIES_CATEGORIAS" AS s_c
ON s_c.id_categoria = c.id_categoria
WHERE s_c.id_pelicula = 2;

----------- PARA REPARTO ----------------
SELECT (a.nombre)
FROM "Grupo 1 - T2"."ACTORES" AS a
LEFT JOIN "Grupo 1 - T2"."ACTORES_PELICULA" AS a_p
ON a_p.id_actores = a.id_actores
WHERE a_p.id_pelicula = 2;

SELECT (a.nombre)
    FROM "Grupo 1 - T2"."ACTORES" AS a
    LEFT JOIN "Grupo 1 - T2"."ACTORES_SERIES" AS a_s
        ON a_s.id_actores = a.id_actores
WHERE a_s.id_serie = 2;

--Traer la información de las películas favoritas de un usuario (nombre película, poster).

SELECT (p.nombre, p.poster)
    FROM "Grupo 1 - T2"."PELICULAS" AS p
    LEFT JOIN "Grupo 1 - T2"."PELICULAS_FAVORITAS" AS p_f
        ON p_f.id_pelicula = p.id_pelicula
    INNER JOIN "Grupo 1 - T2"."PERFIL" AS pf
        ON p_f.id_perfil = pf.id_perfil
WHERE pf.id_perfil = 1;

-- Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo.

UPDATE "Grupo 1 - T2"."USUARIO"
    SET contrasena = 'HorusyGuss123'
WHERE id_usuario = 1;

UPDATE "Grupo 1 - T2"."USUARIO"
    SET telefono = '3043945334'
WHERE id_usuario = 1;

UPDATE "Grupo 1 - T2"."USUARIO"
    SET correo = 'lamocha@correo.com'
WHERE id_usuario = 12;

-- Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan.

UPDATE "Grupo 1 - T2"."SUSCRIPCIONES"
    SET fecha_vencimiento = '2024-02-01'
WHERE id_usuario = 1;

-- Permitir editar la información de una película o serie.
UPDATE "Grupo 1 - T2"."PELICULAS"
    SET nombre = 'HorusyGuss123'
WHERE id_pelicula = 1;

UPDATE "Grupo 1 - T2"."PELICULAS"
    SET sinopsis = 'HorusyGuss123'
WHERE id_pelicula = 1;

UPDATE "Grupo 1 - T2"."PELICULAS"
    SET poster = 'HorusyGuss123'
WHERE id_pelicula = 1;

UPDATE "Grupo 1 - T2"."SERIES"
    SET nombre = 'HorusyGuss123'
WHERE id_serie = 1;

UPDATE "Grupo 1 - T2"."SERIES"
    SET sinopsis = 'HorusyGuss123'
WHERE id_serie = 1;

UPDATE "Grupo 1 - T2"."SERIES"
    SET num_capitulos = 24
WHERE id_serie = 1;

UPDATE "Grupo 1 - T2"."SERIES"
    SET poster = 'HorusyGuss123'
WHERE id_serie = 1;

-- Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma.

SELECT (p.precio)
FROM "Grupo 1 - T2"."PLANES" AS p
INNER JOIN "Grupo 1 - T2"."SUSCRIPCIONES" AS s
ON p.id_plan = s.id_plan
INNER JOIN "Grupo 1 - T2"."USUARIO" AS u
ON u.id_usuario = s.id_usuario
WHERE u.id_usuario = 1;

-- Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma.

SELECT COUNT (*)
FROM "Grupo 1 - T2"."PELICULAS";

SELECT COUNT (*)
FROM "Grupo 1 - T2"."SERIES";

-- Obtener la información de todas las películas que aún no han sido calificadas o valoradas.
SELECT DISTINCT (p.nombre, p.poster)
FROM "Grupo 1 - T2"."PELICULAS" AS p
LEFT JOIN "Grupo 1 - T2"."CALIFICACIÓN_PELICULA" AS c_p
ON c_p.id_pelicula = p.id_pelicula
WHERE c_p.id_pelicula IS NULL;

-- Obtener la calificación de películas y series
SELECT AVG(calificación)
FROM "Grupo 1 - T2"."CALIFICACIÓN_PELICULA" AS c_p
WHERE c_p.id_pelicula = '${id}';

SELECT AVG(calificación)
FROM "Grupo 1 - T2"."CALIFICACIÓN_SERIE" AS c_s
WHERE c_s.id_serie = '${id}';

-- Obetener capítulos serie

SELECT (e.descripcion_capitulo, e.caratula, e.num_capitulo, e.temporada, e.duracion)
FROM "Grupo 1 - T2"."CAPITULOS_SERIE" AS e
WHERE e.id_serie = '${id}';