class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.references :location_category, null: false, foreign_key: true
      t.references :location_sub_category, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
