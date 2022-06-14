const mongoose = require('./conexion');
mongoose.pluralize(null);




const Usuario = mongoose.model('USUARIO', {
    id_usuario: String,
    nombreUsuario: String,
    contrasena: String,
    correo: String,
    telefono: String,
    "info-tarjeta": String,
    pais: String,
    ciudad: String
   
});


let nuevoUsuario = [{
    "id_usuario": "0101",
    "nombreUsuario": "Samuel Palacio",
    "contrasena": "1234",
    "correo": "spalacioj@gmail.com",
    "telefono": "13456789",
    "info-tarjeta": "mastercard 6654",
    "pais": "Colombia",
    "ciudad": "Medellin"
},
{
    "id_usuario": "0102",
    "nombreUsuario": "Sebastian Arias",
    "contrasena": "123114",
    "correo": "sariasu@gmail.com",
    "telefono": "1356479",
    "info-tarjeta": "mastercard 7878",
    "pais": "Colombia",
    "ciudad": "Manizales"
},
{
    "id_usuario": "0103",
    "nombreUsuario": "Gian Sanchez",
    "contrasena": "1234qwe123",
    "correo": "gianszs@hotmail.com",
    "telefono": "123456wq5411",
    "info-tarjeta": "visa 6214",
    "pais": "Colombia",
    "ciudad": "Valledupar"
},
]

for (let i =0 ; i<nuevoUsuario.length; i++){
    const nuevoElemento = new Usuario(nuevoUsuario[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}

