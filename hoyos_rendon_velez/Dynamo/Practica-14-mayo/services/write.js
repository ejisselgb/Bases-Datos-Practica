var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local
const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveStudents = function(){ //Se define la función encargada de crear los datos en la table de Dynamo
var object = { //Crear objeto para almacenar en la base de datos
"id_usuario": "111",
"created_at": new Date().toString(),
"Pelicula_favorita":[
    {
        "Nombre":"Sherk",
        "sinopsis":"pantano verde y aventuras increibles",
        "trailer":"youtube.com",
        "edad":"18",
        "fecha_publicacion":"2006-02-02",

    },
    {
        "Nombre":"Sherk para siempre",
        "sinopsis":"pantano verde,aventuras increibles y problemas matrimoniales ",
        "trailer":"youtube.com",
        "edad":"20",
        "fecha_publicacion":"2006-02-02",

    },
    {
    "Nombre": "Rapidos y Furiosos",
    "sipnosis": "Rapidos y también furiosos",
    "trailer": "Youtube", 
    "edad": "16", 
    "fecha_publicacion": "2020-7-7", 
} ,
{
    "Nombre": "Cars",
    "sipnosis": "Una Excelente aventura",
    "trailer": "Yotube", 
    "edad": "6", 
    "fecha_publicacion": "2006-2-2", 
    }
]

}
const params = {
TableName: config.table_course, //Nombre de la table donde se almacenará la información
Item: object //Datos a insertar
}
doClient.put(params, function(err, data) { //Se llama función del objeto encargado de crear información
if(err)
console.log("Error: ", err)
else
console.log("Datos almacenados correctamente ", data)
})
}
saveStudents()

