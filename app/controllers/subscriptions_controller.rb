class SubscriptionsController < ApplicationController
    before_action :set_user_game, only: %i[ show update destroy ]

  # GET /user_games
  def index
    @subscription = Subscription.all

    render json: @subscription
  end

  # GET /user_games/1
  def show
    render json: @subscription
  end

  # POST /user_games
  def create
    
    subscription = Subscription.new(subscription_params)

    if subscription.save
      render json: subscription, status: :created, location: subscription
    else
      render json: subscription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_games/1
  def update
    if @subscription.update(subscription_params)
      render json: @subscription
    else
      render json: @subscription.errors
    end
  end

  # DELETE /user_games/1
  def destroy
    @subscription.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game
      @subscription = Subscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscription_params
      params.permit(:user_id, :sub_fee, :sub_status)
    end
end
