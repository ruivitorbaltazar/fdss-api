class PersonalRestriction < ApplicationRecord
  belongs_to :person
  belongs_to :restriction
end
