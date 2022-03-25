const connection = require('../config/connection')


module.exports = {

    async getPelicula() {
        const querySelect = `SELECT * FROM "Grupo 6"."content";`
        const result = await connection.query(querySelect)
        return result
    },

    async getPelicula(id) {
        const querySelect = `SELECT * FROM "Grupo 6"."content" WHERE content_id=${id};`
        const result = await connection.query(querySelect)
        return result
    },

    async getAllUser() {
        const querySelect = `SELECT * FROM "Grupo 2".usuario;`
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

    async updateContent(content_id, information){
        const queryUpdate = `UPDATE "Grupo 6"."content" SET information = '${information}' WHERE content_id = '${content_id};`
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