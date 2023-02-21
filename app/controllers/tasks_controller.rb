class TasksController < ApplicationController

  def index # Read all
    @tasks = Task.all
  end

  def new # Create
    @task = Task.new
  end

  def create # Create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def show # Show
    @task = Task.find(params[:id])
  end

  def edit # Update
    @task = Task.find(params[:id])
  end

  def update # Update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy # Delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def done # Done
    @task = Task.find(params[:id])
    @task.update(completed: true)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
