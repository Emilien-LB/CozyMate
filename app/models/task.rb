class Task < ApplicationRecord
  has_many :scheduled_tasks
  has_many :users, through: :scheduled_tasks
end
