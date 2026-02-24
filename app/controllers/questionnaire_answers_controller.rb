class QuestionnaireAnswersController < ApplicationController
  before_action :set_questionnaire_answer, only: %i[ show update destroy ]

  # GET /questionnaire_answers
  # GET /questionnaire_answers.json
  def index
    @questionnaire_answers = QuestionnaireAnswer.all
  end

  # GET /questionnaire_answers/1
  # GET /questionnaire_answers/1.json
  def show
  end

  # POST /questionnaire_answers
  # POST /questionnaire_answers.json
  def create
    @questionnaire_answer = QuestionnaireAnswer.new(questionnaire_answer_params)

    if @questionnaire_answer.save
      render :show, status: :created, location: @questionnaire_answer
    else
      render json: @questionnaire_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questionnaire_answers/1
  # PATCH/PUT /questionnaire_answers/1.json
  def update
    if @questionnaire_answer.update(questionnaire_answer_params)
      render :show, status: :ok, location: @questionnaire_answer
    else
      render json: @questionnaire_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questionnaire_answers/1
  # DELETE /questionnaire_answers/1.json
  def destroy
    @questionnaire_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_answer
      @questionnaire_answer = QuestionnaireAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_answer_params
      params.require(:questionnaire_answer).permit(:body, :questionnaire_question_id, :user_id)
    end
end
