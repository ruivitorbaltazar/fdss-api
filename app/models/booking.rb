class Booking < ApplicationRecord
  enum scheduled_status: %i[unscheduled scheduled cancelled]
  enum visibility_status: %i[hidden visible]

  belongs_to :edition
  belongs_to :location
  belongs_to :user

  has_many :booking_posts
  has_many :posts, through: :booking_posts
  has_many :booking_participants
  has_many :participants, through: :booking_participants
end
