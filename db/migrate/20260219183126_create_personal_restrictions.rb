class CreatePersonalRestrictions < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_restrictions do |t|
      t.references :person, null: false, foreign_key: true
      t.references :restriction, null: false, foreign_key: true
      t.integer :severity
      t.text :notes

      t.timestamps
    end
  end
end
