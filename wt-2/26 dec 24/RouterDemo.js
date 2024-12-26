const express=require('express');

const app=express();

const route=require('./controller/router')

app.use('/student',route)

app.listen(3000,()=>{
    console.log('server is running on port 3000')
})