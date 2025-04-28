const Patient = require('../models/Patient');

exports.getPatientDetails = async (req, res) => {
  try {
    const patient = await Patient.findById(req.params.id);
    if (!patient) return res.status(404).json({ error: 'Patient not found' });

    res.json(patient);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
