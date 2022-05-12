module.exports = {
    table_course: 'Movies-6',
    aws_local_config: { //Se usa esta configuración ya que tenemos nuestra base de datos de maneralocal
        region: 'local',
        endpoint: 'http://localhost:3001'
    },
    aws_remote_config:{ // Se usa esta configuración en el momento que nos conectamos a la base dedatos en AWS de manera remota
        accessKeyId: 'AKIA45CQWSXZ2PE4FCBV',
        secretAccessKey: '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',
        region: 'us-east-2',
    }
}