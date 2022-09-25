class UserSerializer < ActiveModel::Serializer
  attributes :id, :admin, :username, :password_digest, :first_name, :last_name, :phone_number, :email, :country, :zip, :credit_card

has_many :user_games
has_many :games
has_many :game_reviews
has_one :subscription

end
