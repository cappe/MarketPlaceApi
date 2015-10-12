class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :auth_token, :updated_at, :created_at

  has_many :products, serializer: ShortProductSerializer, embed: :ids
end
