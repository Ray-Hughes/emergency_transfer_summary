class Patient < ApplicationRecord
  include HasGender
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  has_one :admission
  
  has_many :chronic_conditions, class_name: :Diagnosis, foreign_key: :patient_condition_id
  has_many :diagnoses
  has_many :allergies
  has_many :medications, class_name: :MedicationOrder
  has_many :diagnostic_procedures
  has_many :treatments
  
  # **********************************
  # Instance Methods
  # 
  def full_name
    [first_name, last_name].join(" ")
  end
  
  def age
    ((Time.zone.now - dob.to_time) / 1.year.seconds).floor
  end
  
  def has_admission?
    !admission.nil?
  end
  
end
