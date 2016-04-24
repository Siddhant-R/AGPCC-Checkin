class Member < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, :gender, :classification, presence: true
    validates :email, uniqueness: true
    
    has_many :check_ins, :class_name => CheckIn, :foreign_key => :member_id
    has_many :rsvps, class_name: 'Rsvp', foreign_key: :member_id
    
    GENDER=['male', 'female']
    CLASSIFICATION=['Master', 'PhD', 'Undergrad']
    
    def to_s
        email
    end

end

