class DashboardController < ApplicationController
  def index

    @recipes = Recipe.all.order(:minutes)
    @users = User.all.order(:created_at)

    @recipescount = Recipe.all.count
    @userscount = User.all.count

    @users = @users.group_by {|u| u.created_at.strftime("%F")}
    @user_dates = @users.keys
    @user_counts = @users.values.map(&:length)

    @recipes = @recipes.group_by {|u| "#{(u.minutes / 60 + 1)} hours"}
    @recipe_hours = @recipes.keys
    @recipe_counts = @recipes.values.map(&:length)

    @recipe_tags = Recipe.statistics(:tags)
    @recipe_nutrition = Recipe.statistics(:nutrition)
    @recipe_ingredient = Recipe.statistics(:ingredients)

    @recipe_step = Recipe.statistics(:steps)
  end
end
