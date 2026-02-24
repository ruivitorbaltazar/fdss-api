json.extract! questionnaire_question, :id, :body, :questionnaire_id, :created_at, :updated_at
json.url questionnaire_question_url(questionnaire_question, format: :json)
