class ScheduledTask < ApplicationRecord
  belongs_to :user
  belongs_to :task

  # validation sur les valeurs 
end
