require "test_helper"

class FiliationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filiation = filiations(:one)
  end

  test "should get index" do
    get filiations_url, as: :json
    assert_response :success
  end

  test "should create filiation" do
    assert_difference("Filiation.count") do
      post filiations_url, params: { filiation: { child_person_id: @filiation.child_person_id, parent_person_id: @filiation.parent_person_id } }, as: :json
    end

    assert_response :created
  end

  test "should show filiation" do
    get filiation_url(@filiation), as: :json
    assert_response :success
  end

  test "should update filiation" do
    patch filiation_url(@filiation), params: { filiation: { child_person_id: @filiation.child_person_id, parent_person_id: @filiation.parent_person_id } }, as: :json
    assert_response :success
  end

  test "should destroy filiation" do
    assert_difference("Filiation.count", -1) do
      delete filiation_url(@filiation), as: :json
    end

    assert_response :no_content
  end
end
