class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end
  
  def edit
    add_breadcrumb '<< Patients', patients_path
    
    @patient = Patient.find(params[:id])
  end
  
  def new
    add_breadcrumb '<< Patients', patients_path
    
    @patient = Patient.new
  end
  
  def create
    @patient = Patient.new(user_params)
    
    if @patient.save
      flash[:notice] = "Patient created successfully!"
      redirect_to edit_patient_path(@patient)
    else
      render 'new'
    end
  end
  
  def update
    @patient = Patient.find(params[:id])
    
    if @patient.update_attributes(user_params)
      flash[:notice] = "Patient updated successfully!"
      redirect_to edit_patient_path(@patient)
    else
      render 'edit'
    end
  end
  
  private
  
  def user_params
    params.require(:patient).permit(:first_name, :middle_name, :last_name, :mr, :dob, :gender)
  end
  
  
end
