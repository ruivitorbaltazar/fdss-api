class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :postal_code
      t.string :city
      t.string :state
      t.string :coordinates
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
