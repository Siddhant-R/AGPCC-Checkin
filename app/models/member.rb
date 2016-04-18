class Member < ActiveRecord::Base
    validates :first_name, :last_name, :email, :gender, :classification, presence: true
    validates :email, uniqueness: true
    has_many :events_checkin, class_name: 'CheckIn', foreign_key: :member_id
    has_many :events_rsvps, class_name: 'RSVP', foreign_key: :member_id
end
