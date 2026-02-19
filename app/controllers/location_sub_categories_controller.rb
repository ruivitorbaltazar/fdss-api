class LocationSubCategoriesController < ApplicationController
  before_action :set_location_sub_category, only: %i[ show update destroy ]

  # GET /location_sub_categories
  # GET /location_sub_categories.json
  def index
    @location_sub_categories = LocationSubCategory.all
  end

  # GET /location_sub_categories/1
  # GET /location_sub_categories/1.json
  def show
  end

  # POST /location_sub_categories
  # POST /location_sub_categories.json
  def create
    @location_sub_category = LocationSubCategory.new(location_sub_category_params)

    if @location_sub_category.save
      render :show, status: :created, location: @location_sub_category
    else
      render json: @location_sub_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /location_sub_categories/1
  # PATCH/PUT /location_sub_categories/1.json
  def update
    if @location_sub_category.update(location_sub_category_params)
      render :show, status: :ok, location: @location_sub_category
    else
      render json: @location_sub_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /location_sub_categories/1
  # DELETE /location_sub_categories/1.json
  def destroy
    @location_sub_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_sub_category
      @location_sub_category = LocationSubCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_sub_category_params
      params.require(:location_sub_category).permit(:name, :location_category_id)
    end
end
