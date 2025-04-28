const mongoose = require('mongoose');

const patientSchema = new mongoose.Schema({
  name: String,
  age: Number,
  gender: String,
  bloodGroup: String,
  allergies: String,
  chronicConditions: String,
  emergencyContact: {
    name: String,
    phone: String,
    relation: String,
    alternatePhone: String
  },
  appointments: [
    {
      title: String,
      date: Date
    }
  ]
});

module.exports = mongoose.model('Patient', patientSchema);
