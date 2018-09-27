module ApplicationHelper
  
  def navbar_site_name
    link_to "Saint Bernard EMR", root_path, class: "navbar-brand"
  end
  
  # Navbar links for main layout
  def nav_bar_links
    [
      {name: 'Patients', path: patients_path, class_name: 'active nav-link'}
    ].
    map { |l| link_to l[:name], l[:path], class: l[:class_name] }.
    join(" ").
    html_safe
  end
  
  def flash_messages
    messages = []
    
    flash.each do |key, value|
      messages << %Q[<div class="alert alert-#{key == 'notice' ? 'success' : key}">#{value}</div>]
    end
    
    messages.join(" ").
    html_safe
  end
  
end
