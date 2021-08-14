import React from 'react';
import './Barrios.css';
import Footer from '../Componentes/Footer';
import ListaBarrios from '../Componentes/ListaBarrios';
import Popup from '../Componentes/Popup';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  useParams
} from "react-router-dom";
import { useState, useEffect } from "react";

export default function Barrios() {
    const [photos, setPhotos] = useState([])
    let { id } = useParams();
  
  useEffect(() => {
    fetch(`http://localhost:4000/fotos/${id}`, {
      method: "GET",
    })
    .then(function (respuesta){
      return respuesta.json();
    }).then(function (respuestaJSON){
      const fotos = respuestaJSON.fotos;
      setPhotos(fotos);
    });

    }, [id]);
    
    return (
      <div className="Appbarrios">
      <header className="headerbarrios">
          <img src="../Imagenes/logoletrasblancas.png" />
          <p>{id}</p>
          
          <ListaBarrios />  
              
      </header>    
  
      
      <main>
        {photos.map((photo) => {
          return <div><img src={photo.url} alt=""></img></div>
        })}
        
      </main>
      <Footer /> 
      <Popup />
      
      </div>
    );
  }