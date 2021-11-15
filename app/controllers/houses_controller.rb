class HousesController < ApplicationController
#controller

def new
@house = Houses.new
end

def create
  house = Houses.new(house_params)
  house.save
  redirect_to house_path
end


def house_params
    params.require(:house).permit(:users_id, :name, :description)
end

end
