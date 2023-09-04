class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :scheduled_tasks
  has_many :tasks, through: :scheduled_tasks

  validates :first_name, :last_name, :birth_date, presence: true
  # validates :phone_number, format: { with: /\A(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}\z/ }
  validates :gender, inclusion: { in: %w(male female non-binary), allow_blank: true }

  def total_points(month = Date.current.month.to_i)
    self.scheduled_tasks.joins(:task).where(done: true).where('EXTRACT(MONTH FROM recorded_date) = ?', month).sum('tasks.points')
  end

  def change
    add_column :users, :total_points, :integer, default: 0
  end

  def self.top_ranked_users(limit = 3)
    order(total_points: :desc).limit(limit)
  end
end
