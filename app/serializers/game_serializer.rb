class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :publisher, :inventory, :img

  has_many :game_reviews
end
