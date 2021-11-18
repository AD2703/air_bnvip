class BookingsController < ApplicationController
  def create
    @house = House.find(params[:house_id])
    if current_user == @house.user
      flash[:alert] = "You cannot book your own house!"
    else
      dates = params[:booking][:start_date].split()
      start_date = Date.parse(dates[0])
      end_date = Date.parse(dates[2])
      @days = (end_date - start_date).to_i + 1
      @booking = Booking.new(start_date: start_date, end_date: end_date)
      @booking.house = @house
      @price = @house.price
      @total = @price * @days
      @booking.user = current_user
      @booking.save
    end
    redirect_to house_path(@house)
  end

end
