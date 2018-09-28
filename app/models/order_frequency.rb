class OrderFrequency < ApplicationRecord
  include HasFrequencyUnit
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  belongs_to :medication_order
  
  # **********************************
  # Instance Methods
  # 
  def summary
    [value, unit].join
  end
  
end
