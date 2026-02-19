class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.integer :seats_available
      t.string :license_plate
      t.integer :fuel_consumption
      t.references :vehicle_category, null: false, foreign_key: true
      t.references :vehicle_brand, null: false, foreign_key: true
      t.references :vehicle_model, null: false, foreign_key: true
      t.references :vehicle_fuel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
