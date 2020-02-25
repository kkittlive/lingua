class UsersController < ApplicationController
  def index
    @teachers = policy_scope(User)
  end

  def show
    authorize @user
    @teacher = User.find(params[:id])
  end

  def dashboard
    authorize @user
    @user = current_user
  end
end
