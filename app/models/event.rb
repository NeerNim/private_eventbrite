class Event < ApplicationRecord
  belongs_to :user, foreign_key: "creator_id", class_name: "User"
  has_many :attendees, through :event_attendees, source: "attendee"
  has_many :event_attendees, foreign_key: "attendee_event_id"
end
