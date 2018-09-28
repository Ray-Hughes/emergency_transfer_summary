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
  
  def to_sentence(items = [])
    words_connector = ", "
    two_words_connector = " and "
    last_word_connector = ", and "
    
    case items.length
      when 0
        ""
      when 1
        items[0].to_s.dup
      when 2
        "#{items[0]}#{two_words_connector}#{items[1]}"
      else
        "#{items[0...-1].join(words_connector)}#{last_word_connector}#{items[-1]}"
    end
  end
  
end
