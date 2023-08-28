class RemoveScheduledTaskId < ActiveRecord::Migration[7.0]
  def up
    remove_column :scheduled_tasks, :scheduled_tasks_id
  end
end
