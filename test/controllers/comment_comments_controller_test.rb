require "test_helper"

class CommentCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_comment = comment_comments(:one)
  end

  test "should get index" do
    get comment_comments_url, as: :json
    assert_response :success
  end

  test "should create comment_comment" do
    assert_difference("CommentComment.count") do
      post comment_comments_url, params: { comment_comment: { child_comment_id: @comment_comment.child_comment_id, parent_comment_id: @comment_comment.parent_comment_id } }, as: :json
    end

    assert_response :created
  end

  test "should show comment_comment" do
    get comment_comment_url(@comment_comment), as: :json
    assert_response :success
  end

  test "should update comment_comment" do
    patch comment_comment_url(@comment_comment), params: { comment_comment: { child_comment_id: @comment_comment.child_comment_id, parent_comment_id: @comment_comment.parent_comment_id } }, as: :json
    assert_response :success
  end

  test "should destroy comment_comment" do
    assert_difference("CommentComment.count", -1) do
      delete comment_comment_url(@comment_comment), as: :json
    end

    assert_response :no_content
  end
end
