class AddColumnToBeDoneDateToScheduledTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :scheduled_tasks, :to_be_done_date, :date
  end
end
