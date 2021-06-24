class Api::V1::GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: {
        status: 201,
        game: @game
      }, status: :created, location: api_v1_game_path(@game)
    else
      render json: {
      status: 422,
      errors: @game.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: {
        status: 204,
        tournament: @game
      }
    else
      render json: {
      status: 400, 
      errors: @game.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:score, :game_number, :winning_team, :opponent_id, :opponent_name, :team_id, :tournament_id, :quantity)
    end
end
