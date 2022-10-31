class Reservation < ApplicationRecord
  validates :booking_date, presence: true
end
