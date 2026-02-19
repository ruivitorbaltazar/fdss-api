class Ride < ApplicationRecord
  belongs_to :edition
  belongs_to :vehicle
end
