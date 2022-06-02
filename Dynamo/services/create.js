var AWS = require('aws-sdk')
const config = require('../config/config.js')
AWS.config.update(config.aws_local_config)

const doClient = new AWS.DynamoDB.DocumentClient()
const saveStudents = function(){
    var object = [
        {
            
        }
    ]
    const params = {
        TableName:config.table_course,
        Item: object
    }
    doClient.put(params, function(err,data){
        if(err)
            console.log('Error: ', err)
        else
            console.log('Datos almacenados correctamente ', data)
    })
}
saveStudents()