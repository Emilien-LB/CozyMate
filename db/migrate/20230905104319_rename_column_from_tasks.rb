class RenameColumnFromTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column(:tasks, :tfrequency_week_of_month, :frequency_week_of_month)

  end
end
