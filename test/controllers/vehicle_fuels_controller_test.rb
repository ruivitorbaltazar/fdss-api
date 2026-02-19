require "test_helper"

class VehicleFuelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_fuel = vehicle_fuels(:one)
  end

  test "should get index" do
    get vehicle_fuels_url, as: :json
    assert_response :success
  end

  test "should create vehicle_fuel" do
    assert_difference("VehicleFuel.count") do
      post vehicle_fuels_url, params: { vehicle_fuel: { name: @vehicle_fuel.name } }, as: :json
    end

    assert_response :created
  end

  test "should show vehicle_fuel" do
    get vehicle_fuel_url(@vehicle_fuel), as: :json
    assert_response :success
  end

  test "should update vehicle_fuel" do
    patch vehicle_fuel_url(@vehicle_fuel), params: { vehicle_fuel: { name: @vehicle_fuel.name } }, as: :json
    assert_response :success
  end

  test "should destroy vehicle_fuel" do
    assert_difference("VehicleFuel.count", -1) do
      delete vehicle_fuel_url(@vehicle_fuel), as: :json
    end

    assert_response :no_content
  end
end
