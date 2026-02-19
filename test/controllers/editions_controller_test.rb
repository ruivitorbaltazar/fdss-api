require "test_helper"

class EditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edition = editions(:one)
  end

  test "should get index" do
    get editions_url, as: :json
    assert_response :success
  end

  test "should create edition" do
    assert_difference("Edition.count") do
      post editions_url, params: { edition: { budget: @edition.budget, description: @edition.description, end_date: @edition.end_date, event_id: @edition.event_id, meeting_location_id: @edition.meeting_location_id, name: @edition.name, slug: @edition.slug, start_date: @edition.start_date, user_id: @edition.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show edition" do
    get edition_url(@edition), as: :json
    assert_response :success
  end

  test "should update edition" do
    patch edition_url(@edition), params: { edition: { budget: @edition.budget, description: @edition.description, end_date: @edition.end_date, event_id: @edition.event_id, meeting_location_id: @edition.meeting_location_id, name: @edition.name, slug: @edition.slug, start_date: @edition.start_date, user_id: @edition.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy edition" do
    assert_difference("Edition.count", -1) do
      delete edition_url(@edition), as: :json
    end

    assert_response :no_content
  end
end
