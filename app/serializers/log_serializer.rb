class LogSerializer < ActiveModel::Serializer
  belongs_to :baby
  attributes :id, :baby_id, :created_at, :task
end
