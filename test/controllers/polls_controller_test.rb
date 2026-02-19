require "test_helper"

class PollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll = polls(:one)
  end

  test "should get index" do
    get polls_url, as: :json
    assert_response :success
  end

  test "should create poll" do
    assert_difference("Poll.count") do
      post polls_url, params: { poll: { closing_date: @poll.closing_date, edition_id: @poll.edition_id, user_id: @poll.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show poll" do
    get poll_url(@poll), as: :json
    assert_response :success
  end

  test "should update poll" do
    patch poll_url(@poll), params: { poll: { closing_date: @poll.closing_date, edition_id: @poll.edition_id, user_id: @poll.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy poll" do
    assert_difference("Poll.count", -1) do
      delete poll_url(@poll), as: :json
    end

    assert_response :no_content
  end
end
