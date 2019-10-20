class RecipesController < ApplicationController
  def index
  @recipes = Recipe.search(params[:search])

  end

  def recipe_params
    params.require(:recipe).permit(:name, :minutes, :user_id, :submitted, :tags, :nutrition, :n_steps, :steps, :description, :ingredients, :n_ingredients, :search)
  end

  def jsondata
    @recipes = Recipe.all
    @recipelist = @recipes.each do |r|
      {:name => r.name, :minutes => r.minutes, :submitted => r.submitted, :tags => r.tags, :nutrition => r.nutrition, :n_steps => r.n_steps, :steps => r.steps, :description => r.description, :ingredients => r.ingredients, :n_ingredients => r.n_ingredients, :contributor_id => r.contributor_id}
    end
    render :json => {:data => @recipelist}
  end
  end
