const express = require('express');
const { getPatientDetails } = require('../controllers/patientController');
const router = express.Router();

router.get('/:id', getPatientDetails);

module.exports = router;
