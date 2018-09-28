class Observation < ApplicationRecord
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  
  belongs_to :admission
  
  # **********************************
  # Instance Methods
  # 
  
end
