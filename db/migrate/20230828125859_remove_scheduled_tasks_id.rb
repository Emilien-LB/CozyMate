class RemoveScheduledTasksId < ActiveRecord::Migration[7.0]
  def up
    remove_column :scheduled_tasks, :users_id
  end
end
