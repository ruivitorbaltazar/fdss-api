class Questionnaire < ApplicationRecord
  belongs_to :edition
  belongs_to :user

  has_many :questionnaire_questions
end
