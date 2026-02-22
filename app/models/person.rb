class Person < ApplicationRecord
  belongs_to :partner_person,
              class_name: 'Person',
              foreign_key: 'partner_person_id',
              optional: true
  has_one :inverse_partner_person,
          class_name: 'Person',
          foreign_key: 'partner_person_id'
  belongs_to :guardian_1_person,
              class_name: 'Person',
              foreign_key: 'guardian_1_person_id',
              optional: true
  belongs_to :guardian_2_person,
              class_name: 'Person',
              foreign_key: 'guardian_2_person_id',
              optional: true
  belongs_to :address

  has_one :user
  has_many :participants
  has_many :personal_restrictions
  has_many :restrictions, through: :personal_restrictions
end
