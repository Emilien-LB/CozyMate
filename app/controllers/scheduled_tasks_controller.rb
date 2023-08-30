class ScheduledTasksController < ApplicationController
before_action :set_scheduled_task, only: [:update]

  def index
    @scheduled_tasks = ScheduledTask.where(to_be_done_date: Date.today())
    
  end

  def update
    @scheduled_task.done = true
    @scheduled_task.recorded_date = Date.today
    @scheduled_task.user_id = current_user.id
    @scheduled_task.save
      respond_to do |format|
        format.html { scheduled_tasks_path }
        format.text { render partial: "scheduled_tasks/scheduled_task", locals: { scheduled_task: @scheduled_task }, formats: [:html] }
      end
  end

  private

  def scheduled_task_params
    params.require(:scheduled_task).permit(:done, :user_id)
  end

  def set_scheduled_task
    @scheduled_task = ScheduledTask.find(params[:id])
  end

end
