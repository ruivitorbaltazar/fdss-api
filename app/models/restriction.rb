class Restriction < ApplicationRecord
  enum category: %i[mobility medical allergy diet fobia]

  has_many :personal_restrictions
end
