require "test_helper"

class LocationCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_category = location_categories(:one)
  end

  test "should get index" do
    get location_categories_url, as: :json
    assert_response :success
  end

  test "should create location_category" do
    assert_difference("LocationCategory.count") do
      post location_categories_url, params: { location_category: { name: @location_category.name } }, as: :json
    end

    assert_response :created
  end

  test "should show location_category" do
    get location_category_url(@location_category), as: :json
    assert_response :success
  end

  test "should update location_category" do
    patch location_category_url(@location_category), params: { location_category: { name: @location_category.name } }, as: :json
    assert_response :success
  end

  test "should destroy location_category" do
    assert_difference("LocationCategory.count", -1) do
      delete location_category_url(@location_category), as: :json
    end

    assert_response :no_content
  end
end
