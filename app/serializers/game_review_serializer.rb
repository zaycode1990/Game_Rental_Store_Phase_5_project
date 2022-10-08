class GameReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc

  belongs_to :user
  belongs_to :game
end
