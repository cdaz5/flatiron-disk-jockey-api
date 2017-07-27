class User < ApplicationRecord
  has_many :mashups
  has_secure_password
  validates :username, uniqueness:true, presence:true
end
