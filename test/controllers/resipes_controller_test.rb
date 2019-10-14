require 'test_helper'

class ResipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resipe = resipes(:one)
  end

  test "should get index" do
    get resipes_url
    assert_response :success
  end

  test "should get new" do
    get new_resipe_url
    assert_response :success
  end

  test "should create resipe" do
    assert_difference('Resipe.count') do
      post resipes_url, params: { resipe: { contributor_id: @resipe.contributor_id, description: @resipe.description, ingredients: @resipe.ingredients, integer: @resipe.integer, minutes: @resipe.minutes, n_ingredients: @resipe.n_ingredients, n_steps: @resipe.n_steps, name: @resipe.name, nutrition: @resipe.nutrition, rec: @resipe.rec, recipe_id: @resipe.recipe_id, sub,itted: @resipe.sub,itted, tags: @resipe.tags } }
    end

    assert_redirected_to resipe_url(Resipe.last)
  end

  test "should show resipe" do
    get resipe_url(@resipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_resipe_url(@resipe)
    assert_response :success
  end

  test "should update resipe" do
    patch resipe_url(@resipe), params: { resipe: { contributor_id: @resipe.contributor_id, description: @resipe.description, ingredients: @resipe.ingredients, integer: @resipe.integer, minutes: @resipe.minutes, n_ingredients: @resipe.n_ingredients, n_steps: @resipe.n_steps, name: @resipe.name, nutrition: @resipe.nutrition, rec: @resipe.rec, recipe_id: @resipe.recipe_id, sub,itted: @resipe.sub,itted, tags: @resipe.tags } }
    assert_redirected_to resipe_url(@resipe)
  end

  test "should destroy resipe" do
    assert_difference('Resipe.count', -1) do
      delete resipe_url(@resipe)
    end

    assert_redirected_to resipes_url
  end
end
