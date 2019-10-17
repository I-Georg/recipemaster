class RecipemasterController < ApplicationController
def index
@recipes = Recipe.search(params[:search])
end

def recipe_params
  params.require(:recipe).permit(:name, :id, :minutes, :user_id, :submitted, :tags, :nutrition, :n_steps, :steps, :description, :ingredients, :n_ingredients, :rec, :search)
end

end
