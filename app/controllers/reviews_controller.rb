class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    # @review.user = current_user
    if @review.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to house_path(@review.house)
  # end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
