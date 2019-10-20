Rails.application.routes.draw do
  resources :users
resources :recipes, param: :recipe_id
get '/displaycomparison' => 'recipecomparison#displaycomparison'
get '/recipecomparison/search.json' => 'recipecomparison#search'
get '/recipecomparison/display' => 'recipecomparison#display'
  get 'recipemaster/index'
  root 'recipemaster#index'
  get "/dashboard" => "dashboard#index"
  get "/cocktails" => "livedata#index"
  get "/recipecomparison" => "recipecomparison#index"
 get "/recipecomparison/search" => "recipecomparison#search"
  get "/maps" => "maps#index"
  get "/allrecipes" => "recipes#index"
  get "/allrecipes/json" => "recipes#jsondata"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
