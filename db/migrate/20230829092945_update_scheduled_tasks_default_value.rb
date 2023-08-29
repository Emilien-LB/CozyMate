class UpdateScheduledTasksDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :scheduled_tasks, :done, from: nil, to: false
  end
end
