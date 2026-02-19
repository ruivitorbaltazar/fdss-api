class BookingPostsController < ApplicationController
  before_action :set_booking_post, only: %i[ show update destroy ]

  # GET /booking_posts
  # GET /booking_posts.json
  def index
    @booking_posts = BookingPost.all
  end

  # GET /booking_posts/1
  # GET /booking_posts/1.json
  def show
  end

  # POST /booking_posts
  # POST /booking_posts.json
  def create
    @booking_post = BookingPost.new(booking_post_params)

    if @booking_post.save
      render :show, status: :created, location: @booking_post
    else
      render json: @booking_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /booking_posts/1
  # PATCH/PUT /booking_posts/1.json
  def update
    if @booking_post.update(booking_post_params)
      render :show, status: :ok, location: @booking_post
    else
      render json: @booking_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /booking_posts/1
  # DELETE /booking_posts/1.json
  def destroy
    @booking_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_post
      @booking_post = BookingPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_post_params
      params.require(:booking_post).permit(:booking_id, :post_id)
    end
end
