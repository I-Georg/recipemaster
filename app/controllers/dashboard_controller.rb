class DashboardController < ApplicationController
  def show
    render template: "dashboard/index"
    @recipes = Recipe.all
    @interactions = Interection.all
    @users = User.all

    @top10tags = Recipe.all.

  end
end
