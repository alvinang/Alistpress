module ApplicationHelper
  
  def form_token
    "<input type=\"hidden\"
        name=\"authentication_token\"
        value=\"#{form_authentication_token}\">".html_safe
  end
  
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
  
end
