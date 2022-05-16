--Traer la información de un usuario por medio del nombre de usuario y contraseña.

SELECT *
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" WHERE correo = 'Juan21@gmail.com' AND contrasena = 'juan11'
--Traer películas o series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.

SELECT a.nombre, a.descripcion, a.fecha_estreno 
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" as a 
LEFT JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" as b ON a.id_serie = b.id_serie

SELECT b.nombre, b.descripcion, b.fecha_estreno
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" as a 
RIGHT JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" as b ON a.id_pelicula = b.id_pelicula

--Traer las películas que coincidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa

SELECT *
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" WHERE nombre LIKE '%Dar%'

--Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).

SELECT * 
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" where id_pelicula= 2
SELECT *
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" where id_serie= 5

--Traer la información de las películas favoritas de un usuario (nombre película, poster)

Select b.nombre, b.poster
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" as a 
RIGHT JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" as b ON a.id_pelicula=b.id_pelicula 
where a.id_perfil =1

--Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo

Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET contrasena = '${password}' WHERE id_usuario = ${id_usuario}
Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET telefono = '${numberP}' WHERE id_usuario = ${id_usuario}
Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET correo = '${mail}' WHERE id_usuario = ${id_usuario}
Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET tarjeta_vin = '${card}' WHERE id_usuario = ${id_usuario}

--Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan

Update "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" SET fecha_vencimiento = '${fechaVenNueva}' WHERE id_usuario = '${id_usuario}';
--Permitir editar la información de una película o serie

Update "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" SET descripcion = '${description}' where  id_pelicula = '${id_pelicula}'
Update "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" SET descripcion = '${description}' where  id_pelicula = '${id_serie}';


--Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma

SELECT AVG(a.precio) as promedio
FROM
"Grupo 5 - nadiePasaDeEstaEsquina"."PLANES" as a 
INNER JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" as b ON a.id_plan = b.id_plan

--Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma

SELECT COUNT (id_pelicula) as peliculas_registradas
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS"
SELECT COUNT (id_serie) as series_registradas
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES"

--Obtener la información de todas las películas que aún no han sido calificadas o valoradas

SELECT a.nombre, a.descripcion, a.fecha_estreno, b.id_calificacion, b.calificaion
FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" as a 
INNER JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" as b 
ON a.id_pelicula = b.id_pelicula where b.calificaion is NULL









