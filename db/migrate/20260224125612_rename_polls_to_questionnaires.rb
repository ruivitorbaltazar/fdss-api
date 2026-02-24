class RenamePollsToQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    rename_table :polls, :questionnaires
    rename_table :poll_questions, :questionaire_questions
    rename_table :poll_answers, :questionaire_answers

    rename_column :questionaire_answers, :poll_question_id, :questionaire_question_id
    rename_column :questionaire_questions, :poll_id, :questionaire_id

    add_column :questionnaires, :category, :integer
  end
end
