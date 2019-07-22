class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", class_name: "Event"
  has_many :attended_events, through: :event_attendees, source: :attended_event
  has_many :event_attendees, foreign_key: "event_attendee_id"

  validates :email, :password, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
