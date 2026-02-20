class Location < ApplicationRecord
  belongs_to :location_category
  belongs_to :location_sub_category
  belongs_to :address

  has_many :bookings
  has_many :editions, through: :bookings
end
