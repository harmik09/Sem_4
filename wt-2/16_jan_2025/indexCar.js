const mongoose = require('mongoose')
const Car = require('./model/car')
const express = require('express')
const bodyParser = require('body-parser')

const atlasUrl = "mongodb+srv://student:student123@student.2n4nv.mongodb.net/Car";

mongoose.connect(atlasUrl).then(() => {
    console.log('connect to DB server');

    const app = express()

    app.use(bodyParser.json())

    // get all 
    app.get('/car', async (req, res) => {
        const data = await Car.find()
        res.send(data)
    })

    // getById
    app.get('/car/:id', async (req, res) => {
        const data = await Car.findOne({ _id: req.params.id })
        res.send(data)
    })

    // delete 
    app.delete('/car/:id', async (req, res) => {
        const data = await Car.deleteOne({ _id: req.params.id })
        res.send(data)
    })

    // insert 
    app.post('/car', async (req, res) => {
        const obj = new Car({
            CarModel: req.body.CarModel,
            CarBrand: req.body.CarBrand,
            CarNumber: req.body.CarNumber,
            CarColor: req.body.CarColor,
            Year: req.body.Year,
            FuelType: req.body.FuelType,
            Price: req.body.Price
        })

        const data=await obj.save()
        res.send(data)
    })

    app.patch('/car/:id',async (req,res)=>{
        let car=await Car.findOne({_id:req.params.id})
        car.CarModel= req.body.CarModel
        car.CarBrand= req.body.CarBrand
        car.CarNumber= req.body.CarNumber
        car.CarColor= req.body.CarColor
        car.Year= req.body.Year
        car.FuelType= req.body.FuelType
        car.Price= req.body.Price
    })

    app.listen(3000, () => {
        console.log('Server Start at 3000')
    })
})