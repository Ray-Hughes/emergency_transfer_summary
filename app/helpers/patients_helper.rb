module PatientsHelper
  
  def edit_form_btn(form)
    action = form.object.new_record? ? "Create" : "Update"
    form.submit action, class: 'btn btn-primary'
  end
  
  def emergency_summary_btn(form)
    return "" if form.object.new_record?
    link_to "Emergency Summary", patient_summary_path(id: form.object.id), class: 'btn btn-danger'
  end
  
end
