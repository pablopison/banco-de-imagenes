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

const app = express();
const PORT = process.env.PORT || 4000;

app.use(express.static(path.join(__dirname, "public")));

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use(cors());

app.use('/auth', authRouter);
//app.use('/contacto', contactoRouter);


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
        nombre: "Pocitos",
        fotos: [
            'DSC_0003', 'DSC_0005', 'DSC_0020', 'DSC_0024', 
            'DSC_9999', 'DSC_0032', 'DSC_9998', 'DSC_9983',
            'DSC_9985', 'DSC_0011', 'DSC_0049', 'DSC_0051']
    },
    {
        nombre: "Prado",
        fotos: [
            'DSC_0931', 'DSC_1679', 'DSC_4888', 'DSC_4988', 
            'DSC_1227', 'DSC_1228', 'DSC_4958', 'DSC_4977',
            'DSC_1662', 'DSC_1689', 'DSC_1696', 'DSC_1723']
    },
    {
        nombre: "Parque Rodo",
        fotos: [
            'DSC_7904', 'DSC_7913', 'DSC_7923', 'DSC_7925', 
            'DSC_7927', 'DSC_7938', 'DSC_7950', 'DSC_7959',
            'DSC_7965', 'DSC_7967', 'DSC_7994', 'DSC_8043',
            'DSC_7987', 'DSC_7992', 'DSC_8021', 'DSC_8026']
    },
    {
        nombre: "Aguada",
        fotos: [
            'Aguada1', 'Aguada2', 'DSC_8402', 'DSC_8492', 
            'DSC_1148', 'DSC_1158', 'DSC_2505', 'DSC_2327',
            'DSC_2324', 'DSC_2503', 'DSC_2239', 'DSC_8369']
    },
] 

