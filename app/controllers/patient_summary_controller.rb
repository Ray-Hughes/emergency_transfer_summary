class PatientSummaryController < ApplicationController
  
  def show
    @patient = Patient.find(params[:id])
    @facility = Facility.first
  end
  
end
