class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(post_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    
  end

  private 
  def post_params
    params.require(:event).permit(:description)
  end
end
