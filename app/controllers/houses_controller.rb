class HousesController < ApplicationController
#controller

def new
@house = House.new
end

def create
  house = House.new(house_params)
  @house.user = current_user
  house.save
  redirect_to houses_path
end


def house_params
    params.require(:house).permit(:name, :description, photos: [])
end

end
