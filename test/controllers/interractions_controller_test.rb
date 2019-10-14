require 'test_helper'

class InterractionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interraction = interractions(:one)
  end

  test "should get index" do
    get interractions_url
    assert_response :success
  end

  test "should get new" do
    get new_interraction_url
    assert_response :success
  end

  test "should create interraction" do
    assert_difference('Interraction.count') do
      post interractions_url, params: { interraction: { date: @interraction.date, rating: @interraction.rating, recipe_id: @interraction.recipe_id, review: @interraction.review, user_id: @interraction.user_id } }
    end

    assert_redirected_to interraction_url(Interraction.last)
  end

  test "should show interraction" do
    get interraction_url(@interraction)
    assert_response :success
  end

  test "should get edit" do
    get edit_interraction_url(@interraction)
    assert_response :success
  end

  test "should update interraction" do
    patch interraction_url(@interraction), params: { interraction: { date: @interraction.date, rating: @interraction.rating, recipe_id: @interraction.recipe_id, review: @interraction.review, user_id: @interraction.user_id } }
    assert_redirected_to interraction_url(@interraction)
  end

  test "should destroy interraction" do
    assert_difference('Interraction.count', -1) do
      delete interraction_url(@interraction)
    end

    assert_redirected_to interractions_url
  end
end
