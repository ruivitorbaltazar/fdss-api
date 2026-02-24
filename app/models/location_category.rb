class LocationCategory < ApplicationRecord
  has_many :location_sub_categories, dependent: :destroy
  has_many :locations
end
