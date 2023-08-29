class ScheduledTasksController < ApplicationController

  def index
    @scheduled_tasks = ScheduledTask.all
  end
end
