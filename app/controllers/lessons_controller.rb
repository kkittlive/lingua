class LessonsController < ApplicationController
  def create
    @lesson = Lesson.new(lesson_params)
    authorize @lesson
    if @lesson.save
      flash.now[:notice] = 'Lesson booked!'
    else
      flash.now[:alert] = 'There was a problem with your lesson.'
    end
    redirect_to user_path
  end

  def edit
    authorize @lesson

  end

  def update
    authorize @lesson
  end

  private

  def lesson_params
    params.require(:lesson).permit(:date, :location, :student, :teacher)
  end
end
