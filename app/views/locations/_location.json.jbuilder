json.extract! location, :id, :name, :description, :location_category_id, :location_sub_category_id, :address_id, :notes, :created_at, :updated_at
json.url location_url(location, format: :json)
