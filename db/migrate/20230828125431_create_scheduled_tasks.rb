class CreateScheduledTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :scheduled_tasks do |t|
      t.references :scheduled_tasks, :users, column: :performer_task_id
      t.references :task, null: false, foreign_key: true
      t.date :recorded_date
      t.boolean :done

      t.timestamps
    end
  end
end
