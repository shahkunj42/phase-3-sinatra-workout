import React from 'react'
import { useState, useEffect } from 'react'
import Exercise from './exercise'
import MuscleGroups from './musclegroups';

function App() {
// const [count, setCount] = useState(1);
const [gymBros, setGymBros] = useState([])
// const [tester, setTester] = useState([])


// const increment = () => {
//   if (count<6) {setCount((prevCount) => prevCount + 1)}
//   else {setCount(1)}
// };

useEffect(() => {
  fetch(`http://localhost:9292/GymBros/1`)
  .then(r => r.json())
  .then(data => setGymBros(data))
},[])

// useEffect(() => {
//   let renderMuscles = <MuscleGroups musclegroups = {gymBros.musclegroups}/>

// //   return renderMuscles
// // }, [gymBros])
// useEffect(()=> {setTimeout(() => setTester(gymBros.musclegroups[0].exercise.map( things => things.exercise)
//   ), 1000);},[gymBros])

  // useEffect(()=> {setTimeout(() => setTester(gymBros.musclegroups), 1000)},[gymBros])


// setTimeout(() => {return (gymBros.musclegroups[0].exercise.map( things => things.exercise)
// )}, 5000);
// console.log(gymBros)
// console.log(tester)

// const renderlist = gymBros.musclegroups[0].exercise.map(name => <Exercise  name={name}/>)
// const putter = tester.map(things => things)

return (
  <div>
    {/* <button onClick={increment}>Next Gym Rat{count}</button> */}
    <div>{gymBros.name}</div>
    {/* <div>{putter}</div> */}
    {/* <div>{gymBros.musclegroups[0].musclegroup}</div> */}
    {/* <div>{renderlist}</div> */}
    <MuscleGroups musclegroups={gymBros.musclegroups} />
    
  </div>
  );
}

export default App;
