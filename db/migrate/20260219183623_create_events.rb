class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :budget
      t.integer :recurrence
      t.string :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
