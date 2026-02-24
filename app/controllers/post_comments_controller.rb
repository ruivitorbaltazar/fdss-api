class PostCommentsController < ApplicationController
  before_action :set_post_comment, only: %i[ show update destroy ]

  # GET /post_comments
  # GET /post_comments.json
  def index
    @post_comments = PostComment.all
  end

  # GET /post_comments/1
  # GET /post_comments/1.json
  def show
  end

  # POST /post_comments
  # POST /post_comments.json
  def create
    @post_comment = PostComment.new(post_comment_params)

    if @post_comment.save
      render :show, status: :created, location: @post_comment
    else
      render json: @post_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_comments/1
  # PATCH/PUT /post_comments/1.json
  def update
    if @post_comment.update(post_comment_params)
      render :show, status: :ok, location: @post_comment
    else
      render json: @post_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_comments/1
  # DELETE /post_comments/1.json
  def destroy
    @post_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_comment
      @post_comment = PostComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_comment_params
      params.require(:post_comment).permit(:post_id, :comment_id)
    end
end
