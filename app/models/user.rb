class User < ApplicationRecord
  has_many :events
  has_secure_password
  
  validates :email, :password, presence: true
  validates :email, uniqueness: true
end
