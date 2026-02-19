require "test_helper"

class BookingParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_participant = booking_participants(:one)
  end

  test "should get index" do
    get booking_participants_url, as: :json
    assert_response :success
  end

  test "should create booking_participant" do
    assert_difference("BookingParticipant.count") do
      post booking_participants_url, params: { booking_participant: { booking_id: @booking_participant.booking_id, participant_id: @booking_participant.participant_id } }, as: :json
    end

    assert_response :created
  end

  test "should show booking_participant" do
    get booking_participant_url(@booking_participant), as: :json
    assert_response :success
  end

  test "should update booking_participant" do
    patch booking_participant_url(@booking_participant), params: { booking_participant: { booking_id: @booking_participant.booking_id, participant_id: @booking_participant.participant_id } }, as: :json
    assert_response :success
  end

  test "should destroy booking_participant" do
    assert_difference("BookingParticipant.count", -1) do
      delete booking_participant_url(@booking_participant), as: :json
    end

    assert_response :no_content
  end
end
