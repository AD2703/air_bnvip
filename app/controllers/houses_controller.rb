class HousesController < ApplicationController
#controller

def new
@house = House.new
end

def create
  house = House.new(house_params)
  house.save
  redirect_to house_path
end


def house_params
    params.require(:house).permit( :name, :description, :photos [])
end

end
