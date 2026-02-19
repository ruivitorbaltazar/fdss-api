require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url, as: :json
    assert_response :success
  end

  test "should create booking" do
    assert_difference("Booking.count") do
      post bookings_url, params: { booking: { contact_first_name: @booking.contact_first_name, contact_last_name: @booking.contact_last_name, contact_phone_code: @booking.contact_phone_code, contact_phone_number: @booking.contact_phone_number, description: @booking.description, edition_id: @booking.edition_id, end_date: @booking.end_date, external_url: @booking.external_url, is_scheduled: @booking.is_scheduled, is_visible: @booking.is_visible, location_id: @booking.location_id, name: @booking.name, notes: @booking.notes, price_adult: @booking.price_adult, price_child: @booking.price_child, price_total: @booking.price_total, start_date: @booking.start_date, user_id: @booking.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show booking" do
    get booking_url(@booking), as: :json
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { contact_first_name: @booking.contact_first_name, contact_last_name: @booking.contact_last_name, contact_phone_code: @booking.contact_phone_code, contact_phone_number: @booking.contact_phone_number, description: @booking.description, edition_id: @booking.edition_id, end_date: @booking.end_date, external_url: @booking.external_url, is_scheduled: @booking.is_scheduled, is_visible: @booking.is_visible, location_id: @booking.location_id, name: @booking.name, notes: @booking.notes, price_adult: @booking.price_adult, price_child: @booking.price_child, price_total: @booking.price_total, start_date: @booking.start_date, user_id: @booking.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy booking" do
    assert_difference("Booking.count", -1) do
      delete booking_url(@booking), as: :json
    end

    assert_response :no_content
  end
end
