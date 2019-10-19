class RecipemasterController < ApplicationController
def index
@recipe1 = Recipe.where("n_ingredients = ? AND n_steps = ?", params[:q], params[:y])

end
 
end
