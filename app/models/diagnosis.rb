class Diagnosis < ApplicationRecord
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  
  belongs_to :patient, optional: true
  belongs_to :chronic_condition, class_name: :Patient, optional: true
  belongs_to :admission, optional: true
  
  # **********************************
  # Instance Methods
  # 
  def described_code
    "#{description} (#{code})" 
  end
  
end
