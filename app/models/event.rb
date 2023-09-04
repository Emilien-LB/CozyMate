class Event < ApplicationRecord
  belongs_to :user

  validates :title, :start_time, :end_time, presence: true
  
  def multi_days?
    (end_time.to_date - start_time.to_date).to_i >= 1
  end
end
