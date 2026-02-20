class Filiation < ApplicationRecord
  belongs_to :parent_person
  belongs_to :child_person
end
