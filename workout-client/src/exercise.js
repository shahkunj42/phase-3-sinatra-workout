import React from "react";

function Exercise({name}){
return(
<div>
<div>{name.exercise}</div>
<div>{name.description}</div>
<img className="pic"
          src={name.img}
                          
        />
</div>
)}

export default Exercise