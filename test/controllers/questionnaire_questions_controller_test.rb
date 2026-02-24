require "test_helper"

class QuestionnaireQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire_question = questionnaire_questions(:one)
  end

  test "should get index" do
    get questionnaire_questions_url, as: :json
    assert_response :success
  end

  test "should create questionnaire_question" do
    assert_difference("QuestionnaireQuestion.count") do
      post questionnaire_questions_url, params: { questionnaire_question: { body: @questionnaire_question.body, questionnaire_id: @questionnaire_question.questionnaire_id } }, as: :json
    end

    assert_response :created
  end

  test "should show questionnaire_question" do
    get questionnaire_question_url(@questionnaire_question), as: :json
    assert_response :success
  end

  test "should update questionnaire_question" do
    patch questionnaire_question_url(@questionnaire_question), params: { questionnaire_question: { body: @questionnaire_question.body, questionnaire_id: @questionnaire_question.questionnaire_id } }, as: :json
    assert_response :success
  end

  test "should destroy questionnaire_question" do
    assert_difference("QuestionnaireQuestion.count", -1) do
      delete questionnaire_question_url(@questionnaire_question), as: :json
    end

    assert_response :no_content
  end
end
