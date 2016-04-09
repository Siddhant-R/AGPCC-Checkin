require 'rails_helper'

RSpec.describe AdminUser, type: :model do
    
    describe AdminUser do
      describe 'validations' do
          subject(:admin_user) { AdminUser.new }      # sets the subject of this describe block
          before { admin_user.valid? }                # runs a precondition for the test/show
          [:email, :password].each do |attribute|
              it "should validate presence of #{attribute}" do
                  expect(admin_user.errors.messages[attribute]).to include "can't be blank"
                end
            end
        end
    end  
    
end
