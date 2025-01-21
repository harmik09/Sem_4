const mongoose=require('mongoose');

const schema=mongoose.Schema({
    CarModel: String,
    CarBrand: String,
    CarNumber: String,
    CarColor: String,
    Year: Number,
    FuelType: String,
    Price: Number
})

module.exports=mongoose.model("Car",schema)