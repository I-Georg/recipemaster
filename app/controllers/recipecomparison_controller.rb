class RecipecomparisonController < ApplicationController
def index
if params[:name1] && params[:name2] != nil
namer1 = '%'+params[:name1]+'%'
@recipex = Recipe.where("n_ingredients = ? AND n_steps = ? AND name LIKE ?", params[:q], params[:y], namer1)

namer2 = '%'+params[:name2]+'%'
@recipe2 = Recipe.where("n_ingredients = ? AND n_steps = ? AND name LIKE ?", params[:x], params[:z], namer2)

end
end
end
