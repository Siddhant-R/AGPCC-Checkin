ActiveAdmin.register Event do

    permit_params :title, :description, :venue, :date, :start_time, :end_time, :ticket_price
    
    scope :past_events
    scope :future_events
    scope :ongoing_events
    index do
        column :title
        column :date
        column :venue
        column :start_time
        column :end_time
        column :ticket_price
        actions
    end
end
