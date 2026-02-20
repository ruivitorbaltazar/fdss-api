class Ride < ApplicationRecord
  belongs_to :edition
  belongs_to :vehicle

  has_many :ride_participants
  has_many :participants, through: :ride_participants
end
