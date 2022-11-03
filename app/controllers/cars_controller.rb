class CarsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @cars = Car.all

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @cars }
      format.json { render json: @cars }
    end
  end

  def show
    @car = Car.find(params[:id])

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @car }
      format.json { render json: @car }
    end
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unproccessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    render json: { status: 200, message: 'Car deleted successfully' }
  end

  private

  def car_params
    params.permit(:model, :color, :image, :range, :motor_type, :acceleration_time, :booking_price, :booking_duration,
                  :description)
  end
end
