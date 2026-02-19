class CreateEventPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :event_posts do |t|
      t.references :event, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
