class Person < ApplicationRecord
  belongs_to :spouse_person
  belongs_to :guardian_1_person
  belongs_to :guardian_2_person
  belongs_to :address
end
