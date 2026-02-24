class QuestionnaireQuestion < ApplicationRecord
  belongs_to :questionnaire

  has_many :questionnaire_answers
end
