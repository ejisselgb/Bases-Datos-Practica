var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_local_config) //Se define en AWS la configuración local


const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const createQuery = function () { //Se define la función encargada de crear los datos en la table de Dynamo
    var object =
    {
        
    }  
    const params = {
        TableName: config.table_course, //Nombre de la table donde se almacenará la información
        Item: object //Datos a insertar
    }   
    doClient.put(params, function (err, data) { //Se llama función del objeto encargado de crear información
        if (err)
            console.log("Error: ", err)
        else
            console.log("Datos almacenados correctamente ", JSON.stringify(data))
    })
        
    

}
createQuery()