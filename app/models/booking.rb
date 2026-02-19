class Booking < ApplicationRecord
  belongs_to :edition
  belongs_to :location
  belongs_to :user
end
