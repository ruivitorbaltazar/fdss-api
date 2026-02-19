json.extract! booking, :id, :name, :description, :edition_id, :location_id, :start_date, :end_date, :contact_first_name, :contact_last_name, :contact_phone_code, :contact_phone_number, :price_adult, :price_child, :price_total, :external_url, :notes, :is_visible, :is_scheduled, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
