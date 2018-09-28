Facility.create!({
  name: 'Blue Alps Ski Camp emergency facility'
})

patient = Patient.create!({
  first_name: 'Thomas',
  last_name: 'Schudel',
  mr: '30997',
  dob: Date.parse('01-01-1975'),
  gender: 0 # male
})

admission = Admission.create!({
  moment: Time.now,
  patient_id: patient.id
})

diagnosis = Diagnosis.create!([
  {
    coding_system: 'ICD10',
    code: 'S82.101',
    description: 'a fracture of upper end of the right tibia',
    admission_id: admission.id
  },
  {
    coding_system: 'ICD10',
    code: 'S82.101A',
    description: 'a closed fracture in the right tibia',
    patient_id: patient.id
  },
  {
    coding_system: 'ICD10',
    code: 'J45',
    description: 'Asthma',
    patient_condition_id: patient.id
  }
])

Symptom.create!([
  {
    description: 'severe pain',
    admission_id: admission.id
  },
  {
    description: 'swelling',
    admission_id: admission.id
  },
  {
    description: 'limited bending of the joint',
    admission_id: admission.id
  }
])

Observation.create!({
  description: 'No soft tissues were damaged',
  moment: Time.now,
  admission_id: admission.id
})

Allergy.create!({
  description: 'hypersensitivity to aspirin or NSAIDs, gluten intolerance',
  patient_id: patient.id
})

medication_orders = MedicationOrder.create!([
  {
    name: 'Acetaminophen',
    unit: 0, # mg
    dosage: 500.0,
    route: 0, # PO
    patient_id: patient.id
  },
  {
    name: 'Naproxen',
    unit: 0, # mg
    dosage: 500.0,
    route: 0, # PO
    patient_id: patient.id
  }
])

OrderFrequency.create!([
  {
    value: 'q4',
    unit: 0, # hour
    medication_order_id: medication_orders[0].id 
  },
  {
    value: 'q6',
    unit: 0, # hour
    medication_order_id: medication_orders[1].id 
  }
])

DiagnosticProcedure.create!({
  description: 'exploratory radiography',
  moment: Time.now,
  patient_id: patient.id
})

Treatment.create!({
  description: 'temporary bracing the right leg',
  necessity: 'restrict the motion',
  patient_id: patient.id
})



