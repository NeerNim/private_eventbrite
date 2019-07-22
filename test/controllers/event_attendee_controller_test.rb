require 'test_helper'

class EventAttendeeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get event_attendee_new_url
    assert_response :success
  end

  test "should get create" do
    get event_attendee_create_url
    assert_response :success
  end

  test "should get show" do
    get event_attendee_show_url
    assert_response :success
  end

end
