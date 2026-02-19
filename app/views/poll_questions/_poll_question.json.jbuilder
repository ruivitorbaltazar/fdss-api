json.extract! poll_question, :id, :body, :poll_id, :created_at, :updated_at
json.url poll_question_url(poll_question, format: :json)
