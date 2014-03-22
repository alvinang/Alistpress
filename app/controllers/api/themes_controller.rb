class Api::ThemesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @theme = Theme.new(theme_params)
    
    if @theme.save
      ThemeMailer.send_email(@theme).deliver if @theme.sent
      render json: @theme
    else
      # set on the rails end, need  to set on backbone as well
      @theme.sent = false
      render json: @theme.errors.full_messages, status: 422
    end
  end
  
  def destroy
    theme = Theme.find(params[:id])
    theme.destroy!
    render json: {}
  end
  
  def index
    @themes = Theme.where(user_id: current_user.id)
  end
  
  def show
    @theme = Theme.find(params[:id])
  end
  
  def update
    @theme = Theme.find(params[:id])
    
    if @theme.update_attributes(theme_params)
      ThemeMailer.send_email(@theme).deliver if @theme.sent
      render json: @theme
    else
      render json: @theme.errors.full_messages, status: 422
    end
  end
  
  private
  
  def theme_params
      params.require(:theme)
        .permit(:recipient_email, :sender_email, :title, :content, :template_id, :sent, :user_id)
  end
  
end
