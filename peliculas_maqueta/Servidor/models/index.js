const connection = require('../config/connection')


module.exports = {

    async getMovie(id_pelicula) {
        const querySelect = `SELECT * FROM "Grupo 4"."Peliculas" WHERE id_pelicula='${id_pelicula}';`
        const result = await connection.query(querySelect)
        console.log(result.rows, "xd")
        return result
    },

    async getAllMovies() {
        const querySelect = `SELECT * FROM "Grupo 4"."Peliculas";`
        const result = await connection.query(querySelect)
        return result
    },

    async insertMovie(id_pelicula, nombre_pelicula, portada, restriccion_edad, duracion, fecha_estreno, link_pelicula){
        const queryInsert = `INSERT INTO "Grupo 4"."Peliculas" VALUES('${id_pelicula}', '${nombre_pelicula}', '${portada}', '${restriccion_edad}', '${duracion}', '${fecha_estreno}', '${link_pelicula}');`
        const result = await connection.query(queryInsert)
        return result
    },

    async uptadeMovie(id_pelicula, portada){
        const queryUpdate = `UPDATE "Grupo 4"."Peliculas" SET portada='${portada}' WHERE id_pelicula='${id_pelicula}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async deleteMovie(id_pelicula){
        const queryDelete = `DELETE FROM "Grupo 4"."Peliculas" WHERE id_pelicula='${id_pelicula}';`
        const result = await connection.query(queryDelete)
        return result
    },

    async getUser(nombre_usuario, contrasena) {
        const querySelect = `SELECT * FROM "Grupo 4"."Usuario" WHERE nombre_usuario='${nombre_usuario}' AND contrasena='${contrasena}';`
        const result = await connection.query(querySelect)
        console.log(result.rows, "xd")
        return result
    },

    async getAllUsers(){
        const querySelect = `SELECT * FROM "Grupo 4"."Usuario";`
        const result = await connection.query(querySelect)
        return result
    },

    async insertUser(nombre_usuario,imagen, telefono, edad, nombre, apellido,contrasena,correo){
        const queryInsert = `INSERT INTO "Grupo 4"."Usuario" VALUES('${nombre_usuario}', '${imagen}', '${telefono}', '${edad}', '${nombre}', '${apellido}', '${contrasena}', '${correo}');`
        const result = await connection.query(queryInsert)
        return result
    },

    async updateUser(nombre_usuario, newContrasena){
        const queryUpdate = `UPDATE "Grupo 4"."Usuario" SET contrasena='${newContrasena}' WHERE nombre_usuario='${nombre_usuario}';`
        const result = await connection.query(queryUpdate)
        return result
    },

    async deleteUser(nombre_usuario){
        const queryDelete = `DELETE FROM "Grupo 4"."Usuario" WHERE nombre_usuario='${nombre_usuario}';`
        const result = await connection.query(queryDelete)
        return result
    }   
}