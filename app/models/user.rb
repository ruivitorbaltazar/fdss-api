class User < ApplicationRecord
  enum role: %i[admin regular]
  enum status: %i[invited confirmed declined]

  belongs_to :person

  has_many :events
  has_many :editions
  has_many :bookings
  has_many :polls
  has_many :poll_answers
  has_many :posts
  has_many :comments
  has_many :reactions
end
