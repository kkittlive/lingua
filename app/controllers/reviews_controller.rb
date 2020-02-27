class ReviewsController < ApplicationController
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @lesson = Lesson.find(params[:lesson_id])
    @review.lesson = @lesson
    if @review.save
      flash[:notice] = 'Your review is ready!'
      redirect_to user_path
    else
      flash[:alert] = 'There was a problem with your review.'
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
