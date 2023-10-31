const pgp = require('pgp-promise')();

const user = 'postgres';
const pass = '2626***';
const host = 'localhost';
const database = 'postgres';

const conectionString = `postgresql://${user}:${pas}@${host}:5432/${database}`;

const db = pgp(conectionString);

db.connect()
    .then(()=> {
        
        console.log("conexion Exitosa");
        
    })

    .catch( (err)=>{

        console.log(`Error de conexion ${err}`);

    })

    module.exports = db;