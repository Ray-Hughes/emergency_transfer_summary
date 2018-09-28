class PatientSummaryController < ApplicationController
  
  def show
    @patient = Patient.find(params[:id])
    @facility = Facility.first
    
    add_breadcrumb "<< #{@patient.full_name}", edit_patient_path(@patient)
  end
  
end
