
import React from "react";
import './App.css';
import Footer from './Componentes/Footer';
import ListaBarrios from './Componentes/ListaBarrios';
import Navegacion from './Componentes/Navegacion';

import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";

import Contacto from './Paginas/Contacto';
import Servicios from './Paginas/Servicios';
import Barrios from './Paginas/Barrios';


export default function App() {
  return (
    <Router>
      <div>
        <Navegacion />

        <Switch>
          <Route path="/servicios">
            <Servicios />
          </Route>
          <Route path="/contacto">
            <Contacto />
          </Route>
          <Route path="/Barrios/:id" children={<Barrios />}>
            <Barrios />
          </Route>
          <Route path="/">
            <Inicio />
          </Route>
        </Switch>
      </div>
    </Router>
  );
}

function Inicio() {
  return (
    <div className="App">
    <header className="headerinicio">
        <img src="./Imagenes/logoletrasblancas.png" />
        <p>BARRIOS</p>
        
        <ListaBarrios />  
            
    </header>    

    
    <main>
        <div><span>Pocitos</span><Link to="/Barrios/POCITOS"><img src="Imagenes\Imagenes chicas\Pocitos.jpg" /></Link></div>
        <div><span>Prado</span><Link to="/Barrios/PRADO"><img src="Imagenes\Imagenes chicas\Prado.jpg" /></Link></div>
        <div><span>Parque Rodo</span><Link to="/Barrios/PARQUE RODO"><img src="Imagenes\Imagenes chicas\Parque Rodo.jpg" /></Link></div>
        <div><span>Cordon</span><Link to="/Barrios/CORDON"><img src="Imagenes\Imagenes chicas\Cordon.jpg" /></Link></div>
        <div><span>Centro</span><Link to="/Barrios/CENTRO"><img src="Imagenes\Imagenes chicas\Centro.jpg" /></Link></div>
        <div><span>Tres Cruces</span><Link to="/Barrios/TRES CRUCES"><img src="Imagenes\Imagenes chicas\Tres Cruces.jpg" /></Link></div>
        <div><span>Aguada</span><Link to="/Barrios/AGUADA"><img src="Imagenes\Imagenes chicas\Aguada.jpg" /></Link></div>
        <div><span>Capurro</span><Link to="/Barrios/CAPURRO"><img src="Imagenes\Imagenes chicas\Capurro.jpg" /></Link></div>
        <div><span>Barrio Sur</span><Link to="/Barrios/BARRIO SUR"><img src="Imagenes\Imagenes chicas\Barrio Sur.jpg" /></Link></div>
        <div><span>Parque Batlle</span><Link to="/Barrios/PARQUE BATLLE"><img src="Imagenes\Imagenes chicas\Parque Batlle.jpg" /></Link></div>
        <div><span>Cerro</span><Link to="/Barrios/CERRO"><img src="Imagenes\Imagenes chicas\Cerro.jpg" /></Link></div>
        <div><span>Mercado Modelo</span><Link to="/Barrios/MERCADO MODELO"><img src="Imagenes\Imagenes chicas\Mercado Modelo.jpg" /></Link></div>
    </main>
    <Footer /> 
    
    </div>
  );
}

{/*Deshabilitar clic derecho del mouse*/}
function disableIE() {
  if (document.all) {
      return false;
  }
}
function disableNS(e) {
  if (document.layers || (document.getElementById && !document.all)) {
      if (e.which==2 || e.which==3) {
          return false;
      }
  }
}
if (document.layers) {
  document.captureEvents(Event.MOUSEDOWN);
  document.onmousedown = disableNS;
} 
else {
  document.onmouseup = disableNS;
  document.oncontextmenu = disableIE;
}
document.oncontextmenu=new Function("return false");


