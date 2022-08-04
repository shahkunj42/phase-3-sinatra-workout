import React from "react";
import ExerciseList from "./exerciselist";

function Exercise({exercise}){
  let exerciselist = exercise.map(exercise => <ExerciseList key={exercise.name} exercise={exercise}/>)

return(
<div>
  {exerciselist}
{/* <div>{name.exercise}</div>
<div>{name.description}</div>
<img className="pic"
          src={name.img}
                          
        /> */}
</div>
)}

export default Exercise