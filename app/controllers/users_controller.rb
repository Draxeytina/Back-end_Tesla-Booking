class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!

  validates :email , presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
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
