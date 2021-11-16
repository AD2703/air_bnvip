class HousesController < ApplicationController
  def index
    @houses = House.all
  end
#controller
   def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    house = House.new(house_params)
    @house.user = current_user
    if house.save
      redirect_to houses_path
    else
      render :new
    end
  end

  private
  
  def house_params
    params.require(:house).permit(:name, :description, photos: [])
  end


end
