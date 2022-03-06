class ParkReviewsController < ApplicationController
  def new
    @park = Park.find(params[:park_id])
    @review = ParkReview.new
  end

  def create
    @review = ParkReview.new(review_params)
    @park = Park.find(params[:park_id])
    @review.user = current_user
    @review.park = @park
    if @review.save
      redirect_to park_path(@park)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:park_review).permit(:review, :rating)
  end
end
