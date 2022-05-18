const connection = require('../config/connection')


module.exports = {

    //Punto 1
    async getUsuario(nombre_usuario, contrasenia){
        const querySelect = `SELECT * FROM "Grupo8 - T2"."USUARIOS" WHERE nombre_usuario = '${nombre_usuario}' AND contrasenia = '${contrasenia}';`
        const result = await connection.query(querySelect)
        return result
    },
    //Punto 2
    async getCategoria(nombre_categoria){
        const querySelect = 
        `SELECT 
            'Pelicula' AS conditionable,
            pe.titulo,
            pe.descripcion,
            cat.nombre_categoria
        FROM "Grupo8 - T2"."PELICULAS" AS pe
        INNER JOIN "Grupo8 - T2"."PELICULAS_CATEGORIAS" AS pecat
        ON pe.id_pelicula = pecat.id_pelicula
        INNER JOIN "Grupo8 - T2"."CATEGORIAS" AS cat
        ON pecat.id_categoria = cat.id_categoria
        WHERE cat.nombre_categoria = '${nombre_categoria}'
        UNION
        SELECT
            'Serie' AS conditionable,
            se.titulo,
            se.descripcion,
            cat.nombre_categoria
        FROM "Grupo8 - T2"."SERIES" AS se
        INNER JOIN "Grupo8 - T2"."SERIES_CATEGORIAS" AS secat
        ON se.id_serie = secat.id_serie
        INNER JOIN "Grupo8 - T2"."CATEGORIAS" AS cat
        ON secat.id_categoria = cat.id_categoria
        WHERE cat.nombre_categoria = '${nombre_categoria}';`
        const result = await connection.query(querySelect)
        return result
    },
    //Punto 3
    async getPeliculasYseriesPorTitulo(titulo){
        const querySelect = 
        `SELECT 
            'Pelicula' AS conditionable,
            pe.titulo,
            pe.poster,
            pe.trailer,
            pe.descripcion
        FROM "Grupo8 - T2"."PELICULAS" AS pe 
        WHERE titulo ILIKE '%${titulo}%'
        UNION
        SELECT
            'Serie' AS conditionable,
            se.titulo,
            se.poster,
            se.trailer,
            se.descripcion
        FROM "Grupo8 - T2"."SERIES" AS se
        WHERE titulo ILIKE '%${titulo}%';`
        const result = await connection.query(querySelect)
        return result
    },
    //Punto 4
    async getPeliculaPorClick(id_pelicula){
        const querySelect = `SELECT * FROM "Grupo8 - T2"."PELICULAS" WHERE id_pelicula = ${id_pelicula};`
        const result = await connection.query(querySelect)
        return result
    },
    //Punto 5
    async getSeriePorClick(id_serie){
        const querySelect = `SELECT * FROM "Grupo8 - T2"."SERIES" WHERE id_serie = ${id_serie};`
        const result = await connection.query(querySelect)
        return result
    },
    
    //Punto 6
    async getPeliculasYseriesFavoritas(id_perfil){
        const querySelect = 
        `SELECT
            'Pelicula' AS conditionable,
            pe.titulo,
            pe.poster,
            pe.trailer,
            pe.descripcion
        FROM "Grupo8 - T2"."PELICULAS" AS pe
        INNER JOIN "Grupo8 - T2"."PELICULAS_FAVORITAS" AS pefav
        ON pe.id_pelicula = pefav.id_pelicula
        INNER JOIN "Grupo8 - T2"."PERFILES" AS perf
        ON pefav.id_perfil = perf.id_perfil
        WHERE perf.id_perfil = ${id_perfil}
        UNION
        SELECT
            'Serie' AS conditionable,
            se.titulo,
            se.poster,
            se.trailer,
            se.descripcion
        FROM "Grupo8 - T2"."SERIES" AS se
        INNER JOIN "Grupo8 - T2"."SERIES_FAVORITAS" AS sefav
        ON se.id_serie = sefav.id_serie
        INNER JOIN "Grupo8 - T2"."PERFILES" AS perf
        ON sefav.id_perfil = perf.id_perfil
        WHERE perf.id_perfil = ${id_perfil};`
        const result = await connection.query(querySelect)
        return result
    },

    //Punto 7
    async updateIdioma(id,idioma){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PERFILES" SET idioma='${idioma}' WHERE id_perfil=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateNombre(id,nombre){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PERFILES" SET nombre_perfil='${nombre}' WHERE id_perfil=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateFoto(id,foto){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PERFILES" SET foto_perfil='${foto}' WHERE id_perfil=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePreferencias(id,preferencias){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PERFILES" SET preferencias='${preferencias}' WHERE id_perfil=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateEdad(id,edad){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PERFILES" SET edad='${edad}' WHERE id_perfil=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePin(id,pin){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PERFILES" SET pin='${pin}' WHERE id_perfil=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },

    //Punto 8
    async updateFacturacion(id_usuario, nueva_fecha){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SUSCRIPCIONES" SET fecha_facturacion = '${nueva_fecha}' WHERE id_usuario = ${id_usuario};`
        const result = await connection.query(queryUpdate)
        return result
    },


    //Punto 9
    async updatePeliculaTitulo(id,titulo){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET titulo='${titulo}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaPoster(id,poster){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET poster='${poster}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaRestriccionEdad(id,restriccion){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET restriccion_edad='${restriccion}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaDuracion(id,duracion){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET duracion='${duracion}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaFechaEstreno(id,fecha){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET fecha_estreno='${fecha}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaTrailer(id,trailer){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET trailer='${trailer}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaDescripcion(id,descripcion){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET descripcion='${descripcion}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updatePeliculaLink(id,link){
        const queryUpdate = `UPDATE "Grupo8 - T2"."PELICULAS" SET link_pelicula='${link}' WHERE id_pelicula=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },


    async updateSerieTitulo(id,titulo){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET titulo='${titulo}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateSeriePoster(id,poster){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET poster='${poster}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateSerieRestriccionEdad(id,restriccion){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET restriccion_edad='${restriccion}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateSerieTrailer(id,trailer){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET trailer='${trailer}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateSerieDescripcion(id,descripcion){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET descripcion='${descripcion}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateSerieFechaEstreno(id,fecha){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET fecha_estreno='${fecha}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },
    async updateSerieNumeroTmeporadas(id,num_temp){
        const queryUpdate = `UPDATE "Grupo8 - T2"."SERIES" SET numero_temporadas='${num_temp}' WHERE id_serie=${id};`
        const result = await connection.query(queryUpdate)
        return result
    },

    //Punto 10
    async getValorPromedio(){
        const querySelect = 
        `SELECT ROUND(avg(valor))
        FROM "Grupo8 - T2"."PLANES" AS pl
        INNER JOIN "Grupo8 - T2"."SUSCRIPCIONES" AS sus
        ON pl.id_plan = sus.id_plan
        where extract(month from NOW()) = extract(month from sus.fecha_compra);`
        const result = await connection.query(querySelect)
        return result
    },

    
    //Punto 11
    async getCantidadPeliculas(){
        const querySelect = `SELECT COUNT(*) FROM "Grupo8 - T2"."PELICULAS";`
        const result = await connection.query(querySelect)
        return result
    },

    async getCantidadSeries(){
        const querySelect = `SELECT COUNT(*) FROM "Grupo8 - T2"."SERIES";`
        const result = await connection.query(querySelect)
        return result
    },

    async getCantidadPeliculasYSeries(){
        const querySelect = 
        `SELECT COUNT(*)
        FROM(SELECT pe.titulo FROM "Grupo8 - T2"."PELICULAS" AS pe
            UNION
            SELECT se.titulo FROM "Grupo8 - T2"."SERIES" AS se)"PELICULAS_Y_SERIES";`
        const result = await connection.query(querySelect)
        return result
    },

    
    //Punto 12
    async getPeliculasNoCalificadas(){
        const querySelect = 
        `SELECT
            pe.titulo,
            pe.poster,
            pe.descripcion,
            cape.comentario,
            cape.calificacion
        FROM "Grupo8 - T2"."PELICULAS" AS pe
        LEFT JOIN "Grupo8 - T2"."CALIFICACION_PELICULAS" AS cape
        ON pe.id_pelicula = cape.id_pelicula
        WHERE comentario IS NULL AND CALIFICACION IS NULL;`
        const result = await connection.query(querySelect)
        return result
    },
    async getSeriesNoCalificadas(){
        const querySelect =
        `SELECT
            se.titulo,
            se.poster,
            se.descripcion,
            casee.comentario,
            casee.calificacion
        FROM "Grupo8 - T2"."SERIES" AS se
        LEFT JOIN "Grupo8 - T2"."CALIFICACION_SERIES" AS casee
        ON se.id_serie = casee.id_serie
        WHERE comentario IS NULL AND CALIFICACION IS NULL;`
        const result = await connection.query(querySelect)
        return result
    }

}