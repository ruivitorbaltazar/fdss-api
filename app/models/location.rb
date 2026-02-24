class Location < ApplicationRecord
  belongs_to :location_category, optional: true
  belongs_to :location_sub_category, optional: true
  belongs_to :address, optional: true

  has_many :bookings
  has_many :editions, through: :bookings
end
