class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, length: { in: 6..20 }
    validates :credit_card, length: { is: 16 }
    validates :email, uniqueness: true
    validates :zip, length: {in: 5..10}


    has_many :user_games
    has_many :games, through: :user_games 
    has_many :game_reviews
    has_one :subscription


    private

end
