require 'test_helper'

class EventCompetitorsControllerTest < ActionController::TestCase
  setup do
    @event_competitor = event_competitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_competitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_competitor" do
    assert_difference('EventCompetitor.count') do
      post :create, event_competitor: @event_competitor.attributes
    end

    assert_redirected_to event_competitor_path(assigns(:event_competitor))
  end

  test "should show event_competitor" do
    get :show, id: @event_competitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_competitor
    assert_response :success
  end

  test "should update event_competitor" do
    put :update, id: @event_competitor, event_competitor: @event_competitor.attributes
    assert_redirected_to event_competitor_path(assigns(:event_competitor))
  end

  test "should destroy event_competitor" do
    assert_difference('EventCompetitor.count', -1) do
      delete :destroy, id: @event_competitor
    end

    assert_redirected_to event_competitors_path
  end
end
