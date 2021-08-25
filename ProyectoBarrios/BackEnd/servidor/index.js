const express = require('express');
const path = require('path');
const fetch = require('node-fetch');
const cors = require('cors');
const bodyParser = require('body-parser');

const authRouter = require('./routes/auth');
//const contactoRouter = require('./routes/contacto');

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
//app.use('/contacto', contactoRouter);


//Base de datos
app.get('/ping', async(request, response) => {
    
    //const first_name = 'Gustavo';
    //const last_name = 'Perez';
    //const gender = 'male';
    //const email = 'pablo@gmail.com';
    //const date_of_birth = '1980-06-30';
    //const country = 'Portugal';
    //const res = await client.query(`INSERT INTO person(first_name, last_name, gender, email, date_of_birth, country)
    //VALUES ($1, $2, $3, $4, $5, $6)`,[first_name, last_name, gender, email, date_of_birth, country]);

    //const res = await client.query(`UPDATE person SET email = $1 WHERE id = 3`, [email]);

    const res = await query('SELECT * FROM person');
    console.log(res)
    

    return response.json({
        person: res.rows
    });
});


//Enviar un mensaje de texto
app.get('/', function(req, res){
    console.log(req.query);
    res.send('Bienvenido a nuestra página');
});

//Formulario de contacto
app.post('/contacto', function(req, res){
    const newUser = req.body;
    console.log(newUser);

    res.sendStatus(204);
})

//Descarga de imagen
app.get('/descarga/:fotoName', function(req, res){

    res.download(`imagenes/${req.params.fotoName}`);
})

//Cargar la fotos de un barrio desde el backend
/*app.get('/fotos', verifyToken, function(req, res){

    res.json({
        fotos: fotos
    })
});*/

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

/*const fotos = [
    'DSC_0003', 'DSC_0005', 'DSC_0020', 'DSC_0024', 
    'DSC_9999', 'DSC_0032', 'DSC_9998', 'DSC_9983',
    'DSC_9985', 'DSC_0011', 'DSC_0049', 'DSC_0051'];*/

const barrios = [
    {
        nombre: "POCITOS",
        fotos: [
            'DSC_0003', 'DSC_0005', 'DSC_0020', 'DSC_0024', 
            'DSC_9999', 'DSC_0032', 'DSC_9998', 'DSC_9983',
            'DSC_9985', 'DSC_0011', 'DSC_0049', 'DSC_0051']
    },
    {
        nombre: "PRADO",
        fotos: [
            'DSC_0931', 'DSC_1679', 'DSC_4888', 'DSC_4988', 
            'DSC_1227', 'DSC_1228', 'DSC_4958', 'DSC_4977',
            'DSC_1662', 'DSC_1689', 'DSC_1696', 'DSC_1723']
    },
    {
        nombre: "PARQUE RODO",
        fotos: [
            'DSC_7904', 'DSC_7913', 'DSC_7923', 'DSC_7925', 
            'DSC_7927', 'DSC_7938', 'DSC_7950', 'DSC_7959',
            'DSC_7965', 'DSC_7967', 'DSC_7994', 'DSC_8043',
            'DSC_7987', 'DSC_7992', 'DSC_8021', 'DSC_8026']
    },
    {
        nombre: "AGUADA",
        fotos: [
            'Aguada1', 'Aguada2', 'DSC_8402', 'DSC_8492', 
            'DSC_1148', 'DSC_1158', 'DSC_2505', 'DSC_2327',
            'DSC_2324', 'DSC_2503', 'DSC_2239', 'DSC_8369']
    },
    {
        nombre: "CENTRO",
        fotos: [
            'DSC_1215', 'DSC_1300', 'DSC_1197', 'DSC_8383', 
            'DSC_8367', 'DSC_2607', 'DSC_1880', 'DSC_2618',
            'DSC_1874', 'DSC_1850', 'DSC_1178', 'DSC_1853',
            'DSC_8651', 'DSC_1854', 'DSC_8593', 'DSC_8647']
    },
    {
        nombre: "CAPURRO",
        fotos: [
            'DSC_0723', 'DSC_1590', 'DSC_1532', 'DSC_0813', 
            'DSC_1417', 'DSC_1168', 'DSC_0768', 'DSC_1475',
            'DSC_1570', 'DSC_1539', 'DSC_1166', 'DSC_1486',
            'DSC_0796', 'DSC_0804', 'DSC_0820', 'DSC_0716']
    },
    {
        nombre: "BARRIO SUR",
        fotos: [
            'DSC_0295', 'DSC_0285', 'DSC_0334', 'DSC_0288', 
            'DSC_0283', 'DSC_0347', 'DSC_0263', 'DSC_0355',
            'DSC_0159', 'DSC_1064', 'DSC_1205', 'DSC_1421',
            'DSC_2093', 'DSC_2107', 'DSC_2117', 'DSC_1509',
            'DSC_0308', 'DSC_1419', 'DSC_1246', 'DSC_0352']
    },
    {
        nombre: "PARQUE BATLLE",
        fotos: [
            'DSC_1143', 'DSC_1159', 'DSC_9033', 'DSC_1154', 
            'DSC_1173', 'DSC_8872', 'DSC_1163', 'DSC_8906',
            'DSC_1165', 'DSC_9015', 'DSC_1172', 'DSC_8943',
            'DSC_1182', 'DSC_1178', 'DSC_8885', 'DSC_8902']
    },
    {
        nombre: "CORDON",
        fotos: [
            'Cordon1', 'Cordon2', 'Cordon3', 'Cordon4', 
            'Cordon5', 'Cordon6', 'Cordon7', 'Cordon8',
            'Cordon9', 'Cordon10', 'Cordon11', 'Cordon12']
    },
    {
        nombre: "TRES CRUCES",
        fotos: [
            'TresCruces1', 'TresCruces2', 'TresCruces3', 'TresCruces4', 
            'TresCruces5', 'TresCruces6', 'TresCruces7', 'TresCruces8',
            'TresCruces9', 'TresCruces10', 'TresCruces11', 'TresCruces12']
    },
    {
        nombre: "MERCADO MODELO",
        fotos: [
            'MercadoModelo1', 'MercadoModelo2', 'MercadoModelo3', 'MercadoModelo4', 
            'MercadoModelo5', 'MercadoModelo6', 'MercadoModelo7', 'MercadoModelo8']
    },
    {
        nombre: "BELLA VISTA",
        fotos: [
            'DSC_2307', 'DSC_3569', 'DSC_2309', 'DSC_3555', 
            'DSC_0732', 'DSC_0734', 'DSC_0764', 'DSC_8445',
            'DSC_0776', 'DSC_0789', 'DSC_0738', 'DSC_0766']
    },
] 

      