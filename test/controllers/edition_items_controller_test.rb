require "test_helper"

class EditionItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edition_item = edition_items(:one)
  end

  test "should get index" do
    get edition_items_url, as: :json
    assert_response :success
  end

  test "should create edition_item" do
    assert_difference("EditionItem.count") do
      post edition_items_url, params: { edition_item: { edition_id: @edition_item.edition_id, item_id: @edition_item.item_id } }, as: :json
    end

    assert_response :created
  end

  test "should show edition_item" do
    get edition_item_url(@edition_item), as: :json
    assert_response :success
  end

  test "should update edition_item" do
    patch edition_item_url(@edition_item), params: { edition_item: { edition_id: @edition_item.edition_id, item_id: @edition_item.item_id } }, as: :json
    assert_response :success
  end

  test "should destroy edition_item" do
    assert_difference("EditionItem.count", -1) do
      delete edition_item_url(@edition_item), as: :json
    end

    assert_response :no_content
  end
end
