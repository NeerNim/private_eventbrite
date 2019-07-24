class AddIndexToEventAttendees < ActiveRecord::Migration[6.0]
  def change
    add_index :event_attendees, :attendee_event_id
    add_index :event_attendees, :event_attendee_id
  end
end
