class VehicleBrandsController < ApplicationController
  before_action :set_vehicle_brand, only: %i[ show update destroy ]

  # GET /vehicle_brands
  # GET /vehicle_brands.json
  def index
    @vehicle_brands = VehicleBrand.all
  end

  # GET /vehicle_brands/1
  # GET /vehicle_brands/1.json
  def show
  end

  # POST /vehicle_brands
  # POST /vehicle_brands.json
  def create
    @vehicle_brand = VehicleBrand.new(vehicle_brand_params)

    if @vehicle_brand.save
      render :show, status: :created, location: @vehicle_brand
    else
      render json: @vehicle_brand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_brands/1
  # PATCH/PUT /vehicle_brands/1.json
  def update
    if @vehicle_brand.update(vehicle_brand_params)
      render :show, status: :ok, location: @vehicle_brand
    else
      render json: @vehicle_brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_brands/1
  # DELETE /vehicle_brands/1.json
  def destroy
    @vehicle_brand.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_brand
      @vehicle_brand = VehicleBrand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_brand_params
      params.require(:vehicle_brand).permit(:name)
    end
end
