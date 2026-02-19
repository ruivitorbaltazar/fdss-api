require "test_helper"

class BookingPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_post = booking_posts(:one)
  end

  test "should get index" do
    get booking_posts_url, as: :json
    assert_response :success
  end

  test "should create booking_post" do
    assert_difference("BookingPost.count") do
      post booking_posts_url, params: { booking_post: { booking_id: @booking_post.booking_id, post_id: @booking_post.post_id } }, as: :json
    end

    assert_response :created
  end

  test "should show booking_post" do
    get booking_post_url(@booking_post), as: :json
    assert_response :success
  end

  test "should update booking_post" do
    patch booking_post_url(@booking_post), params: { booking_post: { booking_id: @booking_post.booking_id, post_id: @booking_post.post_id } }, as: :json
    assert_response :success
  end

  test "should destroy booking_post" do
    assert_difference("BookingPost.count", -1) do
      delete booking_post_url(@booking_post), as: :json
    end

    assert_response :no_content
  end
end
