require "test_helper"

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire = questionnaires(:one)
  end

  test "should get index" do
    get questionnaires_url, as: :json
    assert_response :success
  end

  test "should create questionnaire" do
    assert_difference("Questionnaire.count") do
      post questionnaires_url, params: { questionnaire: { closing_date: @questionnaire.closing_date, edition_id: @questionnaire.edition_id, user_id: @questionnaire.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show questionnaire" do
    get questionnaire_url(@questionnaire), as: :json
    assert_response :success
  end

  test "should update questionnaire" do
    patch questionnaire_url(@questionnaire), params: { questionnaire: { closing_date: @questionnaire.closing_date, edition_id: @questionnaire.edition_id, user_id: @questionnaire.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy questionnaire" do
    assert_difference("Questionnaire.count", -1) do
      delete questionnaire_url(@questionnaire), as: :json
    end

    assert_response :no_content
  end
end
