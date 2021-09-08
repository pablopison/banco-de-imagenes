const express = require('express');
const path = require('path');
const fetch = require('node-fetch');
const cors = require('cors');
const bodyParser = require('body-parser');

const authRouter = require('./routes/auth');
const contactoRouter = require('./routes/contacto');
const { router: dbfotosRouter } = require('./routes/dbfotos');

//const { verifyToken } = require('./middlewares/jwt-validate');

const multer = require('multer')
const uploadMiddleware = multer({dest: 'uploads/'});

const {query} = require('./db/index');
require ('dotenv').config();

const app = express();
const PORT = process.env.PORT || 4000;

app.use(express.static(path.join(__dirname, "public")));

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use(cors());

app.use('/auth', authRouter);
app.use('/contacto', contactoRouter);
app.use('/dbfotos', dbfotosRouter);



//Enviar un mensaje de texto
app.get('/', function(req, res){
    console.log(req.query);
    res.send('Bienvenido a nuestra página');
});


//Descarga de imagen
app.get('/descarga/:fotoName', function(req, res){

    res.download(`imagenes/${req.params.fotoName}`);
})

//Cargar un barrio y las fotos de un barrio desde la base de datos
app.get('/fotos1/:barrio', async(req, res) => {
    console.log(JSON.stringify(req.params));
    try{ 

     const barrio = req.params.barrio;  
     const fotosDB = await query('SELECT * FROM fotos WHERE barrio = $1', [barrio]);
     console.log(fotosDB)
     
 
     return res.json({
         success: true,
         fotos: fotosDB.rows
     });
 
    }catch (ex){
     return res.send({
         success: false,
         error: 'An exception was thrown: ' + JSON.stringify(ex)
     });
     }
 });

//Cargar un barrio y la fotos de un barrio desde el backend
app.get('/fotos/:barrio', /*verifyToken,*/ function(req, res){

    const nombreBarrio = req.params.barrio;
    const barrio = barrios.find(b => b.nombre === nombreBarrio);
    if (barrio) {
        return res.send({ success: true, fotos: barrio.fotos });
      }
      else {
        return res.send(
          { 
            success: false, 
            message: `Barrio con Nombre ${nombreBarrio} no encontrado` 
          }
        );
      }
    });

app.listen(PORT, function(){
    console.log('El servidor quedo corriendo en el puerto ' + PORT);
});


const barrios = [
    {
        nombre: "POCITOS",
        fotos: [
            'Pocitos_01', 'Pocitos_02', 'Pocitos_03', 'Pocitos_04', 
            'Pocitos_05', 'Pocitos_06', 'Pocitos_07', 'Pocitos_08',
            'Pocitos_09', 'Pocitos_10', 'Pocitos_11', 'Pocitos_12']
    },
    {
        nombre: "PRADO",
        fotos: [
            'Prado_01', 'Prado_02', 'Prado_03', 'Prado_04', 
            'Prado_05', 'Prado_06', 'Prado_07', 'Prado_08',
            'Prado_09', 'Prado_10', 'Prado_11', 'Prado_12']
    },
    {
        nombre: "PARQUE RODO",
        fotos: [
            'Parque_Rodo_01', 'Parque_Rodo_02', 'Parque_Rodo_03', 'Parque_Rodo_04', 
            'Parque_Rodo_05', 'Parque_Rodo_06', 'Parque_Rodo_07', 'Parque_Rodo_08',
            'Parque_Rodo_09', 'Parque_Rodo_10', 'Parque_Rodo_11', 'Parque_Rodo_12',
            'Parque_Rodo_13', 'Parque_Rodo_14', 'Parque_Rodo_15', 'Parque_Rodo_16']
    },
    {
        nombre: "AGUADA",
        fotos: [
            'Aguada_01', 'Aguada_02', 'Aguada_03', 'Aguada_04', 
            'Aguada_05', 'Aguada_06', 'Aguada_07', 'Aguada_08',
            'Aguada_09', 'Aguada_10', 'Aguada_11', 'Aguada_12']
    },
    {
        nombre: "CENTRO",
        fotos: [
            'Centro_01', 'Centro_02', 'Centro_03', 'Centro_04', 
            'Centro_05', 'Centro_06', 'Centro_07', 'Centro_08',
            'Centro_09', 'Centro_10', 'Centro_11', 'Centro_12',
            'Centro_13', 'Centro_14', 'Centro_15', 'Centro_16']
    },
    {
        nombre: "CAPURRO",
        fotos: [
            'Capurro_01', 'Capurro_02', 'Capurro_03', 'Capurro_04', 
            'Capurro_05', 'Capurro_06', 'Capurro_07', 'Capurro_08',
            'Capurro_09', 'Capurro_10', 'Capurro_11', 'Capurro_12',
            'Capurro_13', 'Capurro_14', 'Capurro_15', 'Capurro_16']
    },
    {
        nombre: "BARRIO SUR",
        fotos: [
            'Barrio_Sur_01', 'Barrio_Sur_02', 'Barrio_Sur_03', 'Barrio_Sur_04', 
            'Barrio_Sur_05', 'Barrio_Sur_06', 'Barrio_Sur_07', 'Barrio_Sur_08',
            'Barrio_Sur_09', 'Barrio_Sur_10', 'Barrio_Sur_11', 'Barrio_Sur_12',
            'Barrio_Sur_13', 'Barrio_Sur_14', 'Barrio_Sur_15', 'Barrio_Sur_16',
            'Barrio_Sur_17', 'Barrio_Sur_18', 'Barrio_Sur_19', 'Barrio_Sur_20']
    },
    {
        nombre: "PARQUE BATLLE",
        fotos: [
            'Parque_Batlle_01', 'Parque_Batlle_02', 'Parque_Batlle_03', 'Parque_Batlle_04', 
            'Parque_Batlle_05', 'Parque_Batlle_06', 'Parque_Batlle_07', 'Parque_Batlle_08',
            'Parque_Batlle_09', 'Parque_Batlle_10', 'Parque_Batlle_11', 'Parque_Batlle_12',
            'Parque_Batlle_13', 'Parque_Batlle_14', 'Parque_Batlle_15', 'Parque_Batlle_16']
    },
    {
        nombre: "CORDON",
        fotos: [
            'Cordon_01', 'Cordon_02', 'Cordon_03', 'Cordon_04', 
            'Cordon_05', 'Cordon_06', 'Cordon_07', 'Cordon_08',
            'Cordon_09', 'Cordon_10', 'Cordon_11', 'Cordon_12']
    },
    {
        nombre: "TRES CRUCES",
        fotos: [
            'Tres_Cruces_01', 'Tres_Cruces_02', 'Tres_Cruces_03', 'Tres_Cruces_04', 
            'Tres_Cruces_05', 'Tres_Cruces_06', 'Tres_Cruces_07', 'Tres_Cruces_08',
            'Tres_Cruces_09', 'Tres_Cruces_10', 'Tres_Cruces_11', 'Tres_Cruces_12']
    },
    {
        nombre: "MERCADO MODELO",
        fotos: [
            'Mercado_Modelo_01', 'Mercado_Modelo_02', 'Mercado_Modelo_03', 'Mercado_Modelo_04', 
            'Mercado_Modelo_05', 'Mercado_Modelo_06', 'Mercado_Modelo_07', 'Mercado_Modelo_08']
    },
    {
        nombre: "BELLA VISTA",
        fotos: [
            'Bella_Vista_01', 'Bella_Vista_02', 'Bella_Vista_03', 'Bella_Vista_04', 
            'Bella_Vista_05', 'Bella_Vista_06', 'Bella_Vista_07', 'Bella_Vista_08',
            'Bella_Vista_09', 'Bella_Vista_10', 'Bella_Vista_11', 'Bella_Vista_12']
    },
] 

      