class CreateFiliations < ActiveRecord::Migration[7.0]
  def change
    create_table :filiations do |t|
      t.references :parent_person, null: false, foreign_key: { to_table: :people }
      t.references :child_person, null: false, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
