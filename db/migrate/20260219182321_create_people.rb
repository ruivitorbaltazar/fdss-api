class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.references :spouse_person, foreign_key: { to_table: :people }
      t.references :guardian_1_person, foreign_key: { to_table: :people }
      t.references :guardian_2_person, foreign_key: { to_table: :people }
      t.string :phone_code
      t.string :phone_number
      t.string :email
      t.references :address, foreign_key: true
      t.text :bio

      t.timestamps
    end
  end
end
