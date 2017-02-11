class TodosController < ApplicationController
  before_action :set_todos

  #Get /Todos
  def index
    render json: @todos
  end

  #Get /todos/1
  def show
    render json: @todo
  end

  #post /todos
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: @todos, status: :created
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  #Patch/put /todos/1
  def update
    if @todo.update(todo_params)
      render json: @todos
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  #delete /todos/1
  def destroy
    @todo.destroy
    render json: @todos
  end

  private

    def set_todos
      if params[:id]
        @todo = Todo.find(params[:id])
      end
      @todos = Todo.all
    end

    def todo_params
      params.require(:todo).permit(:body, :completed)
    end
end
