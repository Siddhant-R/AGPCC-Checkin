class CheckInController < ApplicationController
  
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
    @lat_lng = cookies[:lat_lng].split("|")

    if (@member)
      @check_in = CheckIn.new(event_id: @event.id, member_id: @member.id)
      if @check_in.save
        flash[:notice] = "Check in Successful" + @lat_lng.join(",")
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
    @lat_lng = cookies[:lat_lng].split("|")
    if @member.save
      @check_in = CheckIn.new(event_id: @event.id, member_id: @member.id)
      if @check_in.save
        flash[:notice] = "Check in Successful" + @lat_lng.join(",")
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
  
  def distance loc1, loc2
  rad_per_deg = Math::PI/180  # PI / 180
  rkm = 6371                  # Earth radius in kilometers
  rm = rkm * 1000             # Radius in meters

  dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
  dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

  lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
  lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

  rm * c # Delta in meters
 end
  
end
