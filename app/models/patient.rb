class Patient < ApplicationRecord
  include HasGender
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  has_many :diagnoses, as: :reference
  has_many :allergies
  has_many :chronic_conditions
  has_many :medication_orders
  has_many :diagnostic_procedures
  has_many :treatments
  has_one :admission
  
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
