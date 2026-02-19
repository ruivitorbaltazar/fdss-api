class RestrictionsController < ApplicationController
  before_action :set_restriction, only: %i[ show update destroy ]

  # GET /restrictions
  # GET /restrictions.json
  def index
    @restrictions = Restriction.all
  end

  # GET /restrictions/1
  # GET /restrictions/1.json
  def show
  end

  # POST /restrictions
  # POST /restrictions.json
  def create
    @restriction = Restriction.new(restriction_params)

    if @restriction.save
      render :show, status: :created, location: @restriction
    else
      render json: @restriction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restrictions/1
  # PATCH/PUT /restrictions/1.json
  def update
    if @restriction.update(restriction_params)
      render :show, status: :ok, location: @restriction
    else
      render json: @restriction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restrictions/1
  # DELETE /restrictions/1.json
  def destroy
    @restriction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restriction
      @restriction = Restriction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restriction_params
      params.require(:restriction).permit(:category, :avoidances, :treatments)
    end
end
