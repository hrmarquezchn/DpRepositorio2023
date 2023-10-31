const express = require ('express');
const apiCargo = express();
const db = require('./database/conn');

app.get('', async (req, res)=>{

    let sql = 'SELECT * from tbl_cargos';
    const result = await db.query(sql)
    res.json(result);

});


module.export = apiCargo;
