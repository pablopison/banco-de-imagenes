const express = require('express');
const path = require('path');
const fetch = require('node-fetch');
const cors = require('cors');
const bodyParser = require('body-parser');

const authRouter = require('./routes/auth');
//const contactoRouter = require('./routes/contacto');

const { verifyToken } = require('./middlewares/jwt-validate');

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
app.get('/fotos', verifyToken, function(req, res){

    res.json({
        fotos: fotos
    })
});

app.listen(PORT, function(){
    console.log('El servidor quedo corriendo en el puerto ' + PORT);
});

const fotos = [
    'DSC_0003', 'DSC_0005', 'DSC_0020', 'DSC_0024', 
    'DSC_9999', 'DSC_0032', 'DSC_9998', 'DSC_9983',
    'DSC_9985', 'DSC_0011', 'DSC_0049', 'DSC_0051'];