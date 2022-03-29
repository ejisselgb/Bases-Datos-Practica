const connection = require('../config/connection')


module.exports = {

    async getAllMovies() {
        const querySelect = `SELECT * FROM "Grupo 4"."Peliculas";`
        const result = await connection.query(querySelect)
        return result
    },

    async getMovieId(id_pelicula) {
        const querySelect = `SELECT FROM "Grupo 4"."Peliculas" WHERE id_pelicula='${id_pelicula};`
        const result = await connection.query(querySelect)
        return result
    },

    async uptadeMovie(id_pelicula, portada){
        const queryUpdate = `UPDATE "Grupo 4"."Peliculas" SET portada='${portada}' WHERE id_pelicula='${id_pelicula}'`
        const result = await connection.query(queryUpdate)
        return result
    },

    async getUser(username, password) {
        const querySelect = `SELECT FROM "Grupo 4"."Usuario" WHERE nombre_usuario='${username}' and contrasena'${password}';`
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
    }
}