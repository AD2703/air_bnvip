class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @house = House.find(params[:house_id])
    @review = Review.new(review_params)
    @review.house = @house
    @review.user = current_user
    if @review.save
      redirect_to houses_path(@house)
    else
      render 'houses/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to house_path(@review.house)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
