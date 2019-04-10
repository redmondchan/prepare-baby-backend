class User < ApplicationRecord
  has_secure_password
  has_one :baby
  has_many :logs, through: :baby
  validates :username, uniqueness: {case_sensitive: false}
end
