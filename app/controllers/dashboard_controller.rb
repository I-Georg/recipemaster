class DashboardController < ApplicationController
  def index
    @recipes = Recipe.all
    @users = User.all
    @recipescount = Recipe.all.count
    @userscount = User.all.count
  end
end
