const mongoose=require('mongoose')
const Book=require('./model/book')
const express=require('express')
const bodyParser=require('body-parser')

const atlasUrl = "mongodb+srv://student:student123@student.2n4nv.mongodb.net/test";

mongoose.connect(atlasUrl).then(()=>{
    console.log('connected to DB Server');
    
    const app=express()

    app.use(bodyParser.json())

    app.get('/book',async (req,res)=>{
        const data=await Book.find()
        res.send(data)
    })

    app.get('/book/:id',async (req,res)=>{
        const data=await Book.findOne(_)
    })
})