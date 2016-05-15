require 'test_helper'

class ProfileTeamsControllerTest < ActionController::TestCase
  setup do
    @profile_team = profile_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_team" do
    assert_difference('ProfileTeam.count') do
      post :create, profile_team: { address_work: @profile_team.address_work, anexo: @profile_team.anexo, celular: @profile_team.celular, email: @profile_team.email, image: @profile_team.image, name: @profile_team.name, phone: @profile_team.phone }
    end

    assert_redirected_to profile_team_path(assigns(:profile_team))
  end

  test "should show profile_team" do
    get :show, id: @profile_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_team
    assert_response :success
  end

  test "should update profile_team" do
    patch :update, id: @profile_team, profile_team: { address_work: @profile_team.address_work, anexo: @profile_team.anexo, celular: @profile_team.celular, email: @profile_team.email, image: @profile_team.image, name: @profile_team.name, phone: @profile_team.phone }
    assert_redirected_to profile_team_path(assigns(:profile_team))
  end

  test "should destroy profile_team" do
    assert_difference('ProfileTeam.count', -1) do
      delete :destroy, id: @profile_team
    end

    assert_redirected_to profile_teams_path
  end
end
