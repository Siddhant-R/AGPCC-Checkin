
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

