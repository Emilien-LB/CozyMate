class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "task_name ILIKE :query OR points::text ILIKE :query"
      @tasks = Task.where(sql_query, query: "%#{params[:query]}%")
    else
      @tasks = Task.all
    end
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
    @task.save
    if @task.save
      ScheduledTask.generate_scheduled_tasks(@task, task_params[:frequency_type])
      redirect_to tasks_path, notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  old_frequency = @task.frequency_type
  p old_frequency
  p task_params[:frequency_type]
  if @task.frequency_type != task_params[:frequency_type]
    ScheduledTask.where(task: @task, done: false).destroy_all
    ScheduledTask.generate_scheduled_tasks(@task, task_params[:frequency_type])
  end
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
    params.require(:task).permit(:task_name, :description, :frequency_type, :points)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
