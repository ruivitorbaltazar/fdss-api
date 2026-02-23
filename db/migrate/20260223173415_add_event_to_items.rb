class AddEventToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :event, foreign_key: true
  end
end
