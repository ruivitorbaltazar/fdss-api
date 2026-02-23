class ChangeAddressCoordinates < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :coordinates
    add_column :addresses, :latitude, :float
    add_column :addresses, :longitude, :float
  end
end
