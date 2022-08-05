import React from 'react'
import { useState, useEffect } from 'react'
import Exercise from './exercise'
import MuscleGroups from './musclegroups';
function App() {
const [count, setCount] = useState(1);
const [gymBros, setGymBros] = useState([])
const [tester, setTester] = useState([])
const [tester2, setTester2] = useState([])
const[formData, setFormData] = useState({
  exercise: '',
  description: '',
  img: '',
  weight: 0,
  musclegroup_id: count,
  completed_workout: false
  })
const increment = () => {
  if (count<6) {setCount((prevCount) => prevCount + 1)}
  else {setCount(1)}
};
useEffect(() => {
  fetch(`http://localhost:9292/GymBros/${count}`)
  .then(r => r.json())
  .then(data => setGymBros(data))
},[count])
useEffect(()=> {setTimeout(() => setTester({...gymBros}.musclegroups[0].exercise.map( things => things)
  ), 10);},[gymBros])
  useEffect(()=> {setTimeout(() => setTester2({...gymBros}.musclegroups[0].musclegroup), 10);},[gymBros])
console.log(tester2)
function handleDeleteItem(deletedItem) {
  const updatedItems = tester.filter((item) => item.id !== deletedItem.id);
  setTester(updatedItems);
}
const renderlist = tester.map(name => <Exercise  name={name} handleDeleteItem={handleDeleteItem}/>)
const handleChange = (e) => {
  const { name, value } = e.target;
  setFormData((formData) => ({ ...formData, [name]: value }));
};
const handleSubmit = (e) => {
  e.preventDefault();
  const configObj = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json",
    },
    body: JSON.stringify(formData),
  };
  fetch(`http://localhost:9292/Exercise`, configObj)
    .then((resp) => resp.json())
    .then(data => setTester(tester => [...tester, data]));
};
const putter = tester.map(things => things)
return (
  <div>
    <div className='head'>
      <div>
        <h2 className='bro'>{gymBros.name}</h2>
        <img src={gymBros.profile} className="profile"/>
        <div>
        <button onClick={increment}>Next Gym Rat {count}</button>
        </div>
      </div>
      <form className="form" autoComplete="off" onSubmit={handleSubmit} >
        <h2>Add New Workout!</h2>
        <label htmlFor="exercise">Exercise</label>
        <input
          type="text"
          name="exercise"
          onChange={handleChange}
          value={formData.exercise}
        />
         <label htmlFor="description">Description</label>
        <input
          type="text"
          name="description"
          onChange={handleChange}
          value={formData.description}
        />
         <label htmlFor="img">Image</label>
        <input
          type="img"
          name="img"
          onChange={handleChange}
          value={formData.img}
        />
        <button type="submit" >Add Exercise</button>
      </form>
    </div>
    <h1>{tester2}</h1>
    <div>{renderlist}</div>
  </div>
  );
}
export default App;