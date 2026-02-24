class RenameColumnsInRestrictions < ActiveRecord::Migration[7.0]
  def change
    rename_column :restrictions, :avoidances, :prevention
    rename_column :restrictions, :treatments, :treatment
  end
end
