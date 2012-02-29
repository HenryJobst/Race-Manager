require 'test_helper'

class SubeventsControllerTest < ActionController::TestCase
  setup do
    @subevent = subevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subevent" do
    assert_difference('Subevent.count') do
      post :create, subevent: @subevent.attributes
    end

    assert_redirected_to subevent_path(assigns(:subevent))
  end

  test "should show subevent" do
    get :show, id: @subevent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subevent
    assert_response :success
  end

  test "should update subevent" do
    put :update, id: @subevent, subevent: @subevent.attributes
    assert_redirected_to subevent_path(assigns(:subevent))
  end

  test "should destroy subevent" do
    assert_difference('Subevent.count', -1) do
      delete :destroy, id: @subevent
    end

    assert_redirected_to subevents_path
  end
end
