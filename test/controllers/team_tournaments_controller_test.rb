require "test_helper"

class TeamTournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_tournament = team_tournaments(:one)
  end

  test "should get index" do
    get team_tournaments_url, as: :json
    assert_response :success
  end

  test "should create team_tournament" do
    assert_difference('TeamTournament.count') do
      post team_tournaments_url, params: { team_tournament: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show team_tournament" do
    get team_tournament_url(@team_tournament), as: :json
    assert_response :success
  end

  test "should update team_tournament" do
    patch team_tournament_url(@team_tournament), params: { team_tournament: {  } }, as: :json
    assert_response 200
  end

  test "should destroy team_tournament" do
    assert_difference('TeamTournament.count', -1) do
      delete team_tournament_url(@team_tournament), as: :json
    end

    assert_response 204
  end
end
