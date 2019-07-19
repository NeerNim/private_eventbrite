class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", class_name: "Event"
  validates :email, :password, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
