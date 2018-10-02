class CarsController < ApplicationController
  def index
    @cars = current_user.cars
  end

  def new
    @car = current_user.cars.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = current_user.cars.create(car_params)
    if @car.save
      flash[:success] = "New car added successfully"
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def destroy
    Car.find(params[:id]).destroy
    flash[:success] = "Your car removed!"
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:custom_name, :manufacturer, :model, :production_year, :trim)
  end
end
