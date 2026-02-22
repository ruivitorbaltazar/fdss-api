class RenameSpouseInPerson < ActiveRecord::Migration[7.0]
  def change
    rename_column :people, :spouse_person_id, :partner_person_id
  end
end
