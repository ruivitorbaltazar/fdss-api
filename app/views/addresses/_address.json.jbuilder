json.extract! address, :id, :address_line_1, :address_line_2, :postal_code, :city, :state, :coordinates, :country_id, :created_at, :updated_at
json.url address_url(address, format: :json)
