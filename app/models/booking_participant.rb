class BookingParticipant < ApplicationRecord
  belongs_to :booking
  belongs_to :participant
end
