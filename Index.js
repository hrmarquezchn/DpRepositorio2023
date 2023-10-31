const expres = require ('express');
const app = express();

// esto se llama middleware app

app.use(express.json());



const apiCargos = require('./routes/apiCargos');
app.use('/api/Cargos', apiCargos);