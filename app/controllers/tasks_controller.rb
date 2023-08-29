class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @scheduled_tasks_done = ScheduledTask.where(task_id: @task.id, done: true).includes(:user).order(updated_at: :desc)
   end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Task was successfully destroyed.", status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:task_name, :description, :frequency_type, :frequency_amount, :frequency_day, :frequency_day_of_month, :points )
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
