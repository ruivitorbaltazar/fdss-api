class AddAddressLine3ToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :address_line_3, :string
  end
end
