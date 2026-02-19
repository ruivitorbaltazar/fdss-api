require "test_helper"

class RidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ride = rides(:one)
  end

  test "should get index" do
    get rides_url, as: :json
    assert_response :success
  end

  test "should create ride" do
    assert_difference("Ride.count") do
      post rides_url, params: { ride: { distance: @ride.distance, edition_id: @ride.edition_id, fuel_price: @ride.fuel_price, notes: @ride.notes, vehicle_id: @ride.vehicle_id } }, as: :json
    end

    assert_response :created
  end

  test "should show ride" do
    get ride_url(@ride), as: :json
    assert_response :success
  end

  test "should update ride" do
    patch ride_url(@ride), params: { ride: { distance: @ride.distance, edition_id: @ride.edition_id, fuel_price: @ride.fuel_price, notes: @ride.notes, vehicle_id: @ride.vehicle_id } }, as: :json
    assert_response :success
  end

  test "should destroy ride" do
    assert_difference("Ride.count", -1) do
      delete ride_url(@ride), as: :json
    end

    assert_response :no_content
  end
end
