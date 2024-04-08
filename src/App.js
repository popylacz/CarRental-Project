import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <div className="contactHeader">
        <p className='phoneNum'>
          +48 333 444 555
        </p>
      </div>
      <div className="menuBar">     
        <p className='logo'>HUSTLECARS</p>
        <a href="fleet.js" className='link'>Nasza Flota</a>
        <a href="about.js" className='link'>O nas</a>
        <button className='bookBtn' value="Book Now">
          Rezerwuj Teraz
        </button>
      </div>
      <div className="welcomeBar"> 
        <h1 className='title1'>Wypożyczalnia Aut Premium w Białymstoku</h1>
        <button className='bookBtn2' value="Book Now">
          Rezerwuj Teraz
        </button>
      </div>
      <div className="contactBar"> 
        <h3 className='infoBig'>Telefon</h3>
        <h3 className='infoBig'>Adres</h3>
        <h3 className='infoBig'>Godziny pracy</h3>
        <br /><br />
        <h5 className='infoleft'>
          +48 333 444 555
        </h5>
        <h5 className='infomid'>
          Jurowiecka 1, 15-001 Białystok
        </h5>
        <h5 className='inforight'>
          Poniedziałek - Niedziela : 8 AM - 8 PM
        </h5>
        <br /><br /><br />
        <p className='info'>
          HUSTLECARS to wypożyczalnia aut nowej generacji, która sprawia,
          że jazda po Białymstoku jest równie wygodna co luksusowa. Wybierz
          auto spośród naszej ekskluzywnej floty, dostarczymy
          ci je pod drzwi i uczyń wybrany pojazd swoim własnym na tak długo, 
          jak będzie Ci potrzebny.
        </p>
      </div>
      <div className="fleetBar">    </div>
      <div className="faqBar">  </div>
      <div className="footer">  </div>
    </div>
  );
}

export default App;
