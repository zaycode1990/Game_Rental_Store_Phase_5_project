class GameReviewsController < ApplicationController
  before_action :set_game_review, only: %i[ show update destroy ]

  # GET /game_reviews
  def index
    @game_reviews = GameReview.all

    render json: @game_reviews
  end

  # GET /game_reviews/1
  def show
    render json: @game_review
  end

  # POST /game_reviews
  def create
    @game_review = GameReview.new(game_review_params)

    if @game_review.save
      render json: @game_review, status: :created, location: @game_review
    else
      render json: @game_review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_reviews/1
  def update
    if @game_review.update(game_review_params)
      render json: @game_review
    else
      render json: @game_review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_reviews/1
  def destroy
    @game_review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_review
      @game_review = GameReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_review_params
      params.require(:game_review).permit(:user_id, :game_id, :title, :desc)
    end
end
