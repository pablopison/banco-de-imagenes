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
import { useState, useEffect } from "react";
import Modal  from '../Componentes/Modal';
import {useModal} from '../hooks/useModal';

export default function Barrios() {
    const [isOpenModal, openModal, closeModal] = useModal(false);
    const [modalImgUrl, setModalImgUrl] = useState('');
    const [selectedPhotoName, setSelectdPhotoName] = useState('')
    const [photos, setPhotos] = useState([])
    let { id } = useParams();
  
    useEffect(() => {
      fetch(`http://localhost:4000/fotos/${id}`, {
        method: "GET",
      })
      .then(function (respuesta){
        return respuesta.json();
      }).then(function (respuestaJSON) {
        if (respuestaJSON.fotos && respuestaJSON.fotos.length > 0) {
          const fotos = respuestaJSON.fotos;
          setPhotos(fotos);
        } else {
          alert(respuestaJSON.message);
        }
      });
  
      }, [id]);

      const handleOpenModal = (photoUrl, photoName) => {
        setModalImgUrl(photoUrl);
        setSelectdPhotoName(photoName);
        openModal();
      }
    
    return (
      <div className="Appbarrios">
      <header className="headerbarrios">
          <img src="../Imagenes/logoletrasblancas.png" />
          <p>{id}</p>
          
          <ListaBarrios />  
              
      </header>    
      
      <main>
        
      {photos.map((photo) => {
          const urlPhoto = `\\Imagenes\\Barrios\\${id}\\${photo}.jpg`;
          
          return <div><img src={urlPhoto} onClick={() => handleOpenModal(urlPhoto, photo)} alt=""></img></div>
        })}

      <Modal isOpen={isOpenModal} closeModal={closeModal}>
      <section className="contenedor">
      <img src={modalImgUrl} />  
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
   <td><button><a id="linkDeDescarga" href={`http://localhost:4000/descarga/${selectedPhotoName}.jpg`}>COMPRAR</a></button></td>
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
<span className="botonpaypal"><img src="..\Imagenes\Botones\boton-paypal.png" /></span>
      </Modal> 
      </main>
      <Footer />   
      
      </div>
    );
  }