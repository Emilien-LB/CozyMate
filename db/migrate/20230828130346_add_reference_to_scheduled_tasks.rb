class AddReferenceToScheduledTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :scheduled_tasks, :user, foreign_key: true 
  end
end
