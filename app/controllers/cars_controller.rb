class CarsController < ApplicationController
  before_action :authenticate_user!

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
end
