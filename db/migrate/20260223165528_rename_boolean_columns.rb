class RenameBooleanColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :participants, :has_paid, :integer, default: 0, using: 'CASE WHEN has_paid THEN 1 ELSE 0 END'
    change_column :participants, :is_visible, :integer, default: 0, using: 'CASE WHEN is_visible THEN 1 ELSE 0 END'
    rename_column :participants, :has_paid, :payment_status
    rename_column :participants, :is_visible, :visibility_status

    change_column :bookings, :is_visible, :integer, default: 0, using: 'CASE WHEN is_visible THEN 1 ELSE 0 END'
    change_column :bookings, :is_scheduled, :integer, default: 0, using: 'CASE WHEN is_scheduled THEN 1 ELSE 0 END'
    rename_column :bookings, :is_visible, :visibility_status
    rename_column :bookings, :is_scheduled, :scheduled_status
  end
end
