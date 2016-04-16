class Member < ActiveRecord::Base
    has_many :events_checkin, class_name: 'CheckIn', foreign_key: :member_id
end
