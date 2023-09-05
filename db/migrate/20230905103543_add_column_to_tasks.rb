class AddColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :tfrequency_week_of_month, :string
  end
end
