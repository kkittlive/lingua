class UsersController < ApplicationController
  def index
    @teachers = User.where(is_teacher: true)
  end

  def show
    @teacher = User.find(params[:id])
  end

  def dashboard
    @user = current_user
  end
end
