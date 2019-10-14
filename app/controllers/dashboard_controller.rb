class DashboardController < ApplicationController
  def index

    @recipes = Recipe.all
    @interactions = Interection.all
    @users = User.all

    @recipescount = Recipe.all.count
    @interactionscount = Interection.all.count
    @userscount = User.all.count
  end
end
