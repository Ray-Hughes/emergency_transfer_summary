class Treatment < ApplicationRecord
  
  belongs_to :patient
  
  def summary
    [description, "to", necessity].join(" ")
  end
end
