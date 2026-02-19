json.extract! user, :id, :email, :password, :role, :status, :person_id, :created_at, :updated_at
json.url user_url(user, format: :json)
