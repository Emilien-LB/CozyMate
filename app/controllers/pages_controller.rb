class PagesController < ApplicationController
  # faire la page ranking
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def index
    @month = params[:month] ? Date.parse(params[:month]) : Date.today.beginning_of_month
  end


  def ranking
    @date = params["month(2i)"] ? Date.new(params["month(1i)"].to_i, params["month(2i)"].to_i, params["month(3i)"].to_i) : Date.today.beginning_of_month
    @users = User.all.sort {|a,b| b.total_points(@date.month, @date.year) <=> a.total_points(@date.month, @date.year)}[0..3]
  end
end
