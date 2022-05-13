//consultas a base de datos 
const connection = require('../config/connection')


module.exports = {

    //ejercicio repaso
    async getPeliculs(tituloMovie) {
        const querySelect = `SELECT * FROM "Grupo 3"."PELICULA" WHERE titulo = '${tituloMovie}';`
        const result = await connection.query(querySelect)
        return result
    },

    //ejemplos profe
    
    async getPeliculas() {
        const querySelect = `SELECT * FROM "Grupo 3"."PELICULA";`
        const result = await connection.query(querySelect)
        return result
    },

    async getPelicula(id) {
        const querySelect = `SELECT * FROM "Grupo 3"."PELICULA" WHERE id_pelicula=${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async getPelicula(id) {
        const querySelect = `SELECT * FROM "Grupo 3"."PELICULA" WHERE id_pelicula=${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async updatePeli(id_pelicula, descripcion){
        const queryUpdate = `UPDATE "Grupo 3"."PELICULA" SET sinopsis='${descripcion}' WHERE id_pelicula='${id_pelicula}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async getAllUser() {
        const querySelect = `SELECT * FROM "Grupo 3"."CUENTA";`
        const result = await connection.query(querySelect)
        return result
    },

    async getUser(username, password) {
        const querySelect = `'${username}' and '${password}';`
        const result = await connection.query(querySelect)
        return result
    },

    async insertUser(username, password){
        const queryInsert = `'${username}' and '${password}';`
        const result = await connection.query(queryInsert)
        return result
    },

    async updateUser(username, newPassword){
        const queryUpdate = `'${newPassword}' and '${username}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async deleteUser(username){
        const queryDelete = `'${username}';`
        const result = await connection.query(queryDelete)
        return result
    },

    async getMovieId(id){
        const querySelect = `'${id}';`
        const result = await connection.query(querySelect)
        return result
    },

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
    }
}