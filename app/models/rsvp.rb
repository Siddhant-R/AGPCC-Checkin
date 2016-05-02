class Rsvp < ActiveRecord::Base
    belongs_to :member
    belongs_to :event
    
<<<<<<< HEAD
    validates_uniqueness_of :member_id, scope: :event_id, :message => "Already RSVPed !!"
=======
    validates_uniqueness_of :member_id, scope: :event_id, :message => 'Already RSVPed !!'
    
    scope :rsvp_list, -> {Rsvp.group(:event_id).count}
>>>>>>> 3ff04c5939792a9a643009563398e9e506f35eef
end
#tester for cucumber. just seeing if my commits are working. 