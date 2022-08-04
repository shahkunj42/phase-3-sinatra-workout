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
<div>{name.exercise}</div>
<div>{name.description}</div>
<div>{name.weight}</div>
<button onClick={doClick}>{checked?"Workout Completed":"Get to Work"}</button>
<img className="pic"
          src={name.img}
        />
        <button onClick={handleDeleteClick}>Delete</button>
</div>
)}
export default Exercise