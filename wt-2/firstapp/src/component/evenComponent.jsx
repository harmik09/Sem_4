function EventHandlingExample(){
    const handleClick=()=>{
    //    const container=document.getElementById('content')
       
    //     const data=document.getElementById('data')
    //     data.innerHTML='Hello World'
   
    const data =prompt('Enter Data')
    const downside=document.getElementById('downside')
    downside.innerHTML=data

    }

    return(
        <div id="content">
            <button onClick={handleClick}>Click Me!</button>
            <h1 id="downside"></h1>
        </div>
    )
}

export default EventHandlingExample