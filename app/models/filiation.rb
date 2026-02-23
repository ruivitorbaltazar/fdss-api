class Filiation < ApplicationRecord
  belongs_to :parent_person,
              class_name: 'Person',
              foreign_key: 'parent_person_id'
  belongs_to :child_person,
              class_name: 'Person',
              foreign_key: 'child_person_id'
end
