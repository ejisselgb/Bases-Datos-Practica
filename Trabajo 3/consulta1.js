const mongoose = require('./conexion');
mongoose.pluralize(null);

const pelicula = mongoose.model('PELICULAS', {
    id_pelicula: String,
    nombre_pelicula: String,
    portada: String,
    restriccion_edad: Number,
    duracion: String,
    fecha_estreno: Date,
    trailer_pelicula: String,
    sinopsis: String,
    calificacion_pelicula: Number,
    actores_pelicula: Array,
    idioma_pelicula: String,
    comentarios: Array
});


pelicula.find().then(function(resultado){
    console.log("Seleccionar todas las películas que fueron estrenadas después del 2017")
    for(let i = 0 ; i <resultado.length; i++){
        if(resultado[i].fecha_estreno >= new Date('2017-01-01')){
            console.log(resultado[i])
        }

    }
})


pelicula.find().then(function (resultado) {
    pelicula.find().then(function (resultado) {
        console.log("Seleccionar los autores de solo una película, buscar y mostrar en que otras películas han trabajado esos autores")
        let actores;
        console.log("los actores de la pelicula", resultado[1].nombre_pelicula, "son", resultado[1].actores_pelicula);
        actores = resultado[1].actores_pelicula
        for (let k = 0; k < actores.length; k++) {
            let array = [];
            for (let i = 0; i < resultado.length; i++) {
                for (let j = 0; j < resultado[i].actores_pelicula.length; j++) {
                    if (resultado[i].actores_pelicula[j] == actores[k]) {
                        array.push(resultado[i].nombre_pelicula)
                    }
                }
            }
            if(array.length != 1){
                console.log("El actor", actores[k], "ha trabajo en ", array)
            }
        }
    })

})


pelicula.find().then(function(resultado){
    console.log("Seleccionar los comentarios de una película que tengan calificación por debajo o igual a 3")
    for(let i = 0 ; i <resultado.length; i++){
        if(resultado[i].calificacion_pelicula <= 3.0){
            console.log(resultado[i].comentarios)
        }

    }
})

pelicula.find().then(function(resultado){
    console.log("Seleccionar los comentarios de una película que tengan una califiación por encima de 3")
    for(let i = 0 ; i <resultado.length; i++){
        if(resultado[i].calificacion_pelicula > 3.0){
            console.log(resultado[i].comentarios)
        }

    }
})