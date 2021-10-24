const mongoose = require('mongoose')
const Todo = require('./models/Todo')
const {MONGO_URL} = require('../util/config')

if (MONGO_URL && !mongoose.connection.readyState) mongoose.connect(MONGO_URL, {
  useNewUrlParser: true,
  useUnifiedTopology: true
}, (err) =>
  err ? console.log('error ', err, 'while trying to connect to ', MONGO_URL) : console.log('Mongo connected'))


module.exports = {
  Todo
}
