class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :late, :due_date, :returned
end
