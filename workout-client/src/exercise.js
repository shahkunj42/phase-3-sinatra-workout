import React from "react";
import { useState } from "react";
import ExerciseList from "./exerciselist";
function Exercise({name,handleDeleteItem}){
  const [checked, setChecked] = useState(name.completed_workout)
  function doClick() {
    fetch(`http://localhost:9292/Exercise/${name.id}`, {
      method: "PATCH",
      headers: {'content-type': 'application/json'},
      body: JSON.stringify({completed_workout: !checked})
    })
      .then((r) => r.json())
      .then(() => setChecked(!checked));
  }
  // let exerciselist = exercise.map(exercise => <ExerciseList key={exercise.name} exercise={exercise}/>)
  function handleDeleteClick() {
    fetch(`http://localhost:9292/Exercise/${name.id}`, {
      method: "DELETE",
    })
      .then((r) => r.json())
      .then(() => handleDeleteItem(name));
  }
return(
<div>
  {/* {exerciselist} */}
    <div className="card">
      <div className="polaroid">
        <img className="pic"src={name.img}/>
          <div className="container">
            <p>{name.exercise}</p>
          </div>
      </div>
      <div className="description">
        <div>{name.description}</div>
        <div>{name.weight}</div>
      </div>
    </div>
    <div className="buttons">
      <p>
      <span>
        <button className={checked?"green":"red"} onClick={doClick}>{checked?"Workout Completed":"Get to Work"}</button>
      </span>
      </p>
      <p>
      <span>
      <button onClick={handleDeleteClick}>Delete</button>
      </span>
      </p>
    </div>
</div>
)}
export default Exercise