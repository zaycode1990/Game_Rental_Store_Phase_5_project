class UserSerializer < ActiveModel::Serializer
  attributes :id, :admin, :username, :password_digest, :first_name, :last_name, :phone_number, :email, :country, :zip, :credit_card
end
