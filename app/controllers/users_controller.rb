class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search][:language].present?
      sql_query = "languages.id = :query"
      @teachers = policy_scope(User).joins(:languages).where(sql_query, query: "#{params[:search][:language]}")
    else
      @teachers = policy_scope(User)
    end
    @languages = Language.all
    console
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
    @user = User.find(params[:id])
  end

  def update
    authorize(User.find(params[:id]))
    @user = User.find(params[:id])
    @user.update(user_params)

    current_user.language_skills.destroy_all
    params[:user][:languages].each do |language|
      LanguageSkill.create(user_id: @user.id, language_id: language)
    end

    current_user.user_qualifications.destroy_all
    params[:user][:qualifications].each do |qualification|
      UserQualification.create(user_id: @user.id, qualification_id: qualification)
    end

    redirect_to users_dashboard_path
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

  def user_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:user).permit(:first_name, :last_name, :email, :gender, :age, :phone_number, :location, :availability, :biography, :is_teacher, :languages, :qualifications, :photo)
  end
end
