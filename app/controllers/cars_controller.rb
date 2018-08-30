class CarsController < ApplicationController
  def index
    @cars = current_user.cars
  end
end
