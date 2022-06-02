var AWS = require('aws-sdk')
const config = require('../config/config.js')
AWS.config.update(config.aws_local_config)

const doClient = new AWS.DynamoDB.DocumentClient()
const deleteStudents = function(){
    const params = {
        TableName:config.table_course,
        Key:{"id":"1"}
    }
    doClient.delete(params, function(err,data){
        if(err)
            console.log('Error: ', err)
        else
            console.log('Datos eliminados correctamente ', data)
    })
}
deleteStudents()