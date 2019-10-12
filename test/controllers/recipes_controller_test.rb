require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { contributor_id: @recipe.contributor_id, description: @recipe.description, id: @recipe.id, ingredients: @recipe.ingredients, minutes: @recipe.minutes, n_ingredients: @recipe.n_ingredients, n_steps: @recipe.n_steps, name: @recipe.name, nutrition: @recipe.nutrition, rec: @recipe.rec, steps: @recipe.steps, submitted: @recipe.submitted, tags: @recipe.tags } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { contributor_id: @recipe.contributor_id, description: @recipe.description, id: @recipe.id, ingredients: @recipe.ingredients, minutes: @recipe.minutes, n_ingredients: @recipe.n_ingredients, n_steps: @recipe.n_steps, name: @recipe.name, nutrition: @recipe.nutrition, rec: @recipe.rec, steps: @recipe.steps, submitted: @recipe.submitted, tags: @recipe.tags } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end