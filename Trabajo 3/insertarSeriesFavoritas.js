const mongoose = require('./conexion');
mongoose.pluralize(null);




const serieFavorita = mongoose.model('SERIES_FAVORITAS', {
    id_perfil: String,
    id_series: Array
});


let seriesFavoritas = [{
    "id_perfil": "0111",
    "id_series" : ["101011","101012"]
},
{
    "id_perfil": "0112",
    "id_series" : ["101013","101012"]
},
{
    "id_perfil": "0113",
    "id_series" : ["101011"]
}
]

for (let i =0 ; i<seriesFavoritas.length; i++){
    const nuevoElemento = new serieFavorita(seriesFavoritas[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}  