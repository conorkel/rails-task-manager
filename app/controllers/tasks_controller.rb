class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    #@task = Task.find(params[:id]) # needs to be singular
  end

  def new
    @task = Task.new # needs to be singular
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    #@task = Task.find(params[:id])
    #redirect_to task_path(@task)
  end

  def update
  @task = Task.find(params[:id])
  @task.update(task_params)
  redirect_to task_path(@task)
  end

  # def update
  #   @task.update!(task_params)
  #   redirect_to task_path(@task)
  # end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id]) # this nested inside :show, :edit, :update, :destroy
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
