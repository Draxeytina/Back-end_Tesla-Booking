class UsersController < ApplicationController
  def index
    @users = User.all

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @users }
      format.json { render json: @users }
    end
  end

  def reserved_cars
    @cars = current_user.reserved_cars

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @cars }
      format.json { render json: @cars }
    end
  end
end
