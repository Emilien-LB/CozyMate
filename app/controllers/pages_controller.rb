class PagesController < ApplicationController
  # faire la page ranking
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def ranking
  end
end
