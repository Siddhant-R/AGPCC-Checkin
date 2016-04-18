class RsvpController < ApplicationController
  def new
    @event = Event.find_by_id(params[:id])
  end
  
  def new_with_new_member
    @event = Event.find_by_id(params[:id])
  end

  def index
  end

  def create
    @event = Event.find_by_id(params[:id])
    @member = Member.find_by_email(params[:member][:email])
    if (@member)
      @rsvp = CheckIn.new(event_id: @event.id, member_id: @member.id)
      if @rsvp.save
        flash[:notice] = "Thank you for RSVPing!"
        redirect_to root_path
      else
        flash[:notice] = @check_in.errors.messages
      end
    else
      redirect_to :action => 'new_with_new_member', :id => @event.id
    end
  end
  
  def create_with_new_member
    @event = Event.find_by_id(params[:id])
    @member = Member.new(member_params)
    if @member.save
      @rsvp = CheckIn.new(event_id: @event.id, member_id: @member.id)
      if @rsvp.save
        flash[:notice] = "Thank you for RSVPing!"
        redirect_to root_path
      else
        flash[:notice] = @check_in.errors.messages
      end
    else
      flash[:notice] = @member.errors.messages
      redirect_to action: "new_with_new_member", id: @event.id
    end
  end
  
  def member_params
    params.require(:member).permit(:first_name, :last_name, :email, :gender, :classification)
  end
end
