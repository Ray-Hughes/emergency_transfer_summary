class Diagnosis < ApplicationRecord
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  
  belongs_to :reference, polymorphic: true
  
  # **********************************
  # Instance Methods
  # 
  def described_code
    "#{description} (#{code})" 
  end
  
end
