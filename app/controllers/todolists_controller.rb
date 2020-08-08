class TodolistsController < ApplicationController
  def index
    @todos = Todo.all.order(limit:"ASC")
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params_todo)
    @todo.save
    redirect_to "/"
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(params_todo)
    redirect_to "/"
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to "/"
  end
  private
  def params_todo
    params.require(:todo).permit(:title, :content, :limit)
  end
end
