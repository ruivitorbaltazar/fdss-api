class ChangeIntegersToFloats < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :price_adult, :float
    change_column :bookings, :price_child, :float
    change_column :bookings, :price_total, :float

    change_column :participants, :payment_due, :float

    change_column :rides, :fuel_price, :float
    change_column :rides, :distance, :float

    change_column :vehicles, :fuel_consumption, :float
  end
end
