/*Deshabilitar clic derecho mouse página completa*/
$("body").on("contextmenu", function(_e){
    return false;
});


/*Cargar fotos de un barrio desde el backend*/
function cargarFotosBarrios () {

   //const fotos = [
       //'DSC_0003', 'DSC_0005', 'DSC_0020', 'DSC_0024', 
       //'DSC_9999', 'DSC_0032', 'DSC_9998', 'DSC_9983',
       //'DSC_9985', 'DSC_0011', 'DSC_0049', 'DSC_0051']; 

   fetch("http://localhost:4000/fotos", {
       method: "GET",
       headers: {
           "auth-token": localStorage.getItem('token')
       },
   }).then(function (respuesta){
       return respuesta.json();
   }).then(function (respuestaJSON){
       const fotos = respuestaJSON.fotos;

       const divContenedor = document.getElementById('fotosBarrios'); 

       for (let i=0; i<fotos.length; i++) {
           const name = fotos[i]; 
       
       const nuevoDiv = document.createElement("div");
    
       const image = document.createElement("img");
       image.setAttribute('src', `Imagenes\\Barrios\\Pocitos\\${name}.jpg`)
       nuevoDiv.appendChild(image);
    
       divContenedor.appendChild(nuevoDiv);
    
       //<div><img src="Imagenes\Barrios\Pocitos\DSC_0003.jpg" alt=""></div>
       }
   })    
}

cargarFotosBarrios();