class AddColumnsToRestrictions < ActiveRecord::Migration[7.0]
  def change
    add_column :restrictions, :name, :text
    add_column :restrictions, :description, :text
  end
end
