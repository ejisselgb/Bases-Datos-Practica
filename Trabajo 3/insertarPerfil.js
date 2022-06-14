const mongoose = require('./conexion');
mongoose.pluralize(null);

const Perfil = mongoose.model('PERFIL', {
    id_perfil: String,
    id_usuario: Number,
    nombre: String,
    foto: String,
    edad: Number
});

let nuevoPerfil = [{
    "id_perfil": "0111",
    "id_usuario": "0101",
    "nombre": "samuelito",
    "foto": "/src/imagenes/foto1.jpg",
    "edad": 10
},
{
    "id_perfil": "0112",
    "id_usuario": "0102",
    "nombre": "sebas04",
    "foto": "/src/imagenes/foto3.jpg",
    "edad": 15
},
{
    "id_perfil": "0113",
    "id_usuario": "0103",
    "nombre": "primo gianz",
    "foto": "/src/imagenes/foto4.jpg",
    "edad": 13
},
]

for (let i =0 ; i<nuevoPerfil.length; i++){
    const nuevoElemento = new Perfil(nuevoPerfil[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}





