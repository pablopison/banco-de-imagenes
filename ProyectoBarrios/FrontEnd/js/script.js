/*Deshabilitar clic derecho mouse página completa*/
$("body").on("contextmenu", function(_e){
    return false;
});


/*Cargar fotos de un barrio desde el backend*/
function cargarFotosBarrios () {

const path = window.location.pathname;
const page = path.split("/").pop();
const barrio = page.split(".")[0];

fetch(`http://localhost:4000/fotos/${barrio}`, {
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
       image.setAttribute('src', `Imagenes\\Barrios\\${barrio}\\${name}.jpg`) // Ruta para imagenes desde servidor `..\\Backend\\servidor\\public\\Imagenes\\Barrios\\${barrio}\\${name}.jpg`
       nuevoDiv.appendChild(image);
    
       divContenedor.appendChild(nuevoDiv);
    
       //<div><img src="Imagenes\Barrios\Pocitos\DSC_0003.jpg" alt=""></div>
       }
   })    
}

cargarFotosBarrios();



