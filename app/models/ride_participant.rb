class RideParticipant < ApplicationRecord
  enum role: %i[driver passenger]

  belongs_to :ride
  belongs_to :participant
end
