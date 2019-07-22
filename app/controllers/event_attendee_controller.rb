class EventAttendeeController < ApplicationController
  def new
  end

  def create
    @event_attendee = current_user.event_attendees.build(params[:event_attendee_id, :attendee_event_id])
    if @event_attendee.save
      redirect_to event_attendee_show_path
    end
  end

  def show
    @list_of_attendees = EventAttendee.find(params[:attendee_event_id])
  end
end
