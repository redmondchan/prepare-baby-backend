class BabySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :hp, :hungry, :poop, :happy, :created_at, :feed_time
end
