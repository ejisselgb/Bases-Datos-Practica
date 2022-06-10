var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local

const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveStudents = function(){
    const params = {
        TableName: config.table_course,
        Key: {"id": "111" }
    }

    doClient.delete(params, function(err, data) {
        if(err)
            console.log("Error: ", err)
        else
            console.log("Datos eliminados correctamente ", data)
    })
}
saveStudents()