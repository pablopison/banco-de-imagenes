import React from 'react';
import './Contacto.css';
import Footer from '../Componentes/Footer';

export default function Contacto() {
    return (
      <div className="App3">
      <header>
          <div className="contenedor">
          <img id="banner" src="Imagenes\Banners\BannerFotografo.png" alt="" />
          <div className="arriba"><img src="./Imagenes/logoletrasblancas.png" /></div>
          </div>
              
      </header>    
  
      <main className="Fondo">
      <center>
      <h1>CONTACTO</h1>
      <form className="formulario" method="post" action="http://localhost:4000/contacto">
        <input type="text" name="nombre" placeholder="NOMBRE" />
        <input type="email" name="email" placeholder="CORREO" />
        <br/>
        <textarea type="text" name="mensaje" placeholder="MENSAJE"></textarea>
        <br/>
        <input type="submit" onclick="hizoClick()" value="ENVIAR"/>
      </form>
      </center>
      </main>
  
      
      
      <Footer /> 
      
      </div>
    );
  }