const express=require('express');

const app=express();

app.use(express.staticFile('other/hack.png',{}));

app.get('/',(req,res)=>{
    res.send('Hello World')
})

app.listen(3000,()=>{
    console.log('Server start at 3000')
})