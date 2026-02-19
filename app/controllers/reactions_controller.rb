class ReactionsController < ApplicationController
  before_action :set_reaction, only: %i[ show update destroy ]

  # GET /reactions
  # GET /reactions.json
  def index
    @reactions = Reaction.all
  end

  # GET /reactions/1
  # GET /reactions/1.json
  def show
  end

  # POST /reactions
  # POST /reactions.json
  def create
    @reaction = Reaction.new(reaction_params)

    if @reaction.save
      render :show, status: :created, location: @reaction
    else
      render json: @reaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reactions/1
  # PATCH/PUT /reactions/1.json
  def update
    if @reaction.update(reaction_params)
      render :show, status: :ok, location: @reaction
    else
      render json: @reaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reactions/1
  # DELETE /reactions/1.json
  def destroy
    @reaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reaction
      @reaction = Reaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reaction_params
      params.require(:reaction).permit(:post_id, :comment_id, :emoji, :user_id)
    end
end
