require "application_system_test_case"

class ResipesTest < ApplicationSystemTestCase
  setup do
    @resipe = resipes(:one)
  end

  test "visiting the index" do
    visit resipes_url
    assert_selector "h1", text: "Resipes"
  end

  test "creating a Resipe" do
    visit resipes_url
    click_on "New Resipe"

    fill_in "Contributor", with: @resipe.contributor_id
    fill_in "Description", with: @resipe.description
    fill_in "Ingredients", with: @resipe.ingredients
    fill_in "Integer", with: @resipe.integer
    fill_in "Minutes", with: @resipe.minutes
    fill_in "N ingredients", with: @resipe.n_ingredients
    fill_in "N steps", with: @resipe.n_steps
    fill_in "Name", with: @resipe.name
    fill_in "Nutrition", with: @resipe.nutrition
    fill_in "Rec", with: @resipe.rec
    fill_in "Recipe", with: @resipe.recipe_id
    fill_in "Sub,itted", with: @resipe.sub,itted
    fill_in "Tags", with: @resipe.tags
    click_on "Create Resipe"

    assert_text "Resipe was successfully created"
    click_on "Back"
  end

  test "updating a Resipe" do
    visit resipes_url
    click_on "Edit", match: :first

    fill_in "Contributor", with: @resipe.contributor_id
    fill_in "Description", with: @resipe.description
    fill_in "Ingredients", with: @resipe.ingredients
    fill_in "Integer", with: @resipe.integer
    fill_in "Minutes", with: @resipe.minutes
    fill_in "N ingredients", with: @resipe.n_ingredients
    fill_in "N steps", with: @resipe.n_steps
    fill_in "Name", with: @resipe.name
    fill_in "Nutrition", with: @resipe.nutrition
    fill_in "Rec", with: @resipe.rec
    fill_in "Recipe", with: @resipe.recipe_id
    fill_in "Sub,itted", with: @resipe.sub,itted
    fill_in "Tags", with: @resipe.tags
    click_on "Update Resipe"

    assert_text "Resipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Resipe" do
    visit resipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resipe was successfully destroyed"
  end
end
