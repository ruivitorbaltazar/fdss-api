class Restriction < ApplicationRecord
  enum category: { mobility: 0,  medical: 1,  allergy: 2,  diet: 3,  fobia: 4 }
end
