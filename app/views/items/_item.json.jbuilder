json.extract! item, :id, :name, :description, :amount, :notes, :created_at, :updated_at
json.url item_url(item, format: :json)
