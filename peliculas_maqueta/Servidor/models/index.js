const connection = require('../config/connection')


module.exports = {
    

    async getPelicula(id){
        const querySelect = `SELECT * FROM "Grupo 5"."pelicula" WHERE id_pelicula = '${id}';`
        const result = await connection.query(querySelect)
        return result
    },

    async getPeliculas(){
        const querySelect = 'SELECT * FROM "Grupo 5"."pelicula";'
        const result = await connection.query(querySelect)
        return result
    },

    async getListUser(){
        const querySelect = 'SELECT * FROM "Grupo 5"."usuario";'
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
    async updatePelicula(id_pelicula, nombre){
        const querySelect = `UPDATE "Grupo 5"."pelicula" SET nombre_pelicula = '${nombre}' WHERE id_pelicula = '${id_pelicula}';`
        const result = await connection.query(querySelect)
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
    }
}