
import './App.css';
import Footer from './Componentes/Footer';
import ListaBarrios from './Componentes/ListaBarrios';
import Navegacion from './Componentes/Navegacion';

function App() {
  return (
    <div className="App">
    <header>
        <img src="./Imagenes/logoletrasblancas.png" />
        <p>BARRIOS</p>
        
        <ListaBarrios />  
            
    </header>    

    <Navegacion /> 

    
    <main>
        <div><span>Pocitos</span><a href="Pocitos.html"><img src="Imagenes\Imagenes chicas\Pocitos.jpg" /></a></div>
        <div><span>Prado</span><a href="Prado.html"><img src="Imagenes\Imagenes chicas\Prado.jpg" /></a></div>
        <div><span>Parque Rodo</span><a href="Parque Rodo.html"><img src="Imagenes\Imagenes chicas\Parque Rodo.jpg" /></a></div>
        <div><span>Cordon</span><a href="#"><img src="Imagenes\Imagenes chicas\Cordon.jpg" /></a></div>
        <div><span>Centro</span><a href="Centro.html"><img src="Imagenes\Imagenes chicas\Centro.jpg" /></a></div>
        <div><span>Tres Cruces</span><a href="#"><img src="Imagenes\Imagenes chicas\Tres Cruces.jpg" /></a></div>
        <div><span>Aguada</span><a href="Aguada.html"><img src="Imagenes\Imagenes chicas\Aguada.jpg" /></a></div>
        <div><span>Capurro</span><a href="Capurro.html"><img src="Imagenes\Imagenes chicas\Capurro.jpg" /></a></div>
        <div><span>Barrio Sur</span><a href="Barrio Sur.html"><img src="Imagenes\Imagenes chicas\Barrio Sur.jpg" /></a></div>
        <div><span>Parque Batlle</span><a href="Parque Batlle.html"><img src="Imagenes\Imagenes chicas\Parque Batlle.jpg" /></a></div>
        <div><span>Cerro</span><a href="#"><img src="Imagenes\Imagenes chicas\Cerro.jpg" /></a></div>
        <div><span>Mercado Modelo</span><a href="#"><img src="Imagenes\Imagenes chicas\Mercado Modelo.jpg" /></a></div>
    </main>
    <Footer /> 
    
    </div>
  );
}

export default App;
