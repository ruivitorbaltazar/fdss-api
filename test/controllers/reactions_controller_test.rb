require "test_helper"

class ReactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reaction = reactions(:one)
  end

  test "should get index" do
    get reactions_url, as: :json
    assert_response :success
  end

  test "should create reaction" do
    assert_difference("Reaction.count") do
      post reactions_url, params: { reaction: { comment_id: @reaction.comment_id, emoji: @reaction.emoji, post_id: @reaction.post_id, user_id: @reaction.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show reaction" do
    get reaction_url(@reaction), as: :json
    assert_response :success
  end

  test "should update reaction" do
    patch reaction_url(@reaction), params: { reaction: { comment_id: @reaction.comment_id, emoji: @reaction.emoji, post_id: @reaction.post_id, user_id: @reaction.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy reaction" do
    assert_difference("Reaction.count", -1) do
      delete reaction_url(@reaction), as: :json
    end

    assert_response :no_content
  end
end
