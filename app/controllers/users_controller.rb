class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search].present? && params[:search][:language].present? && params[:search][:location].present?
      sql_query = "languages.id = :query"
      @teachers = policy_scope(User).joins(:languages).where(sql_query, query: "#{params[:search][:language]}").near(params[:search][:location], 100)
    elsif params[:search].present? && params[:search][:language].present?
      sql_query = "languages.id = :query"
      @teachers = policy_scope(User).joins(:languages).where(sql_query, query: "#{params[:search][:language]}")
    elsif params[:search].present? && params[:search][:location].present?
      @teachers = policy_scope(User).near(params[:search][:location], 100)
    else
      @teachers = policy_scope(User)
    end
    @languages = Language.all

    @markers = @teachers.map do |teacher|
      {
        lat: teacher.latitude,
        lng: teacher.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { teacher: teacher }),
        image_url: helpers.asset_url('pin.png')
      }
    end
  end

  def show
    @teacher = User.find(params[:id])
    authorize @teacher
    @lesson = Lesson.new
    @user = current_user ? current_user : User.new
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

  def user_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:user).permit(:first_name, :last_name, :email, :gender, :age, :phone_number, :location, :availability, :biography, :is_teacher, :languages, :qualifications, :photo)
  end
end
