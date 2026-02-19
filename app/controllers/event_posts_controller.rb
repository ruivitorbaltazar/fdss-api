class EventPostsController < ApplicationController
  before_action :set_event_post, only: %i[ show update destroy ]

  # GET /event_posts
  # GET /event_posts.json
  def index
    @event_posts = EventPost.all
  end

  # GET /event_posts/1
  # GET /event_posts/1.json
  def show
  end

  # POST /event_posts
  # POST /event_posts.json
  def create
    @event_post = EventPost.new(event_post_params)

    if @event_post.save
      render :show, status: :created, location: @event_post
    else
      render json: @event_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_posts/1
  # PATCH/PUT /event_posts/1.json
  def update
    if @event_post.update(event_post_params)
      render :show, status: :ok, location: @event_post
    else
      render json: @event_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_posts/1
  # DELETE /event_posts/1.json
  def destroy
    @event_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_post
      @event_post = EventPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_post_params
      params.require(:event_post).permit(:event_id, :post_id)
    end
end
