class Admission < ApplicationRecord
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  
  has_many :diagnoses
  has_many :symptoms
  has_many :observations
  
  belongs_to :patient
  
  # **********************************
  # Instance Methods
  # 
  def date
    moment.strftime("%m-%d-%Y")
  end
  
  def time
    moment.strftime("%I:%M%p")
  end
  
end
