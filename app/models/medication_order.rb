class MedicationOrder < ApplicationRecord
  include HasMedicationRoute
  include HasMassUnit
  
  # ******************************
  # Class Methods & Scopes
  # 
  
  # *******************************
  # Validations & Callbacks
  # 
  belongs_to :patient
  
  has_one :order_frequency
  
  # **********************************
  # Instance Methods
  # 
  def summary
    # TODO: add necessity as its not listed in spec
    [name, [dosage, unit].join, route.upcase, order_frequency.summary, "to", "relieve swelling"].join(" ")
  end
  
  
end
