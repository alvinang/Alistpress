class Api::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
  
  def update
    @theme = Theme.find(params[:id])
    
    if @theme.update_attributes(theme_params)
      ThemeMailer.send_email(@theme).deliver! if @theme.sent
      render json: @theme
    else
      render json: @theme.errors.full_messages, status: 422
    end
  end

end