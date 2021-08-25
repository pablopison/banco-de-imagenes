import React from 'react';
import { useHistory } from "react-router-dom";

function ListaBarrios(props) {
    const history = useHistory();

    const handleChange = (event) => {
      history.push(`/Barrios/${event.target.value}`);
    }
  
    return (
      <>
          <div>
            <select onChange={handleChange}>

                <option value=""></option>
                <option value="AGUADA">Aguada</option>
                <option value="AIRES PUROS">Aires Puros</option>
                <option value="ATAHUALPA">Atahualpa</option>
                <option value="BARRIO SUR">Barrio Sur</option>
                <option value="BELLA VISTA">Bella Vista</option>
                <option value="BELVEDERE">Belvedere</option>
                <option value="BRAZO ORIENTAL">Brazo Oriental</option>
                <option value="BUCEO">Buceo</option>
                <option value="CAPURRO">Capurro</option>
                <option value="CARRASCO">Carrasco</option>
                <option value="CASABÓ">Casabó</option>
                <option value="CASAVALLE">Casavalle</option>
                <option value="CENTRO">Centro</option>
                <option value="CERRITO">Cerrito</option>
                <option value="CERRO">Cerro</option>
                <option value="CIUDAD VIEJA">Ciudad Vieja</option>   
                <option value="COLON">Colon</option>
                <option value="CORDON">Cordon</option>
                <option value="GOES">Goes</option>
                <option value="JACINTO VERA">Jacinto Vera</option>
                <option value="JARDINES DEL HIPÓDROMO">Jardines del Hipódromo</option>
                <option value="La Blanqueada">La Blanqueada</option>
                <option value="La Comercial">La Comercial</option>
                <option value="La Teja">La Teja</option>
                <option value="Larrañaga">Larrañaga</option>
                <option value="#">Las Acacias</option>
                <option value="#">Lezica</option>
                <option value="#">Malvin</option>
                <option value="#">Manga</option>
                <option value="#">Maroñas</option>
                <option value="#">Mercado Modelo</option>
                <option value="#">Nuevo Paris</option>
                <option value="#">Pajas Blancas</option>
                <option value="#">Palermo</option>
                <option value="PARQUE BATLLE">Parque Batlle</option>
                <option value="PARQUE RODO">Parque Rodo</option>
                <option value="#">Paso de la Arena</option>
                <option value="#">Paso Molino</option>
                <option value="#">Peñarol</option>
                <option value="#">Piedras Blancas</option>
                <option value="POCITOS">Pocitos</option>
                <option value="PRADO">Prado</option>
                <option value="#">Punta Carretas</option>
                <option value="#">Punta de Rieles</option>
                <option value="#">Punta Gorda</option>
                <option value="#">Reducto</option>
                <option value="#">Sayago</option>
                <option value="TRES CRUCES">Tres Cruces</option>
                <option value="#">Union</option>
                <option value="#">Villa Española</option>
                <option value="#">Villa García</option>
                <option value="#">Villa Muñoz</option>
                
            </select>
            
            </div>
      </>
    );
}

export default ListaBarrios;