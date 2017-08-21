require 'test_helper'

class RecurringEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recurring_event = recurring_events(:one)
  end

  test "should get index" do
    get recurring_events_url
    assert_response :success
  end

  test "should get new" do
    get new_recurring_event_url
    assert_response :success
  end

  test "should create recurring_event" do
    assert_difference('RecurringEvent.count') do
      post recurring_events_url, params: { recurring_event: { anchor: @recurring_event.anchor, color: @recurring_event.color, frequency: @recurring_event.frequency, title: @recurring_event.title } }
    end

    assert_redirected_to recurring_event_url(RecurringEvent.last)
  end

  test "should show recurring_event" do
    get recurring_event_url(@recurring_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_recurring_event_url(@recurring_event)
    assert_response :success
  end

  test "should update recurring_event" do
    patch recurring_event_url(@recurring_event), params: { recurring_event: { anchor: @recurring_event.anchor, color: @recurring_event.color, frequency: @recurring_event.frequency, title: @recurring_event.title } }
    assert_redirected_to recurring_event_url(@recurring_event)
  end

  test "should destroy recurring_event" do
    assert_difference('RecurringEvent.count', -1) do
      delete recurring_event_url(@recurring_event)
    end

    assert_redirected_to recurring_events_url
  end
end
