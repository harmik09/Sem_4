const express=require('express');

const app=express();

app.use('/middleware',(req,res,next)=>{
    const id=req.params.id;
    console.log('Middleware use method')
    next(id)
})

// app.all('/middleware/getMethod',(req,res,next)=>{
//     console.log('Middleware all method')
//     next()
// })

app.get('/middleware/getMethod/:id',(req,res)=>{
    res.send('Middleware GET Method',id)
}) 

app.listen(3000,()=>{
    console.log(`Server is running on port 3000`);
})