class DashboardController < ApplicationController
  def index

    @recipes = Recipe.all.order(:minutes)
    @interactions = Interection.all
    @users = User.all.order(:created_at)

    @recipescount = Recipe.all.count
    @interactionscount = Interection.all.count
    @userscount = User.all.count

    @users = @users.group_by {|u| u.created_at.strftime("%F")}
    @user_dates = @users.keys
    @user_counts = @users.values.map(&:length)

    @recipes = @recipes.group_by {|u| "#{(u.minutes / 60 + 1)} hours"}
    @recipe_hours = @recipes.keys
    @recipe_counts = @recipes.values.map(&:length)
  end
end
