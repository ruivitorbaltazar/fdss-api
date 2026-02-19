class PersonalRestrictionsController < ApplicationController
  before_action :set_personal_restriction, only: %i[ show update destroy ]

  # GET /personal_restrictions
  # GET /personal_restrictions.json
  def index
    @personal_restrictions = PersonalRestriction.all
  end

  # GET /personal_restrictions/1
  # GET /personal_restrictions/1.json
  def show
  end

  # POST /personal_restrictions
  # POST /personal_restrictions.json
  def create
    @personal_restriction = PersonalRestriction.new(personal_restriction_params)

    if @personal_restriction.save
      render :show, status: :created, location: @personal_restriction
    else
      render json: @personal_restriction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personal_restrictions/1
  # PATCH/PUT /personal_restrictions/1.json
  def update
    if @personal_restriction.update(personal_restriction_params)
      render :show, status: :ok, location: @personal_restriction
    else
      render json: @personal_restriction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personal_restrictions/1
  # DELETE /personal_restrictions/1.json
  def destroy
    @personal_restriction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_restriction
      @personal_restriction = PersonalRestriction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_restriction_params
      params.require(:personal_restriction).permit(:person_id, :restriction_id, :severity, :notes)
    end
end
