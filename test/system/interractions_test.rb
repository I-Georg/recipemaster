require "application_system_test_case"

class InterractionsTest < ApplicationSystemTestCase
  setup do
    @interraction = interractions(:one)
  end

  test "visiting the index" do
    visit interractions_url
    assert_selector "h1", text: "Interractions"
  end

  test "creating a Interraction" do
    visit interractions_url
    click_on "New Interraction"

    fill_in "Date", with: @interraction.date
    fill_in "Rating", with: @interraction.rating
    fill_in "Recipe", with: @interraction.recipe_id
    fill_in "Review", with: @interraction.review
    fill_in "User", with: @interraction.user_id
    click_on "Create Interraction"

    assert_text "Interraction was successfully created"
    click_on "Back"
  end

  test "updating a Interraction" do
    visit interractions_url
    click_on "Edit", match: :first

    fill_in "Date", with: @interraction.date
    fill_in "Rating", with: @interraction.rating
    fill_in "Recipe", with: @interraction.recipe_id
    fill_in "Review", with: @interraction.review
    fill_in "User", with: @interraction.user_id
    click_on "Update Interraction"

    assert_text "Interraction was successfully updated"
    click_on "Back"
  end

  test "destroying a Interraction" do
    visit interractions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interraction was successfully destroyed"
  end
end
