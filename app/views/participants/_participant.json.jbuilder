json.extract! participant, :id, :person_id, :edition_id, :role, :status, :is_visible, :payment_due, :has_paid, :notes, :invitation_date, :response_date, :created_at, :updated_at
json.url participant_url(participant, format: :json)
