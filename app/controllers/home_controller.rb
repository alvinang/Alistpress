class HomeController < ApplicationController
  def index
    @user = User.new
  end
  
  def guest
    if current_or_guest_user
      redirect_to authenticated_root_url
    end
  end
end
