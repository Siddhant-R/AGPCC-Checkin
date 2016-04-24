class Event < ActiveRecord::Base
    validates :title, presence: true
    validates :venue, presence: true
    validates :ticket_price, presence: true
    
    has_many :members_checkin, class_name: 'CheckIn', foreign_key: :event_ID
    has_many :members_rsvp, class_name: 'Rsvp', foreign_key: :event_ID
    
    geocoded_by :venue
    after_validation :geocode

    def index
        @events = Event.order('id desc').all
    end
    
    scope :past_events,->{ where('end_time < ?', DateTime.now) }
    scope :future_events,->{ where('start_time > ?', DateTime.now) }
    #scope :ongoing_events,->{ where('date == ?', Date.today) }
    
    def to_s
        title
    end
end
