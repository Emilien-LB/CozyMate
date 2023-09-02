class PagesController < ApplicationController
  # faire la page ranking
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def index
    @month = params[:month] ? Date.parse(params[:month]) : Date.today.beginning_of_month
  end


  def ranking
    # @users = User.all.to_a.sort_by { |user| -user.total_points }.first(3)
    @month = params[:month] ? Date.parse(params[:month]) : Date.today.beginning_of_month
    @users = User.where(created_at: @month.beginning_of_month..@month.end_of_month).order(total_points: :desc).limit(3)
  end
end
