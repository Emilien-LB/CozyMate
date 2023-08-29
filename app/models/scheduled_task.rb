class ScheduledTask < ApplicationRecord
  belongs_to :user, optional: true 
  belongs_to :task

  validates :task_id, presence: true

  # validation sur les valeurs
end
