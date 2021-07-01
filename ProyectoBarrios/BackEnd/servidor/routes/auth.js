const express = require('express');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

const { TOKEN_SECRET, verifyToken } = require('../middlewares/jwt-validate');

const router = express.Router();


router.get('/', (req, res)=> {
    res.json({success: true});
  })

router.post('/register', async (req, res) => {
  
  if(req.body.mail && req.body.name && req.body.password) {
    
    // Validar formato de mail
    if(/^\S+@\S+\.\S+$/.test(req.body.mail) === false) {
      return res.status(400).json({success: false, message: 'Formato de mail incorrecto'});
    }

    // Fijarme que no exista
    const existeUser = usuarios.find((u) => {
      return u.mail === req.body.mail;
    });

    if (existeUser) {
      res.status(400).json({success: false, message: 'Mail repetido'});
      return
    }
    
    // Esta OK, vamos a agregarlo
    const salt = await bcrypt.genSalt(10);
    console.log('salt', salt);
    const password = await bcrypt.hash (req.body.password, salt);

    const newUser = {
        name: req.body.name,
        mail: req.body.mail,
        password: password
    }
    usuarios.push(newUser);

    return res.json({ success: true, newUser});
  }
  else {
    return res.status(400).json({success: false, message: 'Faltan datos (requeridos: mail, name, password)'});
  }
});

router.post('/login', async (req, res) => {

  // Buscamos el usuario con el mismo mail
  const user = usuarios.find((u) => u.mail === req.body.mail);
  if (!user) {
    return res.status(400).json({ error: 'Usuario no encontrado'});
  }

  const validPassword = await bcrypt.compare(req.body.password, user.password);
  if (!validPassword){
    return res.status(400).json({ error: 'Contraseña no válida'});
  }

  // Crear el token
  const token = jwt.sign({
    name: user.name,
    mail: user.mail
  }, TOKEN_SECRET);

  res.json({ error: null, data: 'Login exitoso', token});
});

router.get('/usuarios', verifyToken, (req, res) => {
  //Podemos acceder a los datos del usuario que hizo la request
  //Segun el JWT que envio en los headers de la request
  console.log(req.user);

  res.json({ error: null, usuarios});
});

module.exports = router;

// Usuario: pablo.pison@gmail.com
// Clave: 123456

const usuarios = [
  {
    name: 'Pablo',
    mail: 'pablo.pison@gmail.com',
    password: '$2b$10$F75ZCvls66p6YvpFjgnoyOHN82DLa2vZg6MJn7PhfCHya6pwH3BMm'
  }
];

