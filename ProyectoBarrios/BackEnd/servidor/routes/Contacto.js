const express = require('express');
const bodyParser = require('body-parser');
const router = express.Router();



//Formulario de contacto
router.post('/', function(req, res){
    const newUser = req.body;
    console.log(newUser);

    res.sendStatus(204);
})

module.exports = router;