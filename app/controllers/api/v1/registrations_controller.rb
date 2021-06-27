class Api::V1::RegistrationsController < ApplicationController
  # before_action :set_team 
  before_action :set_registration, only: :destroy
  before_action :set_tournament 



  # # GET /registrations
  # def index
  #   @registrations = Registration.all

  #   render json: @registrations
  # end

  # # GET /registrations/1
  def show
    render json: @registration
  end

  # POST /registrations
  def create
    
    # byebug
    @registration = @tournament.registrations.build(registration_params)
    
    if @registration.save
      render json:{
        status: 201,
        registration: @registration
        }, status: :created, location: api_v1_tournaments_path(@registration)
    else
      render json: {
          status: 422,
          errors: @registration.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end

  end

  # # PATCH/PUT /registrations/1
  # def update
  #   if @registration.update(registration_params)
  #     render json: @registration
  #   else
  #     render json: @registration.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /registrations/1
  def destroy
    @registration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find_by_id(params[:id])
    end

    def set_tournament
      @tournament = Tournament.find_by_id(params[:tournament_id])
    end

    def set_team
      
      @team = Team.find_by(params[:team_id])
      # @team.id
    end


    # Only allow a list of trusted parameters through.
    def registration_params
      params.require(:registration).permit(:team_id, :tournament_id)
    end
end
