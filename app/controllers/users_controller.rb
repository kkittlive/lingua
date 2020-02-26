class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teachers = policy_scope(User)
    @languages = Language.all
  end

  def show
    @teacher = User.find(params[:id])
    authorize @teacher
    @lesson = Lesson.new
    @user = current_user ? current_user : User.new
    @rating = rating_calculator(@teacher)
  end

  def dashboard
    @user = current_user
    authorize @user
  end

  def edit
    authorize(User.find(params[:id]))
  end

  private

  def rating_calculator(teacher)
    sum = 0
    teacher.reviews.each do |review|
      sum += review.rating
    end
    return 0 if teacher.reviews.length.zero?
    sum.to_f / teacher.reviews.length
  end
end
