const connection = require('../config/connection')


module.exports = {

    async deleteUser(id_usuario, nombre_usuario) {
        const querySelect = `DELETE FROM "Grupo 7".Usuario WHERE nombre_usuario = 'pepepe10';`
        const result = await connection.query(querySelect)
        return result
    },

    async insertUser(username, password){
        const queryInsert = `'${username}' and '${password}';`
        const result = await connection.query(queryInsert)
        return result
    },

    async deleteUser(username){
        const queryDelete = `'${username}';`
        const result = await connection.query(queryDelete)
        return result
    },

    async searchMovie(word){
        const querySelect = `SELECT id_pelicula, nombre_pelicula FROM "Grupo 7 - T2"."PELICULAS"
        WHERE nombre_pelicula LIKE %'${word}'% ;`
        const result = await connection.query(querySelect)
        return result
    },

    async movieInfo(movie){
        const querySelect = `SELECT * FROM "Grupo 7 - T2"."PELICULAS" WHERE nombre_pelicula = '${movie}';`
        const result = await connection.query(querySelect)
        return result
    },

    async serieInfo(serie){
        const querySelect = `SELECT * FROM "Grupo 7 - T2"."SERIES" WHERE nombre_serie = '${serie}';`
        const result = await connection.query(querySelect)
        return result
    },

    async favoriteMovie(){
        const querySelect = `SELECT DISTINCT pf.id_perfil, pe.nombre_pelicula, pe.miniatura_pelicula, pe.duracion_pelicula, pe.restriccion_edad_pelicula, pe.trailer_pelicula, pe.ano_estreno_pelicula, pe.sinopsis_pelicula FROM "Grupo 7 - T2"."PELICULAS" as pe
        INNER JOIN "Grupo 7 - T2"."PELICULAS_FAVORITAS" as pf
        ON pe.id_pelicula = pf.id_pelicula;`
        const result = await connection.query(querySelect)
        return result
    },

    async updateUser(email, newPassword, newCard, newPhone){
        const queryUpdate = `UPDATE "Grupo 7 - T2"."USUARIOS" SET
        usuarios.contrasena = '${newPassword}',
        usuarios.tarjeta = '${newCard}', 
        usuarios.telefono = '${newPhone}'
        FROM "Grupo 7 - T2"."USUARIOS" as usuarios;`
        const result = await connection.query(queryUpdate)
        return result
    },

    async updateMovieInfo(dataToChange, dataChanged){
        const querySelect = `UPDATE "Grupo 7 - T2"."PELICULAS" SET 
        pelicula.'${dataToChange}' = '${dataChanged}'
        FROM "Grupo 7 - T2"."PELICULAS" as pelicula;  `
        const result = await connection.query(querySelect)
        return result
    },

    async changeSubDate(newDate){
        const querySelect = `UPDATE sus SET
        fecha_pago = '${newDate}'
        FROM  "Grupo 7 - T2"."SUSCRIPCIONES" as sus;`
        const result = await connection.query(querySelect)
        return result
    },

    async moviesCount(){
        const querySelect = `SELECT COUNT(id_pelicula) FROM "Grupo 7 - T2"."PELICULAS"`
        const result = await connection.query(querySelect)
        return result
    },

    async seriesCount(){
        const querySelect = `SELECT COUNT(id_serie) FROM "Grupo 7 - T2"."SERIES"`
        const result = await connection.query(querySelect)
        return result
    },

    async withoutRating(){
        const querySelect = `SELECT * FROM "Grupo 7 - T2"."PELICULAS" as pe
        INNER JOIN "Grupo 7 - T2"."CALIFICACION_PELICULA as cp" 
        WHERE cp.calificacion_pelicula = NULL `
        const result = await connection.query(querySelect)
        return result
    },

    async averagePrice(){
        const querySelect = `SELECT
        AVG(precio_plan)::numeric(10,2),
        SUM(precio_plan)::numeric(10,2)
        FROM
        "Grupo 7 - T2"."PLANES";`
        const result = await connection.query(querySelect)
        return result
    },


}