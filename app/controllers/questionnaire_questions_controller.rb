class QuestionnaireQuestionsController < ApplicationController
  before_action :set_questionnaire_question, only: %i[ show update destroy ]

  # GET /questionnaire_questions
  # GET /questionnaire_questions.json
  def index
    @questionnaire_questions = QuestionnaireQuestion.all
  end

  # GET /questionnaire_questions/1
  # GET /questionnaire_questions/1.json
  def show
  end

  # POST /questionnaire_questions
  # POST /questionnaire_questions.json
  def create
    @questionnaire_question = QuestionnaireQuestion.new(questionnaire_question_params)

    if @questionnaire_question.save
      render :show, status: :created, location: @questionnaire_question
    else
      render json: @questionnaire_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questionnaire_questions/1
  # PATCH/PUT /questionnaire_questions/1.json
  def update
    if @questionnaire_question.update(questionnaire_question_params)
      render :show, status: :ok, location: @questionnaire_question
    else
      render json: @questionnaire_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questionnaire_questions/1
  # DELETE /questionnaire_questions/1.json
  def destroy
    @questionnaire_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_question
      @questionnaire_question = QuestionnaireQuestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_question_params
      params.require(:questionnaire_question).permit(:body, :questionnaire_id)
    end
end
