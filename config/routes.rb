Rails.application.routes.draw do
  resources :users
  get 'recipemaster/index'
  root 'recipemaster#index'
  get "/dashboard" => "dashboard#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
