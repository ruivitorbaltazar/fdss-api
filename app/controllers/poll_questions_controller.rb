class PollQuestionsController < ApplicationController
  before_action :set_poll_question, only: %i[ show update destroy ]

  # GET /poll_questions
  # GET /poll_questions.json
  def index
    @poll_questions = PollQuestion.all
  end

  # GET /poll_questions/1
  # GET /poll_questions/1.json
  def show
  end

  # POST /poll_questions
  # POST /poll_questions.json
  def create
    @poll_question = PollQuestion.new(poll_question_params)

    if @poll_question.save
      render :show, status: :created, location: @poll_question
    else
      render json: @poll_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poll_questions/1
  # PATCH/PUT /poll_questions/1.json
  def update
    if @poll_question.update(poll_question_params)
      render :show, status: :ok, location: @poll_question
    else
      render json: @poll_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poll_questions/1
  # DELETE /poll_questions/1.json
  def destroy
    @poll_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_question
      @poll_question = PollQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poll_question_params
      params.require(:poll_question).permit(:body, :poll_id)
    end
end
