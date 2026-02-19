class VehicleCategoriesController < ApplicationController
  before_action :set_vehicle_category, only: %i[ show update destroy ]

  # GET /vehicle_categories
  # GET /vehicle_categories.json
  def index
    @vehicle_categories = VehicleCategory.all
  end

  # GET /vehicle_categories/1
  # GET /vehicle_categories/1.json
  def show
  end

  # POST /vehicle_categories
  # POST /vehicle_categories.json
  def create
    @vehicle_category = VehicleCategory.new(vehicle_category_params)

    if @vehicle_category.save
      render :show, status: :created, location: @vehicle_category
    else
      render json: @vehicle_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_categories/1
  # PATCH/PUT /vehicle_categories/1.json
  def update
    if @vehicle_category.update(vehicle_category_params)
      render :show, status: :ok, location: @vehicle_category
    else
      render json: @vehicle_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_categories/1
  # DELETE /vehicle_categories/1.json
  def destroy
    @vehicle_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_category
      @vehicle_category = VehicleCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_category_params
      params.require(:vehicle_category).permit(:name)
    end
end
