import React from 'react';
import './Popup.css';

function Popup() {
    return (
      <>
        <div className="pop-up"><div className="pop-up-contenido">
        <section className="contenedor">
         <img src="..\Imagenes\Barrios\Pocitos\Marca de agua\DSC_0003.jpg" />
         <div className="centrado"><img src="../Imagenes/logoletrasblancas.png" /></div>
        </section>
     <table className="default">
 
         <tr>
           <th>Tamaño</th>
           <th>Precio</th>
           <th></th>
        </tr>
       
         <tr>
           <td>800 x 600</td>
           <td>$300</td>
           <td><button><a id="linkDeDescarga" href='http://localhost:4000/descarga/Pocitos8'>COMPRAR</a></button></td>
         </tr>
       
         <tr>
           <td>1024 x 768</td>
           <td>$450</td>
           <td><button>COMPRAR</button></td>
         </tr>
       
         <tr>
           <td>1920 x 1080</td>
           <td>$600</td>
           <td><button>COMPRAR</button></td>
         </tr>
       
       </table>
       <span><img src="..\Imagenes\Botones\boton-paypal.png" /></span>
     </div></div>
 
     {/*<script>
         
         const popup = document.querySelector(".pop-up")
         popup.addEventListener("click", function(){
             if(event.target === popup) {
             popup.style.display="none"
            }
         })
         const contenidodelmain = document.querySelector("main")
         contenidodelmain.addEventListener("click", function(evento){
             popup.style.display="grid";
             const imgParaMostrar = event.target.getAttribute('src');
             const imgDelPopup = document.querySelector(".pop-up img")
             imgDelPopup.setAttribute('src', imgParaMostrar)
             const imageName = imgParaMostrar.slice(imgParaMostrar.lastIndexOf('\\') + 1);

             document.getElementById('linkDeDescarga').href = `http://localhost:4000/descarga/${imageName}`
             
         })
         
        </script>   */}
      </>
    );
}

export default Popup;