class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show update destroy ]
  skip_before_action :authorize, only: :create
  # GET /users
  def index
    users = User.all

    render json: users
  end

  # GET /users/1
  def show
    render json: @current_user
  end

  # POST /users
  def create

    user = User.create!(user_params)
    session[:user_id] = user.id
    render json:user, status: :created
  end

  # PATCH/PUT /users/1
  def update
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :password, :admin, :username, :password_digest, :first_name, :last_name, :phone_number, :email, :country, :zip, :credit_card, :city, :state)
    end
end
