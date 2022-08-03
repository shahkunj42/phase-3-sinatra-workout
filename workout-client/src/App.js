import React from 'react'
import { useState, useEffect } from 'react'

function App() {
const [gymBros, setGymBros] = useState([])

useEffect((() => {
  fetch('http://localhost:9292/GymBros')
  .then(r => r.json())
  .then(data => setGymBros(data))
}),[])

console.log(gymBros)


return (
    <div>hello world</div>
  );
}

export default App;
