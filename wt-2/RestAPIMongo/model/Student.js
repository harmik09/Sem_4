const mongoose = require('mongoose');

const schema = mongoose.Schema({
    
    StudentName: String,
    StudentMobile: Number,
    StudentEmail: String
})

module.exports = mongoose.model("Student", schema)
