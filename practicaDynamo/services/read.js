var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_local_configu) //Se define en AWS la configuración local
const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const readStudents = function(){
const params = {
TableName: config.table_course,
Key: {"id": "15" }
}
doClient.get(params, function(err, data) { //Se cambia función para obtener
if(err)
console.log("Error: ", err)
else
console.log("Datos: ", data)
})
}
readStudents()