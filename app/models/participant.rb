class Participant < ApplicationRecord
  enum role: %i[host guest vip]
  enum status: %i[invited confirmed cancelled attended]
  enum payment_status: %i[unpaid partially_paid paid]
  enum visibility_status: %i[hidden visible]

  belongs_to :person
  belongs_to :edition

  has_many :booking_participants
  has_many :bookings, through: :booking_participants
  has_many :rides_participants
  has_many :rides, through: :rides_participants
end
