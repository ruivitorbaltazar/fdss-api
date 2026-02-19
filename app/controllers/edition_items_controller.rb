class EditionItemsController < ApplicationController
  before_action :set_edition_item, only: %i[ show update destroy ]

  # GET /edition_items
  # GET /edition_items.json
  def index
    @edition_items = EditionItem.all
  end

  # GET /edition_items/1
  # GET /edition_items/1.json
  def show
  end

  # POST /edition_items
  # POST /edition_items.json
  def create
    @edition_item = EditionItem.new(edition_item_params)

    if @edition_item.save
      render :show, status: :created, location: @edition_item
    else
      render json: @edition_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /edition_items/1
  # PATCH/PUT /edition_items/1.json
  def update
    if @edition_item.update(edition_item_params)
      render :show, status: :ok, location: @edition_item
    else
      render json: @edition_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /edition_items/1
  # DELETE /edition_items/1.json
  def destroy
    @edition_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edition_item
      @edition_item = EditionItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def edition_item_params
      params.require(:edition_item).permit(:edition_id, :item_id)
    end
end
