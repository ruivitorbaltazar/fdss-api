class CreatePollAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :poll_answers do |t|
      t.text :body
      t.references :poll_question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
