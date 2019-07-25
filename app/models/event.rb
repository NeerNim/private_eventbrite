class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendances, foreign_key: :event_id
  has_many :attendees, through: :attendances
  
  validates :title, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 250}
  validates :location, presence: true, length: {maximum: 150}

end
