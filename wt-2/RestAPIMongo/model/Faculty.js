const mongoose = require('mongoose');

const schema = mongoose.Schema({
    
    FacultyName: String,
    FacultyMobile: Number,
    FacultyEmail: String
})

module.exports = mongoose.model("Faculty", schema)
