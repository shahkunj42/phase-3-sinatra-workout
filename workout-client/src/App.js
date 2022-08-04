import React from 'react'
import { useState, useEffect } from 'react'
import Exercise from './exercise'
import MuscleGroups from './musclegroups';

function App() {
const [count, setCount] = useState(1);
const [gymBros, setGymBros] = useState([])

const increment = () => {
  setCount((prevCount) => prevCount + 1);
};

useEffect(() => {
  fetch(`http://localhost:9292/GymBros/${count}`)
  .then(r => r.json())
  .then(data => setGymBros(data))
},[])

console.log(gymBros)


// const renderlist = gymBros.musclegroups[0].exercise.map(name => <Exercise  name={name}/>)

return (
  <div>
    <button onClick={increment}>Next Gym Rat{count}</button>
    <div>{gymBros.name}</div>
    {/* <div>{gymBros.musclegroups[0].musclegroup}</div>
    <div>{renderlist}</div> */}
    <MuscleGroups musclegroups = {gymBros.musclegroups}/>
  </div>
  );
}

export default App;
