json.extract! interaction, :id, :user_id, :recipe_id, :date, :rating, :review, :rec, :created_at, :updated_at
json.url interaction_url(interaction, format: :json)
