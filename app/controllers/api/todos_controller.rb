class Api::TodosController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @todo = Todo.new(todos_params)
    
    if @todo.save
      render json: @todo
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end
  
  def destroy
    todo = Todo.find(params[:id])
    todo.destroy!
    render json: {}
  end
  
  def index
    @todos = Todo.where(user_id: current_user.id).concat(Todo.where(user_id: 1))
    render json: @todos
  end
  
  def update
    @todo = Todo.find(params[:id])
    
    if @todo.update_attributes(todos_params)
      render json: @todo
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end
  
  private
  
  def todos_params  
    params.require(:todo).permit(:task, :user_id)
  end
  
end
