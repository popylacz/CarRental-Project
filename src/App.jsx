import React, { useEffect, useState } from "react"

function App() {
  const [data, setData] = useState([])
  useEffect(() => {
    fetch('http://localhost:8081/flota')
    .then(res => res.json())
    .then(data => setData(data))
    .catch(err => console.log(err));
  }, [])
  return(
    <div style={{padding: "50px"}}>
        <table>
          <thead>
            <th>ID</th>
            <th>marka</th>
            <th>model</th>
            <th>nadwozie</th>
            <th>skrzynia</th>
            <th>pojemnosc_silnika</th>
            <th>paliwo</th>
            <th>rocznik</th>
            <th>kolor</th>
            <th>naped</th>
            <th>moc</th>
            <th>cena</th>
          </thead>
          <tbody>
            {data.map((d, i) => (
              <tr key={i}>
                <td>{d.id}</td>
                <td>{d.marka}</td>
                <td>{d.model}</td>
                <td>{d.nadwozie}</td>
                <td>{d.skrzynia}</td>
                <td>{d.pojemnosc_silnika}</td>
                <td>{d.paliwo}</td>
                <td>{d.rocznik}</td>
                <td>{d.kolor}</td>
                <td>{d.naped}</td>
                <td>{d.moc}</td>
                <td>{d.cena}</td>
              </tr>
            ))}
          </tbody>
        </table>
    </div>
  )
}

export default App