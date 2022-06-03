var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_local_config) //Se define en AWS la configuración local


const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const deleteQuery = function () { //Se define la función encargada de crear los datos en la table de Dynamo
    const params = {
        TableName: config.table_course, //Nombre de la table donde se almacenará la información
        Key: {} //Datos a insertar
    }
    doClient.delete(params, function (err, data) { //Se llama función del objeto encargado de crear información
        if (err)
            console.log("Error: ", err)
        else
            console.log("Datos:", JSON.stringify(data))
    })
        
    

}
deleteQuery()