require 'test_helper'

class TeamCompetitorsControllerTest < ActionController::TestCase
  setup do
    @team_competitor = team_competitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_competitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_competitor" do
    assert_difference('TeamCompetitor.count') do
      post :create, team_competitor: @team_competitor.attributes
    end

    assert_redirected_to team_competitor_path(assigns(:team_competitor))
  end

  test "should show team_competitor" do
    get :show, id: @team_competitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_competitor
    assert_response :success
  end

  test "should update team_competitor" do
    put :update, id: @team_competitor, team_competitor: @team_competitor.attributes
    assert_redirected_to team_competitor_path(assigns(:team_competitor))
  end

  test "should destroy team_competitor" do
    assert_difference('TeamCompetitor.count', -1) do
      delete :destroy, id: @team_competitor
    end

    assert_redirected_to team_competitors_path
  end
end
