class Api::V1::TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :update, :destroy]

  # GET /tournaments
  def index
    @tournaments = Tournament.all

    render json: @tournaments, except: [:created_at, :updated_at]
  end

  # GET /tournaments/1
  def show
    render json: @tournament, except: [:created_at, :updated_at]
  end

  # POST /tournaments
  def create
    @tournament = Tournament.new(tournament_params)

    if @tournament.save
      render json: {
        status: 201,
        tournament: @tournament
        }, status: :created, location: api_v1_tournament_path(@tournament)
    else
      render json: {
          status: 422,
          errors: @tournament.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tournaments/1
  def update
    if @tournament.update(tournament_params)
      render json: {
        status: 204,
        tournament: @tournament
      }
    else
      render json: {
        status: 400,
        errors: @tournament.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # DELETE /tournaments/1
  def destroy
    @tournament.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tournament_params
      params.require(:tournament).permit(:tourney_name, :date, :description, :host, :winner)
    end
end
