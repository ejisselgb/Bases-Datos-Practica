const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
var AWS = require("aws-sdk") //Se importa librería
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local
const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveUsers = function(){ //Se define la función encargada de crear los datos en la table de Dynamo
    var object = { //Crear objeto para almacenar en la base de datos

        // ------------- insert1 
        // "id_pelicula": 1,
        // "titulo": "Chernobyl la pelicula",
        // "duracion" : 135,
        // "sinopsis": "Un bombero lucha por comenzar una nueva historia con su novia y su hijo, pero un accidente en la planta nuclear de Chernobyl lo cambia todo.",
        // "ano_estreno": 2021,
        // "restriccion_edad": 13,
        // "archivo_trailer": "https://jeje",
        // "archivo_pelicula": "https://jeje",
        // "cartel" : "https://jeje",
        // "genero": ["Drama","Romance", "Historico"],
        // "elenco": ["Danila Kozlovski", "Oksana Akinshina", "Filipp Avdeyev"],
        // "idiomas":["Español", "Ingles", "Portugues"]
        
        
        
        // ----------- insert2
        
        
        
        // "id_pelicula": 2,
        // "titulo": "Milagros del cielo",
        // "duracion" : 109,
        // "sinopsis": "Christy, una madre devota con una hija muy enferma, sufre una crsis de fe mientras intenta desesperadamente salvar a su pequeña y mantener unida a su familia",
        // "ano_estreno": 2016,
        // "restriccion_edad": 13,
        // "archivo_trailer": "https://jeje",
        // "archivo_pelicula": "https://jeje",
        // "cartel" : "https://jeje",
        // "genero": ["Infantil", "Drama"],
        // "elenco": ["Jennifer Garner", "Kylie Rogers", "Martin Henderson"],
        // "idiomas":["Español", "Ingles"]
        
        
        
        // ------------ insert3
        
        
        
        // "id_pelicula": 3,
        // "titulo": "El hijo de Chucky",
        // "duracion" : 86,
        // "sinopsis": "Los malvados Chucky y Tiffany están de vuelta con ayuda de su hijo, quien los resucita y desata una nueva ola de asesinatos y caos.. esta vez en Hollywood",
        // "ano_estreno": 2004,
        // "restriccion_edad": 16,
        // "archivo_trailer": "https://jeje",
        // "archivo_pelicula": "https://jeje",
        // "cartel" : "https://jeje",
        // "genero": ["Terror", "Thriller"],
        // "elenco": ["Jennifer Tilly", "Brad Dourif", "John Waters"],
        // "idiomas":["Español", "Ingles"]
        
        
        
        // ---------- insert4
        
        
        
        // "id_pelicula": 4,
        // "titulo": "Quieren volverme loco",
        // "duracion" : 94,
        // "sinopsis": "Para deslumbrar a una madre soltera, un audaz pretendiente se ofrece a llevar a sus hijos de viaje y se ve obligado a soportar sus desquiciantes y endiabladas travesuras",
        // "ano_estreno": 2005,
        // "restriccion_edad": 13,
        // "archivo_trailer": "https://jeje",
        // "archivo_pelicula": "https://jeje",
        // "cartel" : "https://jeje",
        // "genero": ["Comedia", "Drama", "Infantil"],
        // "elenco": ["Ice Cube", "Aleisha Allen", "Nia Long", "Phillip Daniel Bolden"],
        // "idiomas":["Ingles"]
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