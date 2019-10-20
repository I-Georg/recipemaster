class RecipecomparisonController < ApplicationController

def index
if params[:name1] && params[:name2] != nil
namer1 = '%'+params[:name1]+'%'
@recipex = Recipe.where("n_ingredients = ? AND n_steps = ? AND name LIKE ?", params[:q], params[:y], namer1)

namer2 = '%'+params[:name2]+'%'
@recipe2 = Recipe.where("n_ingredients = ? AND n_steps = ? AND name LIKE ?", params[:x], params[:z], namer2)

end
#x = '%'+x+'%'
Recipe.all.each do |i|
 t = i.ingredients
 t.delete!('[]\'')
@ing= t.split(', ') # recipe1 array = [ing1,ing2,ing3...] 
    
end
end
 def displaycomparison
if params[:name1] && params[:name2] != nil
namer1 = '%'+params[:name1]+'%'
@recipex = Recipe.where("n_ingredients = ? AND n_steps = ? AND name LIKE ?", params[:q], params[:y], namer1)

namer2 = '%'+params[:name2]+'%'
@recipe2 = Recipe.where("n_ingredients = ? AND n_steps = ? AND name LIKE ?", params[:x], params[:z], namer2)
end
end

#https://gorails.com/episodes/global-autocomplete-search
#https://stackoverflow.com/questions/58232844/rails-6-jbuilder-not-rendering-array-properly
def search 
@recipex = Recipe.all.ransack(name_cont: params[:q]).result(distinct: true).limit(7)
@recipey = Recipe.all.ransack(name_cont: params[:q]).result(distinct: true).limit(7)
 respond_to do |format|
      format.html {
      }
      format.json { 
        render json: @recipex
      }
end
#render :json => {:recipex => @recipex}
                # :recipey => @recipey}

#render :json => {:recipex => @recipex,
                # :recipey => @recipey}
#{:recipex.to_json(only: %i[name]),@recipey.to_json(only: %i[name])


             
end


 end

