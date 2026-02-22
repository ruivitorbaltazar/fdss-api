class ChangeColumnsInItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :amount
    remove_column :items, :notes

    add_column :edition_items, :amount, :integer
    add_column :edition_items, :notes, :text
  end
end
