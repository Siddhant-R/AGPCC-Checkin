class CheckInController < ApplicationController
  
  def new
    @event = Event.find_by_id(params[:id])
  end
  
  def new_with_details
    @event = Event.find_by_id(params[:id])
  end

  def index
  end

  def create
    @event = Event.find_by_id(params[:id])
    @member = Member.find_by_email(params[:member][:email])
    if (@member)
      @check_in = CheckIn.new(event_id: @event.id, member_id: @member.id)
      if @check_in.save
        redirect_to root_path
      end
    else
      redirect_to :action => 'new_with_details', :id => @event.id
    end
  end
  
  def create_with_member_details
    @event = Event.find_by_id(params[:id])
    @member = Member.new(member_params)
    if @member.save
      @check_in = CheckIn.new(event_id: @event.id, member_id: @member.id)
      if @check_in.save
        redirect_to root_path
      end
    else
      redirect_to action: "new_with_details", id: @event.id
    end
  end
  
  def member_params
    params.require(:member).permit(:first_name, :last_name, :email, :gender, :classification)
  end
end
