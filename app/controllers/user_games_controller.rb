class UserGamesController < ApplicationController
  before_action :set_user_game, only: %i[ show update destroy ]

  # GET /user_games
  def index
    @user_games = UserGame.all

    render json: @user_games
  end

  # GET /user_games/1
  def show
    render json: @user_game
  end

  # POST /user_games
  def create
    
  @user_game = params[:game_id].map do |game|

     UserGame.create!({user_id:params[:user_id] , game_id: game})
    end
    render json: @user_game
  end

  # PATCH/PUT /user_games/1
  def update
    if @user_game.update(user_game_params)
      render json: @user_game
    else
      render json: @user_game.errors
    end
  end

  # DELETE /user_games/1
  def destroy
    @user_game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game
      @user_game = UserGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_game_params
      params.permit(:user_id, :game_id, :late, :due_date, :returned)
    end
end
