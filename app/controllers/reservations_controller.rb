class ReservationsController < ApplicationController
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