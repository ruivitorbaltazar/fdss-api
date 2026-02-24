class Post < ApplicationRecord
  enum category: %i[photo video text]

  belongs_to :user

  has_many :event_posts
  has_many :events, through: :event_posts
  has_many :edition_posts
  has_many :editions, through: :edition_posts
  has_many :booking_posts
  has_many :bookings, through: :booking_posts

  has_many :post_comments
  has_many :comments, through: :post_comments

  has_many :reactions
end
