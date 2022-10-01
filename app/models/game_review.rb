class GameReview < ApplicationRecord
    validates :title, presence: true
    validates :desc, length: { maximum: 500 }
    belongs_to :game
    belongs_to :user
end
