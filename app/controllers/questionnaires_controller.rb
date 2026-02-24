class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: %i[ show update destroy ]

  # GET /questionnaires
  # GET /questionnaires.json
  def index
    @questionnaires = Questionnaire.all
  end

  # GET /questionnaires/1
  # GET /questionnaires/1.json
  def show
  end

  # POST /questionnaires
  # POST /questionnaires.json
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)

    if @questionnaire.save
      render :show, status: :created, location: @questionnaire
    else
      render json: @questionnaire.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questionnaires/1
  # PATCH/PUT /questionnaires/1.json
  def update
    if @questionnaire.update(questionnaire_params)
      render :show, status: :ok, location: @questionnaire
    else
      render json: @questionnaire.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questionnaires/1
  # DELETE /questionnaires/1.json
  def destroy
    @questionnaire.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_params
      params.require(:questionnaire).permit(:closing_date, :edition_id, :user_id)
    end
end
