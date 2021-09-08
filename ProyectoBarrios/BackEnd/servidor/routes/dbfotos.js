const express = require('express');
const {query} = require('../db/index');
require ('dotenv').config();

const router = express.Router();

//BASE DE DATOS
//Mostrar los datos de la tabla fotos
router.get('/', async(request, response) => {
    
    try{ 
     const fotosDB = await query('SELECT * FROM fotos');
     console.log(fotosDB)
     
 
     return response.json({
         success: true,
         fotos: fotosDB.rows
     });
 
    }catch (ex){
     return response.send({
         success: false,
         error: 'An exception was thrown: ' + JSON.stringify(ex)
     });
     }
 });
 
 //BASE DE DATOS
 //Agregar una foto nueva   (datos dinamicos)
 router.post('/agregar', async(request, response) => {
  console.log(JSON.stringify(request.body));
   try{
    if(!request.body.nombre){
        return response.send({
            success: false,
            error: 'No name provided'
        });
    }  
    if(!request.body.barrio){
        return response.send({
            success: false,
            error: 'No neightbourhood provided'
        });
    }  
    if(!request.body.tamaño){
        return response.send({
            success: false,
            error: 'No size provided'
        });
    }        
    if(!request.body.ruta){
        return response.send({
            success: false,
            error: 'No route provided'
        });
    }       
     const nombre = request.body.nombre;
     const barrio = request.body.barrio;
     const tamaño = request.body.tamaño;
     const ruta = request.body.ruta;
 
     await query(`INSERT INTO fotos(nombre, barrio, tamaño, ruta)
     VALUES ($1, $2, $3, $4)`,[nombre, barrio, tamaño, ruta]);
 
     const fotosDB = await query('SELECT * FROM fotos');
     if (fotosDB.rowCount >0) {
         return response.send({
             success: true,
             fotos: fotosDB.rows
         });
     }else {
         return response.send({
             success: false,
             fotos: [],
             message: 'Strange error inserting photo'
     });
   }
  }  catch (ex){
         return response.send({
             success: false,
             error: 'An exception was thrown: ' + JSON.stringify(ex)
     });
     }
 });
 
 //BASE DE DATOS
 //Agregar una foto nueva  (datos fijos)
 router.post('/ping2', async(request, response) => {
     
     const nombre = 'Tres_Cruces_18';
     const barrio = 'Tres Cruces';
     const tamaño = 'Grande';
     const ruta = 'C:\\RespaldoLaptop\\Diseño\\Senpai2021\\Proyecto\\GitHub\\banco-de-imagenes\\ProyectoBarrios\\BackEnd\\servidor\\imagenes\\Tres_Cruces_18.jpg';
 
     await query(`INSERT INTO fotos(nombre, barrio, tamaño, ruta)
     VALUES ($1, $2, $3, $4)`,[nombre, barrio, tamaño, ruta]);
 
     const fotosDB = await query('SELECT * FROM fotos');
 
 
     return response.json({
         fotos: fotosDB.rows
     });
 });


 
 //BASE DE DATOS
 //Eliminar una foto
 router.delete('/eliminar/:fotoId', async(request, response) => {
 
   try {
         
     const fotoId = parseInt(request.params.fotoId);
     if (isNaN(fotoId)){
       return response.send({
           success: false,
           error: 'No valid Id provided'
       });
     }
 
     const eliminarFoto = await query('DELETE FROM fotos WHERE id = $1', [fotoId]);
 
     if (eliminarFoto.rowCount ===1) {
       return response.send({
           success: true,
           message: `Deleted photo ${fotoId} correctly`
       });  
     }
 
     return response.send({
         success: false,
         message: `Not deleted ${fotoId}`
     });
 
 }  catch (ex){
     return response.send({
         success: false,
         error: 'An exception was thrown: ' + JSON.stringify(ex)
 });
 }
 });

 //Eliminar una foto
 router.delete('/eliminar', async(request, response) => {
     
  const res = await query('DELETE FROM fotos WHERE id = 165')

  return response.json({
      fotos: res.rows
  });
});
 
 
 //BASE DE DATOS
 //Actualizar los datos de una foto (datos fijos)
 router.put('/actualizar', async(request, response) => {
 
     const barrio = 'Tres Cruces';
     
     const res = await query(`UPDATE fotos SET barrio = $1 WHERE id = 180`, [barrio]);
 
     return response.json({
         fotos: res.rows
     });
 });

 //Actualizar los datos de una foto (datos dinámicos)
 router.put('/actualizar/:fotoId', async(request, response) => {

    try {
        if (!request.params.fotoId) {
          return response.send({ error: 'No id provided' })
        }

    const barrio = request.body.barrio;
    const fotoId = request.params.fotoId;
    
    let fotoActualizada = await query('SELECT * FROM fotos WHERE id = $1 AND borrado = false', [fotoId]);
    if (fotoActualizada.rowCount === 0) {
      return response.send({ 
        message: 'No photo found with that id',
      });
    }
    
    await query('UPDATE fotos SET barrio = $1 WHERE id = $2',[barrio, fotoId]);

    fotoActualizada = await query('SELECT * FROM fotos WHERE id = $1 AND borrado = false', [fotoId]);
    if (fotoActualizada.rowCount === 1) {
      return response.send({ 
        message: 'Photo updated correctly',
        foto: fotoActualizada.rows[0]
      });
    }

    return response.send({
        message: 'Photo not updated after update'
      });
    } catch(ex) {
      return response.send({ error: ex })
    }
  });


 
 //BASE DE DATOS
 //Descarga de foto
 router.post('/descargafoto/:fotoId', async(request, response) => {
 
   try{

     const fechaActual = new Date();
     const fotoId = parseInt(request.params.fotoId);
     if (isNaN(fotoId)){
       return response.send({
           success: false,
           error: 'No valid Id provided'
       });
     }
     
     await query('INSERT INTO descargas (fecha, foto_id) VALUES ($1, $2)', [fechaActual, fotoId]);

     const descargasDB = await query('SELECT d.fecha, f.id, f.nombre, f.barrio FROM descargas d INNER JOIN  fotos f ON f.id = d.foto_id;');
 
     return response.json({
         descargas: descargasDB.rows
     });


 } catch (ex){
     return response.send({
         success: false,
         error: 'An exception was thrown: ' + JSON.stringify(ex)
 });
 }
 });
 
 module.exports = {
     router: router
 }