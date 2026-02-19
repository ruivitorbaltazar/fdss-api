class VehicleModelsController < ApplicationController
  before_action :set_vehicle_model, only: %i[ show update destroy ]

  # GET /vehicle_models
  # GET /vehicle_models.json
  def index
    @vehicle_models = VehicleModel.all
  end

  # GET /vehicle_models/1
  # GET /vehicle_models/1.json
  def show
  end

  # POST /vehicle_models
  # POST /vehicle_models.json
  def create
    @vehicle_model = VehicleModel.new(vehicle_model_params)

    if @vehicle_model.save
      render :show, status: :created, location: @vehicle_model
    else
      render json: @vehicle_model.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_models/1
  # PATCH/PUT /vehicle_models/1.json
  def update
    if @vehicle_model.update(vehicle_model_params)
      render :show, status: :ok, location: @vehicle_model
    else
      render json: @vehicle_model.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_models/1
  # DELETE /vehicle_models/1.json
  def destroy
    @vehicle_model.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_model
      @vehicle_model = VehicleModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_model_params
      params.require(:vehicle_model).permit(:name, :vehicle_brand_id)
    end
end
