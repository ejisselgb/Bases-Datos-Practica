--FIRST QUERY--------------------------------------------------------
SELECT  *
    FROM    "Grupo 6 - T2"."USERS"
    WHERE  	username = [input] AND password = [input]

--SECOND QUERY-------------------------------------------------------
--MOVIES
SELECT 
    mv.title,
    mv.poster_url, 
    ca.name_category 
FROM "Grupo 6 - T2"."MOVIES_CATEGORIES" as mc
INNER JOIN
    "Grupo 6 - T2"."CATEGORIES" as ca
    ON mc.id_category = ca.id_category
INNER JOIN
    "Grupo 6 - T2"."MOVIES" as mv
    ON mc.id_movie = mv.id_movie
WHERE ca.name_category = [input]


--SERIES
SELECT 
    se.title,
    se.poster_url, 
    ca.name_category 
FROM "Grupo 6 - T2"."SERIES_CATEGORIES" as sc
INNER JOIN
    "Grupo 6 - T2"."CATEGORIES" as ca
    ON sc.id_category = ca.id_category
INNER JOIN
    "Grupo 6 - T2"."SERIES" as se
    ON sc.id_serie = se.id_serie
WHERE ca.name_category = [input]


	
--TERCERA CONSULTA-------------------------------------------------------
--Traer las películas que concidan con la palabra que va 
--insertando en el buscador. Puede ser que contenga 
--cualquier cosa adelante y atrás de la palabra que se ingresa.
SELECT 
    *
FROM 
    "Grupo 6 - T2"."MOVIES" as mo
WHERE 
    mo.title 
ILIKE '%[input]%'



--CUARTA CONSULTA-------------------------------------------------------

SELECT * FROM "Grupo 6 - T2"."MOVIES" WHERE id_movie = [input];
	
--QUINTA CONSULTA------------------------------------------------------

SELECT * FROM "Grupo 6 - T2"."SERIES" WHERE id_serie = [input];
		
--SEXTA CONSULTA-CONSULTAS-
--Traer la información de las películas 
--favoritas de un usuario (nombre película, poster)
SELECT mv.title, mv.poster_url
	FROM "Grupo 6 - T2"."MOVIES" as mv
INNER JOIN
	"Grupo 6 - T2"."FAVORITE_MOVIES" as fm
	ON fm.id_movie = mv.id_movie
WHERE fm.id_profile = [input];


--SEPTIMA CONSULTA--------------------------------------------------------
--Permitir al usuario editar la información de su perfil como por ejemplo 
--modificar la tarjeta vinculada, contraseña, teléfono, correo
UPDATE "Grupo 6 - T2"."USERS" SET email = [input] WHERE id_user = [input]

--username:
UPDATE "Grupo 6 - T2"."USERS" SET username = [input] WHERE id_user = [input]

--password:
UPDATE "Grupo 6 - T2"."USERS" SET password = [input] WHERE id_user = [input]

--plan:
UPDATE "Grupo 6 - T2"."SUBCRIPTIONS" SET id_plan = [input] WHERE id_user = [input]

--phone:
UPDATE "Grupo 6 - T2"."PROFILES" SET phone = [input] WHERE id_user = [input]
-----------------------------------------------------------------
--OCTAVA CONSULTA------------------------------------------------
--Permitir al usuario cambiar 
--la fecha de facturación de la suscripción a un plan
UPDATE "Grupo 6 - T2"."SUBCRIPTIONS" SET payment_date = [input] WHERE id_user = [input]

--NOVENA CONSULTA-----------------------------------------------
--Permitir editar la información de una película o serie

--trailer pelicula:
UPDATE "Grupo 6 - T2"."MOVIES" SET trailer_url = [input] WHERE id_movie = [input]
	
--synopsis pelicula:
UPDATE "Grupo 6 - T2"."MOVIES" SET synopsis = [input] WHERE id_movie = [input]
	
--title pelicula:
UPDATE "Grupo 6 - T2"."MOVIES" SET tittle = [input] WHERE id_movie = [input]

--poster pelicula:
UPDATE "Grupo 6 - T2"."MOVIES" SET poster_url = [input] WHERE id_movie = [input]

--trailer serie:
UPDATE "Grupo 6 - T2"."SERIES" SET trailer = [input] WHERE id_serie = [input]
	
--synopsis serie:
UPDATE "Grupo 6 - T2"."SERIES" SET synopsis = [input] WHERE id_serie = [input];

--title serie:
UPDATE "Grupo 6 - T2"."SERIES" SET tittle = [input] WHERE id_serie = [input];

--poster serie
UPDATE "Grupo 6 - T2"."SERIES" SET poster_url = [input] WHERE poster_url = [input];

--DECIMA CONSULTA-----------------------------------------------
--Obtener el valor promedio que se debe pagar al mes según las suscripciones de los 
--usuarios a los planes que ofrece la plataforma
SELECT AVG(ALL price) FROM 
(SELECT sb.id_plan, price FROM "Grupo 6 - T2"."SUBSCRIPTIONS" AS sb
    INNER JOIN 
"Grupo 6 - T2"."PLANS" AS pl ON sb.id_plan = pl.id_plan    WHERE active = true) as average;

--ONCEAVA CONSULTA-----------------------------------------------
--Obtener la cantidad de peliculas y series que 
--se encuentran en la base de datos de la plataforma
SELECT 
   COUNT(mo.id_movie) 
FROM 
   "Grupo 6 - T2"."MOVIES" as mo
   
SELECT 
   COUNT(se.id_serie) 
FROM 
   "Grupo 6 - T2"."SERIES" as se

--DOSEAVA CONSULTA-----------------------------------------------
--Obtener la información de todas las 
--películas que aún no han sido calificadas o valoradas
SELECT 
	  *
FROM 
	"Grupo 6 - T2"."MOVIES" as mo
LEFT JOIN "Grupo 6 - T2"."MOVIES_RATING" as mr
	on mo.id_movie = mr.id_movie
WHERE 
	mr.id_movie IS NULL

