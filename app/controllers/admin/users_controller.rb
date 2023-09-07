class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin

  def index
    @users = User.where(approved: false)
  end

  def approve
    user = User.find(params[:id])
    user.update(approved: true)
    redirect_to admin_users_path, notice: "User approuved with success."
  end

  private

  def ensure_admin
    redirect_to root_path, alert: "Not authorized" unless current_user.admin?
  end
end
