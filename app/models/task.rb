class Task < ApplicationRecord
  has_many :scheduled_tasks, dependent: :destroy
  has_many :users, through: :scheduled_tasks

  WEEKDAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

  validates :frequency_type, inclusion: { in: %w(daily weekly monthly), allow_blank: true }
  validates :frequency_amount, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
  validates :frequency_day, presence: true, if: -> { frequency_type == 'weekly' }, inclusion: { in: WEEKDAYS }
  validates :frequency_day_of_month, presence: true, if: -> { frequency_type == 'monthly' }, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
  # validates :frequency_week_of_month, inclusion: { in: %w(first second third fourth last), allow_blank: true }
end
