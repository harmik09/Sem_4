const mongoose=require('mongoose');
const Faculty=require('./model/Faculty');
const express=require('express');
const bodyParser=require('body-parser');

const atlasUrl = "mongodb+srv://student:student123@student.2n4nv.mongodb.net/test";

mongoose.connect(atlasUrl).then(()=>{
    console.log('connected to DB Server');

    const app=express();

    app.use(bodyParser.json());

    // get all
    app.get("/faculty",async (req,res)=>{
        const data=await Faculty.find();
        res.send(data);
    });

    // getById
    app.get("/faculty/:id",async (req,res)=>{
        const data=await Faculty.findOne({_id:req.params.id});
        res.send(data)
    });

    // delete
    app.delete("/faculty/:id",async (req,res)=>{
        const data=await Faculty.deleteOne({_id:req.params.id});
        res.send(data)
    });

    // insert
    app.post("/faculty",async (req,res)=>{
        const obj=new Faculty({
            FacultyName: req.body.FacultyName,
            FacultyMobile: req.body.FacultyMobile,
            FacultyEmail: req.body.FacultyEmail
        });

        const data=await obj.save();
        res.send(data);
    });

    // update
    app.patch("/faculty/:id",async (req,res)=>{
        let fac=await Faculty.findOne({_id:req.params.id})
        fac.FacultyName= req.body.FacultyName;
        fac.FacultyMobile=req.body.FacultyMobile;
        fac.FacultyEmail=req.body.FacultyEmail;

        const data=await fac.save();
        res.send(data)
    })

    app.listen(3000,()=>{
        console.log("server start at @ 3000")
    })
});
