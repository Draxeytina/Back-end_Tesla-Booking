class Car < ApplicationRecord
  validates :model, presence: true
  validates :description, presence: true
  validates :booking_price, presence: true
  validates :booking_duration, presence: true
end
