class User < ApplicationRecord
  has_many :mashups
  has_secure_password
end
