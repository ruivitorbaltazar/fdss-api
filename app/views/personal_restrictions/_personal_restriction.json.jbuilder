json.extract! personal_restriction, :id, :person_id, :restriction_id, :severity, :notes, :created_at, :updated_at
json.url personal_restriction_url(personal_restriction, format: :json)
