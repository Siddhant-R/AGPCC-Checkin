class EventsController < ApplicationController
  def index
    @future_events = Event.all.where('start_time > ?', DateTime.now)
    @current_events = Event.all.where('start_time < ?', DateTime.now).where('end_time > ?', DateTime.now)
  end

  def show
  end
  
  def create
    @event = Event.new(event_params)
    if @event.start_time >= @event.end_time
      redirect_to new_admin_event_path, :notice => "Start time cannot be after end time"
    else
      if @event.save
        redirect_to  admin_events_path, :notice => "Event successfully created"
      else
        render "new"
      end
    end
  end
  
  def new
    if !admin_user_signed_in?
      redirect_to root_path
    end
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :description, :venue, :start_time, :end_time)
  end
end
