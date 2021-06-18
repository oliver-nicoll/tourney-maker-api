class Api::V1::TeamTournamentsController < ApplicationController
  before_action :set_team_tournament, only: [:show, :update, :destroy]

  # GET /team_tournaments
  def index
    @team_tournaments = TeamTournament.all

    render json: @team_tournaments
  end

  # GET /team_tournaments/1
  def show
    render json: @team_tournament
  end

  # POST /team_tournaments
  def create
    @team_tournament = TeamTournament.new(team_tournament_params)

    if @team_tournament.save
      render json: @team_tournament, status: :created, location: @team_tournament
    else
      render json: @team_tournament.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_tournaments/1
  def update
    if @team_tournament.update(team_tournament_params)
      render json: @team_tournament
    else
      render json: @team_tournament.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_tournaments/1
  def destroy
    @team_tournament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_tournament
      @team_tournament = TeamTournament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_tournament_params
      params.fetch(:team_tournament, {})
    end
end
