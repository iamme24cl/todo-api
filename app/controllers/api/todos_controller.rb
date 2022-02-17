class Api::TodosController < ApplicationController
  before_action :find_todo, only: [:show, :update, :destroy]

  def index
    todos = Todo.all
    render json: todos, status: 200 
  end

  def show
    render json: @todo, status: 200
  end

  def create
    todo = Todo.new(todo_params)
    if todo.save
      render json: todo, status: 201
    else
      render json: { errors: todo.errors.full_messages }, status: 422 # unprocessable entity
    end
  end

  def update
    @todo.update(todo_params)
    if @todo.save
      render json: @todo, status: 202
    else
      render json: { erros: @prospect.errors.full_messages }, status: 400 # bad request
    end
  end

  def destroy
    if @todo.destroy
      render status: 202 # Accepted
    else
      render status: 400 
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:task, :is_completed)
  end

  def find_todo
    @todo = Todo.find(params[:id]);
  end
end
