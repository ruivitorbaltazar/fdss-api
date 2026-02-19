class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.references :edition, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.integer :fuel_price
      t.integer :distance
      t.text :notes

      t.timestamps
    end
  end
end
