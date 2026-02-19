class CreateRestrictions < ActiveRecord::Migration[7.0]
  def change
    create_table :restrictions do |t|
      t.integer :category
      t.text :avoidances
      t.text :treatments

      t.timestamps
    end
  end
end
