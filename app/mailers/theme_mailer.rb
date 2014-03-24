class ThemeMailer < ActionMailer::Base
  include ThemeMailer::Premailer::HtmlToPlainText
  
  def send_email(theme)
    debugger
    @theme = theme
    mail(to: @theme.recipient_email, from: @theme.sender_email, 
          subject: @theme.title) do |format|
          format.html { render @theme }
          format.text { render convert_to_text(@theme.content)}
        end          
    
  end
end
