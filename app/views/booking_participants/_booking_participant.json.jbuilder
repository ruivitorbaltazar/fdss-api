json.extract! booking_participant, :id, :booking_id, :participant_id, :created_at, :updated_at
json.url booking_participant_url(booking_participant, format: :json)
