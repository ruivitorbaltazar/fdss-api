json.extract! person, :id, :first_name, :last_name, :birth_date, :spouse_person_id, :guardian_1_person_id, :guardian_2_person_id, :phone_code, :phone_number, :email, :address_id, :bio, :created_at, :updated_at
json.url person_url(person, format: :json)
