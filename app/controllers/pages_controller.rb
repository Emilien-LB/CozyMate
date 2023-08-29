class PagesController < ApplicationController
  # faire la page ranking
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def ranking
    @users = User.all.to_a.sort_by { |user| -user.total_points }
  end
end
