class Event < ActiveRecord::Base
    def index
        @events = Event.order('id desc').all
    end
    
    scope :past_events,->{ where('date < ?', Date.today) }
    scope :future_events,->{ where('date > ?', Date.today) }
    scope :ongoing_events,->{ where('date == ?', Date.today) }
end
