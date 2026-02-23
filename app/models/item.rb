class Item < ApplicationRecord
  belongs_to :event

  has_many :edition_items
  has_many :editions, through: :edition_items
end
