class QuestionnaireAnswer < ApplicationRecord
  belongs_to :questionnaire_question
  belongs_to :user
end
