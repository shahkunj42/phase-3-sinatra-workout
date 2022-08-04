function ExerciseList({exercise}){

    return(
        <div>
            <h4>{exercise.exercise}</h4>
            <p>{exercise.description}</p>
            <img className="pic" src={exercise.img}/>
        </div>
    )

}

export default ExerciseList