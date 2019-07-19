class User < ApplicationRecord
  has_many :events
  validates :email, :password, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
