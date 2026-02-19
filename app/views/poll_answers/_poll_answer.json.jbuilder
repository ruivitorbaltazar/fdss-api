json.extract! poll_answer, :id, :body, :poll_question_id, :user_id, :created_at, :updated_at
json.url poll_answer_url(poll_answer, format: :json)
