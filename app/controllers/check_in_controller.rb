class CheckInController < ApplicationController
  
  def new
    @check_in = CheckIn.new
    @event = Event.find_by_id(params[:id])
    if (@event)
      @check_in.event_id = @event.id
    end
  end

  def index
  end

  def create
    @check_in = CheckIn.new(params[:check_in])
    if (@member)
      @check_in.save()
    end
  end
end
