require 'test_helper'

class InterectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interection = interections(:one)
  end

  test "should get index" do
    get interections_url
    assert_response :success
  end

  test "should get new" do
    get new_interection_url
    assert_response :success
  end

  test "should create interection" do
    assert_difference('Interection.count') do
      post interections_url, params: { interection: { date: @interection.date, rating: @interection.rating, recipe_id: @interection.recipe_id, review: @interection.review, user_id: @interection.user_id } }
    end

    assert_redirected_to interection_url(Interection.last)
  end

  test "should show interection" do
    get interection_url(@interection)
    assert_response :success
  end

  test "should get edit" do
    get edit_interection_url(@interection)
    assert_response :success
  end

  test "should update interection" do
    patch interection_url(@interection), params: { interection: { date: @interection.date, rating: @interection.rating, recipe_id: @interection.recipe_id, review: @interection.review, user_id: @interection.user_id } }
    assert_redirected_to interection_url(@interection)
  end

  test "should destroy interection" do
    assert_difference('Interection.count', -1) do
      delete interection_url(@interection)
    end

    assert_redirected_to interections_url
  end
end
