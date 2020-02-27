class ReviewsController < ApplicationController
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @review = Review.new
    @review.lesson = @lesson
    authorize(@review)
  end

  def create
    @review = Review.new(review_params)
    @lesson = Lesson.find(params[:lesson_id])
    @review.lesson = @lesson
    if @review.save
      flash[:notice] = 'Your review is ready!'
      redirect_to users_dashboard_path
    else
      flash[:alert] = 'There was a problem with your review.'
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :lesson_id)
  end
end
