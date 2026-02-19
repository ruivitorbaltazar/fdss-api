class CreateRideParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :ride_participants do |t|
      t.references :ride, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
