json.extract! event_post, :id, :event_id, :post_id, :created_at, :updated_at
json.url event_post_url(event_post, format: :json)
