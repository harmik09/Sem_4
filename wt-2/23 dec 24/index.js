const express = require('express');

const app = express();

// all method use
app.all("/student",(req,res,next)=>{
   console.log("All Method Middle ware"); 
   next();
});

// use method use
app.use("/student",(req,res,next)=>{
    console.log("Use Method Middle ware"); 
    next();
 });

// get method use
app.get("/student/abc",(req,res)=>{
    res.send("GET Method call");
})

// server listen
app.listen(3000,()=>{
    console.log("Server start at 3000");
})