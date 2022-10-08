class GameReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc, :user

  belongs_to :user
  belongs_to :game
end
