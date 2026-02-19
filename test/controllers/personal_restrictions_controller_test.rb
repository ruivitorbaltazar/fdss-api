require "test_helper"

class PersonalRestrictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_restriction = personal_restrictions(:one)
  end

  test "should get index" do
    get personal_restrictions_url, as: :json
    assert_response :success
  end

  test "should create personal_restriction" do
    assert_difference("PersonalRestriction.count") do
      post personal_restrictions_url, params: { personal_restriction: { notes: @personal_restriction.notes, person_id: @personal_restriction.person_id, restriction_id: @personal_restriction.restriction_id, severity: @personal_restriction.severity } }, as: :json
    end

    assert_response :created
  end

  test "should show personal_restriction" do
    get personal_restriction_url(@personal_restriction), as: :json
    assert_response :success
  end

  test "should update personal_restriction" do
    patch personal_restriction_url(@personal_restriction), params: { personal_restriction: { notes: @personal_restriction.notes, person_id: @personal_restriction.person_id, restriction_id: @personal_restriction.restriction_id, severity: @personal_restriction.severity } }, as: :json
    assert_response :success
  end

  test "should destroy personal_restriction" do
    assert_difference("PersonalRestriction.count", -1) do
      delete personal_restriction_url(@personal_restriction), as: :json
    end

    assert_response :no_content
  end
end
