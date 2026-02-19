class CreateEditions < ActiveRecord::Migration[7.0]
  def change
    create_table :editions do |t|
      t.references :event, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :budget
      t.string :slug
      t.references :meeting_location, null: false, foreign_key: { to_table: :locations }
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
