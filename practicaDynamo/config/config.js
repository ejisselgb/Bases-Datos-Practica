module.exports = {
    table_course: 'Favorites_Grupo_3',
    aws_local_configu: { //Se usa esta configuración ya que tenemos nuestra base de datos de manera local
    region: 'local',
    endpoint: 'http://localhost:3001'
    },
    aws_remote_config:{ // Se usa esta configuración en el momento que nos conectamos a la base de datos en AWS de manera remota
    accessKeyId: '',
    secretAccessKey: '',
    region: 'us-east-2',
    }
    }