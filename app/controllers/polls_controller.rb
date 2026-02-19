class PollsController < ApplicationController
  before_action :set_poll, only: %i[ show update destroy ]

  # GET /polls
  # GET /polls.json
  def index
    @polls = Poll.all
  end

  # GET /polls/1
  # GET /polls/1.json
  def show
  end

  # POST /polls
  # POST /polls.json
  def create
    @poll = Poll.new(poll_params)

    if @poll.save
      render :show, status: :created, location: @poll
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /polls/1
  # PATCH/PUT /polls/1.json
  def update
    if @poll.update(poll_params)
      render :show, status: :ok, location: @poll
    else
      render json: @poll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /polls/1
  # DELETE /polls/1.json
  def destroy
    @poll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poll_params
      params.require(:poll).permit(:closing_date, :edition_id, :user_id)
    end
end
