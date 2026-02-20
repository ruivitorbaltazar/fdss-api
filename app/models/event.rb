class Event < ApplicationRecord
  belongs_to :user

  has_many :editions
  has_many :event_posts
  has_many :posts, through: :event_posts
end
