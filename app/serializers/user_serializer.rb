class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email
end
