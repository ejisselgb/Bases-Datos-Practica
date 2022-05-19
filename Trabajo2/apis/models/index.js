const connection = require('../config/connection')








module.exports = {
    //Traer la informacion de un usuario por medio del nombre de usuario y contraseña.
    async getUser(nombre_usuario, contrasena) {
        const querySelect = `SELECT * FROM "Grupo 4 - T2"."USUARIOS" WHERE nombre_usuario='${nombre_usuario}' AND contrasena='${contrasena}';`
        const result = await connection.query(querySelect)
        //console.log(result.rows, "xd")
        return result
    },

    //Traer las peliculas o series segun coincidan con la categoria para mostrar banners.
    async getMoviesByCategory(categoria) {
        const querySelect = `SELECT DISTINCT (p.nombre_pelicula, p.poster)
        FROM "Grupo 4 - T2"."PELICULAS" AS p
            INNER JOIN "Grupo 4 - T2"."CATEGORIAS_PELICULAS" AS p_c
        ON p.id_pelicula = p_c.id_pelicula
            INNER JOIN "Grupo 4 - T2"."CATEGORIA" AS c
        ON c.id_categoria = p_c.id_categoria
    WHERE c.nombre_categoria = '${categoria}'
        UNION
    SELECT DISTINCT (s.nombre_serie, s.portada)
        FROM "Grupo 4 - T2"."SERIES" AS s
            INNER JOIN "Grupo 4 - T2"."CATEGORIAS_SERIES" AS s_c
        ON s.id_serie = s_c.id_serie
            INNER JOIN "Grupo 4 - T2"."CATEGORIA" AS c
        ON c.id_categoria = s_c.id_categoria
    WHERE c.nombre_categoria = '${categoria}';`
        const result = await connection.query(querySelect)
        
        return result
    },

    //Traer peliculas que coincidan con la palabra en el buscador  puede cntener cualquier cosa adelante y atras de la palabra que se ingresa.
    async getMoviesSearch(search) {
        const querySelect = `SELECT (p.nombre_pelicula, p.poster)
        FROM "Grupo 4 - T2"."PELICULAS" AS p
    WHERE p.nombre_pelicula LIKE '%${search}%'
        UNION
    SELECT (s.nombre_serie, s.portada)
        FROM "Grupo 4 - T2"."SERIES" AS s
    WHERE s.nombre_serie LIKE '%${search}%';`
        const result = await connection.query(querySelect)
        return result
    },

    //Traer informacion de las peliculas favoritas de un usuario
    async getMoviesByUserFavorite(id) {
        const querySelect = `SELECT (p.nombre_pelicula, p.poster)
        FROM "Grupo 4 - T2"."PELICULAS" AS p
        LEFT JOIN "Grupo 4 - T2"."PELICULAS_FAVORITAS" AS p_f
            ON p_f.id_pelicula = p.id_pelicula
        INNER JOIN "Grupo 4 - T2"."PERFIL" AS pf
            ON p_f.id_perfil = pf.id_perfil
        WHERE pf.id_perfil = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    //Permitir al usuario editar la informacion de su perfil, como por ejemplo la tarjerta, contraseña,correo,telefono
    async updateUserPassword(id, password) {
        const querySelect = `UPDATE "Grupo 4 - T2"."USUARIOS"
        SET contrasena = '${password}'
        WHERE id_usuario = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updateUserTelefono(id, telefono) {
        const querySelect = `UPDATE "Grupo 4 - T2"."USUARIOS"
        SET telefono = '${telefono}'
        WHERE id_usuario = ${id};`
        const result = await connection.query(querySelect)
        console.log(result)
        return result
    },

    async updateUserNombre_user(id, user){
        const querySelect = `UPDATE "Grupo 4 - T2"."USUARIOS"
        SET nombre_usuario = '${user}'
        WHERE id_usuario = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    //Permitir al usuario cambiar la fecha de su planes facturacion
    async updatePaymentDate(id, date) {
        const querySelect = `UPDATE "Grupo 4 - T2"."SUSCRIPCION"
        SET fecha_facturacion = '${date}'
        WHERE id_usuario = ${id};`
        const result = await connection.query(querySelect)
        console.log(result)
        return result
    },

    //Permitir editar la informacion de una pelicula o serie
    async updateNameMovie(id, name) {
        const querySelect = `UPDATE "Grupo 4 - T2"."PELICULAS"
        SET nombre_pelicula = '${name}'
        WHERE id_pelicula = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updateRestriccionMovie(id, edad) {
        const querySelect = `UPDATE "Grupo 4 - T2"."PELICULAS"
        SET restriccion_edad = ${edad}
        WHERE id_pelicula = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updatePosterMovie(id, poster) {
        const querySelect = `UPDATE "Grupo 4 - T2"."PELICULAS"
        SET poster = '${poster}'
        WHERE id_pelicula = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updateLinkMovie(id, link) {
        const querySelect = `UPDATE "Grupo 4 - T2"."PELICULAS"
        SET trailer_pelicula = '${link}'
        WHERE id_pelicula = ${id};`
        const result = await connection.query(querySelect)
        return result
    },



    //series cambios
    async updateRestriccionSerie(id, edad) {
        const querySelect = `UPDATE "Grupo 4 - T2"."SERIES"
        SET restriccion_edad = ${edad}
        WHERE id_serie = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updatePosterSeries(id, poster) {
        const querySelect = `UPDATE "Grupo 4 - T2"."SERIES"
        SET portada = '${poster}'
        WHERE id_serie = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updateNombreSeries(id, nombre) {
        const querySelect = `UPDATE "Grupo 4 - T2"."SERIES"
        SET nombre_serie = '${nombre}'
        WHERE id_serie = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updateLinkSeries(id, link) {
        const querySelect = `UPDATE "Grupo 4 - T2"."SERIES"
        SET trailer_serie = '${link}'
        WHERE id_serie = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    //Traer toda la informacion de una pelicula cuando esta se selecciona como sipnosis, poster, enlace trailer
    async getPeliculaSelect(id) {
        const querySelect = `SELECT (p.nombre_pelicula, p.poster, p.sinopsis, p.trailer_pelicula, p.fecha_estreno)
        FROM "Grupo 4 - T2"."PELICULAS" AS p
        WHERE p.id_pelicula = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    //Traer toda la informacion de una serie cuando esta se selecciona como sipnosis, poster, enlace trailer

    async getSerieSelect(id) {
        const querySelect = `SELECT (s.nombre_serie, s.portada, s.trailer_serie, s.fecha_estreno,s.sinopsis)
        FROM "Grupo 4 - T2"."SERIES" AS s
        WHERE s.id_serie = ${id};`
        const result = await connection.query(querySelect)
        return result
    },

    //obtener el valor promedio que se debe pagar al mes segun las suscripciones de los usuarios a los planes que ofrece la plataforma
    async getValorPromedio(id) {
        const querySelect = `SELECT (p.costo)
        FROM "Grupo 4 - T2"."PLANES" AS p
        INNER JOIN "Grupo 4 - T2"."SUSCRIPCION" AS s
        ON p.id_plan = s.id_plan
        
        INNER JOIN "Grupo 4 - T2"."USUARIOS" AS u
        ON u.id_usuario = s.id_usuario
        WHERE u.id_usuario = ${id};`
        const result = await connection.query(querySelect)
        return result
    },


    //obtener la informacion de todas las peliculas que aun no han sido valoradas o calificadas
    async getMoviesWithoutCalification() {
        const querySelect = `SELECT DISTINCT (p.nombre_pelicula, p.poster)
        FROM "Grupo 4 - T2"."PELICULAS" AS p
        LEFT JOIN "Grupo 4 - T2"."CALIFICACION_PELICULA" AS c
        ON c.id_pelicula = p.id_pelicula
        WHERE c.id_pelicula IS NULL;`
        const result = await connection.query(querySelect)
        return result
    },

    //Obtener la cantidad de peliculas  que se encuentran en la base de datos de la plataforma
    async getMoviesCount() {
        const querySelect = `SELECT COUNT (*)
        FROM "Grupo 4 - T2"."PELICULAS";`
        const result = await connection.query(querySelect)
        return result
    },

    //Obtener la cantidad series que se encuentran en la base de datos de la plataforma
    async getSeriesCount(search) {
        const querySelect = `SELECT COUNT (*)
        FROM "Grupo 4 - T2"."SERIES";`
        const result = await connection.query(querySelect)
        return result
    }
}


