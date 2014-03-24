class ThemeMailer < ActionMailer::Base
  
  def send_email(theme)    
    @theme = theme
    mail(to: @theme.recipient_email, from: @theme.sender_email, 
          subject: @theme.title)
    
  end
end
