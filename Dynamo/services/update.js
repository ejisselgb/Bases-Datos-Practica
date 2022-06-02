var AWS = require('aws-sdk')
const config = require('../config/config.js')
AWS.config.update(config.aws_remote_config)

const doClient = new AWS.DynamoDB.DocumentClient()

const updateStudents = function(){
    const params = {
        TableName: config.table_course,
        Key:{"id":"1"},
        UpdateExpression: "set #name= :newNameAttri",
        ExpressionAttributeValues:{
            ":newNameAttri":"Juan Pablo"
        },
        ExpressionAttributeNames:{
            "#name":"name"
        },
        ReturnValues:"UPDATED_NEW"
    }
    doClient.update(params, function(err,data){
        if(err)
            console.log('Error: ', err)
        else
            console.log('Datos actualizados correctamente ', data)
    })
}
updateStudents()