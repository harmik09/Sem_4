const mongoose = require('mongoose')

const schema = mongoose.schema({
    BookTitle: String,
    BookAuthor: String,
    BookPrice: Number,
    BookPublisher: String,
    Availability: Boolean
})

module.exports = mongoose.model('Book', schema)