class RenameScheduledInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :scheduled_status, :scheduling_status
  end
end
