require "test_helper"

class DreamDestinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dream_destination = dream_destinations(:one)
  end

  test "should get index" do
    get dream_destinations_url
    assert_response :success
  end

  test "should get new" do
    get new_dream_destination_url
    assert_response :success
  end

  test "should create dream_destination" do
    assert_difference("DreamDestination.count") do
      post dream_destinations_url, params: { dream_destination: { goal: @dream_destination.goal, location: @dream_destination.location, reason: @dream_destination.reason } }
    end

    assert_redirected_to dream_destination_url(DreamDestination.last)
  end

  test "should show dream_destination" do
    get dream_destination_url(@dream_destination)
    assert_response :success
  end

  test "should get edit" do
    get edit_dream_destination_url(@dream_destination)
    assert_response :success
  end

  test "should update dream_destination" do
    patch dream_destination_url(@dream_destination), params: { dream_destination: { goal: @dream_destination.goal, location: @dream_destination.location, reason: @dream_destination.reason } }
    assert_redirected_to dream_destination_url(@dream_destination)
  end

  test "should destroy dream_destination" do
    assert_difference("DreamDestination.count", -1) do
      delete dream_destination_url(@dream_destination)
    end

    assert_redirected_to dream_destinations_url
  end
end
