class RecipesController < ApplicationController
  def index
  @recipes = Recipe.search(params[:search])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :minutes, :user_id, :submitted, :tags, :nutrition, :n_steps, :steps, :description, :ingredients, :n_ingredients, :search)
  end
end
