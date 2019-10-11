require "application_system_test_case"

class InterectionsTest < ApplicationSystemTestCase
  setup do
    @interection = interections(:one)
  end

  test "visiting the index" do
    visit interections_url
    assert_selector "h1", text: "Interections"
  end

  test "creating a Interection" do
    visit interections_url
    click_on "New Interection"

    fill_in "Date", with: @interection.date
    fill_in "Rating", with: @interection.rating
    fill_in "Recipe", with: @interection.recipe_id
    fill_in "Review", with: @interection.review
    fill_in "User", with: @interection.user_id
    click_on "Create Interection"

    assert_text "Interection was successfully created"
    click_on "Back"
  end

  test "updating a Interection" do
    visit interections_url
    click_on "Edit", match: :first

    fill_in "Date", with: @interection.date
    fill_in "Rating", with: @interection.rating
    fill_in "Recipe", with: @interection.recipe_id
    fill_in "Review", with: @interection.review
    fill_in "User", with: @interection.user_id
    click_on "Update Interection"

    assert_text "Interection was successfully updated"
    click_on "Back"
  end

  test "destroying a Interection" do
    visit interections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interection was successfully destroyed"
  end
end
