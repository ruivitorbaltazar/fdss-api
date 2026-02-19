class CreateBookingParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_participants do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
