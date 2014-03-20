module ApplicationHelper
  
  def form_token
    "<input type=\"hidden\"
        name=\"authentication_token\"
        value=\"#{form_authentication_token}\">".html_safe
  end
  
end
