class EventsController < ApplicationController
  before_action :authorize, only: [:new, :create, :show]
  def index
    @events = Event.all
    @upcoming = Event.upcoming
    @past = Event.past
  end

  
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "Your event has been created"
      redirect_to user_events_path
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees.all
    @creator = @event.creator
  end

  def user_events
    @current_user_events = current_user.events.all    
  end

  private 
  def event_params
    params.require(:event).permit(:title, :description, :location, :date)
  end
end

