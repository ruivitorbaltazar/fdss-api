class RideParticipant < ApplicationRecord
  belongs_to :ride
  belongs_to :participant

  enum role: { driver: 0, passenger: 1 }
end
