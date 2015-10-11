class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :auth_token, :updated_at, :created_at
end
