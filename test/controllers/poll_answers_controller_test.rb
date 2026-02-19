require "test_helper"

class PollAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_answer = poll_answers(:one)
  end

  test "should get index" do
    get poll_answers_url, as: :json
    assert_response :success
  end

  test "should create poll_answer" do
    assert_difference("PollAnswer.count") do
      post poll_answers_url, params: { poll_answer: { body: @poll_answer.body, poll_question_id: @poll_answer.poll_question_id, user_id: @poll_answer.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show poll_answer" do
    get poll_answer_url(@poll_answer), as: :json
    assert_response :success
  end

  test "should update poll_answer" do
    patch poll_answer_url(@poll_answer), params: { poll_answer: { body: @poll_answer.body, poll_question_id: @poll_answer.poll_question_id, user_id: @poll_answer.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy poll_answer" do
    assert_difference("PollAnswer.count", -1) do
      delete poll_answer_url(@poll_answer), as: :json
    end

    assert_response :no_content
  end
end
