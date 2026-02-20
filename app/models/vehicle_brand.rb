class VehicleBrand < ApplicationRecord
  has_many :vehicle_models
  has_many :vehicles
end
