const mongoose = require('./conexion');
mongoose.pluralize(null);




const temporada = mongoose.model('TEMPORADAS', {
    id_temporada: String,
    id_serie: String,
    numeroTemporada: Number,
});


let temporadas = [{
    id_temporada: "1101001",
    id_serie: "101012",
    numeroTemporada: 1
},
{
    id_temporada: "1101002",
    id_serie: "101011",
    numeroTemporada: 1
},
{
    id_temporada: "1101003",
    id_serie: "101013",
    numeroTemporada: 1
},
]

for (let i =0 ; i<temporadas.length; i++){
    const nuevoElemento = new temporada(temporadas[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}
