class HousesController < ApplicationController
  def index
    if params[:country]
      @country = params[:country]
      @houses = House.where(country: @country)
    else
      @houses = House.all
    end
    @markers = @houses.geocoded.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude,
        info_window: render_to_string(partial: "info_window", locals: { house: house })
      }
    end
  end

  def show
    @house = House.find(params[:id])
    @booking = Booking.new
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.user = current_user
    if @house.save
      redirect_to house_path(@house)
    else
      render :new
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    # @house.user = current_user
    @house.update(house_params)
    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to house_path
  end

  private

  def house_params
    params.require(:house).permit(:name, :description, :price, :address, :country, photos: [])
  end
end
