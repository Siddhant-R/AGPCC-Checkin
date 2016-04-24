ActiveAdmin.register Event do

    permit_params :title, :description, :venue, :start_time, :end_time, :ticket_price
    
    scope :past_events
    scope :future_events
    
    #scope :ongoing_events
    
    index do
        column :title
        column :venue
        column :start_time
        column :end_time
        actions
    end
    
    form multipart: true do |f|
        f.inputs "Event Details" do
            f.input :title, label: "Event Title"
            f.input :description, label: "Description"
        end
        f.inputs "Location Details" do
            f.input :venue, label: "Venue"
            
        end
        f.inputs "Timing Details" do
            f.input :start_time, as: :date_time_picker, datepicker_options: { min_date: DateTime.now , max_date: "+10Y" }
            f.input :end_time, as: :date_time_picker, datepicker_options: { min_date: @start_time, max_date: "+10Y" }
        end
        f.actions
    end
end
