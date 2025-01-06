const mongoose=require('mongoose');
const Product=require('./model/Produt');
const express=require('express');
const bodyParser=require('body-parser');

const atlasUrl = "mongodb+srv://student:student123@student.2n4nv.mongodb.net/test";

mongoose.connect(atlasUrl).then(()=>{
    console.log("connected to DB server");

    const app=express();

    app.use(bodyParser.json())

    // get all
    app.get("/product",async (req,res)=>{
        const data=await Product.find();
        res.send(data);
    })

    //getbyid
    app.get("/product/:id",async (req,res)=>{
        const data=await Product.findOne({_id:req.params.id})
        res.send(data);
    })

    // delete
     app.delete("/product/:id",async (req,res)=>{
            const data=await Product.deleteOne({_id:req.params.id});
            res.send(data)
        });

    // insert
   app.post("/product",async (req,res)=>{
        const obj=new Product({
            ProductID: req.body.ProductID,
            ProductName: req.body.ProductName,
            ProductPrice: req.body.ProductPrice
        });

        const data=await obj.save();
        res.send(data);
    });

    // update
    app.patch("/product/:id",async (req,res)=>{
        let pro=await Product.findOne({_id:req.params.id});

        ProductID= req.params.ProductID
        ProductName= req.params.ProductName
        ProductPrice= req.params.ProductPrice
        
        const data=await pro.save();
        res.send(data)
    })

    

    app.listen(3000,()=>{
        console.log("server start at 3000 port")
    })
})