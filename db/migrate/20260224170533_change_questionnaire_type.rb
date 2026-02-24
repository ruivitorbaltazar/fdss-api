class ChangeQuestionnaireType < ActiveRecord::Migration[7.0]
  def change
    rename_table :questionaire_questions, :questionnaire_questions
    rename_table :questionaire_answers, :questionnaire_answers

    rename_column :questionnaire_questions, :questionaire_id, :questionnaire_id
    rename_column :questionnaire_answers, :questionaire_question_id, :questionnaire_question_id
  end
end
