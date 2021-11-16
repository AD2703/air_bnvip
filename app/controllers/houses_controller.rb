class HousesController < ApplicationController
  def index
    @houses = House.all
  end
#controller
  def show
    @house = House.find(params[:id])
  end
end
