require "test_helper"

class RideParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ride_participant = ride_participants(:one)
  end

  test "should get index" do
    get ride_participants_url, as: :json
    assert_response :success
  end

  test "should create ride_participant" do
    assert_difference("RideParticipant.count") do
      post ride_participants_url, params: { ride_participant: { participant_id: @ride_participant.participant_id, ride_id: @ride_participant.ride_id } }, as: :json
    end

    assert_response :created
  end

  test "should show ride_participant" do
    get ride_participant_url(@ride_participant), as: :json
    assert_response :success
  end

  test "should update ride_participant" do
    patch ride_participant_url(@ride_participant), params: { ride_participant: { participant_id: @ride_participant.participant_id, ride_id: @ride_participant.ride_id } }, as: :json
    assert_response :success
  end

  test "should destroy ride_participant" do
    assert_difference("RideParticipant.count", -1) do
      delete ride_participant_url(@ride_participant), as: :json
    end

    assert_response :no_content
  end
end
