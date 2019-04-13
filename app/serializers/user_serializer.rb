class UserSerializer < ActiveModel::Serializer
  has_one :baby
  has_many :logs, through: :baby
  attributes :id, :username, :created_at, :selffish, :selfless 
end
