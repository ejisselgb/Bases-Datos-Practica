//consultas a base de datos 
const connection = require('../config/connection')


module.exports = {

// --Punto 1: Traer la información de un usuario por medio del nombre de usuario y contraseña.

async getInfoUsuario(nombre,contrasena_usuario){
    const querySelect = `SELECT U.nombre,U.correo,U.telefono, U.tarjeta, CIU.nombre AS Ciudad  FROM "Grupo 3 - T2"."USUARIOS" AS U
    JOIN "Grupo 3 - T2"."CIUDADES" AS CIU ON U.id_ciudad = CIU.id_ciudad
    WHERE U.nombre = '${nombre}' and U.contrasena_usuario = '${contrasena_usuario}';`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 2: Traer películas o series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.

async getPeliculaSerieDeCategoria(nombre){
    const querySelect = `SELECT ser.titulo, ser.cartel, cat.nombre 
    FROM "Grupo 3 - T2"."CATEGORIAS" as cat
    INNER JOIN
        "Grupo 3 - T2"."PELICULAS_CATEGORIAS" as pelcat
        ON pelcat.id_categoria = cat.id_categoria
    INNER JOIN
        "Grupo 3 - T2"."PELICULAS" as pel
        ON pelcat.id_pelicula = pel.id_pelicula
    WHERE cat.nombre = '${nombre}';
    UNION
    SELECT ser.titulo, ser.cartel, cat.nombre 
        FROM "Grupo 3 - T2"."CATEGORIAS" as cat
    INNER JOIN
        "Grupo 3 - T2"."SERIES_CATEGORIAS" as sercat
        ON sercat.id_categoria = cat.id_categoria
    INNER JOIN
        "Grupo 3 - T2"."SERIES" as ser
        ON sercat.id_serie = ser.id_serie
    WHERE cat.nombre = '${nombre}';`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 3: Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.

async getPeliculaDeBuscador(busqueda){
    const querySelect = `SELECT titulo FROM "Grupo 3 - T2"."PELICULAS" WHERE nombre iLIKE  '%${busqueda}%';`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 4: Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).

async getPeliculaSeleccionada(seleccion){
    const querySelect = `SELECT * FROM "Grupo 3 - T2"."PELICULAS" WHERE id.película = ${seleccion};;`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 5: Traer toda la información de una serie cuando esta se selecciona como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).

async getInfoSerie(idSerie) {
    const querySelect = `SELECT * FROM "Grupo 3 - T2"."SERIES" WHERE id_serie = '${idSerie}';`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 6: Traer la información de las películas favoritas de un usuario (nombre película, poster)

async getFavMovies(id_perfil) {
    const querySelect = `SELECT peli.titulo, peli.cartel
	                     FROM "Grupo 3 - T2"."PELICULAS" as peli
                            INNER JOIN
                         "Grupo 3 - T2"."PELICULAS_FAVORITAS" as fav
	                        ON fav.id_pelicula = peli.id_pelicula
                         WHERE fav.id_perfil = '${id_perfil}' 
                            UNION
                         SELECT ser.titulo, ser.cartel
	                     FROM "Grupo 3 - T2"."SERIES" as ser
                            INNER JOIN
                         "Grupo 3 - T2"."SERIES_FAVORITAS" as favs
	                        ON favs.id_serie = ser.id_serie
                         WHERE favs.id_perfil = '${id_perfil}';`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 7: Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo
//PENDIENTE

async updateProfile(correo, id_usuario) {
    const queryUpdate = `UPDATE "Grupo 3 - T2"."USUARIOS" SET correo = '${correo}' WHERE id_usuario = '${id_usuario}';`
    const result = await connection.query(queryUpdate)
    return result
},

// --Punto 8: Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan
//PENDIENTE

async updatePayDate(fecha_vencimiento, id_usuario) {
    const queryUpdate = `UPDATE "Grupo 3 - T2"."SUSCRIPCIONES" SET fecha_vencimiento_vieja = (SELECT fecha_vencimiento FROM "Grupo 3 - T2"."SUSCRIPCIONES" WHERE id_usuario = '${id_usuario}' ) WHERE id_usuario = '${id_usuario}';
                         UPDATE "Grupo 3 - T2"."SUSCRIPCIONES" SET fecha_vencimiento = '${fecha_vencimiento}' WHERE id_usuario = '${id_usuario}';`
    const result = await connection.query(queryUpdate)
    return result
},

// --Punto 9: Permitir editar la información de una película o serie
//PENDIENTE

async updatePeliSerie(id_serie, titulo){
    const queryUpdate = `UPDATE "Grupo 3 - T2"."SERIES" SET titulo='${titulo}' WHERE id_serie= '${id_serie}';`
    const result = await connection.query(queryUpdate)
    return result
},

// --Punto 10: Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma

async getPromedioMensual() {
    const querySelect = `SELECT ROUND(AVG(precio),2) Avg_precio
    FROM "Grupo 3 - T2"."PLANES" JOIN "Grupo 3 - T2"."SUSCRIPCIONES" AS s
        USING (id_plan)
        WHERE 
        EXTRACT(MONTH FROM s.fecha_pago)=EXTRACT(MONTH FROM CURRENT_TIMESTAMP) 
        AND 
        EXTRACT(YEAR FROM s.fecha_pago)=EXTRACT(YEAR FROM CURRENT_TIMESTAMP);`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 11: Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma

async getNumSeriesPelis() {
    const querySelect = `SELECT COUNT(*) 
    FROM (
      SELECT titulo FROM "Grupo 3 - T2"."PELICULAS"
      UNION 
      SELECT titulo FROM "Grupo 3 - T2"."SERIES"
    ) AS tem;`
    const result = await connection.query(querySelect)
    return result
},

// --Punto 12: Obtener la información de todas las películas que aún no han sido calificadas o valoradas

async getSeriesPelisNoValoradas() {
    const querySelect = `SELECT p.titulo,p.duracion,p.sinopsis,p.cartel,p.archivo_trailer FROM "Grupo 3 - T2"."PELICULAS" AS p
    LEFT JOIN "Grupo 3 - T2"."CALIFICACIONES_PELICULAS" AS c
    ON p.id_pelicula = c.id_pelicula
    WHERE c.id_pelicula is NULL
    UNION
    SELECT s.titulo,s.temporadas,s.sinopsis,s.cartel,s.archivo_trailer FROM "Grupo 3 - T2"."SERIES" AS s
    LEFT JOIN "Grupo 3 - T2"."CALIFICACIONES_SERIES" AS cs
    ON s.id_serie = cs.id_serie
    WHERE cs.id_serie is NULL;`
    const result = await connection.query(querySelect)
    return result
},

}