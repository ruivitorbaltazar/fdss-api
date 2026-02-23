class Restriction < ApplicationRecord
  enum category: %i[mobility medical allergy diet phobia]

  has_many :personal_restrictions
end
