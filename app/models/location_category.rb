class LocationCategory < ApplicationRecord
  has_many :location_sub_categories
  has_many :locations
end
