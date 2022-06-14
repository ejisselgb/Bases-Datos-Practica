const mongoose = require('./conexion');
mongoose.pluralize(null);




const suscripcion = mongoose.model('SUSCRIPCION', {
    id_suscripcion: String,
    id_usuario: String,
    estado: Boolean,
    fecha_facturacion: String,
    tipo_plan: String
});


let nuevaSuscripccion = [{
    "id_suscripcion": "01201",
    "id_usuario": "0101",
    "estado": true,
    "fecha_facturacion": "22-06-2022",
    "tipo_plan": "Plan 1"
},
{
    "id_suscripcion": "01202",
    "id_usuario": "0102",
    "estado": false,
    "fecha_facturacion": "10-08-2005",
    "tipo_plan": "Plan 3"
},
{
    "id_suscripcion": "01203",
    "id_usuario": "0103",
    "estado": true,
    "fecha_facturacion": "15-06-2022",
    "tipo_plan": "Plan 2"
},
]

for (let i =0 ; i<nuevaSuscripccion.length; i++){
    const nuevoElemento = new suscripcion(nuevaSuscripccion[i]);
    nuevoElemento.save().then(res => console.log(res)).catch(err => 'Error en el guardado: ' + err);
}

  