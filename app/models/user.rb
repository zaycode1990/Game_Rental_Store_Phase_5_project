class User < ApplicationRecord
    has_secure_password

    has_many :user_games
    has_many :games, through: :user_games 
    has_many :game_reviews
    has_one :subscription

end
