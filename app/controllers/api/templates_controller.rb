class Api::TemplatesController < ApplicationController
  # before_action :authenticate_user!
  
  def create
      
  end
  
  def destroy
      
  end
  
  def index
    # @templates = Template.where(user_id: current_user.id)
    render :index
  end
  
  def show
    @template = Template.find_by(user_id: current_user.id)
  end
  
  def update
    
  end
  
  private
  
  def template_params
    params.require(:template).permit(:title, :content)
  end
  
end
