class ChangeLocations < ActiveRecord::Migration[7.0]
  def change
    change_column_null :locations, :location_category_id, true
    change_column_null :locations, :location_sub_category_id, true
  end
end
