require "application_system_test_case"

class DreamDestinationsTest < ApplicationSystemTestCase
  setup do
    @dream_destination = dream_destinations(:one)
  end

  test "visiting the index" do
    visit dream_destinations_url
    assert_selector "h1", text: "Dream destinations"
  end

  test "should create dream destination" do
    visit dream_destinations_url
    click_on "New dream destination"

    fill_in "Goal", with: @dream_destination.goal
    fill_in "Location", with: @dream_destination.location
    fill_in "Reason", with: @dream_destination.reason
    click_on "Create Dream destination"

    assert_text "Dream destination was successfully created"
    click_on "Back"
  end

  test "should update Dream destination" do
    visit dream_destination_url(@dream_destination)
    click_on "Edit this dream destination", match: :first

    fill_in "Goal", with: @dream_destination.goal
    fill_in "Location", with: @dream_destination.location
    fill_in "Reason", with: @dream_destination.reason
    click_on "Update Dream destination"

    assert_text "Dream destination was successfully updated"
    click_on "Back"
  end

  test "should destroy Dream destination" do
    visit dream_destination_url(@dream_destination)
    click_on "Destroy this dream destination", match: :first

    assert_text "Dream destination was successfully destroyed"
  end
end
