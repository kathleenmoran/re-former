class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 3..20 }
  validates :password, length: { in: 12..128 }
end
