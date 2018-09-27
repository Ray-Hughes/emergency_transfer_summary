class OrderFrequency < ApplicationRecord
  include HasFrequencyUnit
  
  belongs_to :medication_order
  
end
