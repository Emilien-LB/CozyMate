class Task < ApplicationRecord
  has_many :scheduled_tasks, dependent: :destroy
  has_many :users, through: :scheduled_tasks

  WEEKDAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  MONTHDAY = (1..30).to_a

  validates :frequency_type, inclusion: { in: %w(Daily Weekly Monthly), allow_blank: true }
  validates :task_name, :frequency_type, :description, :points, presence: true
  validates :points, numericality: { only_integer: true }
  validates_length_of :task_name, :maximum => 25

  # validates :frequency_amount, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
  # validates :frequency_day, presence: true, if: -> { frequency_type == 'Weekly' }, inclusion: { in: WEEKDAYS }
  # validates :frequency_day_of_month, presence: true, if: -> { frequency_type == 'Monthly' }, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
  # validates :frequency_week_of_month, inclusion: { in: %w(first second third fourth last), allow_blank: true }
end
