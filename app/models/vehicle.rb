class Vehicle < ApplicationRecord
  belongs_to :vehicle_category
  belongs_to :vehicle_brand
  belongs_to :vehicle_model
  belongs_to :vehicle_fuel
  belongs_to :owner_person, class_name: "Person"

  has_many :rides
end
