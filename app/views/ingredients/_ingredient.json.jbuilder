json.extract! ingredient, :id, :ingredient_name, :good_or_bad, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
