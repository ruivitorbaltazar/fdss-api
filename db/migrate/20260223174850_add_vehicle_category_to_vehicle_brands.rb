class AddVehicleCategoryToVehicleBrands < ActiveRecord::Migration[7.0]
  def change
    add_reference :vehicle_brands, :vehicle_category, null: false, foreign_key: true
  end
end
