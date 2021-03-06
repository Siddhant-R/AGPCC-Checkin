class EventsController < ApplicationController
  def index
    @future_events = Event.all.where('start_time > ?', DateTime.now)
    @current_events = Event.all.where('start_time < ?', DateTime.now).where('end_time > ?', DateTime.now)
  end

  def show
  end
  
  def create
    @event = Event.new(event_params)

    session[:title] = params[:event][:title] if params[:event][:title]
    session[:description] = params[:event][:description] if params[:event][:description]
    session[:venue] = params[:event][:venue] if params[:event][:venue]
    session[:start_time] = params[:event][:start_time] if params[:event][:start_time]
    session[:end_time] = params[:event][:end_time] if params[:event][:end_time]
    
    if !@event.valid?
      flash[:warning] = @event.errors.full_messages.to_sentence
      redirect_to action: "new", id: @event.id
    else
      if @event.start_time > @event.end_time
        flash[:warning] = "Start time cannot be after end time"
        redirect_to action: "new", id: @event.id
      else
        if @event.save
          redirect_to  admin_events_path, :notice => "Event successfully created"
        else
          render "new"
        end
      end
    end
  end
  
  def edit
    @event = Event.find_by_id(params[:id])
  end
  
  def update
    @event = Event.find_by_id(params[:id])
    @event.update(event_params)
    if !@event.valid?
      flash[:warning] = @event.errors.full_messages.to_sentence
      redirect_to action: "edit", id: @event.id
    else
      if @event.start_time > @event.end_time
        flash[:warning] = "Start time cannot be after end time"
        redirect_to action: "edit", id: @event.id
      else
        if @event.save
          redirect_to  admin_events_path, :notice => "Event updated successfully "
        else
          render "new"
        end
      end
    end
  end
  
  def new
    if !admin_user_signed_in?
      redirect_to root_path
      return
    end
    @title = session[:title]
    @description = session[:description] 
    @venue = session[:venue]
    @start_time = session[:start_time]
    @end_time = session[:end_time]
    @event = Event.new
  end
  
  private
  def event_params
    params.require(:event).permit(:title, :description, :venue, :start_time, :end_time)
  end
end
