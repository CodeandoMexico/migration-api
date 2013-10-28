States =
  attributes: {
    name: 'STRING'
    migrant: {
      byGender: {
        male: 'INTEGER'
        female: 'INTEGER'
        total: 'INTEGER'
        help: {
          type: 'STRING'
          defaultsTo: 'MigraciÃ³n segÃºn lugar de residencia cinco aÃ±os antes, entre junio de 2005 y junio de 2010. Cifras correspondientes al 12 de junio.'
        }
      }
    }
  }

module.exports = States
