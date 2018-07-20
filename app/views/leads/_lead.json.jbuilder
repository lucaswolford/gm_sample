json.extract! lead, :id, :name, :email, :postal_code, :created_at, :updated_at
json.url lead_url(lead, format: :json)
