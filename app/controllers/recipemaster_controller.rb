class RecipemasterController < ApplicationController
def index
@recipe1 = Recipe.where("n_ingredients = ?", params[:q]).take(2)
@recipe2 = Recipe.where("n_ingredients = ?", params[:y]).take(2)


end
 
end
