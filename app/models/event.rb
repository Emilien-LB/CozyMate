class Event < ApplicationRecord
  belongs_to :user

  validates :title, :start_time, :end_time, presence: true
  validates_length_of :title, :maximum => 20
  validates_length_of :description, :maximum => 150

  def multi_days?
    (end_time.to_date - start_time.to_date).to_i >= 1
  end
end
