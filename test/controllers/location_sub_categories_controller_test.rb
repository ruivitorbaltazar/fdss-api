require "test_helper"

class LocationSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_sub_category = location_sub_categories(:one)
  end

  test "should get index" do
    get location_sub_categories_url, as: :json
    assert_response :success
  end

  test "should create location_sub_category" do
    assert_difference("LocationSubCategory.count") do
      post location_sub_categories_url, params: { location_sub_category: { location_category_id: @location_sub_category.location_category_id, name: @location_sub_category.name } }, as: :json
    end

    assert_response :created
  end

  test "should show location_sub_category" do
    get location_sub_category_url(@location_sub_category), as: :json
    assert_response :success
  end

  test "should update location_sub_category" do
    patch location_sub_category_url(@location_sub_category), params: { location_sub_category: { location_category_id: @location_sub_category.location_category_id, name: @location_sub_category.name } }, as: :json
    assert_response :success
  end

  test "should destroy location_sub_category" do
    assert_difference("LocationSubCategory.count", -1) do
      delete location_sub_category_url(@location_sub_category), as: :json
    end

    assert_response :no_content
  end
end
