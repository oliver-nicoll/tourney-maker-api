class Api::V1::TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all

    #@teams.find_by(team_id: team.id)
    # @shuffle_teams = @teams.shuffle
    
    render json: @teams, except: [:created_at, :updated_at]
  end

  # GET /teams/1
  def show
    render json: @team, except: [:created_at, :updated_at]
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: {
        status: 201,
        team: @team
        }, status: :created, location: api_v1_teams_path(@team)
    else
      render json: {
          status: 422,
          errors: @team.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: {
         status: 204,
         tournament: @team
      }
    else
      render json: {
        status: 400,
        errors: @team.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:team_name, :players, :team_captain, :player_count, :ranked)
    end
end
