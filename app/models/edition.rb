class Edition < ApplicationRecord
  belongs_to :event
  belongs_to :meeting_location, class_name: "Location", optional: true
  belongs_to :user

  has_many :edition_items
  has_many :items, through: :edition_items
  has_many :edition_posts
  has_many :posts, through: :edition_posts
  has_many :rides
  has_many :vehicles, through: :rides
  has_many :participants
  has_many :bookings
  has_many :locations, through: :bookings
  has_many :polls
end
