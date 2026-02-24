json.extract! comment_comment, :id, :parent_comment_id, :child_comment_id, :created_at, :updated_at
json.url comment_comment_url(comment_comment, format: :json)
