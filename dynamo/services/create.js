var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local

const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveStudents = function(){ //Se define la función encargada de crear los datos en la table de Dynamo
    var object = { //Crear objeto para almacenar en la base de datos
        "id": "1111",
        "name": "Pablo",
	    "peliculas_favoritas": [
        {
            "nombre": "Sherk2",
            "duracion": "120",
            "id_pelicula": "1037619795",
            "calificacion": "5"
        },
        {
            "nombre": "Matrix",
            "duracion": "59",
            "id_pelicula": "1037619796",
            "calificacion": "2"
        },
        {
            "nombre": "Ted",
            "duracion": "120",
            "id_pelicula": "1000123456",
            "calificacion": "2"
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