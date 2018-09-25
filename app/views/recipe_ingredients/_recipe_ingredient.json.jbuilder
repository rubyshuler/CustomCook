json.extract! recipe_ingredient, :id, :ingredient_id, :quantity, :measure, :recipe_id, :created_at, :updated_at
json.url recipe_ingredient_url(recipe_ingredient, format: :json)
