class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :publisher, :inventory, :img
end
