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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :id, :minutes, :contributor_id, :submitted, :tags, :nutrition, :n_steps, :steps, :description, :ingredients, :n_ingredients, :rec)
    end
end
