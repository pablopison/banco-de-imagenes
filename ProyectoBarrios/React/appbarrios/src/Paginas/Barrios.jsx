import React from 'react';
import './Barrios.css';
import Footer from '../Componentes/Footer';
import ListaBarrios from '../Componentes/ListaBarrios';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  useParams
} from "react-router-dom";

export default function Barrios() {
    let { id } = useParams();
    return (
      <div className="Appbarrios">
      <header className="headerbarrios">
          <img src="../Imagenes/logoletrasblancas.png" />
          <p>{id}</p>
          
          <ListaBarrios />  
              
      </header>    
  
      
      <main>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_0931.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1679.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_4888.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_4988.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1227.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1228.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_4958.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_4977.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1662.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1689.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1696.jpg" alt="" /></div>
        <div><img src="..\Imagenes\Barrios\Prado\DSC_1723.jpg" alt="" /></div>
      </main>
      <Footer /> 
      
      </div>
    );
  }