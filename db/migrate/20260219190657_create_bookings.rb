class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.text :description
      t.references :edition, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_phone_code
      t.string :contact_phone_number
      t.integer :price_adult
      t.integer :price_child
      t.integer :price_total
      t.string :external_url
      t.text :notes
      t.boolean :is_visible
      t.boolean :is_scheduled
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
