require "test_helper"

class VehicleCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_category = vehicle_categories(:one)
  end

  test "should get index" do
    get vehicle_categories_url, as: :json
    assert_response :success
  end

  test "should create vehicle_category" do
    assert_difference("VehicleCategory.count") do
      post vehicle_categories_url, params: { vehicle_category: { name: @vehicle_category.name } }, as: :json
    end

    assert_response :created
  end

  test "should show vehicle_category" do
    get vehicle_category_url(@vehicle_category), as: :json
    assert_response :success
  end

  test "should update vehicle_category" do
    patch vehicle_category_url(@vehicle_category), params: { vehicle_category: { name: @vehicle_category.name } }, as: :json
    assert_response :success
  end

  test "should destroy vehicle_category" do
    assert_difference("VehicleCategory.count", -1) do
      delete vehicle_category_url(@vehicle_category), as: :json
    end

    assert_response :no_content
  end
end
