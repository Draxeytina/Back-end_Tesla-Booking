class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
