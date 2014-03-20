class Api::AtemplatesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    atemplate = Atemplate.new(template_params)
    atemplate.user_id = current_user.id
    if @atemplate.save
      redirect_to authenticated_root_url
    else
      flash.now[:errors] = @atemplate.errors.full_messages
      render :edit
    end
  end
  
  def destroy
    atemplate = Atemplate.find(params[:id])  
    atemplate.destroy!
    redirect_to authenticated_root_url
  end
  
  def edit
    @atemplate = Atemplate.find(params[:id])    
  end
  
  def index
    @atemplates = Atemplate.where(user_id: current_user.id)
  end
  
  def show
    @atemplate = Atemplate.find_by(user_id: current_user.id)
  end
  
  def update
    @atemplate = Atemplate.find(params[:id])
    atemplate_id = params[:id]
    
    if @atemplate.update_attributes
      redirect_to api_atemplate(atemplate_id)
    else
      flash.now[:errors] = @atemplate.errors.full_messages
      render :edit
    end
  end
  
  private
  
  def template_params
    params.require(:atemplate).permit(:title, :content)
  end
  
end
