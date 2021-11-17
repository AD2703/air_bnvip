class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @house = House.find(params[:house_id])
    @review.house = @house
    if @review.save
      redirect_to houses_path(@house)
    else
      render 'house/show'
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
