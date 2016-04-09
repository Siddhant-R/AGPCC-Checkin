
# Add a declarative step here for populating the DB with competitions.
Given /^the following events exist:$/ do |events_table|
events_table.hashes.each do |event|
Event.create!(event)
# each returned element will be a hash whose key is the table header.
# you should arrange to add that movie to the database here.
end
end
Then /I should see title "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see description "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see venue "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see date "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see start_time "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see end_time "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see ticket_price "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated title "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated description "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated venue "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated date "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated start_time "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated end_time "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

Then /I should see updated ticket_price "([^"]*)"/ do |arg|
page.body.should match /#{arg}/m
end

When /^I follow (.+)$/ do |link|
  visit path_to(link)
end

When /^I fill in (.+) with (.+)$/ do |field, value|
  fill_in("event[#{field}]", :with => value)
end


When /^I login$/ do
    fill_in("admin_user[email]", :with => "admin@example.com")
    fill_in("admin_user[password]", :with => "password")
    click_button("Login")
end

Then /^I am on Dashboard$/ do
    page.should have_content "New Event"
end

When /^I am on Login page$/ do
  visit admin_root_path
end