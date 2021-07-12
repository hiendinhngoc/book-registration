class Api::V1::UserBookSerializer < BaseSerializer
  has_one :book, serializer: Api::V1::BookSerializer
  has_one :user, serializer: Api::V1::UserSerializer
end
