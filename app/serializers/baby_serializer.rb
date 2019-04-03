class BabySerializer < ActiveModel::Serializer
  attributes :id, :name, :hp, :hungry, :poop, :happy, :created_at
end
