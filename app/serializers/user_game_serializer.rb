class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :late, :due_date, :returned, :user, :game
  belongs_to :user 
  belongs_to :game 
end
