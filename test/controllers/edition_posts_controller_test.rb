require "test_helper"

class EditionPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edition_post = edition_posts(:one)
  end

  test "should get index" do
    get edition_posts_url, as: :json
    assert_response :success
  end

  test "should create edition_post" do
    assert_difference("EditionPost.count") do
      post edition_posts_url, params: { edition_post: { edition_id: @edition_post.edition_id, post_id: @edition_post.post_id } }, as: :json
    end

    assert_response :created
  end

  test "should show edition_post" do
    get edition_post_url(@edition_post), as: :json
    assert_response :success
  end

  test "should update edition_post" do
    patch edition_post_url(@edition_post), params: { edition_post: { edition_id: @edition_post.edition_id, post_id: @edition_post.post_id } }, as: :json
    assert_response :success
  end

  test "should destroy edition_post" do
    assert_difference("EditionPost.count", -1) do
      delete edition_post_url(@edition_post), as: :json
    end

    assert_response :no_content
  end
end
