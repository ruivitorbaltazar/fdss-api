json.extract! poll, :id, :closing_date, :edition_id, :user_id, :created_at, :updated_at
json.url poll_url(poll, format: :json)
