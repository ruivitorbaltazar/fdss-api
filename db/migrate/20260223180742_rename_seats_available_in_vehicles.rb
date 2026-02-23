class RenameSeatsAvailableInVehicles < ActiveRecord::Migration[7.0]
  def change
    rename_column :vehicles, :seats_available, :seats
  end
end
