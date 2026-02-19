json.extract! event, :id, :name, :description, :budget, :recurrence, :slug, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
