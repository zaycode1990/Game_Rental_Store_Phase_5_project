class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :publisher, :inventory, :image_url

  has_many :game_reviews
end
