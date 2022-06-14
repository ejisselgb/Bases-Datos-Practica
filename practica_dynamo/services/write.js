var AWS = require("aws-sdk") //Se importa librería
const config = require("../config/config.js") //Se llama archivo creado previamente de configuración
AWS.config.update(config.aws_remote_config) //Se define en AWS la configuración local
const doClient = new AWS.DynamoDB.DocumentClient() //Se crea el cliente de AWS
const saveStudents = function () { //Se define la función encargada de crear los datos en la table de Dynamo
    var object =
    [
        {
            "id_categorias_series":"1",
            "id_serie":"1",
            "id_categoria":"2"
        },
        {
            "id_categorias_series":"2",
            "id_serie":"1",
            "id_categoria":"3"
        },
        {
            "id_categorias_series":"1",
            "id_serie":"1",
            "id_categoria":"8"
        }
    ]
        
    
        /*var object =
        {
            "id_serie":"2",
            "nombre_serie":"Transformers",
            "temporada":5,
            "portada":"Portada9.jpg",
            "numero_capitulos":30,
            "restriccion_edad":16,
            "fecha_estreno":"2017-05-02",
            "trailer_serie": "https://amazon.com",
            "sinopsis":"a"
        }*/
    /*
    [{ //Crear objeto para almacenar en la base de datos
            "id_usuario": "111",
            "created_at": new Date.toString(),
            "peliculas_favoritas": [{
                    Id_Pelicula: "1",
                    Name: "Transformer",
                    Time: "1:55:26",
                    Gender: "Action",
                    Calification: "5"
                },

                {
                    Id_Pelicula: "2",
                    Name: "El Paseo 2",
                    Time: "2:30:07",
                    Gender: "Comedy",
                    Calification: "4.5"
                }

            ]
        },
        [{
                "id_usuario": "121",
                "created_at": new Date.toString(),
                "peliculas_favoritas": [{
                        Id_Pelicula: "1",
                        Name: "Transformer",
                        Time: "1:55:26",
                        Gender: "Action",
                        Calification: "5"
                    },

                    {
                        Id_Pelicula: "2",
                        Name: "El Paseo 2",
                        Time: "2:30:07",
                        Gender: "Comedy",
                        Calification: "4.5"
                    }

                ]
            }

        ]
    ]*/

        for(let i = 0; i<object.length;i++){
            const params = {
                TableName: config.table_course, //Nombre de la table donde se almacenará la información
                Item: object[i] //Datos a insertar
            }
            doClient.put(params, function (err, data) { //Se llama función del objeto encargado de crear información
                if (err)
                    console.log("Error: ", err)
                else
                    console.log("Datos almacenados correctamente ", JSON.stringify(data))
            })
        }
    

}
saveStudents()