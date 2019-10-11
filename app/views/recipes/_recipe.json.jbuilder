json.extract! recipe, :id, :name, :id, :minutes, :contributor_id, :submitted, :tags, :nutrition, :n_steps, :steps, :description, :ingredients, :n_ingredients, :rec, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
