class VehicleFuelsController < ApplicationController
  before_action :set_vehicle_fuel, only: %i[ show update destroy ]

  # GET /vehicle_fuels
  # GET /vehicle_fuels.json
  def index
    @vehicle_fuels = VehicleFuel.all
  end

  # GET /vehicle_fuels/1
  # GET /vehicle_fuels/1.json
  def show
  end

  # POST /vehicle_fuels
  # POST /vehicle_fuels.json
  def create
    @vehicle_fuel = VehicleFuel.new(vehicle_fuel_params)

    if @vehicle_fuel.save
      render :show, status: :created, location: @vehicle_fuel
    else
      render json: @vehicle_fuel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_fuels/1
  # PATCH/PUT /vehicle_fuels/1.json
  def update
    if @vehicle_fuel.update(vehicle_fuel_params)
      render :show, status: :ok, location: @vehicle_fuel
    else
      render json: @vehicle_fuel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_fuels/1
  # DELETE /vehicle_fuels/1.json
  def destroy
    @vehicle_fuel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_fuel
      @vehicle_fuel = VehicleFuel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_fuel_params
      params.require(:vehicle_fuel).permit(:name)
    end
end
