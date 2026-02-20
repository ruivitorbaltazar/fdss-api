class FiliationsController < ApplicationController
  before_action :set_filiation, only: %i[ show update destroy ]

  # GET /filiations
  # GET /filiations.json
  def index
    @filiations = Filiation.all
  end

  # GET /filiations/1
  # GET /filiations/1.json
  def show
  end

  # POST /filiations
  # POST /filiations.json
  def create
    @filiation = Filiation.new(filiation_params)

    if @filiation.save
      render :show, status: :created, location: @filiation
    else
      render json: @filiation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /filiations/1
  # PATCH/PUT /filiations/1.json
  def update
    if @filiation.update(filiation_params)
      render :show, status: :ok, location: @filiation
    else
      render json: @filiation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /filiations/1
  # DELETE /filiations/1.json
  def destroy
    @filiation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filiation
      @filiation = Filiation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filiation_params
      params.require(:filiation).permit(:parent_person_id, :child_person_id)
    end
end
