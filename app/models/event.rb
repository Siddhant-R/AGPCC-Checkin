class Event < ActiveRecord::Base
    validates :title, presence: true
    validates :venue, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :ticket_price, presence: true
    
    def index
        @events = Event.order('id desc').all
    end
    
    scope :past_events,->{ where('date < ?', Date.today) }
    scope :future_events,->{ where('date > ?', Date.today) }
    #scope :ongoing_events,->{ where('date == ?', Date.today) }
end
