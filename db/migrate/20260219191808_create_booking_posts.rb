class CreateBookingPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_posts do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
