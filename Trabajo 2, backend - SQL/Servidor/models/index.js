const { async } = require('jshint/src/prod-params')
const connection = require('../config/connection')


module.exports = {
    
    //Traer la información de un usuario por medio del nombre de usuario y contraseña.
    async getMoviesByNameAndPass(correo, password){
        const querySelect = `SELECT * FROM "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" WHERE NombreUsuario = '${correo}' AND contrasena = '${password}';`
        const result = await connection.query(querySelect)
        return result 
    },
    //Traer series según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.
    async getSeriesBycat(){
        const querySelect = `SELECT a.nombre, a.descripcion, a.fecha_estreno 
        FROM  "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" as a LEFT JOIN  "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES_CATEGORIAS" as b ON a.id_serie = b.id_serie;`
        const result = await connection.query(querySelect)
        return result 
    },

    //Traer peliculas según coincida con la o las categorías, para crear los banners con la estructura que se muestran en la imagen.
    async getMoviesBycat(){
        const querySelect = `SELECT b.nombre, b.descripcion, b.fecha_estreno
        FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_CATEGORIAS" as a RIGHT JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" as b ON a.id_pelicula = b.id_pelicula;`
        const result = await connection.query(querySelect)
        return result 
    },
    //Traer las películas que concidan con la palabra que va insertando en el buscador. Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.
    async moviesBySearch(busqueda){
        const querySelect = `SELECT * FROM Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" where nombre LIKE ‘%${busqueda}%’;`
        const result = await connection.query(querySelect)
        return result
    },
    
    //Traer toda la información de una película cuando esta se selecciona como sinopsis, poster, enlace de trailer (link de youtube).
    async getMovies(id_pelicula){
        const querySelect = `SELECT * FROM Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" where id_pelicula = '${id_pelicula}';`
        const result = await connection.query(querySelect)
        return result
    },
    //Traer toda la información de una serie cuando esta se selecciona como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).
    async getSeries(id_serie){
        const querySelect = `SELECT * FROM Grupo 5 - nadiePasaDeEstaEsquina"."SERIES" where id_serie= '${id_serie}';`
        const result = await connection.query(querySelect)
        return result
    },
    //Traer la información de las películas favoritas de un usuario (nombre película, poster)
    async getFavoritesMovies(id_perfil){
        const querySelect = `Select b.nombre, b.poster
        FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS_FAVORITAS" as a 
        RIGHT JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" as b ON a.id_pelicula=b.id_pelicula 
        where a.id_perfil = '${id_perfil}';`
        const result = await connection.query(querySelect)
        return result
    },
    //Permitir al usuario editar la información de su perfil como por ejemplo modificar la tarjeta vinculada, contraseña, teléfono, correo
    async updateProfilePass(password, id_usuario){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET contrasena = '${password}' WHERE id_usuario = ${id_usuario};`
        const result = await connection.query(querySelect)
        return result  
    },
    async updateProfileCard(card, id_usuario){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET tarjeta_vin = '${card}' WHERE id_usuario = ${id_usuario};`
        const result = await connection.query(querySelect)
        return result  
    },
    async updateProfilePhone(numberP, id_usuario){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET telefono = '${numberP}' WHERE id_usuario = ${id_usuario};`
        const result = await connection.query(querySelect)
        return result  
    },
    async updateProfileEmail(mail, id_usuario){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."USUARIOS" SET correo = '${mail}' WHERE id_usuario = ${id_usuario};`
        const result = await connection.query(querySelect)
        return result  
    },
    //Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan
    async updateDateOfPlan(fechaVenNueva, id_usuario){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" SET fecha_vencimiento = '${fechaVenNueva}' WHERE id_usuario = '${id_usuario}';`
        const result = await connection.query(querySelect)
        return result
    }, 
    //Permitir editar la información de una película o serie
    async updateInfoMovie(description, id_pelicula){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" SET descripcion = '${description}' where  id_pelicula = '${id_pelicula}';`
        const result = await connection.query(querySelect)
        return result  
    },
    async updateInfoSerie(description, id_serie){
        const querySelect = `Update "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" SET descripcion = '${description}' where  id_pelicula = '${id_serie}';`
        const result = await connection.query(querySelect)
        return result  
    },

    //Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma
    async getAvg(){
        const querySelect = `SELECT AVG(a.precio) as promedio
        FROM
        "Grupo 5 - nadiePasaDeEstaEsquina"."PLANES" as a 
        INNER JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."SUSCRIPCIONES" as b ON a.id_plan = b.id_plan;`
        const result = await connection.query(querySelect)
        return result  
    },
    //Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma
    async getCountMovies(){
        const querySelect = `SELECT COUNT (id_pelicula) as peliculas_registradas
        FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS";`
        const result = await connection.query(querySelect)
        return result  
    },
    async getCountSeries(){
        const querySelect = `SELECT COUNT (id_serie) as series_registradas
        FROM "Grupo 5 - nadiePasaDeEstaEsquina"."SERIES";`
        const result = await connection.query(querySelect)
        return result  
    },

    //Obtener la información de todas las películas que aún no han sido calificadas o valoradas
    async getMoviesAndSeriesWithNo(){
        const querySelect = `SELECT a.nombre, a.descripcion, a.fecha_estreno, b.id_calificacion, b.calificaion
        FROM "Grupo 5 - nadiePasaDeEstaEsquina"."PELICULAS" as a 
        INNER JOIN "Grupo 5 - nadiePasaDeEstaEsquina"."CALIFICACIONES_PELICULAS" as b 
        ON a.id_pelicula = b.id_pelicula where b.calificaion is null`
        const result = await connection.query(querySelect)
        return result  
    }
}