class EditionsController < ApplicationController
  before_action :set_edition, only: %i[ show update destroy ]

  # GET /editions
  # GET /editions.json
  def index
    @editions = Edition.all
  end

  # GET /editions/1
  # GET /editions/1.json
  def show
  end

  # POST /editions
  # POST /editions.json
  def create
    @edition = Edition.new(edition_params)

    if @edition.save
      render :show, status: :created, location: @edition
    else
      render json: @edition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /editions/1
  # PATCH/PUT /editions/1.json
  def update
    if @edition.update(edition_params)
      render :show, status: :ok, location: @edition
    else
      render json: @edition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /editions/1
  # DELETE /editions/1.json
  def destroy
    @edition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edition
      @edition = Edition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def edition_params
      params.require(:edition).permit(:event_id, :name, :description, :budget, :slug, :meeting_location_id, :start_date, :end_date, :user_id)
    end
end
