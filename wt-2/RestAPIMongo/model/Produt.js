const mongoose = require('mongoose');

const schema = mongoose.Schema({
    ProductID: Number,
    ProductName: String,
    ProductPrice: Number
})

module.exports = mongoose.model("Product", schema)
