class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all

    response.set_header('Access-Control-Allow-Origin', '*')

    respond_to do |format|
      format.html { render json: @reservations }
      format.json { render json: @reservations }
    end
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unproccessable_entity
    end
  end

  private

  def reservation_params
    params.permit(:booking_date, :car_id, :user_id, :car, :user)
  end
end
