require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Contributor", with: @recipe.contributor_id
    fill_in "Description", with: @recipe.description
    fill_in "Id", with: @recipe.id
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Minutes", with: @recipe.minutes
    fill_in "N ingredients", with: @recipe.n_ingredients
    fill_in "N steps", with: @recipe.n_steps
    fill_in "Name", with: @recipe.name
    fill_in "Nutrition", with: @recipe.nutrition
    fill_in "Rec", with: @recipe.rec
    fill_in "Steps", with: @recipe.steps
    fill_in "Submitted", with: @recipe.submitted
    fill_in "Tags", with: @recipe.tags
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Contributor", with: @recipe.contributor_id
    fill_in "Description", with: @recipe.description
    fill_in "Id", with: @recipe.id
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Minutes", with: @recipe.minutes
    fill_in "N ingredients", with: @recipe.n_ingredients
    fill_in "N steps", with: @recipe.n_steps
    fill_in "Name", with: @recipe.name
    fill_in "Nutrition", with: @recipe.nutrition
    fill_in "Rec", with: @recipe.rec
    fill_in "Steps", with: @recipe.steps
    fill_in "Submitted", with: @recipe.submitted
    fill_in "Tags", with: @recipe.tags
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
