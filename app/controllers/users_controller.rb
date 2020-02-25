class UsersController < ApplicationController
  def index
    @teachers = User.where(is_teacher: true)
  end

  def show
    @teacher = find_user
  end

  def dashboard
    @user = find_user
  end

  private

  def find_user
    User.find(params[:id])
  end
end
