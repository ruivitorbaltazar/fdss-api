class PollAnswersController < ApplicationController
  before_action :set_poll_answer, only: %i[ show update destroy ]

  # GET /poll_answers
  # GET /poll_answers.json
  def index
    @poll_answers = PollAnswer.all
  end

  # GET /poll_answers/1
  # GET /poll_answers/1.json
  def show
  end

  # POST /poll_answers
  # POST /poll_answers.json
  def create
    @poll_answer = PollAnswer.new(poll_answer_params)

    if @poll_answer.save
      render :show, status: :created, location: @poll_answer
    else
      render json: @poll_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poll_answers/1
  # PATCH/PUT /poll_answers/1.json
  def update
    if @poll_answer.update(poll_answer_params)
      render :show, status: :ok, location: @poll_answer
    else
      render json: @poll_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poll_answers/1
  # DELETE /poll_answers/1.json
  def destroy
    @poll_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_answer
      @poll_answer = PollAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poll_answer_params
      params.require(:poll_answer).permit(:body, :poll_question_id, :user_id)
    end
end
