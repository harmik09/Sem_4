const mongoose = require("mongoose");
const Student = require('./model/Student');
const express = require("express");
const bodyParser = require("body-parser");

const atlasUrl = "mongodb+srv://student:student123@student.2n4nv.mongodb.net/test";

mongoose.connect(atlasUrl).then(() => {
    console.log("connected to DB Server");

    const app = express();

    app.use(bodyParser.json());


    // getAll
    app.get("/student", async (req, res) => {
        const data = await Student.find();
        res.send(data);
    });

    // getByID
    app.get("/student/:id", async (req, res) => {
        const data = await Student.findOne({ _id: req.params.id });
        res.send(data);
    });

    // delete
    app.delete("/student/:id", async (req, res) => {
        const data = await Student.deleteOne({ _id: req.params.id });
    })

    // insert(create)
    app.post("/student/post", async (req, res) => {
        const obj = new Student({
            StudentName: req.body.StudentName,
            StudentMobile: req.body.StudentMobile,
            StudentEmail: req.body.StudentEmail
        });

        const data = await obj.save();
        res.send(data);
    });

    // update 
    app.patch("/student/:id", async (req, res) => {
        let stu = await Student.findOne({ _id: req.params.id });
        stu.StudentName = req.body.StudentName;
        stu.StudentMobile = req.body.StudentMobile;
        stu.StudentEmail = req.body.StudentEmail;

        const datad = await stu.save();
        res.send(data);
    });

    app.listen(3000, () => {
        console.log("Server start @ 3000");
    })
});