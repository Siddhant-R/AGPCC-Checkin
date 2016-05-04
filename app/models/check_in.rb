class CheckIn < ActiveRecord::Base
    validates :member_id, presence: true
    validates :event_id, presence: true
    
    belongs_to :member, :class_name => Member
    belongs_to :event, :class_name => Event
    
    scope :checkin_list, -> {CheckIn.group(:event_id).count}
    
    validates_uniqueness_of :member_id, scope: :event_id, :message => 'Already checked in !!'
end
