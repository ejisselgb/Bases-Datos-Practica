var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_local_config) //Se define en AWS la configuración local

const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const updateQuery = function () {
    const params = {
        TableName: config.table_course,
        Key: {},
        UpdateExpression: "set #name= :newNameAttri",
        ExpressionAttributeValues: {
            ":newNameAttri": "Jissel"
        },
        ExpressionAttributeNames: {
            "#name": "name"
        },
        ReturnValues: "UPDATED_NEW"
    }
    doClient.update(params, function (err, data) {
        if (err)
            console.log("Error: ", err)
        else
            console.log("Datos actualizados correctamente ", data)
    })
}
updateQuery()