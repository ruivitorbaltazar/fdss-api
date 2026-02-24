json.extract! questionnaire_answer, :id, :body, :questionnaire_question_id, :user_id, :created_at, :updated_at
json.url questionnaire_answer_url(questionnaire_answer, format: :json)
