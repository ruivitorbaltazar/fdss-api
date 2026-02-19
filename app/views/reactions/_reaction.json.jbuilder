json.extract! reaction, :id, :post_id, :comment_id, :emoji, :user_id, :created_at, :updated_at
json.url reaction_url(reaction, format: :json)
