class RenameOwnerInVehicles < ActiveRecord::Migration[7.0]
  def change
    rename_column :vehicles, :owner_id, :owner_person_id
  end
end
