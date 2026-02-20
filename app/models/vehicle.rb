class Vehicle < ApplicationRecord
  belongs_to :driver_participant
  belongs_to :vehicle_category
  belongs_to :vehicle_brand
  belongs_to :vehicle_model
  belongs_to :vehicle_fuel

  has_many :rides
end
