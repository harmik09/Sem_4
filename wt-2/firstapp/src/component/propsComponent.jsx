import React from "react";

function ChildComponent({message}){
    return <h1>{message}</h1>
}

function ParentComponent(){
    return <ChildComponent message='Hello, this is demo'/>
}

export default ParentComponent