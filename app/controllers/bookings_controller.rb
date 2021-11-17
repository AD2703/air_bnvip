class BookingsController < ApplicationController
  def create
    @house = House.find(params[:house_id])
    if @current_user == @house.user
      flash[:alert] = "You cannot book your own house!"
    else
      @start_date = Date.parse(booking_params[:start_date])
      @end_date = Date.parse(booking_params[:end_date])
      @days = (@end_date - @start_date).to_i + 1
      @booking = Booking.new(booking_params)
      @booking.house = @house
      @price = @house.price
      @total = @price * @days
      @booking.user = current_user
      @booking.save
    end
    redirect_to house_path(@house)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
