/**
 * Integrantes:
 * Viviana Hoyos
 * Carla Rendón
 * Juan Jose Velez
 */


const express = require('express')
const router = express.Router()
const moviesModel = require('../models')
router.get('/api', function (req, res, next) {
    res.status(200).send({
        success: 'true',
        message: 'Movies Eafit Api ',
        version: '1.0.0'
    })
})

/*                                                 Entrega 2                                                        */

/*1
Traer la información de un usuario por medio del nombre de usuario y contraseña*/ 

router.get('/api/user/info', function (req, res, next) {
    const { email, contrasena } = req.body
    moviesModel.getUserId(email, contrasena).then(id => {
        if (id.rowCount!=0) {
            console.log(id.rows[0].id_usuario)
            moviesModel.getInfoUser(id.rows[0].id_usuario).then(user => {
                if (user.rowCount!=0) {
                    res.status(200).send(user.rows) 
                }
                else{
                    return res.status(500).send('Error: no information available')
                }
            }).catch(err => {
                console.log(err)
                return res.status(500).send('Error getting user info')
            })
        }
        else {
            return res.status(404).send('User and password combination doesnt match')
        }
    })
})

/*2
Traer películas o series según coincida con la o las categorías, 
para crear los banners con la estructura que se muestran en la imagen.*/ 

router.get('/api/peliculas_series/categoria/:categoria', function (req, res, next) {
    const categoria = req.params.categoria// categoria de busqueda req.body del front
    moviesModel.getPeliculasSeriesCategoria(categoria).then(peliculas => {
        res.status(200).send(peliculas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(404).send('Error obteniendo pelicula')
    })
})


/*3
traer las películas que concidan con la palabra que va insertando en el buscador.
Puede ser que contenga cualquier cosa adelante y atrás de la palabra que se ingresa.*/ 
router.get('/api/peliculas/busqueda/:termino', function (req, res, next) {
    const termino = req.params.termino// termino de busqueda req.body del front?
    moviesModel.getMovieBySearch(termino).then(peliculas => {
        res.status(200).send(peliculas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(404).send('Error obteniendo pelicula')
    })
})

/*4
Traer toda la información de una película cuando esta se selecciona
como sinopsis, poster, enlace de trailer (link de youtube).*/ 

router.get('/api/pelicula/:id', function (req, res, next) {
    const id = req.params.id
    console.log(id)
    moviesModel.getPelicula(id).then(pelicula => {
        res.status(200).send(pelicula.rows)
    }).catch(err => {
        console.log(err)
        return res.status(404).send('Error obteniendo pelicula')
    })
})

/*5
Traer toda la información de una serie cuando esta se selecciona 
como sinopsis, cantidad capítulos, poster, enlace de trailer (link de youtube).
*/ 
router.get('/api/serie_capitulo/:id', function (req, res, next) {
    const id = req.params.id
    console.log(id)
    moviesModel.getCapituloSerie(id).then(serie => {
        res.status(200).send(serie.rows)
    }).catch(err => {
        console.log(err)
        return res.status(404).send('Error obteniendo serie')
    })
})



/*6
Traer la información de las películas favoritas de un usuario (nombre película, poster)
*/
router.get('/api/peliculas_favoritas/:nombre_perfil', function (req, res, next) {
    const nombre_perfil = req.params.nombre_perfil
    moviesModel.getPeliculasFavoritasPerfil(nombre_perfil).then(peliculas => {
        res.status(200).send(peliculas.rows)
    }).catch(err => {
        console.log(err)
        return res.status(404).send('Error obteniendo pelicula')
    })
})


/*7
Permitir al usuario editar la información de su perfil como por ejemplo
modificar la tarjeta vinculada, contraseña, teléfono, correo
*/
router.post('/api/user/update', function (req, res, next) {
    const {email,contrasena,newEmail, newContrasena,newTarjeta,newTelefono} = req.body
    moviesModel.updateUsuario(email,contrasena,newEmail, newContrasena,newTarjeta,newTelefono).then(user => {
        res.status(200).send({ message: 'update data user ' + newEmail, rowCount: user.rowCount })
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error updating user')
    })
})

/*8
Permitir al usuario cambiar la fecha de facturación de la suscripción a un plan
*/


router.post('/api/user/suscripciones/renovar', function (req, res, next) {
    const { email, contrasena,nuevaFecha} = req.body
    moviesModel.getUserId(email, contrasena).then(id => {
        if (id.rowCount!=0) {
            console.log(id.rows[0].id_usuario)
            moviesModel.updateFechaFacturación(id.rows[0].id_usuario,nuevaFecha).then(user => {
                if (user.rowCount!=0) {
                    res.status(200).send({ message: 'update fecha de facturacion de este usuario ' + email}) 
                }
                else{
                    return res.status(500).send('Error: no information available')
                }
            }).catch(err => {
                console.log(err)
                return res.status(500).send('Error getting user info')
            })
        }
        else {
            return res.status(404).send('User and password combination doesnt match')
        }
    })
})

/*
9
Permitir editar la información de una película o serie
*/

router.post('/api/update/peliculas_series', function (req, res, next) {
    const {tipo,id,nombre,trailer,poster,restriccion,fecha,sinopsis,tiempo} = req.body
    if(tipo=='serie'){
        moviesModel.updateSeries(id,nombre,trailer,poster,restriccion,fecha,sinopsis).then(user => {
            res.status(200).send({ message: 'Succes update serie ' + nombre})
        }).catch(err => {
            console.log(err)
            return res.status(500).send('Error updating serie')
        })
    }
    else if (tipo=='pelicula') {
        moviesModel.updatePelicula(id,nombre,trailer,poster,restriccion,fecha,sinopsis,tiempo).then(user => {
            res.status(200).send({ message: 'Succes update pelicula ' + nombre})
        }).catch(err => {
            console.log(err)
            return res.status(500).send('Error updating pelicula')
        })
    } else {
        return res.status(404).send('No hay tipo adecuado (serie, pelicula)')
    }
})

/*10
Obtener la cantidad de peliculas y series que se encuentran en la base de datos de la plataforma
*/ 

router.get('/api/getNumeroContenido', function (req, res, next) {
    moviesModel.getNumeroContenido().then(user => {
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies and series')
    })
})

/*
11
Obtener la información de todas las películas que aún no han sido calificadas o valoradas
*/ 
router.get('/api/getPeliculas/no_calificadas', function (req, res, next) {
    moviesModel.getPeliculasSinCalificacion().then(user => {
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies without rating')
    })
})
/*
12
Obtener el valor promedio que se debe pagar al mes según las suscripciones de los usuarios a los planes que ofrece la plataforma
 */

router.get('/api/promedio_suscripciones/Mes', function (req, res, next) {
    const {month,year} = req.body
        moviesModel.getPromedioSuscripcionesMes(month,year).then(user => {
            res.status(200).send(user.rows) 
        }).catch(err => {
            console.log(err)
            return res.status(500).send('Error getting mean')
        })
    })



/*                                   COMANDOS UTILES                                                   */

router.get('/api/getMovies', function (req, res, next) {
    moviesModel.getPeliculas().then(user => {
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies')
    })
})

router.get('/api/getSeries', function (req, res, next) {
    moviesModel.getSeries().then(user => {
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting movies')
    })
})

router.get('/api/allUsers', function (req, res, next) {
    moviesModel.getAllUser().then(user => {
        res.status(200).send(user.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting user')
    })
})

router.get('/api/Perfil', function (req, res, next) {
    moviesModel.getPerfil().then(perfil => {
        res.status(200).send(perfil.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting perfil')
    })
})

router.get('/api/Suscripciones', function (req, res, next) {
    moviesModel.getSuscripciones().then(perfil => {
        res.status(200).send(perfil.rows)
    }).catch(err => {
        console.log(err)
        return res.status(500).send('Error getting perfil')
    })
})




module.exports = router


