class LessonsController < ApplicationController
  def create
    teacher = User.find(params[:lesson][:teacher_id])
    student = User.find(params[:lesson][:student_id])
    @lesson = Lesson.new(lesson_params)
    @lesson.teacher = teacher
    @lesson.student = student
    authorize @lesson
    if @lesson.save
      flash[:alert] = 'Lesson booked!'
    else
      flash[:alert] = 'There was a problem with your lesson.'
    end
    redirect_to users_dashboard_path
  end

  def edit
    authorize @lesson

  end

  def update
    authorize @lesson
  end

  private

  def lesson_params
    params.require(:lesson).permit(:date, :location, :language_id, :student_id, :teacher_id)
  end
end
