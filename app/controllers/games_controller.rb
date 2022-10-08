class GamesController < ApplicationController
  before_action :set_game, only: %i[ show update destroy ]
  skip_before_action :authorize, only: :index
  # GET /games
  def index
    games = Game.all

    render json: games
  end

  # GET /games/1
  def show
    render json: game
  end

  # POST /games
  def create
    game = Game.new(game_params)

    if game.save
      render json: game, status: :created, location: game
    else
      render json: game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    game = Game.find(params[:id])
    if game.update!(game_params)
      render json: game, status: :accepted
    else
      render json: game.error, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    game = Game.find(params[:id])
    game.destroy 
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.permit(:title, :platform, :publisher, :inventory, :img)
    end
end
