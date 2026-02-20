class VehicleModel < ApplicationRecord
  belongs_to :vehicle_brand

  has_many :vehicles
end
