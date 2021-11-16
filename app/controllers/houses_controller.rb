class HousesController < ApplicationController
#controller
  def show
    @house = House.find(params[:id])
  end

end
