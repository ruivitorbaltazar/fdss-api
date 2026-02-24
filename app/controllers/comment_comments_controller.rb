class CommentCommentsController < ApplicationController
  before_action :set_comment_comment, only: %i[ show update destroy ]

  # GET /comment_comments
  # GET /comment_comments.json
  def index
    @comment_comments = CommentComment.all
  end

  # GET /comment_comments/1
  # GET /comment_comments/1.json
  def show
  end

  # POST /comment_comments
  # POST /comment_comments.json
  def create
    @comment_comment = CommentComment.new(comment_comment_params)

    if @comment_comment.save
      render :show, status: :created, location: @comment_comment
    else
      render json: @comment_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comment_comments/1
  # PATCH/PUT /comment_comments/1.json
  def update
    if @comment_comment.update(comment_comment_params)
      render :show, status: :ok, location: @comment_comment
    else
      render json: @comment_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comment_comments/1
  # DELETE /comment_comments/1.json
  def destroy
    @comment_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_comment
      @comment_comment = CommentComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_comment_params
      params.require(:comment_comment).permit(:parent_comment_id, :child_comment_id)
    end
end
