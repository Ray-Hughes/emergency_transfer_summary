class MedicationOrder < ApplicationRecord
  include HasMedicationRoute
  
  belongs_to :patient
  
end
