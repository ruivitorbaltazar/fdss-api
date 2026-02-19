class CreateLocationSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :location_sub_categories do |t|
      t.string :name
      t.references :location_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
