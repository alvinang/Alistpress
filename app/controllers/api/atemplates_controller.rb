class Api::AtemplatesController < ApplicationController
  # before_action :authenticate_user!
  
  def create
      
  end
  
  def destroy
      
  end
  
  def index
    @atemplates = Atemplate.where(user_id: current_user.id)
  end
  
  def show
    @atemplate = Atemplate.find_by(user_id: current_user.id)
  end
  
  def update
    
  end
  
  private
  
  def template_params
    params.require(:template).permit(:title, :content)
  end
  
end
