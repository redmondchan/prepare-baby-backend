class BabySerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :logs
  attributes :id, :user_id, :name, :hp, :hungry, :poop, :happy, :created_at, :feed_time,
  :diaper_time, :hungry_time, :dirty_time, :initialFeed, :initialDiaper, :feedMissed,
  :diaperMissed, :feed, :forceFeed, :diaper, :forceDiaper, :feedMoney, :diaperMoney, :birthdate
end
