class User < ApplicationRecord
  has_secure_password

  has_many :reservations, dependent: :destroy

  validates_presence_of :email
  validates_uniqueness_of :email

  def reserved_cars
    user.cars
  end
end
