require "test_helper"

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participant = participants(:one)
  end

  test "should get index" do
    get participants_url, as: :json
    assert_response :success
  end

  test "should create participant" do
    assert_difference("Participant.count") do
      post participants_url, params: { participant: { edition_id: @participant.edition_id, has_paid: @participant.has_paid, invitation_date: @participant.invitation_date, is_visible: @participant.is_visible, notes: @participant.notes, payment_due: @participant.payment_due, person_id: @participant.person_id, response_date: @participant.response_date, role: @participant.role, status: @participant.status } }, as: :json
    end

    assert_response :created
  end

  test "should show participant" do
    get participant_url(@participant), as: :json
    assert_response :success
  end

  test "should update participant" do
    patch participant_url(@participant), params: { participant: { edition_id: @participant.edition_id, has_paid: @participant.has_paid, invitation_date: @participant.invitation_date, is_visible: @participant.is_visible, notes: @participant.notes, payment_due: @participant.payment_due, person_id: @participant.person_id, response_date: @participant.response_date, role: @participant.role, status: @participant.status } }, as: :json
    assert_response :success
  end

  test "should destroy participant" do
    assert_difference("Participant.count", -1) do
      delete participant_url(@participant), as: :json
    end

    assert_response :no_content
  end
end
