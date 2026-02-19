json.extract! country, :id, :name, :alpha_2_code, :alpha_3_code, :phone_code, :created_at, :updated_at
json.url country_url(country, format: :json)
