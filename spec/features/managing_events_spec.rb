require 'spec_helper'

feature 'Managing events' do
  scenario 'Guests cannot create events' do
    visit root_path
    expect(page).to_not have_link 'New Event'
  end

  context 'as an admin user' do
    background do
      email = 'admin@example.com'
      password = 'password'
      @admin = AdminUser.create(:email => email, :password => password)

      log_in_admin_user
    end

    def log_in_admin_user(email = 'admin@example.com', password = 'password')
      reset_session!
      visit admin_root_path
      fill_in 'Email', :with => email
      fill_in 'Password', :with => password
      click_button 'Login'
    end

    scenario 'Creating a Event' do
      click_link 'Events'
      click_link 'New Event'

      fill_in 'event_title', :with => 'New Event'
      fill_in 'event_description', :with => 'This Event was created from the Admin Interface'
      fill_in 'event_venue', :with => 'This Event was created from the Admin Interface'
      fill_in 'event_start_time', :with => 'This Event was created from the Admin Interface'
      fill_in 'event_end_time', :with => 'This Event was created from the Admin Interface'
      fill_in 'event_ticket_price', :with => 'This Event was created from the Admin Interface'
      click_button 'Create Event'
      expect(page).to have_content 'Event was successfully created.'
    end

    #context 'with an existing blog post' do
    #  background do
    #    @post = Post.create(:title => 'Awesome Blog Post', :body => 'Lorem ipsum dolor sit amet')
    #  end
    #
    #  scenario 'Editing an existing blog' do
    #    visit admin_post_path(@post)
    #
    #    click_link 'Edit'
    #
    #    fill_in 'Title', :with => 'Not really Awesome Blog Post'
    #    click_button 'Update Post'
    #
    #    expect(page).to have_content 'Not really Awesome Blog Post'
    #  end
    #end
  end
end
