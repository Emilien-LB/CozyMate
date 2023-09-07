class ScheduledTask < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :task

  validates :task_id, presence: true

  after_commit :update_user_total_points, if: :done?

  def update_user_total_points
    user.update(total_points: user.total_points)
  end

  def self.generate_scheduled_tasks(task, frequency_type, frequency_day, frequency_day_of_month)

    today = Date.today()
    nb_jour = 120
    dates =
      if frequency_type == 'Weekly'
        week_day = []
        nb = 0
        nb_jour.times do
          new_day = Date.today()+ nb.days
          week_day << new_day if new_day.strftime("%A") == frequency_day
          nb += 1
        end
        week_day
      elsif frequency_type == 'Daily'
        all_days =[]
        nb = 0
        nb_jour.times do
          new_day =  Date.today()+ nb.days
          all_days << new_day
          nb += 1
          end
          all_days
      elsif frequency_type == 'Monthly'
        month_day = []
        nb = 0
        nb_jour.times do
          new_day =  Date.today()+ nb.days
          month_day << new_day if new_day.day == frequency_day_of_month.to_i
          nb += 1
        end
        month_day
      else
      end
    # pour chacune de ces dates, on va creer les schedules tacks associe à la task
    p dates
    scheduled_task_created = []
    dates.each do |date|
      scheduled_task_created << ScheduledTask.create!(task: task, to_be_done_date: date.strftime('%Y-%m-%d'))
      scheduled_task_created
    end
    # raise
  end
end
# validation sur les valeurs
