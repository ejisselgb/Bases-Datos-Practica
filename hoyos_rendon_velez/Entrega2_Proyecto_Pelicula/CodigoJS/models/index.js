const connection = require('../config/connection')


module.exports = {

//Entrega 2

//1
//Traer la información de un usuario por medio del nombre de usuario y contraseña.

    async getUserId(email,contrasena) { 
        const querySelect = `SELECT id_usuario FROM "Grupo 2 - T2"."USUARIO" WHERE email='${email}' and contrasena='${contrasena}';`
        console.log(querySelect)
        const result = await connection.query(querySelect)
        return result
    },

//Se obtiene la info
    async getInfoUser(id_usuario) { 
        const querySelect = `SELECT p.nombre_perfil,p.foto_perfil,p.edad,pais.nombre_pais,z.nombre_zona,c.nombre_ciudad 
        FROM "Grupo 2 - T2"."USUARIO" as us 
        INNER JOIN "Grupo 2 - T2"."PERFIL" as p 
        ON us.id_usuario=p.id_usuario
        INNER JOIN "Grupo 2 - T2"."PAIS" as pais
        ON p.id_pais=pais.id_pais
        INNER JOIN "Grupo 2 - T2"."ZONAS" as z
        ON p.id_zona=z.id_zona
        INNER JOIN "Grupo 2 - T2"."CIUDAD" as c
        ON p.id_ciudad=c.id_ciudad
        WHERE us.id_usuario=${id_usuario};`
        const result = await connection.query(querySelect)
        return result
    },


 //2
//Traer películas o series según coincida con la o las categorías, 
//para crear los banners con la estructura que se muestran en la imagen.///

    async getPeliculasSeriesCategoria(nombre) { // pelis y series por categoria
        const querySelect = `SELECT * from (select peliculas.nombre_pelicula as nombre_contenido,peliculas.nombre_categoria FROM( SELECT ca.nombre_categoria,pe.nombre_pelicula,ca.id_categoria FROM "Grupo 2 - T2"."CATEGORIAS" as ca 
        FULL JOIN "Grupo 2 - T2"."PELICULAS_CATEGORIAS" as pc
        ON ca.id_categoria=pc.id_categoria
        FULL JOIN "Grupo 2 - T2"."PELICULAS" as pe
        ON pe.id_pelicula=pc.id_pelicula) as peliculas
        UNION
        SELECT series.nombre_serie,series.nombre_categoria
FROM (SELECT ca.nombre_categoria,se.nombre_serie,ca.id_categoria FROM "Grupo 2 - T2"."CATEGORIAS" as ca 
        FULL JOIN "Grupo 2 - T2"."SERIES_CATEGORIAS" as sc 
        ON ca.id_categoria=sc.id_categoria
        FULL JOIN "Grupo 2 - T2"."SERIES" as se
        ON se.id_serie=sc.id_serie) as series) as todo
    WHERE UPPER(todo.nombre_categoria)=UPPER('${nombre}') and todo.nombre_contenido is not null;`
        console.log(querySelect)
        const result = await connection.query(querySelect)
        return result
    },

    async getPeliculasCategoria(nombre) { // pelis y series por categoria
        const querySelect = `SELECT ca.nombre_categoria,pe.nombre_pelicula,ca.id_categoria FROM "Grupo 2 - T2"."CATEGORIAS" as ca 
        FULL JOIN "Grupo 2 - T2"."PELICULAS_CATEGORIAS" as pc
        ON ca.id_categoria=pc.id_categoria
        FULL JOIN "Grupo 2 - T2"."PELICULAS" as pe
        ON pe.id_pelicula=pc.id_pelicula
        WHERE UPPER(ca.nombre_categoria)=UPPER('${nombre}');`
        console.log(querySelect)
        const result = await connection.query(querySelect)
        return result
    },

    async getSeriesCategoria(nombre) { // pelis y series por categoria
        const querySelect = `SELECT ca.nombre_categoria,se.nombre_serie,ca.id_categoria FROM "Grupo 2 - T2"."CATEGORIAS" as ca 
        FULL JOIN "Grupo 2 - T2"."SERIES_CATEGORIAS" as sc 
        ON ca.id_categoria=sc.id_categoria
		FULL JOIN "Grupo 2 - T2"."SERIES" as se
        ON se.id_serie=sc.id_serie
		WHERE UPPER(ca.nombre_categoria)=UPPER('${nombre}');`
        console.log(querySelect)
        const result = await connection.query(querySelect)
        return result
    },



//3
//Traer las películas que concidan con la palabra que va insertando en el buscador.
//Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.

    async getMovieBySearch(search){
        const querySelect = `SELECT * FROM "Grupo 2 - T2"."PELICULAS" WHERE nombre_pelicula ILIKE '%${search}%';`
        const result = await connection.query(querySelect)
        return result
    },

//4
///Traer toda la información de una película cuando esta se selecciona
///como sinopsis, poster, enlace de trailer (link de youtube).///

    async getPelicula(id) {
        const querySelect = `SELECT nombre_pelicula,sinopsis,poster,trailer FROM "Grupo 2 - T2"."PELICULAS" WHERE id_pelicula = '${id}';`
        const result = await connection.query(querySelect)
        return result
    },

//////5
///Traer toda la información de una serie cuando esta se selecciona 
///como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).///
    async getCapituloSerie(id) {
        const querySelect = `SELECT COALESCE(COUNT(cs.id_capitulo),0) AS total_caps,se.nombre_serie,se.sinopsis,se.trailer,se.poster
        FROM "Grupo 2 - T2"."SERIES" as se 
        INNER JOIN "Grupo 2 - T2"."CAPITULOS_SERIES" as cs 
        ON se.id_serie=cs.id_serie
        WHERE se.id_serie = '${id}'
        GROUP BY se.nombre_serie,se.sinopsis,se.trailer,se.poster;`
        const result = await connection.query(querySelect)
        return result
    },



/////6
///Traer la información de las películas favoritas de un usuario (nombre película, poster)///
    async getPeliculasFavoritasPerfil(nombre_perfil) { // Apartir del nombre del perfil, se puede visualizar sus peliculas favoritas
        const querySelect = `SELECT pe.nombre_perfil,pel.*
        FROM "Grupo 2 - T2"."PERFIL" as pe 
        INNER JOIN "Grupo 2 - T2"."PELICULAS_FAVORITAS" as pf
        ON pe.id_perfil=pf.id_perfil
		INNER JOIN "Grupo 2 - T2"."PELICULAS" as pel 
        ON pf.id_pelicula=pel .id_pelicula
		WHERE UPPER(pe.nombre_perfil) = UPPER('${nombre_perfil}');`
        console.log(querySelect)
        const result = await connection.query(querySelect)
        return result
    },

/////7
///Permitir al usuario editar la información de su perfil como por ejemplo modificar 
///la tarjeta vinculada, contraseña, teléfono, correo

async updateUsuario(email,contrasena,newEmail, newContrasena,newTarjeta,newTelefono){
    const queryUpdate = `UPDATE "Grupo 2 - T2"."USUARIO" SET email='${newEmail}',contrasena='${newContrasena}',tarjeta='${newTarjeta}',telefono='${newTelefono}' WHERE email='${email}' AND contrasena='${contrasena}';`
    console.log(queryUpdate)
    const result = await connection.query(queryUpdate)
    return result
},
///8
//Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan
async updateFechaFacturación(id_usuario,newFecha){
    const queryUpdate = `UPDATE "Grupo 2 - T2"."SUSCRIPCIONES" SET fecha_facturacion='${newFecha}' WHERE id_usuario='${id_usuario}';`
    console.log(queryUpdate)
    const result = await connection.query(queryUpdate)
    return result
},

//9
//Permitir editar la información de una película o serie

//editar info de una pelicula
async updatePelicula(id_pelicula,nuevoNombre,nuevoTrailer,nuevoPoster,nuevaRestriccion,nuevaFecha,nuevaSinopsis,nuevoTiempo){
    const queryUpdate = `UPDATE "Grupo 2 - T2"."PELICULAS" SET nombre_pelicula='${nuevoNombre}',trailer='${nuevoTrailer}',poster='${nuevoPoster}',restriccion_edad='${nuevaRestriccion}',fecha_publicacion='${nuevaFecha}',sinopsis='${nuevaSinopsis}',tiempo_total='${nuevoTiempo}' WHERE id_pelicula='${id_pelicula}';`
    console.log(queryUpdate)
    const result = await connection.query(queryUpdate)
    return result
},
//editar info de
async updateSeries(id_serie,newNombre,newTrailer,newPoster,newRestriccion_Edad,newFecha_Publicacion,newSinopsis){
    const queryUpdate = `UPDATE "Grupo 2 - T2"."SERIES" 
    SET nombre_serie ='${newNombre}',trailer  ='${newTrailer}',poster ='${newPoster}',restriccion_edad ='${newRestriccion_Edad}',fecha_publicacion ='${newFecha_Publicacion}',sinopsis='${newSinopsis}'
    WHERE id_serie='${id_serie}';`
    console.log(queryUpdate)
    const result = await connection.query(queryUpdate)
    return result
},

//////10
//Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma

async getNumeroContenido() { // Apartir del nombre del perfil, se puede visualizar sus peliculas favoritas
    const querySelect = `SELECT COUNT (*) AS numero_total_series_peliculas FROM(
        select distinct id_pelicula 
        FROM "Grupo 2 - T2"."PELICULAS" 
        UNION ALL
        select distinct id_serie
        FROM "Grupo 2 - T2"."SERIES"
    ) as numero;`
    console.log(querySelect)
    const result = await connection.query(querySelect)
    return result
},

///11
///Obtener la información de todas las películas que aún no han sido calificadas o valoradas
async getPeliculasSinCalificacion() { 
    const querySelect = `SELECT pe.*,pf.estrella,pf.comentario FROM "Grupo 2 - T2"."PELICULAS" as pe
    LEFT JOIN "Grupo 2 - T2"."CALIFICACION_PELICULAS" as pf
    ON pe.id_pelicula=pf.id_pelicula
    WHERE pf.estrella is null or pf.comentario is null;`
    console.log(querySelect)
    const result = await connection.query(querySelect)
    return result
},

///12
///Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma

async getPromedioSuscripcionesMes(mes,ano) { 
    const querySelect = `SELECT AVG(pl.precio) AS promedio_suscripciones
    FROM "Grupo 2 - T2"."PLANES" as pl
    INNER JOIN "Grupo 2 - T2"."SUSCRIPCIONES" as sus
    ON pl.id_plan=sus.id_plan
    WHERE extract(month from sus.fecha_facturacion ) ='${mes}' AND extract(year from fecha_facturacion)='${ano}'AND sus.activo= true;`
    console.log(querySelect)
    const result = await connection.query(querySelect)
    return result
},


/////////////////////////COMANDOS UTILES//////////////////////////////////////////////////////////

    async getPeliculas() {
        const querySelect = `SELECT * FROM "Grupo 2 - T2"."PELICULAS";`
        const result = await connection.query(querySelect)
        return result
    },
    async getSeries() {
        const querySelect = `SELECT * FROM "Grupo 2 - T2"."SERIES";`
        const result = await connection.query(querySelect)
        return result
    },
    
    async getAllUser() {
        const querySelect = `SELECT * FROM "Grupo 2 - T2"."USUARIO"`
        const result = await connection.query(querySelect)
        return result
    },
    
    async getPerfil() {
        const querySelect = `SELECT * FROM "Grupo 2 - T2"."PERFIL"`
        const result = await connection.query(querySelect)
        return result
    },

    async getSuscripciones() {
        const querySelect = `SELECT * FROM "Grupo 2 - T2"."SUSCRIPCIONES"`
        const result = await connection.query(querySelect)
        return result
    },
    
}
