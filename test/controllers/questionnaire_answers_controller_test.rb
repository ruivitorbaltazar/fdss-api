require "test_helper"

class QuestionnaireAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire_answer = questionnaire_answers(:one)
  end

  test "should get index" do
    get questionnaire_answers_url, as: :json
    assert_response :success
  end

  test "should create questionnaire_answer" do
    assert_difference("QuestionnaireAnswer.count") do
      post questionnaire_answers_url, params: { questionnaire_answer: { body: @questionnaire_answer.body, questionnaire_question_id: @questionnaire_answer.questionnaire_question_id, user_id: @questionnaire_answer.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show questionnaire_answer" do
    get questionnaire_answer_url(@questionnaire_answer), as: :json
    assert_response :success
  end

  test "should update questionnaire_answer" do
    patch questionnaire_answer_url(@questionnaire_answer), params: { questionnaire_answer: { body: @questionnaire_answer.body, questionnaire_question_id: @questionnaire_answer.questionnaire_question_id, user_id: @questionnaire_answer.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy questionnaire_answer" do
    assert_difference("QuestionnaireAnswer.count", -1) do
      delete questionnaire_answer_url(@questionnaire_answer), as: :json
    end

    assert_response :no_content
  end
end
