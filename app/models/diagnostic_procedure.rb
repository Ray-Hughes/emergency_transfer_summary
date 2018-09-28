class DiagnosticProcedure < ApplicationRecord
  
  belongs_to :patient
  
  def date
    moment.strftime("%m-%d-%Y")
  end
  
  def time
    moment.strftime("%I:%M%p")
  end
  
  def summary
    [description, "at", time].join(" ")
  end
  
end
