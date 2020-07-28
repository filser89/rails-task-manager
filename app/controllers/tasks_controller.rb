class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :toggle_completed, :destroy]
  def index
    @tasks = Task.all
  end

  def show

  end

  def new
    @task = Task.new()

  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)

  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def toggle_completed
    p @task
    @task.toggle_completed!
    p @task
    redirect_to tasks_path
    @task.save
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
