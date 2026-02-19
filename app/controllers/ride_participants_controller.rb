class RideParticipantsController < ApplicationController
  before_action :set_ride_participant, only: %i[ show update destroy ]

  # GET /ride_participants
  # GET /ride_participants.json
  def index
    @ride_participants = RideParticipant.all
  end

  # GET /ride_participants/1
  # GET /ride_participants/1.json
  def show
  end

  # POST /ride_participants
  # POST /ride_participants.json
  def create
    @ride_participant = RideParticipant.new(ride_participant_params)

    if @ride_participant.save
      render :show, status: :created, location: @ride_participant
    else
      render json: @ride_participant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ride_participants/1
  # PATCH/PUT /ride_participants/1.json
  def update
    if @ride_participant.update(ride_participant_params)
      render :show, status: :ok, location: @ride_participant
    else
      render json: @ride_participant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ride_participants/1
  # DELETE /ride_participants/1.json
  def destroy
    @ride_participant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ride_participant
      @ride_participant = RideParticipant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ride_participant_params
      params.require(:ride_participant).permit(:ride_id, :participant_id)
    end
end
