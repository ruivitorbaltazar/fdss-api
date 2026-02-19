class EditionPostsController < ApplicationController
  before_action :set_edition_post, only: %i[ show update destroy ]

  # GET /edition_posts
  # GET /edition_posts.json
  def index
    @edition_posts = EditionPost.all
  end

  # GET /edition_posts/1
  # GET /edition_posts/1.json
  def show
  end

  # POST /edition_posts
  # POST /edition_posts.json
  def create
    @edition_post = EditionPost.new(edition_post_params)

    if @edition_post.save
      render :show, status: :created, location: @edition_post
    else
      render json: @edition_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /edition_posts/1
  # PATCH/PUT /edition_posts/1.json
  def update
    if @edition_post.update(edition_post_params)
      render :show, status: :ok, location: @edition_post
    else
      render json: @edition_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /edition_posts/1
  # DELETE /edition_posts/1.json
  def destroy
    @edition_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edition_post
      @edition_post = EditionPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def edition_post_params
      params.require(:edition_post).permit(:edition_id, :post_id)
    end
end
