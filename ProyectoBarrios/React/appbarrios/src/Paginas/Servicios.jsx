import React from 'react';
import './Servicios.css';
import Footer from '../Componentes/Footer';


export default function Servicios() {
    return (
      <div className="App2">
      <header className="headerservicios">
          <img src="./Imagenes/logoletrasblancas.png" />
          <p>SERVICIOS</p>
          
           
              
      </header>    
  
      
      <main>
          <div><span>Eventos</span><a href="#"><img src="Imagenes\Servicios\eventos.jpg" /></a></div>
          <div><span>Arquitectura</span><a href="#"><img src="Imagenes\Servicios\arquitectura.jpg" /></a></div>
          <div><span>Sesiones</span><a href="#"><img src="Imagenes\Servicios\sesiones.jpg" /></a></div>
          <div><span>Paisaje</span><a href="#"><img src="Imagenes\Servicios\paisaje.jpg" /></a></div>
          <div><span>Naturaleza</span><a href="#"><img src="Imagenes\Servicios\naturaleza.jpg" /></a></div>
          <div><span>Producto</span><a href="#"><img src="Imagenes\Servicios\producto.jpg" /></a></div>
          <div><span>Macro</span><a href="#"><img src="Imagenes\Servicios\macro.jpg" /></a></div>
          <div><span>Arte callejero</span><a href="#"><img src="Imagenes\Servicios\arte.jpg" /></a></div>
         
      </main>
      <Footer /> 
      
      </div>
    );
  }