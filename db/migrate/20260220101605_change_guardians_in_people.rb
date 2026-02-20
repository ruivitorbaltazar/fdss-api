class ChangeGuardiansInPeople < ActiveRecord::Migration[7.0]
  def change
    remove_column :people, :guardian_1_person_id
    remove_column :people, :guardian_2_person_id
  end
end
