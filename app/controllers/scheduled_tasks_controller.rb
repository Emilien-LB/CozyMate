class ScheduledTasksController < ApplicationController
before_action :set_scheduled_task, only: [:update]

  def index
    @scheduled_tasks = ScheduledTask.where(to_be_done_date: Date.today())
    
  end

  def update
    @scheduled_task.done = true
    @scheduled_task.recorded_date = Date.today
    @scheduled_task.user_id = current_user.id
    @scheduled_task.save!
    redirect_to scheduled_tasks_path
  end

  private

  def scheduled_task_params
    params.require(:scheduled_task).permit(:done)
  end

  def set_scheduled_task
    @scheduled_task = ScheduledTask.find(params[:id])
  end

end
