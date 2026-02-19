class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.references :person, null: false, foreign_key: true
      t.references :edition, null: false, foreign_key: true
      t.integer :role
      t.integer :status
      t.boolean :is_visible
      t.integer :payment_due
      t.boolean :has_paid
      t.text :notes
      t.datetime :invitation_date
      t.datetime :response_date

      t.timestamps
    end
  end
end
