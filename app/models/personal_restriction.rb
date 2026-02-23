class PersonalRestriction < ApplicationRecord
  enum severity: %i[low medium high extreme]

  belongs_to :person
  belongs_to :restriction
end
