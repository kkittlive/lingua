class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      flash.now[:notice] = 'Your review is ready!'
    else
      flash.now[:alert] = 'There was a problem with your review.'
    end
    redirect_to user_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :lesson)
  end
end
