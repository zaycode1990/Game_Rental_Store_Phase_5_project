class Game < ApplicationRecord
    has_many :user_games
    has_many :users, through: :user_games
    has_many :game_reviews
    # has_one_attached :image

    # def image_url
    #     if image.attached?
    #       Rails.application.routes.url_helpers.rails_blob_url(image)
    #   end
    # end

end 
