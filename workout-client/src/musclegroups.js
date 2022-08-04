import React from "react"
import Exercise from "./exercise"

function MuscleGroups({musclegroups}){
    let mGList = musclegroups.map(mG => (
        <div>{mG.name} 
        <Exercise exercise= {mG.exercise}/>
        </div> 
    ))

    return(
        <div>
            {mGList}
        </div>
    )
}

export default MuscleGroups