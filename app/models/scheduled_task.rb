class ScheduledTask < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :task

  validates :task_id, presence: true

  after_commit :update_user_total_points, if: :done?

  def update_user_total_points
    user.update(total_points: user.total_points)
  end

  def self.generate_scheduled_tasks( task, frequency_type)
    today = Date.today()
    nb_jour = 21
    # if frenquency_typ eagl weeklky
    dates = if frequency_type == 'weekly'
        mondays = []
        nb = 0
        nb_jour.times do
          new_day =  Date.today()+ nb
          mondays << new_day if new_day.monday?
          nb += 1
        end
        mondays
      elsif frequency_type == 'daily'
        all_days =[]
        nb = 0
        nb_jour.times do
          new_day =  Date.today()+ nb
          all_days << new_day
          nb += 1
          end
          all_days
      else
        [Date.today.next_week(:monday)]
      end
    # pour chacune de ces dates, on va creer les schedules tacks associe à la task
    p dates
    dates.each do |date|
      ScheduledTask.create!(task: task, to_be_done_date: date.strftime('%Y-%m-%d'))
    end
  end
end
# validation sur les valeurs
