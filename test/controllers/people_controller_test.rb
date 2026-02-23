require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url, as: :json
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { address_id: @person.address_id, bio: @person.bio, birth_date: @person.birth_date, email: @person.email, first_name: @person.first_name, last_name: @person.last_name, phone_code: @person.phone_code, phone_number: @person.phone_number, partner_person_id: @person.partner_person_id } }, as: :json
    end

    assert_response :created
  end

  test "should show person" do
    get person_url(@person), as: :json
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address_id: @person.address_id, bio: @person.bio, birth_date: @person.birth_date, email: @person.email, first_name: @person.first_name, last_name: @person.last_name, phone_code: @person.phone_code, phone_number: @person.phone_number, partner_person_id: @person.partner_person_id } }, as: :json
    assert_response :success
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person), as: :json
    end

    assert_response :no_content
  end
end
