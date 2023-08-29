class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = task.find(params[:id])
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
      redirect_to @task, notice: "Task was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to task_url, notice: "Task was successfully destroyed.", status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:task_name, :description, :frequency_type, :frequency_amount, :frequency_day, :frequency_day_of_month, :points )
  end

  def set_restaurant
    @task = Task.find(params[:id])
  end

end
