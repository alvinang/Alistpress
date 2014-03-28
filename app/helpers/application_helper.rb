module ApplicationHelper  
  
  def form_token
    "<input type=\"hidden\"
        name=\"authentication_token\"
        value=\"#{form_authentication_token}\">".html_safe
  end
  
  def avatar_url(user)
    default_url = "http://res.cloudinary.com/dxxqqjrju/image/upload/v1395769301/guest_h6phwp.png"
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
     "http://gravatar.com/avatar/#{gravatar_id}.png?s=45&d=#{CGI.escape(default_url)}"
  end
  
end
