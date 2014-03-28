class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_or_guest_user
  
  def current_or_guest_user
    if current_user
      if session[:guest_user_id]
        logging_in
        guest_user.destroy
        session[:guest_user_id] = nil
      end
      current_user
    else
      guest_user
    end
  end

  def guest_user
    begin

      @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)
      sign_in(:user, @cached_guest_user)

     rescue ActiveRecord::RecordNotFound 
       session[:guest_user_id] = nil
       guest_user
     end
  end

  private

  def logging_in
  end

  def create_guest_user
    u = User.create(:name => "Awesome Guest", :email => "guest_#{Time.now.to_i}#{rand(99)}@alistpress.com")
    u.save!(:validate => false)
    session[:guest_user_id] = u.id
    u
  end
  
end
