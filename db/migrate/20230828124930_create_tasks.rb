class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :description
      t.string :frequency_type
      t.integer :frequency_amount
      t.string :frequency_day
      t.string :frequency_day_of_month
      t.integer :points

      t.timestamps
    end
  end
end
