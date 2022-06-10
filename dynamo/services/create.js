var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local

const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveStudents = function(){ //Se define la función encargada de crear los datos en la table de Dynamo
    var object = { //Crear objeto para almacenar en la base de datos
        "comment_id": "0001",
        "id_serie": "121212",
        "user_id": "1",
	    "comment": "muy buena pero no me gusto el final",
        "calificacion": 5
    }
    var object = { //Crear objeto para almacenar en la base de datos
        "comment_id": "0002",
        "id_serie": "331212",
        "user_id": "2",
	    "comment": "no me agrada el protagonista",
        "calificacion": 3
    }
    var object = { //Crear objeto para almacenar en la base de datos
        "comment_id": "0003",
        "id_serie": "13333",
        "user_id": "3",
	    "comment": "El final fue inesperado",
        "calificacion": 5
    }
    var object = { //Crear objeto para almacenar en la base de datos
        "comment_id": "0004",
        "id_serie": "13333",
        "user_id": "4",
	    "comment": "El final fue inesperado",
        "calificacion": 5
    }
    var object = { //Crear objeto para almacenar en la base de datos
        "comment_id": "0005",
        "id_serie": "13333",
        "user_id": "5",
	    "comment": "Muy malo",
        "calificacion": 1
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