class AddReferenceToScheduledTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :scheduled_tasks, :task_performer, null: false, foreign_key: {to_table: "users"}
  end
end
