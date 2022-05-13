const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
var AWS = require("aws-sdk") //Se importa librería
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local
const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveUsers = function(){ //Se define la función encargada de crear los datos en la table de Dynamo
    var object = { //Crear objeto para almacenar en la base de datos
        "id" : 3,
        "id_perfil" : 3,
        "nombre" : "papa",

        "peliculas_fav" : [
            {
            "id_pelicula" : 9,
            "nombre" : "Ganar o Morir",
            "duracion" : 94,
            "ano_estreno" : 1993,
            "restriccion_edad" : 16,
            "sinopsis" : "Un profugo condenado injustamente ayuda a su viuda y a sus  dos niños después de enterarse de que una empresa inmobiliaria amenaza con quitarles sus tierras",
            "archivo_trailer": "https://jeje",
            "archivo_pelicula": "https://jeje",
            "cartel": "https://jeje"
        },{
	        "id_pelicula" : 6,
	        "nombre" : "Tiburon",
            "duracion" : 124,
            "ano_estreno" : 1975,
            "restriccion_edad" : 16,
            "sinopsis" : "Steven Spielberg invento la categoria 'exito de verano' con esta historia sobre un insaciable tiburón blanco que aterroriza a los vecinos de Amity Island",
            "archivo_trailer": "https://jeje",
            "archivo_pelicula": "https://jeje",
            "cartel": "https://jeje"
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
saveUsers()