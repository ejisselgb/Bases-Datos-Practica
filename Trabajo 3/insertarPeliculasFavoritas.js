const mongoose = require('./conexion');
mongoose.pluralize(null);




const peliculaFavorita = mongoose.model('PELICULAS_FAVORITAS', {
    id_perfil: String,
    id_pelicula: Array
});


let peliculasFavoritas = [{
    "id_perfil": "0111",
    "id_pelicula" : ["11211401","11211402"]
},
{
    "id_perfil": "0112",
    "id_pelicula" : ["11257412","11211401"]
},
{
    "id_perfil": "0113",
    "id_pelicula" : ["11211402"]
}
]

for (let i =0 ; i<peliculasFavoritas.length; i++){
    const nuevoElemento = new peliculaFavorita(peliculasFavoritas[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}

  