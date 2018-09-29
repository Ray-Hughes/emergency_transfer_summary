class Patient < ApplicationRecord
  include HasGender
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  validate do |model|
    model.errors[:base] << 'First name can not be blank' if model.first_name.blank?
    model.errors[:base] << 'Last name can not be blank' if model.last_name.blank?
    model.errors[:base] << 'MR# can not be blank and must be unique' if model.mr.blank?
  end
  
  
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
    dob && ((Time.zone.now - dob.to_time) / 1.year.seconds).floor
  end
  
  def has_admission?
    !admission.nil?
  end
  
  def date_of_birth=(v)
    self.dob = Date.parse(v) unless v.blank?
  end
  
  def date_of_birth
    self.dob && self.dob.strftime("%d-%m-%Y")
  end
  
end
