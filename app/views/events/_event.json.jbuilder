json.extract! event, :id, :brand_name, :event_title, :event_content, :created_at, :updated_at
json.url event_url(event, format: :json)
