json.extract! vehicle, :id, :driver_participant_id, :seats_available, :license_plate, :fuel_consumption, :vehicle_category_id, :vehicle_brand_id, :vehicle_model_id, :vehicle_fuel_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
