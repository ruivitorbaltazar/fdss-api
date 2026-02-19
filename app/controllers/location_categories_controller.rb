class LocationCategoriesController < ApplicationController
  before_action :set_location_category, only: %i[ show update destroy ]

  # GET /location_categories
  # GET /location_categories.json
  def index
    @location_categories = LocationCategory.all
  end

  # GET /location_categories/1
  # GET /location_categories/1.json
  def show
  end

  # POST /location_categories
  # POST /location_categories.json
  def create
    @location_category = LocationCategory.new(location_category_params)

    if @location_category.save
      render :show, status: :created, location: @location_category
    else
      render json: @location_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /location_categories/1
  # PATCH/PUT /location_categories/1.json
  def update
    if @location_category.update(location_category_params)
      render :show, status: :ok, location: @location_category
    else
      render json: @location_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /location_categories/1
  # DELETE /location_categories/1.json
  def destroy
    @location_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_category
      @location_category = LocationCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_category_params
      params.require(:location_category).permit(:name)
    end
end
