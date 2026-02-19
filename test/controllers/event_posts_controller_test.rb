require "test_helper"

class EventPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_post = event_posts(:one)
  end

  test "should get index" do
    get event_posts_url, as: :json
    assert_response :success
  end

  test "should create event_post" do
    assert_difference("EventPost.count") do
      post event_posts_url, params: { event_post: { event_id: @event_post.event_id, post_id: @event_post.post_id } }, as: :json
    end

    assert_response :created
  end

  test "should show event_post" do
    get event_post_url(@event_post), as: :json
    assert_response :success
  end

  test "should update event_post" do
    patch event_post_url(@event_post), params: { event_post: { event_id: @event_post.event_id, post_id: @event_post.post_id } }, as: :json
    assert_response :success
  end

  test "should destroy event_post" do
    assert_difference("EventPost.count", -1) do
      delete event_post_url(@event_post), as: :json
    end

    assert_response :no_content
  end
end
