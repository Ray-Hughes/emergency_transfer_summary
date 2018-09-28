class Allergy < ApplicationRecord
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  
  belongs_to :patient
  
  # **********************************
  # Instance Methods
  # 
  
  
end
