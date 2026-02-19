class BookingParticipantsController < ApplicationController
  before_action :set_booking_participant, only: %i[ show update destroy ]

  # GET /booking_participants
  # GET /booking_participants.json
  def index
    @booking_participants = BookingParticipant.all
  end

  # GET /booking_participants/1
  # GET /booking_participants/1.json
  def show
  end

  # POST /booking_participants
  # POST /booking_participants.json
  def create
    @booking_participant = BookingParticipant.new(booking_participant_params)

    if @booking_participant.save
      render :show, status: :created, location: @booking_participant
    else
      render json: @booking_participant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /booking_participants/1
  # PATCH/PUT /booking_participants/1.json
  def update
    if @booking_participant.update(booking_participant_params)
      render :show, status: :ok, location: @booking_participant
    else
      render json: @booking_participant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /booking_participants/1
  # DELETE /booking_participants/1.json
  def destroy
    @booking_participant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_participant
      @booking_participant = BookingParticipant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_participant_params
      params.require(:booking_participant).permit(:booking_id, :participant_id)
    end
end
