class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alpha_2_code
      t.string :alpha_3_code
      t.string :phone_code

      t.timestamps
    end
  end
end
