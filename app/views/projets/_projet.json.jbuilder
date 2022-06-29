json.extract! projet, :id, :nom, :url, :created_at, :updated_at
json.url projet_url(projet, format: :json)
