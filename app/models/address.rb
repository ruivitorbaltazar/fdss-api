class Address < ApplicationRecord
  belongs_to :country

  has_many :people
  has_many :locations
end
