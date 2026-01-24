class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :budget
      t.string :slug
      t.integer :creator_user_id

      t.timestamps
    end
  end
end
