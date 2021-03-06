class API::AtemplatesController < ApplicationController
  before_action :authenticate_user!
    
  def create
    @atemplate = Atemplate.new(template_params)

    if @atemplate.save
      render json: @atemplate
    else
      render json: @atemplate.errors.full_messages, status: 422
    end
  end
  
  def destroy
    atemplate = Atemplate.find(params[:id])  
    atemplate.destroy!
    render json: {}
  end
  
  def index
    @atemplates = Atemplate.where(user_id: current_user.id).concat(Atemplate.where(user_id: 1))
    
    respond_to do |format|
      format.html
      format.json { render 'api/atemplates/index' }
    end
  end
  
  def show
    @atemplate = Atemplate.find(params[:id])
  end
  
  def update
    @atemplate = Atemplate.find(params[:id])
    
    if @atemplate.update(template_params)
      render json: @atemplate
    else
      render json: @atemplate.errors.full_messages, status: 422
    end
  end
  
  private
  
  def template_params
    params.require(:atemplate).permit(:title, :content, :description, :category, :user_id)
  end
  
end
